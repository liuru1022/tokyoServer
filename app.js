// 加载Express模块
const express = require('express');
const moment = require('moment');
// 加载MySQL模块
const mysql = require('mysql');

// 加载bodyParser模块
const bodyParser = require('body-parser');

// 加载MD5模块
const md5 = require('md5');

// 创建MySQL连接池
const pool = mysql.createPool({
  host: '127.0.0.1', //MySQL服务器地址
  port: 3306, //MySQL服务器端口号
  user: 'root', //数据库用户的用户名
  password: '', //数据库用户密码
  database: 'tokyo_pg', //数据库名称
  connectionLimit: 20, //最大连接数
  charset: 'utf8' //数据库服务器的编码方式
});

// 创建服务器对象
const server = express();

server.use(bodyParser.urlencoded({
  extended: false
}));

// 加载CORS模块
const cors = require('cors');
const {
  setServers
} = require('dns');

// 使用CORS中间件
server.use(cors({
  origin: ['http://localhost:8080', 'http://127.0.0.1:8080']
}));
// 类别列表
server.get('/category', (req, res) => {
  let sql = 'select * from tokyo_pg_gametype';
  pool.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    res.send({
      message: 'ok',
      code: 200,
      category: results
    })
  })
})
// 首页总览数据
server.get('/indexlist', (req, res) => {
  let sql = 'select * from tokyo_pg_carousel';
  pool.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    let carousels = results;
    sql = 'select * from tokyo_pg_summedal limit 4';
    pool.query(sql, (err, results) => {
      if (err) {
        throw err;
      }
      let summedals = results;
      sql = 'select * from tokyo_pg_videonews limit 4';
      pool.query(sql, (err, results) => {
        if (err) {
          throw err;
        }
        let videos = results;
        sql = 'select infonid,title,time,img from tokyo_pg_infonews limit 4';
        pool.query(sql, (err, results) => {
          if (err) {
            throw err;
          }
          let infos = results;
          sql = 'select * from tokyo_pg_cngoldmedal order by cngmid desc limit 8';
          pool.query(sql, (err, results) => {
            if (err) throw err;
            res.send({
              message: 'ok',
              code: 200,
              carousels,
              summedals,
              videos,
              infos,
              cngolds: results
            })
          })
        })
      })
    })
  })
})
// 视频新闻
server.get('/video', (req, res) => {
  let page = req.query.page ? req.query.page : 1;
  let pagesize = 3;
  let offset = (page - 1) * pagesize;
  let rowcount;
  let sql = 'select count(vnid) as count from tokyo_pg_videonews'
  pool.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    rowcount = results[0].count;
    let pagecount = Math.ceil(rowcount / pagesize);
    sql = 'select * from tokyo_pg_videonews limit ?,?'
    pool.query(sql, [offset, pagesize], (err, results) => {
      if (err) throw err;
      res.send({
        message: 'ok',
        code: 200,
        results,
        pagecount
      })
    })
  })
})
// 资讯
server.get('/infos', (req, res) => {
  let newstype = req.query.newstype;
  let page = req.query.page ? req.query.page : 1;
  let pagesize = parseInt(req.query.pagesize);
  let offset = (page - 1) * pagesize;
  let rowcount;
  let sql = 'select count(infonid) as count from tokyo_pg_infonews where newstype=?'
  pool.query(sql, [newstype], (err, results) => {
    if (err) {
      throw err;
    }
    rowcount = results[0].count;
    let pagecount = Math.ceil(rowcount / pagesize);
    sql = 'select * from tokyo_pg_infonews where newstype=? limit ?,?'
    pool.query(sql, [newstype, offset, pagesize], (err, results) => {
      if (err) throw err;
      res.send({
        message: 'ok',
        code: 200,
        results,
        pagecount
      })
    })
  })
})
// 资讯详情内容
server.get('/infoarticle', (req, res) => {
  let id = parseInt(req.query.id);
  let sql = 'select infonid,newstype,title,time,img,article from tokyo_pg_infonews where infonid=?'
  pool.query(sql, [id], (err, results) => {
    if (err) {
      throw err;
    }
    let article = results[0];
    let newstype = article.newstype;
    sql = 'select infonid,img,title from tokyo_pg_infonews where newstype=? and infonid != ? limit 5'
    pool.query(sql, [newstype, id], (err, results) => {
      if (err) throw err;
      let connect = results;
      sql = 'select tokyo_pg_remark.uid,name,photo,content,time from tokyo_pg_remark,tokyo_pg_user where tokyo_pg_user.uid=tokyo_pg_remark.uid and infonid=? order by time desc limit 2';
      pool.query(sql, [id], (err, results) => {
        if (err) {
          throw err;
        }
        res.send({
          message: 'ok',
          code: 200,
          article,
          connect,
          results
        })
      })
    })
  })
})
// 资讯是否已经在收藏列表
server.get('/isliked', (req, res) => {
  let uid = parseInt(req.query.uid);
  let infonid = parseInt(req.query.infonid)
  let sql = 'select count(likeid) as count from tokyo_pg_like where uid=? and infonid=? and flag=0'
  pool.query(sql, [uid, infonid], (err, results) => {
    if (err) throw err;
    let count = results[0].count;
    if (count == 0) {
      res.send({
        message: 'like no exits',
        code: 200
      })
    } else {
      res.send({
        message: 'like exits',
        code: 201
      })
    }
  })
})
// 收藏
server.get('/likelist', (req, res) => {
  let uid = req.query.uid;
  let page = req.query.page ? req.query.page : 1;
  let pagesize = 6;
  let offset = (page - 1) * pagesize;
  let rowcount;
  let sql = 'select count(likeid) as count from tokyo_pg_like where uid=? and flag=0'
  pool.query(sql, [uid], (err, results) => {
    if (err) {
      throw err;
    }
    rowcount = results[0].count;
    let pagecount = Math.ceil(rowcount / pagesize);
    sql = 'select likeid,tokyo_pg_infonews.infonid,img,title,time,smallarticle from tokyo_pg_like,tokyo_pg_infonews where tokyo_pg_like.infonid=tokyo_pg_infonews.infonid and uid=? and flag=0 limit ?,?'
    pool.query(sql, [uid, offset, pagesize], (err, results) => {
      if (err) throw err;
      res.send({
        message: 'ok',
        code: 200,
        results,
        pagecount,
        rowcount
      })
    })
  })
})
// 收藏页取消收藏
server.get('/removelike', (req, res) => {
  let id = parseInt(req.query.likeid);
  let sql = 'update tokyo_pg_like set flag=1 where likeid=? '
  pool.query(sql, [id], (err, results) => {
    if (err) throw err;
    res.send({
      message: 'ok',
      code: 200
    })
  })
})
// 资讯详情页取消收藏
server.get('/articleremovelike', (req, res) => {
  let uid = parseInt(req.query.uid);
  let infonid = parseInt(req.query.infonid);
  let sql = 'update tokyo_pg_like set flag=1 where uid=? and infonid=? and flag = 0'
  pool.query(sql, [uid, infonid], (err, results) => {
    if (err) throw err;
    res.send({
      message: 'ok',
      code: 200
    })
  })
})
// 添加收藏
server.post('/addlike', (req, res) => {
  let uid = parseInt(req.body.uid);
  let infonid = parseInt(req.body.infonid);
  let sql = 'insert into tokyo_pg_like(uid,infonid) values(?,?)'
  pool.query(sql, [uid, infonid], (err, results) => {
    if (err) throw err;
    res.send({
      message: 'ok',
      code: 200
    })
  })
})
// 咨询评论列表
server.get('/inforemarklist', (req, res) => {
  let id = req.query.infonid;
  let sql = 'select count(remarkid) as count from tokyo_pg_remark where infonid=?'
  pool.query(sql, [id], (err, results) => {
    if (err) {
      throw err;
    }
    rowcount = results[0].count;
    sql = 'select tokyo_pg_remark.uid,name,photo,content,time from tokyo_pg_remark,tokyo_pg_user where tokyo_pg_user.uid=tokyo_pg_remark.uid and infonid=? order by time desc'
    pool.query(sql, [id], (err, results) => {
      if (err) throw err;
      res.send({
        message: 'ok',
        code: 200,
        results,
        rowcount
      })
    })
  })
})
// 资讯添加评论
server.post('/addinforemark', (req, res) => {
  let uid = req.body.uid;
  let content = req.body.content;
  let time = moment().format('X');
  let infonid = req.body.infonid;
  let sql = 'insert into tokyo_pg_remark(content,time,uid,infonid,imgnid) values(?,?,?,?,null)'
  pool.query(sql, [content, time, uid, infonid], (err, results) => {
    if (err) throw err;
    res.send({
      message: 'ok',
      code: 200
    })
  })
})
// 画报添加评论
server.post('/addimgremark', (req, res) => {
  let uid = req.body.uid;
  let content = req.body.content;
  let time = moment().format('X');
  let imgnid = req.body.imgnid;
  let sql = 'insert into tokyo_pg_remark(content,time,uid,infonid,imgnid) values(?,?,?,null,?)'
  pool.query(sql, [content, time, uid, imgnid], (err, results) => {
    if (err) throw err;
    res.send({
      message: 'ok',
      code: 200
    })
  })
})
// 奖牌榜
server.get('/medal', (req, res) => {
  let sql = 'select * from tokyo_pg_summedal';
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send({
      message: 'ok',
      code: 200,
      results: results
    })
  })
})
// 中国金牌榜
server.get('/cngold', (req, res) => {
  let sql = 'select * from tokyo_pg_cngoldmedal order by cngmid desc';
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send({
      message: 'ok',
      code: 200,
      results: results
    })
  })
})
// 画报
server.get('/imglist', (req, res) => {
  let page = req.query.page ? req.query.page : 1;
  let pagesize = 10;
  let offset = (page - 1) * pagesize;
  let rowcount;
  let sql = 'select count(imgnid) AS count from tokyo_pg_imgnews';
  pool.query(sql, (err, results) => {
    if (err) throw err;
    rowcount = results[0].count;
    let pagecount = Math.ceil(rowcount / pagesize);
    sql = 'select * from tokyo_pg_imgnews limit ?,?';
    pool.query(sql, [offset, pagesize], (err, results) => {
      if (err) throw err;
      res.send({
        message: 'ok',
        code: 200,
        pagecount,
        results: results
      })
    })
  })
})
// 画报详情内容
server.get('/imgarticle', (req, res) => {
  let id = parseInt(req.query.id);
  let sql = 'select imgnimgsid,imgurl from tokyo_pg_imgnewsimgs where imgnid=?'
  pool.query(sql, [id], (err, results) => {
    if (err) {
      throw err;
    }
    let imgs = results;
    sql = 'select title,imgnid,article from tokyo_pg_imgnews where imgnid=?'
    pool.query(sql, [id], (err, results) => {
      if (err) {
        throw err;
      }
      res.send({
        message: 'ok',
        code: 200,
        imgs,
        results: results[0]
      })
    })
  })
})
// 画报评论列表
server.get('/imgremark', (req, res) => {
  let page = req.query.page ? req.query.page : 1;
  let pagesize = 8;
  let offset = (page - 1) * pagesize;
  let rowcount;
  let id = req.query.id;
  let sql = 'select count(remarkid) as count from tokyo_pg_remark where imgnid=?'
  pool.query(sql, [id], (err, results) => {
    if (err) {
      throw err;
    }
    rowcount = results[0].count;
    let pagecount = Math.ceil(rowcount / pagesize);
    sql = 'select tokyo_pg_remark.uid,name,photo,content,time from tokyo_pg_remark,tokyo_pg_user where tokyo_pg_user.uid=tokyo_pg_remark.uid and imgnid=? order by time desc limit ?,?'
    pool.query(sql, [id, offset, pagesize], (err, results) => {
      if (err) throw err
      res.send({
        message: 'ok',
        code: 200,
        results,
        rowcount,
        pagecount
      })
    })
  })
})
// 注册
server.post('/reg', (req, res) => {
  // 获取邮箱和密码信息
  let name = req.body.name;
  let phone = req.body.phone;
  let email = req.body.email;
  let pwd = req.body.pwd;
  let sql = 'select count(uid) as count from tokyo_pg_user where email=? or phone=?'
  pool.query(sql, [email, phone], (err, results) => {
    if (err) throw err;
    let count = results[0].count;
    if (count == 0) {
      sql = 'select count(uid) as count from tokyo_pg_user where name=?'
      pool.query(sql, [name], (err, results) => {
        if (err) throw err;
        count = results[0].count;
        if (count == 0) {
          sql = 'insert tokyo_pg_user(name,phone,email,password) values(?,?,?,md5(?))'
          pool.query(sql, [name, phone, email, pwd], (err, results) => {
            if (err) throw err;
            res.send({
              message: 'ok',
              code: 200
            })
          })
        } else {
          res.send({
            message: 'name was used',
            code: 202
          })
        }
      })
    } else {
      res.send({
        message: 'user exits',
        code: 201
      })
    }
  })
})
// 登录
server.post('/log', (req, res) => {
  let email = req.body.email;
  let pwd = req.body.password;
  let sql = 'select uid,name,photo from tokyo_pg_user where email=? and password=md5(?)';
  pool.query(sql, [email, pwd], (err, results) => {
    if (err) throw err;
    if (results.length == 0) {
      res.send({
        message: 'login failed',
        code: 201
      })
    } else {
      res.send({
        message: 'ok',
        code: 200,
        result: results[0]
      })
    }
  })
})
// 各分类新闻
server.get('/gameinfo', (req, res) => {
  let gtid = parseInt(req.query.gtid);
  let page = req.query.page ? req.query.page : 1;
  let pagesize = 5;
  let offset = (page - 1) * pagesize;
  let rowcount;
  let sql = 'select count(infonid) as count from tokyo_pg_infonews where gtid=?'
  pool.query(sql, [gtid], (err, results) => {
    if (err) {
      throw err;
    }
    rowcount = results[0].count;
    let pagecount = Math.ceil(rowcount / pagesize);
    sql = 'select img,infonid,title,smallarticle,time from tokyo_pg_infonews where gtid=? limit ?,?'
    pool.query(sql, [gtid, offset, pagesize], (err, results) => {
      if (err) throw err;
      res.send({
        message: 'ok',
        code: 200,
        results,
        pagecount,
        rowcount,
      })
    })
  })
})
// 各类型运动轮播图
server.get('/gameinfoswipe', (req, res) => {
  let gtid = parseInt(req.query.gtid);
  sql = 'select img,infonid,title,time from tokyo_pg_infonews where gtid=? limit 4'
  pool.query(sql, [gtid], (err, results) => {
    if (err) throw err;
    res.send({
      message: 'ok',
      code: 200,
      results
    })
  })
})
// 搜索数据
server.get('/searchinfo',(req,res)=>{
  let value = req.query.value;
  let search = `%${value}%`
  let page = req.query.page ? req.query.page : 1;
  let pagesize = 8;
  let offset = (page - 1) * pagesize;
  let rowcount;
  let sql = 'select count(infonid) as count from tokyo_pg_infonews where title like ?'
  pool.query(sql, [search], (err, results) => {
    if (err) {
      throw err;
    }
    rowcount = results[0].count;
    let pagecount = Math.ceil(rowcount / pagesize);
    sql = 'select img,infonid,title from tokyo_pg_infonews where title like ? limit ?,?'
    pool.query(sql, [search, offset, pagesize], (err, results) => {
      if (err) throw err;
      res.send({
        message: 'ok',
        code: 200,
        results,
        pagecount,
        rowcount,
      })
    })
  })
})

// 指定服务器对象监听的端口号
server.listen(3000, () => {
  console.log('server is running...');
});