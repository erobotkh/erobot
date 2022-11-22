<template>
  <div id="app">
    <p>{{ message }}</p>
    <InputText type="text" placeholder="Default"></InputText>

    <Toast />
    <Button @click="showToast('info')" label="Info" class="p-button-info mr-2 mb-2" />
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
