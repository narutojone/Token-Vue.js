<template>
    <modal name="warn-modal" ref="warnModal" height="auto" width="600px">
            <div class="modal-header">
                <h3>This comment appears to be blank...</h3>
            </div>
            <div class="modal-body">
                <div>
                    <span class="fa fa-warning"></span>
                </div>
                <div style="margin-left:40px;">
                    <span>                
                        It seems that you are trying to add an empty reply. Please write something and try to add the reply again.
                    </span>
                </div>       
            </div>
            <div class="modal-footer">              
                <button class="btn btn-info" @click="closeModal()"><i class="fa fa-times"></i> Close</button>
            </div>
    </modal>
</template>

<script>
    import Vue from 'vue';
    export default {
        name: 'warn-dialog'
    }
</script>
