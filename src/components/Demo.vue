<!-- the demo root element -->
      
  
<script setup>
// demo data
var treeData = {
  name: "My Tree",
  children: [
    { name: "hello" },
    { name: "wat" },
    {
      name: "child folder",
      children: [
        {
          name: "child folder",
          children: [{ name: "hello" }, { name: "wat" }]
        },
        { name: "hello" },
        { name: "wat" },
        {
          name: "child folder",
          children: [{ name: "hello" }, { name: "wat" }]
        }
      ]
    }
  ]
};

// define the tree-item component
        
  
// boot up the demo
var demo = new Vue({
  el: "#demo",
  data: {
    treeData: treeData
  },
  methods: {
    makeFolder: function(item) {
      Vue.set(item, "children", []);
      this.addItem(item);
    },
    addItem: function(item) {
      item.children.push({
        name: "new stuff"
      });
    }
  }
});
</script>

<template>
  <ul id="demo">
    <tree-item
      class="item"
      :item="treeData"
      @make-folder="makeFolder"
      @add-item="addItem"
    ></tree-item>
  </ul>
</template>
  
</template>