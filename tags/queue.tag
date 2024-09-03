<queue>
  <div>
    <p>Items {items.length}</p>
    <button onclick={addItem}>Add item</button>
    <button onclick={removeItem}>Remove item</button>
  </div>

  <div class="queue-container">
    <div data-is="animore" each={item, index in items}
        mount={{ duration: 800, scale: [0, 1], opacity: [0, 1], height: [0, 32], easing: 'linear'}}
        unmount={{ duration: 800, scale: [1, 0], opacity: [1, 0], height: [32, 0], width: 0, easing: 'linear'}}>
            	<queue-item item={item} class="item"></queue-item>
    </div>
  </div>

  <script>
    this.items = [{text: 'Item 1'}, {text: 'Item 2'}, {text: 'Item 3'}];
    this.count = this.items.length;

    this.on('mount', () => {
      setInterval(() => {
        this.addItem();
        this.removeItem();
        console.log(`items: ${JSON.stringify(this.items.map(i => i.text))}`);
      }, 1000);
    });

    this.addItem = () => {
      this.count++;
      const item = { text: `Item ${this.count}` };
      console.log(`items: ${JSON.stringify(this.items.map(i => i.text))}`);
      this.items.push(item);
      this.update();
    };

    this.removeItem = () => {
      this.items.shift();
      this.update();
    };
  </script>

  <style>
    .queue-container {
      display: flex;
      flex-direction: row;
      align-items: center;
      overflow-x: auto; /* Allows scrolling if queue grows too long */
    }

    .queue-item {
      background-color: #e0e0e0;
      border-radius: 4px;
      transform-origin: center; /* Ensures scaling happens from the center */
    }
  </style>
</queue>

