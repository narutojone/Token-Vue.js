<template>
	<div class="profile-page">	
        <div class="left-sidebar">
            <profile-avatar
                @vue-avatar-editor:image-ready="onImageReady"
                image="https://images.cryptocompare.com/301942/d100fe20-b892-4867-b437-e97ea3b0fa11.jpg">
            </profile-avatar>

            <div class="profile-actions">
                 <div class="mobile-name"><h1>Sergey</h1></div>
                 <button class="follow-button"> <span class="fa fa-plus"></span> <strong>&nbsp;Follow</strong> </button>  
            </div>

            <div class="well well-sm profile-fields">
                <div class="destkop-profile-fields">
                    <div class="label-profile">
                            Points
                    </div>
                    <div class="profile-field">
                        <div class="value-profile" tooltip-placement="top" tooltip-trigger="mouseenter">170</div>
                    </div>

                    <div class="label-profile">
                            Followers
                    </div>
                    <div class="profile-field">
                        <div class="value-profile" tooltip-placement="top" tooltip-trigger="mouseenter">0</div>
                    </div>

                    <div class="label-profile">
                            Comments
                    </div>
                    <div class="profile-field">
                        <div class="value-profile" tooltip-placement="top" tooltip-trigger="mouseenter">0</div>
                    </div>

                    <div class="label-profile">
                            Views
                    </div>
                    <div class="profile-field">
                        <div class="value-profile" tooltip-placement="top" tooltip-trigger="mouseenter">22</div>
                    </div>
                </div>

                <div class="mobile-profile-fields">
                    <no-ssr>
                        <table>
                            <thead>
                                <td>POINTS</td><td>FOLLOWERS</td><td>COMMENTS</td><td>VIEWS</td>
                            </thead>
                            <tbody>
                                <td>170</td><td>0</td><td>0</td><td>22</td>
                            </tbody>
                        </table>
                    </no-ssr>
                </div>
            </div>
        </div>

        <div class="right-sidebar">
            <div class="main">
                <div class="user-info">
                    <div class="desktop-name"><h1>{{mappedUserData.uid}}</h1></div>

                    <div class="profile-comment">
                        <span style="padding-left:20px;">Token Recap Profile Page</span>
                    </div>                                     
                </div>
                <div class="card">
                    <b-tabs ref="tabs" card>
                        <b-tab title="Activity" active>
                           <div class="div-tab">
                                {{ getUserReviews(mappedUserData.uid) }}  
                                <fade-loader v-show="loading" class="spinner"></fade-loader>
                                <div  v-show="!loading" v-for="data in reviewData">
                                <div class="div-activity">
                                    <div class="activity-node activity-node-following">
                                        <a href=""><span class="fa fa-star"></span></a>	
                                    </div>
                                    <div class="activity-content">
                                        <div class="activity-text">
                                            <span class="entry-time">
                                                <span class="fa fa-clock-o">
                                                    {{(Math.round(Number(new Date().getTime()-data.post_time)/3600000))}} Hours ago
                                                </span>
                                            </span>

                                            <span class="user_name"><a href="#">{{mappedUserData.uid}}</a></span>

                                            <span>reviewed the</span>

                                            <span class="coin-avatar">
                                                <img style="width:25px; height:25px;" :src="mappedGetCoinInfo[data.coinName].image_url" />
                                            </span>
                                            <a href="#">{{data.symbolName}}</a>
                                            <span class="coin-forum">exchange</span>
                                        </div>
                                    </div>                               
                                </div>
                                <div class="content-body">
                                    <div class="image-photo">
                                        <a><img style="width:70px; height:70px;" :src="mappedGetCoinInfo[data.coinName].image_url" /></a>
                                    </div>
                                    <div class="div-review">
                                        <div>
                                            <span>{{data.symbolName}}</span>
                                        </div>
                                        <div class="review-rating">
                                            <star-rating :rating="data.review.rating"></star-rating>
                                        </div>
                                        <div class="review-comment">
                                            <span>{{data.review.comments}}</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="reply-body">
                                    
                                </div>

                             </div>                                                   
                           </div>
                        </b-tab>
                        <b-tab title="Reviews">
                            <div class="div-tab">
                                {{ getUserReviews(mappedUserData.uid) }}  
                                <fade-loader v-show="loading" class="spinner"></fade-loader>
                         
                                <div class="div-activity" v-show="!loading" v-for="data in reviewData">
                                    <div class="activity-node activity-node-following">
                                        <a href=""><span class="fa fa-comment"></span></a>	
                                    </div>
                                    <div class="activity-content">
                                        <div class="activity-text">
                                            <span class="entry-time">
                                                <span class="fa fa-clock-o">
                                                    {{(Math.round(Number(new Date().getTime()-data.post_time)/3600000))}} Hours ago
                                                </span>
                                            </span>

                                            <span class="user_name"><a href="#">{{mappedUserData.uid}}</a></span>

                                            <span>reviewed in the</span>

                                            <span class="coin-avatar">
                                                <img style="width:25px; height:25px;" :src="mappedGetCoinInfo[data.coinName].image_url" />                                                
                                            </span>
                                            <a href="#">{{data.symbolName}}</a>
                                            <span class="coin-forum">coin forum</span>
                                        </div>
                                    </div>
                                    <!-- {{reviewData}} -->
                                </div>

                                <div class="content-body">
                                    
                                </div>
                           </div>
                        </b-tab>
                        <b-tab title="Following">
                        </b-tab>
                        <b-tab title="Followers">
                        </b-tab>
                    </b-tabs>
                </div>
            </div>
        </div>
	</div>
