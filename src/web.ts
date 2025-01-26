import { WebPlugin } from '@capacitor/core';

import type { ShareSafariPlugin } from './definitions';

export class ShareSafariWeb extends WebPlugin implements ShareSafariPlugin {
  async share(): Promise<void> {
    this.unimplemented('Not implemented on web.');
  }
}
