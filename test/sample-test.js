const { expect } = require("chai");

describe("Greeter", function () {
  it("Should return the new greeting once it's changed", async function () {
    const TrickedCoinFlip = await ethers.getContractFactory("TrickedCoinFlip");
    const trickCoinFlipContrat = await TrickedCoinFlip.deploy();
    await trickCoinFlipContrat.deployed();

    await trickCoinFlipContrat.trickFlip();
  });
});