</template>

<script>

import Vue from 'vue'
import { mapGetters } from 'vuex'

import StarRating from '~/components/StarReview.vue'
import ProfileAvatar from '~/components/ProfileAvatar.vue'
import FadeLoader from '~/components/fadeloader.vue'

const Avatar = require('vue-avatar');
     

export default {
	components: {
        FadeLoader,
        StarRating,
        ProfileAvatar        
    },

    data: function() {
        return {
            loading: true,
            reviewData: {}
        }
    },
    
	mounted() {
		
	},
	methods: {
       getImageUrl(sym) {
        //    console.log("http://cryptosumup.com/images/" + sym.toLowerCase());
           return "http://cryptosumup.com/images/" + sym.toLowerCase() + ".png";
       },
       
       onImageReady(scale){
          alert("clicked");
          this.$refs.vueavatarscale.setScale(scale);
       },

       getUserReviews(uid) {
            // this.loading = true;      
            this.$firebase.database().ref('userCoinReviews/'+uid).once('value')
                .then(snap => {
                    this.loading = false;
                    this.reviewData = snap.val();
                })
                .catch(err => {
                    this.loading = false;
                    return;
                });  
        }
    },
    
    mounted() {              
    }, 

    props: {        
    },

	computed: {
        mappedUserData() {
            return this.getUser;
        },

        mappedUserEmail() {
            
            console.log("==== User Email ====", this.getUserEmail);
            return this.getUserEmail;
        },

        mappedUserPassword() {
            return this.getUserPassword;
        },

        mappedGetCoinInfo(coinName) {
            return this.getCoinInfo;
        },

        ...mapGetters(
			{				
                getUser: 'user/getUser',
                getUserEmail: 'user/getUserEmail',
                getUserPassword: 'user/getUserPassword',
                getUserReview: 'coinReview/getUserReview',
                getCoinInfo: 'coinInfos/getCoinInfosByName'
			}
		)
    }
}
</script>

