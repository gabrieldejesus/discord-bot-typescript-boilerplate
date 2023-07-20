import { Client } from "discord.js";

const discordSetup = (discordClient: Client<boolean>) => {
  const init = async () => discordClient.login(process.env.BOT_TOKEN);

  const setup = async () => {
    await init();
    discordClient.on("ready", async () => {
      console.log(`🚀 logged in as: ${discordClient.user?.tag}!`);
    });
  };

  setup();
};

export default discordSetup;
