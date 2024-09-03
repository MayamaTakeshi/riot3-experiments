<queue-item>
  <p>{opts.item.text}</p>

  <script>
     this.on('update', () => {
       console.log(`update: ${opts.item.text}`);
     });

     this.on('mount', () => {
       console.log(`mount: ${opts.item.text}`);
     });

     this.on('unmount', () => {
       console.log(`unmount: ${opts.item.text}`);
     });
  </script>
</queue-item>

