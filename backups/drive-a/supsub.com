!  9"P	1:
�SuperSUB V1.3
$�	:] � ��� �w�h�@������  !e ~� �U[	�A¿��![	�_�~#�_�!� ͟2���/#"�~2�� �#�x~#��� ʔ�	͟�ͱ�Ô~#�7�� ʟ�	ʟ+���*��*�~���s#r#"��� ~#���� ���	�����"��p�7�?�!  "�:��/�\ � <ʿ*�#"�*��*�"�s#r#�# �Q�K͈��K�
���Cw#�����"��q�"��q����:��/�b͑�x:�����}_ <2�!� ~�������7�\ � �> 7���:��¯:����ڬ=2��>�>�*�~#"��;¿>ɷ�>�s	� �
� :�!�"��7�?�: =��ð͡R	� <�:a	2r	�R	� <ʞ�*�|��^#V#�"��~��?*�+"��*�|��L^#V#�"���T*�+"��.R	� ~#2�"�!� "��2� Ew#�g�����^���$�@�$� �$�$¥:��/>$ʥ����$«����m�K�� ������K�����0Ox�����Göx=���&��G�m~#�����R	� ��!�~=7�w*�~#"�?�!� 4��*�w#"��:��7�~?��
��o& )�^#Vz��=���~#���#�A��0��:?��������	�[
 	�|��R{�0�{����>�{>
���_� �����a��{��_��9Disk full$�9Directory full$�9Memory full$�9Submit file not found$�9Parameter$�9Too many parameters:$�9Line too long:$�9Submit file empty$�9Control character$�	� [	� *��R�tR	� �   error on line number: $
*$!�2 6 #x��}!�"�!��"�!:
"�>�2�2������� ������ � ���  _�0!T	w�6�������	� *P	��
How to use SUPERSUB:

SUPERSUB<CR>            :print this HELP message
SUPERSUB /<CR>          :go into interactive mode
SUPERSUB /<cmd lines>   :use SUMMARY mode
SUPERSUB <FILE> <PARMS> :as in standard SUBMIT.COM

In "/" (interactive) mode, SUPERSUB will prompt you
a line at a time for the SUBMIT job input...logical
lines may be combined on the same input line by sep-
erating them with semicolons.  Example:
  A>SUPERSUB /STAT;DIR
specifies two commands on the same input line.

Submitted jobs may be nested...SUPERSUB does not erase
any existing submit job (appends to them instead).

To insert a control character into the output, pre-
fix it with a "^" (works in any mode).
$                  mmands on the same input line.��� Submitted jobs may be nested...SUPERSUB does not erase
any existing submit job (appends to them instead).

To insert a contro  $$$     SUB                                  