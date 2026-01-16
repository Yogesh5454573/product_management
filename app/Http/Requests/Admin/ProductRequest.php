<?php

namespace App\Http\Requests\Admin;

use App\Models\Product;
use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rules\Password;

class ProductRequest extends FormRequest
{

    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        if ($this->isMethod('put')) {
            $updateProduct = Product::where(['token' => $this->token])->first();
            return [
                'name' => ['required', 'string', 'min:3', 'max:255'],
                'sku' => ['required', Rule::unique(Product::class)->ignore($updateProduct->id)],
                'price' => ['required','numeric','decimal:0,2','gt:0'],
                'stock' => ['required','integer','min:0'],
            ];
        } else if ($this->isMethod('post')) {
            return [
                'name' => ['required', 'string', 'min:3', 'max:255'],
                'sku' => ['required', Rule::unique(Product::class)],
                'price' => ['required','numeric','decimal:0,2','gt:0'],
                'stock' => ['required','integer','min:0'],
            ];
        }

        return [];
    }

    public function attributes(): array
    {
        return [
            'name' => 'Product Name',
            'sku' => 'Sku',
            'price' => 'Price',
            'stock' => 'Stock',
        ];
    }

    public function messages(): array
    {
        return [
            'price.gt' => 'The price must be a positive amount greater than zero.',
            'price.decimal' => 'The price must have at most 2 decimal places.',
            'stock.min' => 'Stock cannot be a negative number.',
            'stock.integer' => 'Stock must be a whole number.',
        ];
    }
}
