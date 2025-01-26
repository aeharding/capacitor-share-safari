export interface ShareSafariPlugin {
  share(options: { url: string }): Promise<void>;
}
