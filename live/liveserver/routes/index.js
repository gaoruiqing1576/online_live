const express=require("express");
const router=express.Router();
const query=require("./query");

router.get("/",(req,res)=>{
    var kw=req.query;
    console.log(kw)
    var output={
        count:0,
        pageSize:12,
        pageCount:0,
        pno:kw.pno||0,
        data:[]
    };
    //console.log(JSON.stringify(kw)!= "{}")
    //先判断传过来的对象是否为空,不为空,按条件查询,为空则查询全部
    if(JSON.stringify(kw)!= "{}"){
        //kw={ address: '未央区', sprice: '50万-100万', size: '0m²-50m²' }
        var arr=[];
        i=0;
        if(kw.address!=null){   //字符串  数组
            arr[i]=`address like '%${kw.address.substr(0,2)}%'`;
            i++;
        }
        if(kw.sprice!=null){
            console.log(kw.sprice)
            var sprices=kw.sprice.split("-")
            var min=parseInt(sprices[0]);
            var max=parseInt(sprices[1]);
            console.log(max,min)
            if(isNaN(max)==false){
                arr[i]=`sprice between ${min} and ${max}`;
            }else{
                arr[i]=`size>=${min}`;
            }
            i++;
        }
        if(kw.size!=null){
            var sizes=kw.size.split("-")
            var min=parseInt(sizes[0]);
            var max=parseInt(sizes[1]);
            if(isNaN(max)==false){
                arr[i]=`size between ${min} and ${max}`;
            }else{
                arr[i]=`size>=${min}`;
            }
            i++;
        }
        if(kw.floor!=null){
            arr[i]=`floor like '%${kw.floor}%'`;
            i++;
        }
        if(kw.build!=null){
            console.log(kw.build)
            kw.build=kw.build.substr(0,4);
            console.log(kw.build)
            if(kw.build>2008){
                arr[i]=`build_times>${kw.build}`;
            }else{
                arr[i]=`build_times<${kw.build}`;
            }
            i++;
        }
        //房型的查询
        if(kw.spec!=null){
            arr[i]=`spec like '%${kw.spec.substr(0,2)}%'`;
            i++;
        }

        var where=arr.join(" and ")
        console.log(where);
        // address like '%雁塔%' and sprice between 20 and 150 and size IN(80,150) and spec like '%二室%'
        var sql=`SELECT * FROM live_product WHERE ${where}`;
        query(sql,[])
            .then(result=>{
            output.count=result.length;
            output.pageCount=
                Math.ceil(output.count/output.pageSize);
            sql+=` limit ?,?`;
            return query(sql,[output.pageSize*output.pno,output.pageSize]);
        }).then(result=>{
            output.data=result;
            res.send(output);
        })
    }else{
        var sql="SELECT * FROM live_product";
        query(sql,[])
            .then(result=>{
            output.count=result.length;
            output.pageCount=
                Math.ceil(output.count/output.pageSize);
            sql+=` limit ?,?`;
            return query(sql,[output.pageSize*output.pno,output.pageSize]);
        }).then(result=>{
            output.data=result;
            res.send(output);
        })
    }
})

module.exports=router;