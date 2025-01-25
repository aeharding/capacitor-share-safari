import { registerPlugin } from '@capacitor/core';

import type { ShareSafariPlugin } from './definitions';

const ShareSafari = registerPlugin<ShareSafariPlugin>('ShareSafari', {
  web: () => import('./web').then((m) => new m.ShareSafariWeb()),
});

export * from './definitions';
export { ShareSafari };
