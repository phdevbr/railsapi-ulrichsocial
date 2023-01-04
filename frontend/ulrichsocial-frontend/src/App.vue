<script lang="ts">
import axios from "axios";

export default {
  data() {
    return {
      post: {},
    };
  },
  created() {
    this.getPost();
  },
  methods: {
    getPost() {
      axios
        .get(
          "https://phdevbr-zany-journey-x4x4r97wgr42g49-3000.preview.app.github.dev/api/v1/users/1"
        )
        .then((res) => {
          this.post = res.data;
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
  mounted() {
    this.getPost();
  },
};
</script>

<template>
  <div>
    Hello World
    <button @click="getPosts">Button</button>
    {{ post }}
  </div>
</template>

<style scoped></style>
