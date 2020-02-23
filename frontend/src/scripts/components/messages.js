import Vue from 'vue'

new Vue({
  el: '#vue-template-messages',

  data() {
    return {
      isOpen: false,
    }
  },

  methods: {
    open () {
      if (isOpen) return
      isOpen = true
    },
    close () {
      if (!isOpen) return
      isOpen = false
    }
  },
})