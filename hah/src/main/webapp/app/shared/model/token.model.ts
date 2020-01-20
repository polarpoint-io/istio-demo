import { IProduct } from 'app/shared/model/product/product.model';

export interface IToken {
  id?: number;
  clientAccountName?: string;
  clientId?: number;
  iin?: number;
  itemId?: number;
  name?: string;
  svcStart?: number;
  type?: string;
  products?: IProduct[];
}

export const defaultValue: Readonly<IToken> = {};
