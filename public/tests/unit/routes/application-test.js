import { test, moduleFor } from "ember-qunit";

moduleFor("route:application", "ApplicationRoute", {
  // Specify the other units that are required for this test.
  // needs: ["controller:foo"]
});

test("it exists", function(assert) {
  const route = this.subject();
  assert.ok(route);
});
