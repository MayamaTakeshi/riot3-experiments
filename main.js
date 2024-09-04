import riot from 'riot';
import * as animore from 'riot-animore';

import './tags/app.tag';
import './tags/queue.tag';
import './tags/queue-item.tag';
import './tags/expand-contract.tag';

// Mounts the <app> tag to the #app element
const tags = riot.mount('app');
console.log('mounted tags:', tags)
