import { WebPlugin } from '@capacitor/core';

import type { ShareSafariPlugin } from './definitions';

export class ShareSafariWeb extends WebPlugin implements ShareSafariPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
