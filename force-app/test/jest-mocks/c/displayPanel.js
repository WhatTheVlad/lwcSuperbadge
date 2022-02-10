import { LightningElement, api } from 'lwc';

export default class DisplayPanel extends LightningElement {
  @api errors;
  @api notes;
  // any other implementation you may want to expose here

  const bla = 's' + 'bb';
  let strLang = 'javscript';

  const arr = [1,2,3,4,5];

  arr.sort((a, b) => a - b);
  console.log(arr);

}