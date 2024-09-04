<expand-contract>
  <button onclick={ add }>add</button>

  <div style="width: 48px; height: 48px;" each={item, idx in items} data-is="animore" 
    mount={{ duration: 500, scale: [0, 1], easing: 'linear'}}
    unmount={{ duration: 500, scale: 0, height: 0, easing: 'linear'}}>
      <img src={item.src} onclick={remove}></img>
  </div>

  <script>
    this.on('before-mount', () => {
      this.count = 0
      this.items = []
    })
    
    add() {
      this.count++
      const item = {
        id: this.count,
        src: 'https://cdn-icons-png.flaticon.com/128/251/2517' + this.count.toString().padStart(2, '0') + '.png',
      }
      this.items.push(item)
    }

    remove(e) {
      console.log("remove", e.item.idx)
      this.items.splice(e.item.idx, 1)
      console.log(this.items)
    }
  </script>

  <style>
    img {
      max-width: 100%; /* makes the image scale down */
      height: auto; /* keeps the aspect ratio */
       display: block; /* removes any extra space below the image */
    }
 </style>
</expand-contract>
