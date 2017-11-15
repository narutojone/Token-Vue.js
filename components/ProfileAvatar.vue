<template>
    <div class="profile-avatar">
        <link href='https://fonts.googleapis.com/css?family=Raleway:400,300' rel='stylesheet' type='text/css'>
 
        <div class="avatar">
            <img style="width:100%;" :src=user_credentials.avatar @click="changeAvatar()"/>     
        </div>
    </div>
</template>

<script>

import Vue from 'vue';
import { firebaseAction } from 'vuexfire'
import { mapGetters } from 'vuex'

export default {
    name: 'profile-avatar',
    props: {     
    },
    data() {
        return {
            user_credentials: {
                avatar: 'https://images.cryptocompare.com/378439/bf92105c-1ee9-4355-91a2-c2b3836e4f70.jpg'
            }
        }
    },

    computed: {
        
    },

    methods: {
        changeAvatar() {
            const input = document.createElement('input');
            let self = this;
            input.setAttribute("type", "file");
            input.addEventListener('change', function(e) {
                // uploading code from this fiddle: http://jsfiddle.net/vacidesign/ja0tyj0f/
                if (this.files && this.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    // image is loaded callback
                    self.user_credentials.avatar = e.target.result;
                    // here you can post the data to your backend...
                };
                reader.readAsDataURL(this.files[0]);
                }
            })
            input.click(); // opening dialog

            return false; // avoiding navigation    
        }
    }
}

</script>

<style>
    .profile-avatar {
        margin-bottom: 15px;
    }

    a {
        cursor: pointer;
    }

    .avatar {        
        float: left;
        display: inline-block;
        overflow: hidden;
        width: 100%;         
        border: 6px solid #B3C9CB;
        /* background-image: url(https://scontent-vie1-1.cdninstagram.com/hphotos-ash/t51.2885-19/10932224_821299211264682_1488190390_a.jpg); */
        background-size: cover;
        background-position: 50% 25%;
        -webkit-transition: border 0.5s linear;
        -moz-transition: border 0.5s linear;
        -o-transition: border 0.5s linear;
        transition: border 0.5s linear;
    }

    #fileUpload {
        /* visibility: hidden; */
    }
</style>