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
                    <div class="desktop-name"><h1>{{mappedUserData.email}}</h1></div>

                    <div class="profile-comment">
                        <span style="padding-left:20px;">Token Recap Profile Page</span>
                    </div>                                     
                </div>
                <div class="card">
                    <b-tabs ref="tabs" card>
                        <b-tab title="Activity" active>
                        </b-tab>
                        <b-tab title="Reviews">
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

import ProfileAvatar from '~/components/ProfileAvatar.vue'
var Avatar = require('vue-avatar')

import { mapGetters } from 'vuex'



if (process.browser) {
  Vue.use(require('vuetable-2'))
}

export default {
	components: {
        ProfileAvatar      
	},
	data() {
		return {			
		}
	},
	mounted() {
		
	},
	methods: {
       onImageReady(scale){
          alert("clicked");
          this.$refs.vueavatarscale.setScale(scale);
       }        		
	},
	computed: {
        mappedUserData() {
            console.log("==== User Data ====", this.getUser);
            return this.getUser;
        },

        mappedUserEmail() {
            
            console.log("==== User Email ====", this.getUserEmail);
            return this.getUserEmail;
        },

        mappedUserPassword() {
            return this.getUserPassword;
        },

        ...mapGetters(
			{				
                getUser: 'user/getUser',
                getUserEmail: 'user/getUserEmail',
                getUserPassword: 'user/getUserPassword'
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
</style>