<style>

    .follow-button {
        margin-top: 15px;
    }

    .profile-comment {
        margin-top: 20px;
        padding-top: 15px;
        padding-bottom: 15px;
    }  

    .profile-comment {
        position: relative;
        border: 1px solid #d1d3d6;
        background: #ddd;
        font-size: 15px;        
    }

   .profile-avatar {
        margin-bottom: 15px;
    }

    .profile-actions {
        box-sizing: border-box;
    }

    .profile-actions button {
        width: 100%;
        height: 35px;     
        cursor: pointer;
    }

    .well-sm {
        padding: 0;
    }
   
    .profile-fields {
        border: 1px solid #d1d3d6;
        border-radius: 4px;
        margin-top: 15px;
        font-size: 12px;
    }

    .profile-fields .label-profile {
        background: #d1d3d6;   
        padding-left: 5px;
        text-transform: uppercase;
        color: #444;
        line-height: 30px;
        font-size: 12px;
        text-align: center;
        height: 30px;
    }

    .profile-fields .value-profile {
        background: #fff;
        padding-left: 5px;
        font-weight: bold;
        line-height: 63px;
        font-size: 30px;
        color: rgb(73,78,88);
        text-align: center;
        height: 65px;
    }

    .card {
        margin-top: 20px;
    }

    h1 {
        font-family: 'Open Sans Condensed',sans-serif;
        font-weight: bold;
    }

    a {
        cursor: pointer;
    }

    /*###Desktops, big landscape tablets and laptops(Large, Extra large)####*/
    @media screen and (min-width: 768px){
        .profile-page {
            overflow: auto;
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .left-sidebar {        
            width: 17%;      
        }

        .right-sidebar {            
             width: 75%;
         
        }

        .mobile-name {
            display: none;
        }

        .profile-comment::before {
            content: '';
            position: absolute;
            border-style: solid;
            border-width: 6px 12px 5px 0;
            border-color:  transparent #DDD;
            display: block;
            width: 0;
            z-index: 0;
            top: 5px;
            left: -12px;
        }

        .desktop-name {
            display: inline;
        }

        .main {
            padding-left: 3%;
            padding-right: 5px;
        }

        .destkop-profile-fields {
            display: inline;
        }

        .mobile-profile-fields {
            display: none;
        }
    }

    /* ###Tablet(medium)###
    @media screen and (min-width : 768px) and (max-width : 1023px){
        .left-sidebar {
            width: 33%;
        }
        .right-sidebar {
        }
    } */

    /*### Smartphones (portrait and landscape)(small)### */
    @media screen and (min-width : 0px) and (max-width : 767px){
        .left-sidebar {
            width: 100%;
            float: left;
        }

        .right-sidebar{
            width: 100%;
            float: left;
        }

        .mobile-name {
            display: inline;
            text-align: center;
        }

        .desktop-name {
            display: none;
        }

        .profile-page {
            overflow: auto;
            justify-content: center;
            margin-top: 20px;
        }

        .destkop-profile-fields {
            display: none;
        }

        .mobile-profile-fields {
            display: inline;
        }

        .mobile-profile-fields table thead {
            background: #d1d3d6;
        }

        .mobile-profile-fields table {width: 100%}

        .mobile-profile-fields table thead td {
            width: 25%;
            text-align: center;
            padding-top: 5px; padding-bottom: 5px;
        }

        .mobile-profile-fields table tbody td {
            text-align: center;
            font-weight: bold;
            font-size: 25px;
            padding-bottom: 10px; padding-top: 10px;
            color: rgb(73,78,88);
        }
    }

    .loader,
    .loader:before,
    .loader:after {
    border-radius: 50%;
    width: 2.5em;
    height: 2.5em;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
    -webkit-animation: load7 1.8s infinite ease-in-out;
    animation: load7 1.8s infinite ease-in-out;
    }
    .loader {
    color: #17a2b8;
    font-size: 10px;
    margin: 80px auto;
    position: relative;
    /* text-indent: -9999em; */
    -webkit-transform: translateZ(0);
    -ms-transform: translateZ(0);
    transform: translateZ(0);
    -webkit-animation-delay: -0.16s;
    animation-delay: -0.16s;
    }
    .loader:before,
    .loader:after {
    content: '';
    position: absolute;
    top: 0;
    }
    .loader:before {
    left: -3.5em;
    -webkit-animation-delay: -0.32s;
    animation-delay: -0.32s;
    }
    .loader:after {
    left: 3.5em;
    }

    .spinner {
        margin: auto;
    }

    .div-tab {
        
    }

    .activity-node-following {
        background: #0E70C2;
    }

    .activity-node {
        position: relative;
        left: 0;
        top: 3px;
        width: 30px;
        height: 30px;
        border-radius: 50%;
        text-align: center;
 
    }

    .activity-node :hover {
        color: #000;
    }

    .activity-node a {
        color: #fff;
        
    }

    .activity-node a span {
        margin-top: 7px;
    }

    .fa {
        display: inline-block;
        font: normal normal normal 14px/1 FontAwesome;
        font-size: inherit;
        text-rendering: auto;
        -webkit-font-smoothing: antialiased;
        transform: translate(0,0);
    }

    .fa-user-plus:before {
        content: "\f234";
    }

    .activity-text {
        background: #ddd;
        border: 1px solid #DDD;
        border-radius: 4px 4px 0 0;
        line-height: 35px;
        position: relative;
        font-size: 11px;
        height: 35px;
        display: flex;
    }

    .activity-text::before {
        content: '';
        position: absolute;
        border-style: solid;
        border-width: 8px 8px 10px 0;
        border-color: transparent #ddd;
        display: block;
        width: 0;
        z-index: 0;
        left: -9px;
        top: 7px;        
    }

    .activity-content {     
        margin-left: 20px;
        width: 100%;
    }

    .div-activity {
        display: flex;
       
    }

    .entry-time {
        margin-left: 3%;
    }

    .user_name {
        font-weight: bold;
        padding-left: 5px;
        padding-right: 5px;
        font-size: 12px;
    }

    .coin-avatar {
        padding-left: 5px;
        padding-right: 7px;
    }

    .activity-text a{
        font-weight: bold;
        font-size: 12px;
    }

    .coin-forum {
        padding-left: 5px;   
    }

    .content-body {
        margin-left: 48px;
        border: 1px solid #ddd;
        height: 100px;
        display: flex;
    }

    .image-photo {
        margin-left: 20px;
        margin-top: 10px;
    }

    .reply-body {
        margin-left: 48px;
        margin-bottom: 30px;
        height: 35px;
        border: 1px solid #ddd;
        background-color: #d1d3d6;
    }

    .div-review {
        width: 100%;
        padding-left: 30px;
    }

    .div-review span {
        font-size: 23px;
        font-weight: bold;
    }

    .review-comment span {
        font-size: 14px;
        font-weight: normal;
    }
</style>