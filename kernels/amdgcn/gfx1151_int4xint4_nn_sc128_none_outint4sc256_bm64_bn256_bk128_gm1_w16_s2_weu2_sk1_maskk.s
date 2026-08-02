	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v14, 0x1f0, v0
	v_and_b32_e32 v13, 15, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshrrev_b32_e32 v18, 1, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v17, 0xe0, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v15, 0x100, v0
	v_lshrrev_b32_e32 v2, 3, v14
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v9, 4, v13
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v16, 7, v0
	v_lshrrev_b32_e32 v55, 2, v17
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[3:4], null, s35, v2, v[9:10]
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s19, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s9, s19
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s19, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s16, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s10, 0, s7
	s_mov_b32 s11, 0x31027000
	s_mul_f32 s16, s16, 0x4f7ffffe
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s31, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s16, s16
	s_mul_i32 s10, s10, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s16, s10
	s_abs_i32 s10, s2
	s_add_i32 s16, s16, s5
	s_mul_hi_u32 s5, s10, s16
	s_xor_b32 s16, s2, s6
	s_mul_i32 s17, s5, s7
	s_ashr_i32 s16, s16, 31
	s_sub_i32 s17, s10, s17
	s_add_i32 s18, s5, 1
	s_sub_i32 s20, s17, s7
	s_cmp_ge_u32 s17, s7
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s17, s20, s17
	s_add_i32 s18, s5, 1
	s_cmp_ge_u32 s17, s7
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s30, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s5, s18, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s18, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s7, s5, s16
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 0x7f
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s18
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s7, s16
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s17, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s18, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s33, s6
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v1, s17, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s5, s35, s17
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s48, s33, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s3, s20, s3
.Ltmp19:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s19
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v1
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s3, 7
.Ltmp21:
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v3, s48, s5, v3
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 6
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 64, v1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s19, s34, s18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	s_cmpk_lt_i32 s20, 0x80
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v1, s35, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s5, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s4, s3, vcc_lo
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[4:7], v3, s[28:31], 0 offen
	buffer_load_b128 v[19:22], v1, s[28:31], 0 offen
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 3, v16
	v_lshrrev_b32_e32 v3, 3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v8, s17, v1
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[10:11], null, s18, v3, v[1:2]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xor_b32_e32 v11, v1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s18, v8
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v8
	.loc	1 216 34 is_stmt 1              ; generate_amdgcn.py:216:34
	v_add3_u32 v8, s17, s19, v10
	.loc	1 216 26 is_stmt 0              ; generate_amdgcn.py:216:26
	v_and_b32_e32 v10, 56, v18
	.loc	1 198 26 is_stmt 1              ; generate_amdgcn.py:198:26
	s_and_b32 s19, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s19
	s_mov_b32 s19, -1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0xff
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b64 v[27:28], v8, s[8:11], 0 offen
	v_lshlrev_b32_e32 v8, 3, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v8, v8, v10
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshl_or_b32 v10, v13, 10, v11
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v56, 0, v8
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xor_b32_e32 v8, 0x88, v10
	v_add_nc_u32_e32 v57, 0, v10
	v_xor_b32_e32 v11, 0x110, v10
	v_xor_b32_e32 v12, 0x198, v10
	v_xor_b32_e32 v23, 0x220, v10
	v_xor_b32_e32 v24, 0x2a8, v10
	v_xor_b32_e32 v25, 0x330, v10
	v_xor_b32_e32 v10, 0x3b8, v10
	v_add_nc_u32_e32 v58, 0, v8
	v_add_nc_u32_e32 v59, 0, v11
	v_add_nc_u32_e32 v60, 0, v12
	v_add_nc_u32_e32 v61, 0, v23
	v_add_nc_u32_e32 v64, 0, v10
	v_add_nc_u32_e32 v62, 0, v24
	v_add_nc_u32_e32 v63, 0, v25
	s_waitcnt vmcnt(1)
	v_perm_b32 v8, v19, v4, 0x5010400
	v_perm_b32 v10, v19, v4, 0x7030602
	v_perm_b32 v11, v20, v5, 0x5010400
	v_perm_b32 v12, v20, v5, 0x7030602
	v_perm_b32 v19, v21, v6, 0x5010400
	v_perm_b32 v20, v21, v6, 0x7030602
	v_perm_b32 v21, v22, v7, 0x5010400
	v_perm_b32 v22, v22, v7, 0x7030602
	v_lshrrev_b32_e32 v23, 8, v8
	v_lshrrev_b32_e32 v24, 24, v8
	v_lshrrev_b32_e32 v25, 8, v10
	v_lshrrev_b32_e32 v26, 24, v10
	v_lshrrev_b32_e32 v29, 8, v11
	v_lshrrev_b32_e32 v30, 24, v11
	v_lshrrev_b32_e32 v31, 8, v12
	v_lshrrev_b32_e32 v32, 24, v12
	v_lshrrev_b32_e32 v33, 8, v19
	v_lshrrev_b32_e32 v34, 24, v19
	v_lshrrev_b32_e32 v35, 8, v20
	v_lshrrev_b32_e32 v36, 24, v20
	v_lshrrev_b32_e32 v37, 8, v21
	v_lshrrev_b32_e32 v38, 24, v21
	v_lshrrev_b32_e32 v39, 8, v22
	v_lshrrev_b32_e32 v40, 24, v22
	v_and_b16 v4.l, 0xff, v8.l
	v_and_b16 v8.l, 0xff, v19.l
	v_lshlrev_b16 v19.l, 8, v23.l
	v_and_b16 v4.h, 0xff, v8.h
	v_and_b16 v8.h, 0xff, v19.h
	v_lshlrev_b16 v19.h, 8, v24.l
	v_and_b16 v5.l, 0xff, v10.l
	v_and_b16 v10.l, 0xff, v20.l
	v_lshlrev_b16 v20.l, 8, v25.l
	v_and_b16 v5.h, 0xff, v10.h
	v_and_b16 v10.h, 0xff, v20.h
	v_lshlrev_b16 v20.h, 8, v26.l
	v_and_b16 v6.l, 0xff, v11.l
	v_and_b16 v6.h, 0xff, v11.h
	v_and_b16 v7.l, 0xff, v12.l
	v_and_b16 v7.h, 0xff, v12.h
	v_and_b16 v11.l, 0xff, v21.l
	v_and_b16 v11.h, 0xff, v21.h
	v_and_b16 v12.l, 0xff, v22.l
	v_and_b16 v12.h, 0xff, v22.h
	v_lshlrev_b16 v21.l, 8, v29.l
	v_lshlrev_b16 v21.h, 8, v30.l
	v_lshlrev_b16 v22.l, 8, v31.l
	v_lshlrev_b16 v22.h, 8, v32.l
	v_lshlrev_b16 v23.l, 8, v33.l
	v_lshlrev_b16 v23.h, 8, v34.l
	v_lshlrev_b16 v24.l, 8, v35.l
	v_lshlrev_b16 v24.h, 8, v36.l
	v_lshlrev_b16 v25.l, 8, v37.l
	v_lshlrev_b16 v25.h, 8, v38.l
	v_lshlrev_b16 v26.l, 8, v39.l
	v_lshlrev_b16 v26.h, 8, v40.l
	v_or_b16 v4.l, v4.l, v19.l
	v_or_b16 v4.h, v4.h, v19.h
	v_or_b16 v5.l, v5.l, v20.l
	v_or_b16 v5.h, v5.h, v20.h
	v_or_b16 v6.l, v6.l, v21.l
	v_or_b16 v6.h, v6.h, v21.h
	v_or_b16 v7.l, v7.l, v22.l
	v_or_b16 v7.h, v7.h, v22.h
	v_or_b16 v8.l, v8.l, v23.l
	v_or_b16 v8.h, v8.h, v23.h
	v_or_b16 v10.l, v10.l, v24.l
	v_or_b16 v10.h, v10.h, v24.h
	v_or_b16 v11.l, v11.l, v25.l
	v_or_b16 v11.h, v11.h, v25.h
	v_or_b16 v12.l, v12.l, v26.l
	v_or_b16 v12.h, v12.h, v26.h
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v56, v[27:28] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v57, v4
	ds_store_b16_d16_hi v57, v4 offset:64
	ds_store_b16 v58, v5
	ds_store_b16_d16_hi v58, v5 offset:64
	ds_store_b16 v59, v6
	ds_store_b16_d16_hi v59, v6 offset:64
	ds_store_b16 v60, v7
	ds_store_b16_d16_hi v60, v7 offset:64
	ds_store_b16 v61, v8
	ds_store_b16_d16_hi v61, v8 offset:64
	ds_store_b16 v62, v10
	ds_store_b16_d16_hi v62, v10 offset:64
	ds_store_b16 v63, v11
	ds_store_b16_d16_hi v63, v11 offset:64
	ds_store_b16 v64, v12
	ds_store_b16_d16_hi v64, v12 offset:64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v6, 2, v17
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	s_mov_b32 s19, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr6
.LBB0_3:                                ; %Flow252
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b128 s[24:27], s[0:1], 0x20
	v_lshrrev_b32_e32 v65, 4, v15
	v_bfe_u32 v51, v0, 4, 1
	v_dual_mov_b32 v35, 0 :: v_dual_lshlrev_b32 v52, 2, v0
	v_dual_mov_b32 v40, 0 :: v_dual_lshlrev_b32 v53, 6, v13
	v_dual_mov_b32 v41, 0 :: v_dual_lshlrev_b32 v54, 5, v17
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v50, 0
	s_and_not1_b32 vcc_lo, exec_lo, s19
	s_add_i32 s0, s6, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v11, s17, v2
	v_add3_u32 v10, s34, v65, v13
	v_sub_nc_u32_e32 v67, s18, v2
	s_lshl_b32 s20, s7, 8
	v_dual_mov_b32 v43, 0 :: v_dual_lshlrev_b32 v4, 2, v0
	v_add_nc_u32_e32 v2, 0x41, v11
	v_add_nc_u32_e32 v11, 64, v11
	v_add_nc_u32_e32 v29, 32, v10
	v_mul_lo_u32 v10, s6, v10
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v3, s34, v3
	v_mul_lo_u32 v2, s35, v2
	v_mul_lo_u32 v11, s35, v11
	s_lshl_b32 s1, s16, 9
	s_lshl_b32 s16, s16, 8
	s_max_i32 s19, s0, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v50, 0 :: v_dual_lshlrev_b32 v71, 1, v10
	v_sub_nc_u32_e32 v66, s18, v1
	v_add3_u32 v2, v2, s20, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v10, v11, s20, v9
	v_lshl_or_b32 v30, s7, 9, v17
	s_lshl_b32 s7, s19, 1
	s_add_i32 s50, s17, 64
	v_subrev_nc_u32_e32 v72, s16, v2
	v_subrev_nc_u32_e32 v73, s16, v10
	s_mov_b32 s16, 0
	v_mad_u64_u32 v[10:11], null, s18, v3, v[1:2]
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v5, 56, v4
	v_and_or_b32 v4, 0x438, v4, v53
	v_lshlrev_b32_e32 v68, 1, v51
	v_subrev_nc_u32_e32 v69, s1, v30
	v_mov_b32_e32 v49, 0
	v_xor_b32_e32 v5, v5, v55
	v_xor_b32_e32 v6, 8, v4
	v_xor_b32_e32 v7, 16, v4
	v_xor_b32_e32 v8, 24, v4
	v_xor_b32_e32 v12, 32, v4
	v_or3_b32 v5, v5, v54, v53
	v_xor_b32_e32 v19, 40, v4
	v_xor_b32_e32 v20, 48, v4
	v_xor_b32_e32 v21, 56, v4
	v_add_nc_u32_e32 v74, 0, v4
	v_xor_b32_e32 v22, 8, v5
	v_xor_b32_e32 v23, 16, v5
	v_xor_b32_e32 v24, 24, v5
	v_xor_b32_e32 v25, 32, v5
	v_xor_b32_e32 v26, 40, v5
	v_xor_b32_e32 v27, 48, v5
	v_xor_b32_e32 v28, 56, v5
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v75, 0, v6
	v_add_nc_u32_e32 v76, 0, v7
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v77, 0, v8
	v_add_nc_u32_e32 v82, 0, v5
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_mul_lo_u32 v29, s6, v29
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v78, 0, v12
	v_add_nc_u32_e32 v79, 0, v19
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v80, 0, v20
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v81, 0, v21
	v_dual_mov_b32 v5, s20 :: v_dual_lshlrev_b32 v70, 1, v29
	v_dual_mov_b32 v32, 0 :: v_dual_add_nc_u32 v83, 0, v22
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v84, 0, v23
	v_dual_mov_b32 v34, 0 :: v_dual_add_nc_u32 v85, 0, v24
	v_dual_mov_b32 v31, 0 :: v_dual_add_nc_u32 v86, 0, v25
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v87, 0, v26
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v88, 0, v27
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v89, 0, v28
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v7, s22
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v35, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s1, s35, 1
	s_lshl_b32 s49, s35, 6
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s50, v66
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v11, s50, v10
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_nc_u32_e32 v12, s16, v71
	v_add_nc_u32_e32 v90, s16, v70
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s16, s16, 2
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s50, v67
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s50, s50, 64
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v133, v12, s[44:47], 0 offen
	buffer_load_u16 v134, v90, s[44:47], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b64 v[11:12], v11, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[104:107], v74 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[108:111], v82 offset1:16
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s7, s16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[108:109], v[104:105], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[110:111], v[104:105], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[108:109], v[106:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[110:111], v[106:107], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v75 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[129:132], v83 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[129:130], v[106:107], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[131:132], v[106:107], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[129:130], v[108:109], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[131:132], v[108:109], v[121:128] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v76 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[129:132], v84 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[129:130], v[106:107], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[131:132], v[106:107], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[129:130], v[108:109], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[131:132], v[108:109], v[121:128] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v77 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[129:132], v85 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[129:130], v[106:107], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[131:132], v[106:107], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[129:130], v[108:109], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[131:132], v[108:109], v[121:128] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v78 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[129:132], v86 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[129:130], v[106:107], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[131:132], v[106:107], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[129:130], v[108:109], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[131:132], v[108:109], v[121:128] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v79 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[129:132], v87 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[129:130], v[106:107], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[131:132], v[106:107], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[129:130], v[108:109], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[131:132], v[108:109], v[121:128] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v80 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[129:132], v88 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[129:130], v[106:107], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[131:132], v[106:107], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[129:130], v[108:109], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[131:132], v[108:109], v[121:128] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[106:109], v81 offset0:32 offset1:36
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[129:132], v89 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[129:130], v[106:107], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[129:130], v[108:109], v[98:105] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[131:132], v[106:107], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[131:132], v[108:109], v[121:128] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v139, v90
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v90, 0x80000000, v73, vcc_lo
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v140, v91
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v91, 0x80000000, v72, vcc_lo
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v132, v101
	v_cvt_f32_i32_e32 v135, v102
	v_cvt_f32_i32_e32 v136, v103
	v_cvt_f32_i32_e32 v111, v121
	v_cvt_f32_i32_e32 v101, v118
	v_cvt_f32_i32_e32 v102, v119
	v_cvt_f32_i32_e32 v103, v120
	v_cvt_f32_i32_e32 v112, v114
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v108, v116
	v_cvt_f32_i32_e32 v106, v117
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b128 v[114:117], v90, s[28:31], 0 offen
	buffer_load_b128 v[118:121], v91, s[28:31], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v143, v94
	v_cvt_f32_i32_e32 v144, v95
	v_cvt_f32_i32_e32 v141, v92
	v_cvt_f32_i32_e32 v142, v93
	v_cvt_f32_i32_e32 v145, v96
	v_cvt_f32_i32_e32 v146, v97
	v_cvt_f32_i32_e32 v109, v122
	v_cvt_f32_i32_e32 v107, v123
	v_cvt_f32_i32_e32 v130, v99
	v_cvt_f32_i32_e32 v138, v105
	v_cvt_f32_i32_e32 v105, v124
	v_cvt_f32_i32_e32 v129, v98
	v_cvt_f32_i32_e32 v137, v104
	v_cvt_f32_i32_e32 v104, v125
	v_cvt_f32_i32_e32 v131, v100
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v100, v128
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v99, v127
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v73, s49, v73
	v_add_nc_u32_e32 v72, s49, v72
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v95, v119, v115, 0x5010400
	v_perm_b32 v94, v119, v115, 0x7030602
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v115, v68, v69
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_perm_b32 v97, v118, v114, 0x5010400
	v_perm_b32 v96, v118, v114, 0x7030602
	v_perm_b32 v93, v120, v116, 0x5010400
	v_perm_b32 v92, v120, v116, 0x7030602
	v_perm_b32 v91, v121, v117, 0x5010400
	v_perm_b32 v90, v121, v117, 0x7030602
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v116, v115, s[40:43], 0 offen
	buffer_load_u16 v117, v115, s[40:43], 0 offen offset:4
	buffer_load_u16 v118, v115, s[40:43], 0 offen offset:8
	buffer_load_u16 v119, v115, s[40:43], 0 offen offset:12
	buffer_load_u16 v120, v115, s[40:43], 0 offen offset:16
	buffer_load_u16 v121, v115, s[40:43], 0 offen offset:20
	buffer_load_u16 v122, v115, s[40:43], 0 offen offset:24
	buffer_load_u16 v123, v115, s[40:43], 0 offen offset:28
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v114, 16, v133
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v124, v114, v139 :: v_dual_add_nc_u32 v69, s1, v69
	v_mul_f32_e32 v112, v114, v112
	v_mul_f32_e32 v101, v114, v101
	v_mul_f32_e32 v103, v114, v103
	v_mul_f32_e32 v110, v114, v110
	v_mul_f32_e32 v106, v114, v106
	v_mul_f32_e32 v113, v114, v113
	v_mul_f32_e32 v108, v114, v108
	v_mul_f32_e32 v102, v114, v102
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v116, 16, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v31, v124, v116 :: v_dual_lshlrev_b32 v124, 16, v134
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v125, v124, v129
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v36, v125, v116
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v116, 16, v117
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v117, v114, v140
	v_mul_f32_e32 v107, v124, v107
	v_mul_f32_e32 v111, v124, v111
	v_mul_f32_e32 v109, v124, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v99, v124, v99 :: v_dual_fmac_f32 v32, v117, v116
	v_mul_f32_e32 v117, v124, v130
	v_mul_f32_e32 v100, v124, v100
	v_mul_f32_e32 v104, v124, v104
	v_dual_mul_f32 v98, v124, v98 :: v_dual_fmac_f32 v37, v117, v116
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v117, v114, v141 :: v_dual_lshlrev_b32 v116, 16, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v34, v117, v116 :: v_dual_mul_f32 v117, v124, v131
	v_fmac_f32_e32 v42, v117, v116
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v117, v114, v142 :: v_dual_lshlrev_b32 v116, 16, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v33, v117, v116
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v117, v124, v132
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v38, v117, v116
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v117, v114, v143 :: v_dual_lshlrev_b32 v116, 16, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v27, v117, v116
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v117, v124, v135
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v39, v117, v116 :: v_dual_lshlrev_b32 v116, 16, v121
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v117, v114, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v28, v117, v116
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v117, v124, v136
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v40, v117, v116
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v117, v114, v145 :: v_dual_lshlrev_b32 v116, 16, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v29, v117, v116
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v117, v124, v137
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v41, v117, v116 :: v_dual_lshlrev_b32 v116, 16, v123
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v117, v114, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v30, v117, v116 :: v_dual_mul_f32 v117, v124, v138
	v_fmac_f32_e32 v35, v117, v116
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v116, v115, s[40:43], 0 offen offset:256
	buffer_load_u16 v117, v115, s[40:43], 0 offen offset:260
	buffer_load_u16 v118, v115, s[40:43], 0 offen offset:264
	buffer_load_u16 v119, v115, s[40:43], 0 offen offset:268
	buffer_load_u16 v120, v115, s[40:43], 0 offen offset:272
	buffer_load_u16 v121, v115, s[40:43], 0 offen offset:276
	buffer_load_u16 v122, v115, s[40:43], 0 offen offset:280
	buffer_load_u16 v115, v115, s[40:43], 0 offen offset:284
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v105, v124, v105
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v56, v[11:12] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b16 v11.h, 0xff, v94.l
	v_and_b16 v11.l, 0xff, v95.h
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v116, 16, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v47, v111, v116
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v111, 16, v117
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v23, v109, v111
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v109, 16, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v19, v112, v111 :: v_dual_fmac_f32 v24, v107, v109
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v20, v110, v109 :: v_dual_lshlrev_b32 v107, 16, v119
	v_fmac_f32_e32 v25, v105, v107
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v105, 16, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v43, v113, v116 :: v_dual_fmac_f32 v26, v104, v105
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v104, 16, v121
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v50, v101, v104 :: v_dual_lshlrev_b32 v101, 16, v122
	v_fmac_f32_e32 v46, v98, v104
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b16 v98.l, 0xff, v97.l
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v102, v101 :: v_dual_lshlrev_b32 v102, 16, v115
	v_fmac_f32_e32 v45, v99, v101
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v101, 8, v96
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v21, v108, v107
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v99, 8, v97
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v44, v100, v102
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v100, 24, v97
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v48, v103, v102
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b16 v97.l, 0xff, v97.h
	v_and_b16 v97.h, 0xff, v96.l
	v_lshrrev_b32_e32 v102, 24, v96
	v_lshlrev_b16 v12.l, 8, v100.l
	v_lshlrev_b16 v12.h, 8, v101.l
	v_and_b16 v96.l, 0xff, v96.h
	v_lshrrev_b32_e32 v103, 24, v95
	v_lshrrev_b32_e32 v100, 8, v94
	v_or_b16 v12.l, v97.l, v12.l
	v_or_b16 v12.h, v97.h, v12.h
	v_lshrrev_b32_e32 v97, 24, v94
	v_and_b16 v94.l, 0xff, v94.h
	v_lshlrev_b16 v94.h, 8, v102.l
	v_lshlrev_b16 v98.h, 8, v99.l
	v_lshrrev_b32_e32 v99, 8, v95
	v_and_b16 v96.h, 0xff, v95.l
	v_and_b16 v95.l, 0xff, v93.l
	v_or_b16 v94.h, v96.l, v94.h
	v_lshlrev_b16 v96.l, 8, v103.l
	v_lshlrev_b16 v95.h, 8, v99.l
	v_lshrrev_b32_e32 v99, 8, v93
	v_lshrrev_b32_e32 v101, 24, v93
	v_and_b16 v93.l, 0xff, v93.h
	v_or_b16 v11.l, v11.l, v96.l
	v_lshlrev_b16 v96.l, 8, v97.l
	v_lshlrev_b16 v93.h, 8, v100.l
	v_lshrrev_b32_e32 v97, 8, v92
	v_or_b16 v95.h, v96.h, v95.h
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v22, v106, v105
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v94.l, v94.l, v96.l
	v_lshlrev_b16 v96.l, 8, v99.l
	v_or_b16 v11.h, v11.h, v93.h
	v_and_b16 v93.h, 0xff, v92.l
	v_lshrrev_b32_e32 v99, 24, v92
	v_and_b16 v92.l, 0xff, v92.h
	v_or_b16 v95.l, v95.l, v96.l
	v_lshlrev_b16 v96.l, 8, v97.l
	v_lshlrev_b16 v92.h, 8, v101.l
	v_lshrrev_b32_e32 v97, 8, v91
	v_or_b16 v98.l, v98.l, v98.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v93.h, v93.h, v96.l
	v_lshlrev_b16 v96.l, 8, v99.l
	v_or_b16 v92.h, v93.l, v92.h
	v_and_b16 v93.l, 0xff, v91.l
	v_or_b16 v92.l, v92.l, v96.l
	v_lshrrev_b32_e32 v96, 24, v91
	v_and_b16 v91.l, 0xff, v91.h
	v_lshlrev_b16 v91.h, 8, v97.l
	v_lshrrev_b32_e32 v97, 8, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v91.h, v93.l, v91.h
	v_lshlrev_b16 v93.l, 8, v96.l
	v_lshlrev_b16 v96.l, 8, v97.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v91.l, v91.l, v93.l
	v_and_b16 v93.l, 0xff, v90.l
	v_or_b16 v93.l, v93.l, v96.l
	v_lshrrev_b32_e32 v96, 24, v90
	v_and_b16 v90.l, 0xff, v90.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v90.h, 8, v96.l
	v_or_b16 v90.l, v90.l, v90.h
	ds_store_b16 v57, v98
	ds_store_b16 v57, v12 offset:64
	ds_store_b16_d16_hi v58, v12
	ds_store_b16_d16_hi v58, v94 offset:64
	ds_store_b16_d16_hi v59, v95
	ds_store_b16 v59, v11 offset:64
	ds_store_b16_d16_hi v60, v11
	ds_store_b16 v60, v94 offset:64
	ds_store_b16 v61, v95
	ds_store_b16_d16_hi v61, v92 offset:64
	ds_store_b16_d16_hi v62, v93
	ds_store_b16 v62, v92 offset:64
	ds_store_b16_d16_hi v63, v91
	ds_store_b16 v63, v91 offset:64
	ds_store_b16 v64, v93
	ds_store_b16 v64, v90 offset:64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow250
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v6, v55
.LBB0_7:                                ; %Flow253
	.loc	1 126 32 is_stmt 1              ; generate_amdgcn.py:126:32
	v_or_b32_e32 v1, v65, v13
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_mul_i32 s1, s34, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s0, 0
	v_and_b32_e32 v2, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s1, s1, s0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v3, 32, v1
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s6, v1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v3, s6, v3
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s1, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v3, s1, v3, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s1, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v4, 0x80000000, v3, s2
	s_clause 0x1
	buffer_load_u16 v3, v1, s[36:39], 0 offen
	buffer_load_u16 v77, v4, s[36:39], 0 offen
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ; %._crit_edge._crit_edge
.Ltmp22:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 2, v0
	s_branch .LBB0_10
.Ltmp23:
.LBB0_9:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s1, -1
                                        ; implicit-def: $vgpr1
.LBB0_10:                               ; %Flow
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v75, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v74, 0
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 220 26 is_stmt 1              ; generate_amdgcn.py:220:26
	s_mov_b32 s4, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_or_b32 v4, 0x438, v52, v53
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b32_e32 v1, 56, v52
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v89, s11 :: v_dual_mov_b32 v82, s4
	v_dual_mov_b32 v88, s10 :: v_dual_add_nc_u32 v5, 0, v4
	v_mov_b32_e32 v86, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xor_b32_e32 v1, v1, v6
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_dual_mov_b32 v87, s9 :: v_dual_mov_b32 v84, s6
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[122:125], v5 offset0:32 offset1:36
	v_xad_u32 v5, v4, 8, 0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or3_b32 v1, v1, v54, v53
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_mov_b32_e32 v85, s7
	v_mov_b32_e32 v83, s5
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xad_u32 v7, v1, 56, 0
	v_xad_u32 v8, v1, 48, 0
	v_xad_u32 v10, v1, 40, 0
	v_xad_u32 v11, v1, 32, 0
	v_xad_u32 v12, v1, 24, 0
	v_xad_u32 v53, v1, 16, 0
	v_xad_u32 v54, v1, 8, 0
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_2addr_stride64_b64 v[61:64], v7 offset1:16
	ds_load_2addr_stride64_b64 v[78:81], v8 offset1:16
	ds_load_2addr_stride64_b64 v[98:101], v10 offset1:16
	ds_load_2addr_stride64_b64 v[102:105], v11 offset1:16
	ds_load_2addr_stride64_b64 v[106:109], v12 offset1:16
	ds_load_2addr_stride64_b64 v[110:113], v53 offset1:16
	ds_load_2addr_stride64_b64 v[114:117], v54 offset1:16
	ds_load_2addr_stride64_b64 v[118:121], v1 offset1:16
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xad_u32 v7, v4, 16, 0
	ds_load_2addr_stride64_b64 v[126:129], v7 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[130:133], v5 offset0:32 offset1:36
	v_xad_u32 v11, v4, 24, 0
	v_xad_u32 v8, v4, 40, 0
	v_xad_u32 v10, v4, 32, 0
	ds_load_2addr_stride64_b64 v[134:137], v11 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[138:141], v8 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[142:145], v10 offset0:32 offset1:36
	v_xad_u32 v1, v4, 56, 0
	v_xad_u32 v4, v4, 48, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[118:119], v[122:123], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[120:121], v[122:123], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[118:119], v[124:125], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[120:121], v[124:125], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[114:115], v[130:131], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[116:117], v[130:131], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[114:115], v[132:133], v[90:97] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[118:121], v4 offset0:32 offset1:36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[82:89], v[116:117], v[132:133], v[82:89] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[53:60], v[110:111], v[126:127], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[112:113], v[126:127], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[128:129], v[90:97] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[114:117], v1 offset0:32 offset1:36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[82:89], v[112:113], v[128:129], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[106:107], v[134:135], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[108:109], v[134:135], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[106:107], v[136:137], v[90:97] neg_lo:[1,1,0]
	v_mov_b32_e32 v1, v52
	v_wmma_i32_16x16x16_iu4 v[82:89], v[108:109], v[136:137], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[102:103], v[142:143], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[104:105], v[142:143], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[102:103], v[144:145], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[104:105], v[144:145], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[98:99], v[138:139], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[100:101], v[138:139], v[68:75] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[98:99], v[140:141], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[100:101], v[140:141], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[78:79], v[118:119], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[80:81], v[118:119], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[78:79], v[120:121], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[80:81], v[120:121], v[82:89] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[61:62], v[114:115], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[63:64], v[114:115], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[61:62], v[116:117], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[82:89], v[63:64], v[116:117], v[82:89] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v12, v53
	v_cvt_f32_i32_e32 v65, v54
	v_cvt_f32_i32_e32 v66, v55
	v_cvt_f32_i32_e32 v67, v56
	v_cvt_f32_i32_e32 v61, v57
	v_cvt_f32_i32_e32 v62, v58
	v_cvt_f32_i32_e32 v63, v59
	v_cvt_f32_i32_e32 v64, v60
	v_cvt_f32_i32_e32 v78, v68
	v_cvt_f32_i32_e32 v11, v69
	v_cvt_f32_i32_e32 v55, v70
	v_cvt_f32_i32_e32 v56, v71
	v_cvt_f32_i32_e32 v57, v72
	v_cvt_f32_i32_e32 v79, v73
	v_cvt_f32_i32_e32 v80, v74
	v_cvt_f32_i32_e32 v81, v75
	v_cvt_f32_i32_e32 v68, v90
	v_cvt_f32_i32_e32 v69, v91
	v_cvt_f32_i32_e32 v72, v92
	v_cvt_f32_i32_e32 v70, v93
	v_cvt_f32_i32_e32 v71, v94
	v_cvt_f32_i32_e32 v73, v95
	v_cvt_f32_i32_e32 v74, v96
	v_cvt_f32_i32_e32 v75, v97
	v_cvt_f32_i32_e32 v4, v82
	v_cvt_f32_i32_e32 v10, v83
	v_cvt_f32_i32_e32 v58, v84
	v_cvt_f32_i32_e32 v59, v85
	v_cvt_f32_i32_e32 v60, v86
	v_cvt_f32_i32_e32 v5, v87
	v_cvt_f32_i32_e32 v8, v88
	v_cvt_f32_i32_e32 v76, v89
.LBB0_12:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v7, 1, v17
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s35
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s5, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s48, s48, s0
	s_mov_b32 s7, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v51, v51, v7
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s4, s14
.Ltmp24:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.l, 0
.Ltmp25:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v7.h, v77.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v51, s48, v51, 1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v52.h, v3.l
	s_mov_b32 s0, 0x76543210
	v_mov_b16_e32 v52.l, v7.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v68, v68, v7
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v53, 0x80000000, v51, s2
	v_add_nc_u32_e32 v54, 4, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v78, v78, v52 :: v_dual_add_nc_u32 v77, 8, v51
	v_dual_mul_f32 v81, v81, v52 :: v_dual_add_nc_u32 v82, 12, v51
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v80, v80, v52 :: v_dual_add_nc_u32 v83, 16, v51
	v_dual_mul_f32 v67, v67, v52 :: v_dual_add_nc_u32 v84, 20, v51
	v_dual_mul_f32 v66, v66, v52 :: v_dual_add_nc_u32 v85, 24, v51
	v_dual_mul_f32 v65, v65, v52 :: v_dual_add_nc_u32 v86, 28, v51
	v_dual_mul_f32 v12, v12, v52 :: v_dual_add_nc_u32 v87, 0x100, v51
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v88, 0x104, v51
	v_add_nc_u32_e32 v89, 0x108, v51
	v_add_nc_u32_e32 v90, 0x10c, v51
	v_add_nc_u32_e32 v91, 0x110, v51
	v_add_nc_u32_e32 v92, 0x114, v51
	v_add_nc_u32_e32 v93, 0x118, v51
	v_add_nc_u32_e32 v51, 0x11c, v51
	v_cndmask_b32_e64 v77, 0x80000000, v77, s2
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	v_cndmask_b32_e64 v83, 0x80000000, v83, s2
	v_cndmask_b32_e64 v84, 0x80000000, v84, s2
	v_cndmask_b32_e64 v85, 0x80000000, v85, s2
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v79, v79, v52
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v54, 0x80000000, v54, s2
	s_clause 0x6
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	buffer_load_u16 v54, v54, s[4:7], 0 offen
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	v_cndmask_b32_e64 v86, 0x80000000, v86, s2
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	v_cndmask_b32_e64 v92, 0x80000000, v92, s2
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	s_clause 0x6
	buffer_load_u16 v86, v86, s[4:7], 0 offen
	buffer_load_u16 v87, v87, s[4:7], 0 offen
	buffer_load_u16 v89, v89, s[4:7], 0 offen
	buffer_load_u16 v90, v90, s[4:7], 0 offen
	buffer_load_u16 v91, v91, s[4:7], 0 offen
	buffer_load_u16 v92, v92, s[4:7], 0 offen
	buffer_load_u16 v93, v93, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v74, v74, v7
	v_mul_f32_e32 v76, v76, v7
	v_mul_f32_e32 v71, v71, v7
	v_mul_f32_e32 v11, v11, v52
	v_mul_f32_e32 v69, v69, v7
	v_mul_f32_e32 v10, v10, v7
	v_mul_f32_e32 v70, v70, v7
.Ltmp26:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s1, s35, 31
.Ltmp27:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 4, v14
.Ltmp28:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s1, s35, s1
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v2, 7, v2
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s1, s1, 1
.Ltmp29:
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v4, v4, v7
	v_mul_f32_e32 v5, v5, v7
.Ltmp30:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v3, s1, v3
.Ltmp31:
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v72, v72, v7
	v_mul_f32_e32 v75, v75, v7
	v_dual_mul_f32 v73, v73, v7 :: v_dual_and_b32 v18, 0xf0, v18
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v53, 16, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v12, v12, v53, v31
	v_fma_f32 v68, v68, v53, v36
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v31, v12, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v31, v64, v52
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v68, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v88, v88, s[4:7], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v8, v8, v7
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp33:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s5, s25, 0xffff
	s_mov_b32 s4, s24
.Ltmp34:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v54, 16, v54
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v51, 16, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v53, v65, v54, v32
	v_fma_f32 v76, v76, v51, v44
	v_fma_f32 v81, v81, v51, v48
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v87, 16, v87
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v48, v48, v81, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v92, 16, v92
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v93, 16, v93
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v78, v78, v87, v43
	v_fma_f32 v4, v4, v87, v47
	v_fma_f32 v5, v5, v92, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v87, v8, v93, v45
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v51, v43, v78, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v43, v47, v4, s2
	v_cndmask_b32_e64 v4, v44, v76, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v44, 16, v77
	v_lshlrev_b32_e32 v77, 16, v82
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v8, v46, v5, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v46, 16, v85
	v_lshlrev_b32_e32 v47, 16, v84
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v72, v72, v44, v42
	v_fma_f32 v44, v66, v44, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v45, v87, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v45, 16, v86
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v73, v73, v47, v40
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v76, 16, v83
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v44, s2
	v_cndmask_b32_e64 v44, v32, v53, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v32, v63, v52
	v_mul_f32_e32 v53, v62, v52
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v31, v31, v45, v30
	v_fma_f32 v74, v74, v46, v41
	v_fma_f32 v75, v75, v45, v35
	v_fma_f32 v32, v32, v46, v29
	v_fma_f32 v47, v53, v47, v28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v53, v59, v7
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v30, v31, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v31, 16, v91
	v_lshlrev_b32_e32 v45, 16, v89
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v79, v79, v92, v50
	v_fma_f32 v80, v80, v93, v49
	v_fma_f32 v70, v70, v77, v38
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v73, s2
	v_cndmask_b32_e64 v42, v42, v72, s2
	v_cndmask_b32_e64 v50, v50, v79, s2
	v_cndmask_b32_e64 v49, v49, v80, s2
	v_cndmask_b32_e64 v38, v38, v70, s2
	v_cndmask_b32_e64 v35, v35, v75, s2
	v_cndmask_b32_e64 v41, v41, v74, s2
	v_cndmask_b32_e64 v29, v29, v32, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v32, 16, v90
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v69, v69, v54, v37
	v_fma_f32 v54, v67, v77, v33
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v28, v47, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v47, v60, v7
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v53, v53, v32, v25
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v37, v69, s2
	v_cndmask_b32_e64 v33, v33, v54, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v54, v61, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v25, v53, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v53, v55, v52
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v71, v71, v76, v39
	v_fma_f32 v54, v54, v76, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v39, v39, v71, s2
	v_cndmask_b32_e64 v27, v27, v54, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v54, v58, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v54, v54, v45, v24
	v_fma_f32 v45, v53, v45, v20
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v24, v54, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v45, v20, v45, s2
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v20, |v29|, |v30|, |v51|
.Ltmp36:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v46, 16, v88
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v58, v10, v46, v23
	v_fma_f32 v10, v47, v31, v26
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v47, v56, v52
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v11, v46, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v23, v58, s2
	v_cndmask_b32_e64 v10, v26, v10, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v26, v57, v52
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v32, v47, v32, v21
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v19, v11, s2
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v11, |v12|, |v12|
	v_max_f32_e64 v19, |v44|, |v44|
.Ltmp38:
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v26, v26, v31, v22
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v21, v32, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v11, v11, v19
	v_max3_f32 v19, |v33|, |v27|, |v28|
.Ltmp40:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v22, v26, s2
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v21, |v46|, |v45|, |v32|
	v_max3_f32 v26, |v10|, |v8|, |v5|
.Ltmp42:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s34, s1
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v11, v11, |v34|, v19
.Ltmp44:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s1, 5
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v22, |v31|, |v50|, |v49|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max3_f32 v19, v21, v22, |v48|
	v_max3_f32 v22, |v23|, |v24|, |v25|
	v_max3_f32 v21, |v41|, |v35|, |v43|
	v_max3_f32 v11, v11, v20, v19
	v_max_f32_e64 v19, |v36|, |v36|
	v_max_f32_e64 v20, |v37|, |v37|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v19, v19, v20
	v_max3_f32 v20, |v38|, |v39|, |v40|
	v_max3_f32 v19, v19, |v42|, v20
	v_max3_f32 v20, v22, v26, |v4|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v20, v19, v21, v20
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v19, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v21, 8, v0
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v19, v11, v19
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v11, v20, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s0, 0xc1000000
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v20, v20, v11 :: v_dual_lshlrev_b32 v11, 4, v16
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v16, v16, 8, 0
	v_xor_b32_e32 v22, v11, v18
	v_lshl_or_b32 v11, v17, 3, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v16, v16, v22, v21
	v_xor_b32_e32 v11, v11, v18
	v_lshl_add_u32 v18, v21, 3, 0
	ds_store_b64 v16, v[19:20]
	v_add3_u32 v11, 0, v21, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[16:17], v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v11, v16
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v16, v11
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v16
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v16, v11, v16 :: v_dual_mov_b32 v11, v17
	v_max_f32_e32 v17, v17, v17
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v11, v11, v11
	v_max_f32_e32 v11, v17, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v17, v11
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v11, v11, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v17, v11
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v17, v11, v17
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v11, 1, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v18, v11, v6
	ds_store_b64 v6, v[16:17]
	v_lshlrev_b32_e32 v6, 3, v13
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v11, 0, v6, v11
	ds_load_b64 v[16:17], v11
.Ltmp65:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v11, v16, v16 :: v_dual_max_f32 v16, v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v11, 0x2b8cbccc, v11 :: v_dual_max_f32 v16, 0x2b8cbccc, v16
	v_div_scale_f32 v17, null, 0x40e00000, 0x40e00000, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v17
	v_fma_f32 v19, -v17, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v11, 0x40e00000, v11
	v_mul_f32_e32 v20, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v17, v20, v19
	v_fmac_f32_e32 v20, v21, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v20, v19
	v_div_fmas_f32 v17, v17, v18, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v11, v17, 0x40e00000, v11
	v_div_scale_f32 v17, null, 0x40e00000, 0x40e00000, v16
	v_rcp_f32_e32 v18, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v17, v18, 1.0
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v16, 0x40e00000, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v20, v19, v18
	v_fma_f32 v21, -v17, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v18
	v_fma_f32 v17, -v17, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v18, v20
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v18.l, v11.h
	v_mov_b16_e32 v18.h, v7.l
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v16, v17, 0x40e00000, v16
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v17.h, v7.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v17.l, v16.h
	v_and_b32_e32 v7, 1, v17
	v_and_b32_e32 v17, 1, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v16, v16, v7, 0x7fff
	v_add3_u32 v11, v11, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v7.h, v16.h
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v47, 0xffff0000, v11
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.l, v11.h
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v11, 0xffff0000, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v16, null, v47, v47, v12
	v_rcp_f32_e32 v17, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v16, v17, 1.0
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v12, v47, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v19, v18, v17
	v_fma_f32 v20, -v16, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v17
	v_fma_f32 v16, -v16, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v16, v16, v17, v19
	v_div_fixup_f32 v12, v16, v47, v12
	v_div_scale_f32 v16, null, v47, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v17, v16
	v_fma_f32 v18, -v16, v17, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, v18, v17
	v_div_scale_f32 v18, vcc_lo, v44, v47, v44
	v_mul_f32_e32 v19, v18, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v16, v19, v18
	v_fmac_f32_e32 v19, v20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v16, -v16, v19, v18
	v_div_fmas_f32 v16, v16, v17, v19
	v_div_scale_f32 v17, null, v47, v47, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v18, v17
	v_fma_f32 v19, -v17, v18, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, v19, v18
	v_div_scale_f32 v19, vcc_lo, v34, v47, v34
	v_mul_f32_e32 v20, v19, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v17, v20, v19
	v_fmac_f32_e32 v20, v21, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v20, v19
	v_div_fmas_f32 v17, v17, v18, v20
	v_div_scale_f32 v18, null, v47, v47, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v19, v18
	v_fma_f32 v20, -v18, v19, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v20, v19
	v_div_scale_f32 v20, vcc_lo, v33, v47, v33
	v_mul_f32_e32 v21, v20, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v18, v21, v20
	v_fmac_f32_e32 v21, v22, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v18, v21, v20
	v_div_fmas_f32 v18, v18, v19, v21
	v_div_scale_f32 v19, null, v47, v47, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v20, v19
	v_fma_f32 v21, -v19, v20, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v20, v21, v20
	v_div_scale_f32 v21, vcc_lo, v27, v47, v27
	v_mul_f32_e32 v22, v21, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v19, v22, v21
	v_fmac_f32_e32 v22, v26, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v19, -v19, v22, v21
	v_div_fmas_f32 v19, v19, v20, v22
	v_div_scale_f32 v20, null, v47, v47, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v19, v19, v47, v27
	v_rcp_f32_e32 v21, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v20, v21, 1.0
	v_fmac_f32_e32 v21, v22, v21
	v_div_scale_f32 v22, vcc_lo, v28, v47, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v22, v21
	v_fma_f32 v27, -v20, v26, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v21
	v_fma_f32 v20, -v20, v26, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v20, v20, v21, v26
	v_div_scale_f32 v21, null, v47, v47, v29
	v_div_fixup_f32 v20, v20, v47, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v26, -v21, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v26, v22
	v_div_scale_f32 v26, vcc_lo, v29, v47, v29
	v_mul_f32_e32 v27, v26, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v21, v27, v26
	v_fmac_f32_e32 v27, v28, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v21, -v21, v27, v26
	v_div_fmas_f32 v21, v21, v22, v27
	v_div_scale_f32 v22, null, v47, v47, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v26, v22
	v_fma_f32 v27, -v22, v26, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, vcc_lo, v30, v47, v30
	v_mul_f32_e32 v28, v27, v26
	v_div_fixup_f32 v21, v21, v47, v29
	v_div_fixup_f32 v18, v18, v47, v33
	v_div_fixup_f32 v17, v17, v47, v34
	v_div_fixup_f32 v16, v16, v47, v44
	v_fma_f32 v29, -v22, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v29, v26
	v_fma_f32 v22, -v22, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v22, v22, v26, v28
	v_div_scale_f32 v26, null, v47, v47, v51
	v_div_fixup_f32 v22, v22, v47, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v27, v26
	v_fma_f32 v28, -v26, v27, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v27, v28, v27
	v_div_scale_f32 v28, vcc_lo, v51, v47, v51
	v_mul_f32_e32 v29, v28, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v26, v29, v28
	v_fmac_f32_e32 v29, v30, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v29, v28
	v_div_fmas_f32 v26, v26, v27, v29
	v_div_scale_f32 v27, null, v47, v47, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v26, v26, v47, v51
	v_rcp_f32_e32 v28, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v27, v28, 1.0
	v_fmac_f32_e32 v28, v29, v28
	v_div_scale_f32 v29, vcc_lo, v46, v47, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v30, v29, v28
	v_fma_f32 v33, -v27, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v30, v33, v28
	v_fma_f32 v27, -v27, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v28, v30
	v_div_scale_f32 v28, null, v47, v47, v45
	v_div_fixup_f32 v27, v27, v47, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v29, v28
	v_fma_f32 v30, -v28, v29, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, vcc_lo, v45, v47, v45
	v_mul_f32_e32 v33, v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v28, v33, v30
	v_fmac_f32_e32 v33, v34, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v28, v33, v30
	v_div_fmas_f32 v28, v28, v29, v33
	v_div_scale_f32 v29, null, v47, v47, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v28, v28, v47, v45
	v_rcp_f32_e32 v30, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v29, v30, 1.0
	v_fmac_f32_e32 v30, v33, v30
	v_div_scale_f32 v33, vcc_lo, v32, v47, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v33, v30
	v_fma_f32 v44, -v29, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v44, v30
	v_fma_f32 v29, -v29, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v29, v29, v30, v34
	v_div_scale_f32 v30, null, v47, v47, v31
	v_div_fixup_f32 v29, v29, v47, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v32, v30
	v_fma_f32 v33, -v30, v32, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v33, vcc_lo, v31, v47, v31
	v_mul_f32_e32 v34, v33, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v30, v34, v33
	v_fmac_f32_e32 v34, v44, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v30, v34, v33
	v_div_fmas_f32 v30, v30, v32, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v30, v30, v47, v31
	v_div_scale_f32 v31, null, v47, v47, v50
	v_rcp_f32_e32 v32, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v33, -v31, v32, 1.0
	v_fmac_f32_e32 v32, v33, v32
	v_div_scale_f32 v33, vcc_lo, v50, v47, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v34, v33, v32
	v_fma_f32 v44, -v31, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v44, v32
	v_fma_f32 v31, -v31, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v31, v31, v32, v34
	v_div_scale_f32 v32, null, v47, v47, v49
	v_div_fixup_f32 v31, v31, v47, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v33, v32
	v_fma_f32 v34, -v32, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v33, v34, v33
	v_div_scale_f32 v34, vcc_lo, v49, v47, v49
	v_mul_f32_e32 v44, v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v32, v44, v34
	v_fmac_f32_e32 v44, v45, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v44, v34
	v_div_fmas_f32 v32, v32, v33, v44
	v_div_scale_f32 v33, null, v47, v47, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v32, v32, v47, v49
	v_rcp_f32_e32 v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v33, v34, 1.0
	v_fmac_f32_e32 v34, v44, v34
	v_div_scale_f32 v44, vcc_lo, v48, v47, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v45, v44, v34
	v_fma_f32 v46, -v33, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v46, v34
	v_fma_f32 v33, -v33, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v33, v33, v34, v45
	v_div_scale_f32 v34, null, v11, v11, v36
	v_div_fixup_f32 v33, v33, v47, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v34
	v_fma_f32 v45, -v34, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v36, v11, v36
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v34, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v34, -v34, v46, v45
	v_div_fmas_f32 v34, v34, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v34, v34, v11, v36
	v_div_scale_f32 v36, null, v11, v11, v37
	v_rcp_f32_e32 v44, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v36, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v37, v11, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v36, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v36, -v36, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v36, v36, v44, v46
	v_div_fixup_f32 v36, v36, v11, v37
	v_div_scale_f32 v37, null, v11, v11, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v37
	v_fma_f32 v45, -v37, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v42, v11, v42
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v37, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v37, v46, v45
	v_div_fmas_f32 v37, v37, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v37, v37, v11, v42
	v_div_scale_f32 v42, null, v11, v11, v38
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v42, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v38, v11, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v42, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v42, -v42, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v44, v46
	v_div_fixup_f32 v38, v42, v11, v38
	v_div_scale_f32 v42, null, v11, v11, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v42
	v_fma_f32 v45, -v42, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v39, v11, v39
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v42, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v46, v45
	v_div_fmas_f32 v42, v42, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v39, v42, v11, v39
	v_div_scale_f32 v42, null, v11, v11, v40
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v42, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v40, v11, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v42, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v42, -v42, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v44, v46
	v_div_fixup_f32 v40, v42, v11, v40
	v_div_scale_f32 v42, null, v11, v11, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v42
	v_fma_f32 v45, -v42, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v41, v11, v41
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v42, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v46, v45
	v_div_fmas_f32 v42, v42, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v41, v42, v11, v41
	v_div_scale_f32 v42, null, v11, v11, v35
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v42, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v35, v11, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v42, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v42, -v42, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v44, v46
	v_div_fixup_f32 v35, v42, v11, v35
	v_div_scale_f32 v42, null, v11, v11, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_cvt_i32_f32_e32 v49, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v42, v44, 1.0
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v43, v11, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v47, -v42, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v46, v47, v44
	v_fma_f32 v42, -v42, v46, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v42, v44, v46
	v_div_fixup_f32 v42, v42, v11, v43
	v_div_scale_f32 v43, null, v11, v11, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v44, v43
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v23, v11, v23
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v23, v43, v11, v23
	v_div_scale_f32 v43, null, v11, v11, v24
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v50, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v24, v11, v24
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v43, v11, v24
	v_div_scale_f32 v43, null, v11, v11, v25
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v51, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v25, v11, v25
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v25, v43, v11, v25
	v_div_scale_f32 v43, null, v11, v11, v10
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v52, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v10, v11, v10
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v10, v43, v11, v10
	v_div_scale_f32 v43, null, v11, v11, v8
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v8, v11, v8
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v8, v43, v11, v8
	v_div_scale_f32 v43, null, v11, v11, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v5, v11, v5
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v5, v43, v11, v5
	v_div_scale_f32 v43, null, v11, v11, v4
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v44, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cvt_i32_f32_e32 v5, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v43, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, vcc_lo, v4, v11, v4
	v_mul_f32_e32 v46, v45, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v43, v46, v45
	v_fmac_f32_e32 v46, v47, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v43, v46, v45
	v_div_fmas_f32 v43, v43, v44, v46
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fixup_f32 v4, v43, v11, v4
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v12
	v_rndne_f32_e32 v12, v16
	v_rndne_f32_e32 v16, v17
	v_rndne_f32_e32 v17, v18
	v_rndne_f32_e32 v18, v19
	v_rndne_f32_e32 v19, v20
	v_rndne_f32_e32 v20, v21
	v_rndne_f32_e32 v21, v22
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v22, v26
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v45, v19
	v_cvt_i32_f32_e32 v46, v20
	v_cvt_i32_f32_e32 v47, v21
	v_cvt_i32_f32_e32 v4, v4
	v_cvt_i32_f32_e32 v48, v22
	v_and_b32_e32 v21, 15, v45
	v_and_b32_e32 v22, 15, v46
	v_and_b32_e32 v23, 15, v47
	v_and_b32_e32 v47, 15, v4
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v4, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v46, 15, v5
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v5, 0x160, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v45, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v8, 0x200, v1
	v_and_b32_e32 v4, 0x3000, v4
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v26, v27
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xor_b32_e32 v5, v9, v5
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v27, v28
	v_rndne_f32_e32 v28, v29
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, 0, v4, v2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, v2, v8, v5
	v_lshlrev_b32_e32 v5, 5, v0
	v_lshlrev_b32_e32 v4, 7, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v5, 0x60, v5
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v29, v30
	v_rndne_f32_e32 v30, v31
	v_rndne_f32_e32 v31, v32
	v_rndne_f32_e32 v32, v33
	v_rndne_f32_e32 v33, v34
	v_rndne_f32_e32 v34, v36
	v_rndne_f32_e32 v36, v37
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v38, v39
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v41, v42
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v42, v16
	v_cvt_i32_f32_e32 v43, v17
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v4, 0x3600, v4, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_cvt_i32_f32_e32 v44, v18
	v_and_b32_e32 v16, 15, v11
	v_and_b32_e32 v17, 15, v12
	v_and_b32_e32 v18, 15, v42
	v_and_b32_e32 v19, 15, v43
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v4, v4, v14, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v41, v41, s0, 0x40e00000
	v_and_b32_e32 v24, 15, v48
	v_and_b32_e32 v25, 15, v26
	v_and_b32_e32 v26, 15, v27
	v_and_b32_e32 v27, 15, v28
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v37, v37
	v_and_b32_e32 v20, 15, v44
	v_and_b32_e32 v44, 15, v10
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v2, v[16:19]
	ds_store_b128 v2, v[24:27] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v4
	ds_load_b128 v[16:19], v4 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_med3_f32 v39, v39, s0, 0x40e00000
	v_and_b32_e32 v28, 15, v29
	v_and_b32_e32 v29, 15, v30
	v_and_b32_e32 v30, 15, v31
	v_and_b32_e32 v31, 15, v32
	v_and_b32_e32 v32, 15, v33
	v_and_b32_e32 v33, 15, v34
	v_and_b32_e32 v34, 15, v36
	v_and_b32_e32 v35, 15, v37
	v_and_b32_e32 v36, 15, v38
	v_and_b32_e32 v38, 15, v40
	v_and_b32_e32 v40, 15, v41
	v_and_b32_e32 v41, 15, v50
	v_and_b32_e32 v42, 15, v51
	v_and_b32_e32 v43, 15, v52
	v_cvt_i32_f32_e32 v39, v39
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v2, v[32:35]
	ds_store_b128 v2, v[40:43] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v4
	ds_load_b128 v[32:35], v4 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v2, v[20:23]
	ds_store_b128 v2, v[28:31] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v4
	ds_load_b128 v[28:31], v4 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v37, 15, v39
	v_and_b32_e32 v39, 15, v49
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v2, v[36:39]
	ds_store_b128 v2, v[44:47] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v4
	ds_load_b128 v[40:43], v4 offset:2048
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v16, 4, v8
	v_lshl_or_b32 v8, v18, 4, v10
	v_lshl_or_b32 v2, v19, 4, v11
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s33, 7
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v17, 4, v9
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v6, s2, s0, v6
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v2.h, 0xff, v8.l
	v_lshlrev_b16 v2.l, 8, v2.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v17, v34, 4, v26
	v_lshl_or_b32 v11, v30, 4, v22
	v_lshl_or_b32 v12, v31, 4, v23
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v23, v6, v3
	v_add3_u32 v6, v3, s1, v6
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v5.l
	v_and_b16 v2.h, 0xff, v4.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v28, 4, v20
	v_lshl_or_b32 v10, v29, 4, v21
	v_lshl_or_b32 v18, v35, 4, v27
	v_lshl_or_b32 v14, v32, 4, v24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.l, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v12.l
	v_and_b16 v2.h, 0xff, v11.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v16, v33, 4, v25
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v21, v42, 4, v38
	v_lshl_or_b32 v22, v43, 4, v39
	v_lshl_or_b32 v19, v40, 4, v36
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v10.l
	v_and_b16 v2.h, 0xff, v9.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v20, v41, 4, v37
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v1, 0x7c, v1
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.l, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v18.l
	v_and_b16 v2.h, 0xff, v17.l
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[3:4], v23, s[4:7], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v16.l
	v_and_b16 v2.h, 0xff, v14.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v3.l, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v22.l
	v_and_b16 v2.h, 0xff, v21.l
	v_or_b16 v4.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v20.l
	v_and_b16 v2.h, 0xff, v19.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v4.l, v2.h, v2.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 63, s34
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[3:4], v6, s[4:7], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 2, v13
	v_lshrrev_b32_e32 v4, 2, v15
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v2, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s5, s27, 0xffff
	v_add3_u32 v3, 0, v3, v4
	s_mov_b32 s4, s26
	ds_store_b32 v3, v7
	v_lshrrev_b32_e32 v3, 4, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 0x1c0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 2, v3
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v1, 0, v1, v3
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	ds_load_u16 v1, v1
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[4:7], 0 offen
.Ltmp66:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp67:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 147
		.amdhsa_next_free_sgpr 51
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 147
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 51
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12196
; TotalNumSgprs: 53
; NumVgprs: 147
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 53
; NumVGPRsForWavesPerEU: 147
; Occupancy: 9
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	181                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     53
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     147
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
