<template>
    <star-rating v-bind:increment="0.1" :read-only="true" :star-size="20" :show-rating="false" :rating="rating" ></star-rating>
</template>

<script type="text/javascript">
import StarRating from 'vue-star-rating'

export default {
    components: {
        StarRating
    },

    props: {
        rating: 0    
    }
}
</script>

<style scoped>

</style>