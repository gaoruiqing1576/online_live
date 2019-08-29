<template>
  <div>
    <my-header />
    <div class="g-main">
      <!-- top -->
      <div class="m-jumbotron">
        <div class="title">发布出售房源</div>
        <div class="subtitle">数万线下门店 · 快速全城推广 · 专业经纪人服务</div>
      </div>
      <!-- form -->
      <div class="m-form">
        <div class="form-box">
          <!-- left -->
          <div class="box-l m-entry">
            <dl class="compact">
              <dt>小区所在城市</dt>
              <dd class="city-select">
                <div class="city-name">西安</div>
              </dd>
            </dl>
            <dl>
              <dt>小区</dt>
              <dd class="wrap-sug">
                <div class="u-sug">
                  <input type="text" v-model="form.user_dep" class="sugInput" placeholder="请输入小区名" />
                </div>
              </dd>
            </dl>
            <dl>
              <dt>房屋地址</dt>
              <dd>
                <div class="u-select u-select-build" name="building">
                  <select v-model="form.area">
                    <option>雁塔区</option>
                    <option>未央区</option>
                    <option>新城区</option>
                    <option>碑林区</option>
                  </select>
                </div>
                <div class="u-select u-select-build" name="unit">
                  <input placeholder="具体地址" v-model="form.address" class="u-select-selected" type="text" />
                </div>
              </dd>
            </dl>
            <dl>
              <dt>房屋规模</dt>
              <dd class="wrap-sug">
                <div class="u-sug">
                  <select v-model="form.spec_one">
                    <option>一室</option>
                    <option>二室</option>
                    <option>三室</option>
                    <option>四室以上</option>
                  </select>
                  <select v-model="form.spec_two">
                    <option>一厅</option>
                    <option>二厅</option>
                    <option>三厅</option>
                    <option>四厅以上</option>
                  </select>
                </div>
              </dd>
            </dl>
            <dl>
              <dt>房屋楼层</dt>
              <dd>
                <div class="u-select u-select-build" name="unit">
                  <input v-model="form.floor" class="u-select-selected" type="text" />
                </div>层
              </dd>
            </dl>
            <dl>
              <dt>建筑面积</dt>
              <dd>
                <div class="u-select u-select-build" name="unit">
                  <input v-model="form.size" class="u-select-selected" type="text" />
                </div>㎡
              </dd>
            </dl>
            <dl>
              <dt>建造时间</dt>
              <dd>
                <div class="u-select u-select-build" name="unit">
                  <input v-model="form.time" class="u-select-selected" type="text" />
                </div>年
              </dd>
            </dl>
            <dl>
              <dt>期望售价</dt>
              <dd>
                <input
                  name="expect_price"
                  v-model="form.sprice"
                  value
                  type="text"
                  placeholder="请输入您期望卖出的价格"
                  autocomplete="off"
                  class="expect_price"
                />
                <div class="unit">万元</div>
                <a
                  href="https://xa.ke.com/yezhu/gujia/?channel_id=2023"
                  target="_blank"
                  class="link-gujia"
                >不太清楚如何定价? 先估个价</a>
              </dd>
            </dl>
            <dl>
              <dt>称呼</dt>
              <dd>
                <input
                  name="user_name"
                  v-model="form.landlord"
                  value
                  type="text"
                  placeholder="我们应该如何称呼您"
                  autocomplete="off"
                  class="user_name"
                />
              </dd>
            </dl>
            <dl>
              <dt>手机号码</dt>
              <dd>
                <input
                  name="user_mobile"
                  v-model="form.mobile"
                  value
                  type="text"
                  placeholder="您的联系方式"
                  autocomplete="off"
                  class="user_mobile"
                />
              </dd>
            </dl>
            <dl>
              <dt>图形验证码</dt>
              <dd>
                <input
                  name="verify_code"
                  v-model="form.verify_code"
                  value
                  type="text"
                  placeholder="请输入验证码结果"
                  autocomplete="off"
                  class="verify_code"
                />
                <!-- <div class="btn-getcode-voice">获取语音验证码</div> -->
                <!-- <div class="btn-getcode-sms">获取短信验证码</div> -->
                <div class="btn-getcode-sms">
                  <img
                    src="https://ajax.api.ke.com/user/verifyCodeNew/GeneratePictureUpgrade?type=num&amp;index=1"
                    style="width:100%;height:100%;"
                  />
                </div>
              </dd>
            </dl>
          </div>
          <!-- right -->
          <div class="box-r m-deal" data-component="dealCard">
            <div class="hd">
              <div class="dealprice">
                <div class="tit">西安市 成交均价</div>
                <div class="sub-tit">
                  <span class="price">12903元/㎡</span>
                </div>
              </div>
            </div>
            <div class="relatedhouse">
              <ul class="bd">
                <li>
                  <a
                    href="https://xa.ke.com/chengjiao/101104700959.html"
                    class="tit"
                    target="_blank"
                  >中海熙岸 - 4室2厅/162平米</a>
                  <span class="time">签约时间 2019-08-09</span>
                  <span class="num">133.5万</span>
                </li>
                <li>
                  <a
                    href="https://xa.ke.com/chengjiao/101104700959.html"
                    class="tit"
                    target="_blank"
                  >中海熙岸 - 4室2厅/162平米</a>
                  <span class="time">签约时间 2019-08-09</span>
                  <span class="num">133.5万</span>
                </li>
                <li>
                  <a
                    href="https://xa.ke.com/chengjiao/101104700959.html"
                    class="tit"
                    target="_blank"
                  >中海熙岸 - 4室2厅/162平米</a>
                  <span class="time">签约时间 2019-08-09</span>
                  <span class="num">133.5万</span>
                </li>
              </ul>
              <div class="ft">
                <a href="/chengjiao/" target="_blank">查看更多成交明细</a>
              </div>
            </div>
          </div>
        </div>
        <div class="m-submit">
          <div class="wrap">
            <div class="btn-submit" @click="release">发布</div>
          </div>
        </div>
      </div>
    </div>
    <my-footer />
  </div>
</template>

<script>
import qs from "qs";
export default {
  data() {
    return {
      form: {
        user_dep:"",
        area:"",
        address:"",
        spec_one:"",
        spec_two:"",
        floor:"",
        size:"",
        time:"",
        sprice:"",
        landlord:"",
        mobile:"",
        verify_code: "",
        title:"",
        spec:"",
        tags:"",
        aprice:'',
        img:"",
        href:"",
        id:''
      }
    };
  },
  methods: {
    load(){
        var url="http://127.0.0.1:5050/resourses";
        //var params={address:"未央区",size:"50万-100万"};
        this.axios.get(url,{params:this.form}
        ).then(result=>{
          console.log(result.data);
          alert("发布成功");
          this.$router.push({ path:'/'  })
        })
    },
    release(){
        var form=this.form;
        console.log(form)
        // for(var key in form){
        //   if(form[key]==""){
        //     alert("请输入必须信息")
        //   }else{
        //     console.log(222)
        //   }
        // }
        this.load();
    }
  }
};
</script>

<style>
@import url("../assets/css/resourses.css");
</style>