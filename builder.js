module.exports = {
  appId: "com.naderwix.testing",
  productName: "Nader WIX Testing",
  win: {
    target: {
      target: "nsis",
    },
  },
  nsis: {
    oneClick: true,
    perMachine: false,
    allowToChangeInstallationDirectory: false,
    include: "build/installer.nsh",
  },
  publish: null,
  files: ["!wix"],
};
