const express=require("express");
const router=express.Router();
const pool=require("../pool");
router.get("/",(req,res)=>{
    var form=req.query;
    console.log(form);
    form.title=form.area+form.user_dep+"地段好 近地铁"+form.spec_one+form.spec_two;
    form.spec=form.spec_one+form.spec_two;
    form.tags="近地铁站 安全性高 环境优美";
    form.aprice=parseInt(form.sprice*10000/form.size);
    form.img="img/index/wy/01.jpg"
    form.href="details"
    if(form.area="未央区"){form.id=1}
    if(form.area="雁塔区"){form.id=2}
    if(form.area="碑林区"){form.id=3}
    if(form.area="新城区"){form.id=4}
    form.address=form.user_dep+" "+form.area.substr(0,2)+"-"+form.address;
    var sql="INSERT INTO live_product VALUES(NULL,?,?,?,?,?,?,?,?,?,?,?,?,?)"
    pool.query(sql,[form.id,form.title,form.spec,form.size,form.floor,form.time,form.address,form.tags,form.landlord,form.sprice,form.aprice,form.img,form.href],(err,result)=>{
        if(err) throw err;
        console.log(result);
        res.send(result);
    })
    
})

module.exports=router;