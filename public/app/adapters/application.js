import DS from "ember-data";

export default DS.ActiveModelAdapter.extend({
  shouldReloadAll() {
    return true;
  },

  host: "/api"
});
