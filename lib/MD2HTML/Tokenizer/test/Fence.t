use strict;
use warnings;
use utf8;
use lib './lib';

use Test::More;
use MD2HTML::Tokenizer::Fence;

subtest 'MD2HTML::Tokenizer::Fence->is' => sub {
    # 以下のような書き方をすると関数を見つけられずにこける
    # is MD2HTML::Tokenizer::Fence->is('```'), 1;
    my $common_header = MD2HTML::Tokenizer::Fence->is('```');
    # 1と書いてるが実際はマッチした文字列が入っている模様
    is $common_header, 1;
    
    my $indent_header = MD2HTML::Tokenizer::Fence->is('   ```');
    is $indent_header, 1;

    my $multiple_bquote_header_minimum = MD2HTML::Tokenizer::Fence->is('````');
    is $multiple_bquote_header_minimum, 1;

    my $multiple_bquote_header_over_minimum = MD2HTML::Tokenizer::Fence->is('`````');
    is $multiple_bquote_header_over_minimum, 1;

    my $escaped_header = MD2HTML::Tokenizer::Fence->is('\```');
    # 正規表現にマッチしないと空文字が来るので空文字で判定している
    is $escaped_header, '';

    my $single_bquote = MD2HTML::Tokenizer::Fence->is('`');
    is $single_bquote, '';

    my $double_bquote = MD2HTML::Tokenizer::Fence->is('``');
    is $double_bquote, '';
};

done_testing;
