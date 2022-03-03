enum Options {
  view,
  edit,
  delet,
}

String get optionsText {
  switch (options) {
    case Options.view:
      return 'View';
    case Options.edit:
      return 'Edit';
    case Options.delet:
      return 'Delet';
    default:
      return 'Desconhecido';
  }
}
