import { test, moduleForModel } from "ember-qunit";

moduleForModel("imp", "Imp", {
  // Specify the other units that are required for this test.
  needs: []
});

test("it exists", function(assert) {
  const model = this.subject();
  assert.ok(!!model);
});
