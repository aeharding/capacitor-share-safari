export interface ShareSafariPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
