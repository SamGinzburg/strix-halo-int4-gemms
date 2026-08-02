	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
	v_and_b32_e32 v59, 0x1f0, v0
	v_and_b32_e32 v58, 15, v0
	v_and_b32_e32 v61, 7, v0
	v_and_b32_e32 v60, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v62, 0xe0, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v2, 3, v59
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v57, 4, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_lshrrev_b32_e32 v19, 2, v62
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
	v_mad_u64_u32 v[3:4], null, s35, v2, v[57:58]
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
	s_sub_i32 s7, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s9, s7
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s7, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s16, s6
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_sub_i32 s10, 0, s16
	s_mov_b32 s11, 0x31027000
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s27, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s17, s17
	s_mul_i32 s10, s10, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s17, s10
	s_abs_i32 s10, s2
	s_add_i32 s17, s17, s5
	s_mul_hi_u32 s5, s10, s17
	s_xor_b32 s17, s2, s6
	s_mul_i32 s18, s5, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s18, s10, s18
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s18, s16
	s_cmp_ge_u32 s18, s16
	s_mov_b32 s10, 0x7ffffffe
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s18, s16
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s26, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s5, s19, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s16, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s18, s5, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s4, 0x7f
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s16
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s18, s17
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s19, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s16, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s33, s6
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v1, s19, v2
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s5, s35, s19
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s49, s33, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s3, s20, s3
.Ltmp19:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s7
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s16, v1
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s3, 7
.Ltmp21:
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v3, s49, s5, v3
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s48, s2, 6
	.loc	1 198 51                        ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 64, v1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0x7f
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s7, s34, s19
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
	s_and_b32 s25, s25, 0xffff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s4
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[5:8], v3, s[24:27], 0 offen
	buffer_load_b128 v[9:12], v1, s[24:27], 0 offen
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 3, v0
	v_lshlrev_b32_e32 v1, 3, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v4, s19, v3
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[13:14], null, s34, v3, v[1:2]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s16, v4
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v4
	.loc	1 214 34 is_stmt 1              ; generate_amdgcn.py:214:34
	v_add3_u32 v4, s7, s48, v13
	.loc	1 214 26 is_stmt 0              ; generate_amdgcn.py:214:26
	v_lshlrev_b32_e32 v13, 3, v0
	.loc	1 198 26 is_stmt 1              ; generate_amdgcn.py:198:26
	s_and_b32 s7, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s7
	s_mov_b32 s7, -1
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_add_nc_u32_e32 v22, 0, v13
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0xff
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b64 v[31:32], v4, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xor_b32_e32 v4, v1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v14, v58, 10, v4
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v4, 4, v60
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xor_b32_e32 v13, 0x88, v14
	v_add_nc_u32_e32 v23, 0, v14
	v_xor_b32_e32 v15, 0x110, v14
	v_xor_b32_e32 v16, 0x198, v14
	v_xor_b32_e32 v17, 0x220, v14
	v_xor_b32_e32 v18, 0x2a8, v14
	v_xor_b32_e32 v20, 0x330, v14
	v_xor_b32_e32 v14, 0x3b8, v14
	v_add_nc_u32_e32 v24, 0, v13
	v_add_nc_u32_e32 v25, 0, v15
	v_add_nc_u32_e32 v26, 0, v16
	v_add_nc_u32_e32 v27, 0, v17
	v_add_nc_u32_e32 v30, 0, v14
	v_add_nc_u32_e32 v28, 0, v18
	v_add_nc_u32_e32 v29, 0, v20
	s_waitcnt vmcnt(1)
	v_perm_b32 v13, v9, v5, 0x5010400
	v_perm_b32 v9, v9, v5, 0x7030602
	v_perm_b32 v14, v10, v6, 0x5010400
	v_perm_b32 v10, v10, v6, 0x7030602
	v_perm_b32 v15, v11, v7, 0x5010400
	v_perm_b32 v11, v11, v7, 0x7030602
	v_perm_b32 v16, v12, v8, 0x5010400
	v_perm_b32 v17, v12, v8, 0x7030602
	v_lshrrev_b32_e32 v18, 8, v13
	v_lshrrev_b32_e32 v20, 24, v13
	v_lshrrev_b32_e32 v21, 8, v9
	v_lshrrev_b32_e32 v33, 24, v9
	v_lshrrev_b32_e32 v34, 8, v14
	v_lshrrev_b32_e32 v35, 24, v14
	v_lshrrev_b32_e32 v36, 8, v10
	v_lshrrev_b32_e32 v37, 24, v10
	v_lshrrev_b32_e32 v38, 8, v15
	v_lshrrev_b32_e32 v39, 24, v15
	v_lshrrev_b32_e32 v40, 8, v11
	v_lshrrev_b32_e32 v41, 24, v11
	v_lshrrev_b32_e32 v42, 8, v16
	v_lshrrev_b32_e32 v43, 24, v16
	v_lshrrev_b32_e32 v44, 8, v17
	v_lshrrev_b32_e32 v45, 24, v17
	v_and_b16 v5.l, 0xff, v13.l
	v_lshlrev_b16 v13.l, 8, v18.l
	v_and_b16 v5.h, 0xff, v13.h
	v_lshlrev_b16 v13.h, 8, v20.l
	v_and_b16 v6.l, 0xff, v9.l
	v_and_b16 v7.l, 0xff, v14.l
	v_lshlrev_b16 v14.l, 8, v21.l
	v_and_b16 v6.h, 0xff, v9.h
	v_and_b16 v7.h, 0xff, v14.h
	v_lshlrev_b16 v14.h, 8, v33.l
	v_and_b16 v8.l, 0xff, v10.l
	v_and_b16 v8.h, 0xff, v10.h
	v_and_b16 v9.l, 0xff, v15.l
	v_and_b16 v9.h, 0xff, v15.h
	v_and_b16 v10.l, 0xff, v11.l
	v_and_b16 v10.h, 0xff, v11.h
	v_and_b16 v11.l, 0xff, v16.l
	v_and_b16 v11.h, 0xff, v16.h
	v_and_b16 v12.l, 0xff, v17.l
	v_and_b16 v12.h, 0xff, v17.h
	v_lshlrev_b16 v15.l, 8, v34.l
	v_lshlrev_b16 v15.h, 8, v35.l
	v_lshlrev_b16 v16.l, 8, v36.l
	v_lshlrev_b16 v16.h, 8, v37.l
	v_lshlrev_b16 v17.l, 8, v38.l
	v_lshlrev_b16 v17.h, 8, v39.l
	v_lshlrev_b16 v18.l, 8, v40.l
	v_lshlrev_b16 v18.h, 8, v41.l
	v_lshlrev_b16 v20.l, 8, v42.l
	v_lshlrev_b16 v20.h, 8, v43.l
	v_lshlrev_b16 v21.l, 8, v44.l
	v_lshlrev_b16 v21.h, 8, v45.l
	v_or_b16 v5.l, v5.l, v13.l
	v_or_b16 v5.h, v5.h, v13.h
	v_or_b16 v6.l, v6.l, v14.l
	v_or_b16 v6.h, v6.h, v14.h
	v_or_b16 v7.l, v7.l, v15.l
	v_or_b16 v7.h, v7.h, v15.h
	v_or_b16 v8.l, v8.l, v16.l
	v_or_b16 v8.h, v8.h, v16.h
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v20.l
	v_or_b16 v11.h, v11.h, v20.h
	v_or_b16 v12.l, v12.l, v21.l
	v_or_b16 v12.h, v12.h, v21.h
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(0)
	ds_store_b64 v22, v[31:32] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v23, v5
	ds_store_b16_d16_hi v23, v5 offset:64
	ds_store_b16 v24, v6
	ds_store_b16_d16_hi v24, v6 offset:64
	ds_store_b16 v25, v7
	ds_store_b16_d16_hi v25, v7 offset:64
	ds_store_b16 v26, v8
	ds_store_b16_d16_hi v26, v8 offset:64
	ds_store_b16 v27, v9
	ds_store_b16_d16_hi v27, v9 offset:64
	ds_store_b16 v28, v10
	ds_store_b16_d16_hi v28, v10 offset:64
	ds_store_b16 v29, v11
	ds_store_b16_d16_hi v29, v11 offset:64
	ds_store_b16 v30, v12
	ds_store_b16_d16_hi v30, v12 offset:64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v99, 2, v62
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	s_mov_b32 s7, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr99
.LBB0_3:                                ; %Flow354
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b128 s[28:31], s[0:1], 0x20
	v_or_b32_e32 v31, v4, v58
	v_bfe_u32 v95, v0, 4, 1
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v20, 6, v58
	v_dual_mov_b32 v84, 0 :: v_dual_lshlrev_b32 v21, 5, v62
	v_dual_mov_b32 v83, 0 :: v_dual_lshlrev_b32 v96, 2, v0
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v97, 0, v31
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v63, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v33, s16, v2
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v2, s19, v2
	v_lshl_or_b32 v13, s18, 9, v62
	v_sub_nc_u32_e32 v32, s16, v3
	s_mov_b32 s16, 0
	s_lshl_b32 s0, s17, 9
	s_add_i32 s50, s19, 64
	v_subrev_nc_u32_e32 v35, s0, v13
	s_lshl_b32 s0, s18, 8
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v14, 0x41, v2
	v_add_nc_u32_e32 v2, 64, v2
	v_add3_u32 v4, s48, v4, v58
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v13, s35, v14
	v_mul_lo_u32 v2, s35, v2
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	v_mov_b32_e32 v92, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_add3_u32 v13, v13, s0, v57
	v_add3_u32 v2, v2, s0, v57
	s_lshl_b32 s0, s17, 8
	s_mov_b32 s17, s16
	v_lshlrev_b32_e32 v5, 2, v0
	v_add_nc_u32_e32 v3, s50, v3
	v_add_nc_u32_e32 v15, 32, v4
	v_mul_lo_u32 v4, s6, v4
	v_lshlrev_b32_e32 v34, 1, v95
	v_and_b32_e32 v5, 56, v5
	v_mul_lo_u32 v3, s34, v3
	v_subrev_nc_u32_e32 v39, s0, v2
	v_subrev_nc_u32_e32 v38, s0, v13
	v_mov_b32_e32 v91, 0
	v_xor_b32_e32 v5, v5, v19
	v_dual_mov_b32 v90, 0 :: v_dual_lshlrev_b32 v37, 1, v4
	v_mov_b32_e32 v89, 0
	v_add3_u32 v40, v3, s48, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v5, v20, v21, v5
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v86, 0
	v_mov_b32_e32 v72, 0
	v_xor_b32_e32 v6, 8, v5
	v_xor_b32_e32 v7, 16, v5
	v_xor_b32_e32 v8, 24, v5
	v_xor_b32_e32 v9, 32, v5
	v_xor_b32_e32 v10, 40, v5
	v_xor_b32_e32 v11, 48, v5
	v_xor_b32_e32 v12, 56, v5
	v_add_nc_u32_e32 v41, 0, v5
	v_add_nc_u32_e32 v42, 0, v6
	v_add_nc_u32_e32 v43, 0, v7
	v_add_nc_u32_e32 v44, 0, v8
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v6, s21
	v_mul_lo_u32 v14, s6, v15
	v_add_nc_u32_e32 v45, 0, v9
	v_add_nc_u32_e32 v46, 0, v10
	v_add_nc_u32_e32 v47, 0, v11
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v48, 0, v12
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v7, s22 :: v_dual_lshlrev_b32 v36, 1, v14
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_mov_b32_e32 v8, s23
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v77, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s7, s1, 1
	s_mov_b64 s[36:37], s[12:13]
	s_lshl_b32 s51, s35, 1
	s_lshl_b32 s52, s35, 6
	s_lshl_b32 s34, s34, 6
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s50, v32
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v49, v37, s[44:47], 0 offen
	buffer_load_u16 v50, v36, s[44:47], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s0, s50, v33
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s7, s7, -1
	s_add_i32 s50, s50, 64
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_dual_cndmask_b32 v9, 0x80000000, v40 :: v_dual_add_nc_u32 v164, v34, v35
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s0, s0, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s7, 0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v100, 0x80000000, v39, s0
	v_cndmask_b32_e64 v101, 0x80000000, v38, s0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b64 v[17:18], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v51, v97 offset:16864
	ds_load_u8 v52, v97 offset:16800
	ds_load_u8 v53, v97 offset:16736
	ds_load_u8 v54, v97 offset:16672
	ds_load_u8 v55, v97 offset:16608
	ds_load_u8 v56, v97 offset:16544
	ds_load_u8 v98, v97 offset:16480
	ds_load_u8 v99, v97 offset:16416
	ds_load_u8 v102, v97 offset:17376
	ds_load_u8 v103, v97 offset:17312
	ds_load_u8 v104, v97 offset:17248
	ds_load_u8 v105, v97 offset:17184
	ds_load_u8 v106, v97 offset:17120
	ds_load_u8 v107, v97 offset:17056
	ds_load_u8 v108, v97 offset:16992
	ds_load_u8 v109, v97 offset:16928
	ds_load_u8 v110, v97 offset:17888
	ds_load_u8 v111, v97 offset:17824
	ds_load_u8 v112, v97 offset:17760
	ds_load_u8 v113, v97 offset:17696
	ds_load_u8 v114, v97 offset:17632
	ds_load_u8 v115, v97 offset:17568
	ds_load_u8 v116, v97 offset:17504
	ds_load_u8 v117, v97 offset:17440
	ds_load_u8 v118, v97 offset:18400
	ds_load_u8 v119, v97 offset:18336
	ds_load_u8 v120, v97 offset:18272
	ds_load_u8 v121, v97 offset:18208
	ds_load_u8 v130, v97 offset:18144
	ds_load_u8 v131, v97 offset:18080
	ds_load_u8 v132, v97 offset:18016
	ds_load_u8 v133, v97 offset:17952
	ds_load_u8 v134, v97 offset:18912
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[9:12], v41 offset1:16
	ds_load_2addr_stride64_b64 v[13:16], v42 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v122, v97 offset:16704
	ds_load_u8 v123, v97 offset:16640
	ds_load_u8 v124, v97 offset:16832
	ds_load_u8 v125, v97 offset:16768
	ds_load_u8 v126, v97 offset:16448
	ds_load_u8 v127, v97 offset:16384
	ds_load_u8 v128, v97 offset:16576
	ds_load_u8 v129, v97 offset:16512
	ds_load_u8 v135, v97 offset:17216
	ds_load_u8 v136, v97 offset:17152
	ds_load_u8 v137, v97 offset:17344
	ds_load_u8 v138, v97 offset:17280
	ds_load_u8 v139, v97 offset:16960
	ds_load_u8 v140, v97 offset:16896
	ds_load_u8 v141, v97 offset:17088
	ds_load_u8 v142, v97 offset:17024
	ds_load_u8 v165, v97 offset:17728
	ds_load_u8 v166, v97 offset:17664
	s_waitcnt lgkmcnt(49)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v54, v99, v98, 0xc0c0004
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v56, v105, v104, 0xc0c0004
	v_perm_b32 v98, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v102, v107, v106, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v103, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v104, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v105, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v106, v129, v128, 0xc0c0004
	v_perm_b32 v99, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v107, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v108, v138, v137, 0xc0c0004
	v_lshl_or_b32 v52, v51, 16, v53
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v109, v140, v139, 0xc0c0004
	v_lshl_or_b32 v51, v55, 16, v54
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v122, v142, v141, 0xc0c0004
	v_lshl_or_b32 v54, v98, 16, v56
	v_lshl_or_b32 v56, v104, 16, v103
	v_lshl_or_b32 v55, v106, 16, v105
	v_lshl_or_b32 v53, v102, 16, v99
	v_lshl_or_b32 v99, v108, 16, v107
	v_lshl_or_b32 v98, v122, 16, v109
	v_wmma_i32_16x16x16_iu4 v[122:129], v[9:10], v[51:52], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[148:155], v[9:10], v[55:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[156:163], v[11:12], v[55:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[11:12], v[51:52], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v167, v97 offset:17856
	ds_load_u8 v56, v97 offset:18784
	ds_load_u8 v103, v97 offset:18528
	ds_load_u8 v104, v97 offset:18464
	ds_load_u8 v168, v97 offset:17792
	v_wmma_i32_16x16x16_iu4 v[122:129], v[13:14], v[53:54], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[148:155], v[13:14], v[98:99], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[156:163], v[15:16], v[98:99], v[156:163] neg_lo:[1,1,0]
	v_perm_b32 v13, v113, v112, 0xc0c0004
	v_perm_b32 v14, v111, v110, 0xc0c0004
	ds_load_u8 v111, v97 offset:19296
	ds_load_u8 v112, v97 offset:18976
	ds_load_u8 v99, v97 offset:18592
	v_wmma_i32_16x16x16_iu4 v[140:147], v[15:16], v[53:54], v[140:147] neg_lo:[1,1,0]
	ds_load_u8 v15, v97 offset:17472
	ds_load_u8 v16, v97 offset:17408
	ds_load_u8 v51, v97 offset:17600
	ds_load_u8 v52, v97 offset:17536
	ds_load_u8 v53, v97 offset:18848
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[9:12], v43 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v98, v166, v165, 0xc0c0004
	v_perm_b32 v54, v117, v116, 0xc0c0004
	v_perm_b32 v55, v115, v114, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	v_perm_b32 v109, v133, v132, 0xc0c0004
	v_perm_b32 v110, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v13, v55, 16, v54
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v102, v168, v167, 0xc0c0004
	ds_load_u8 v54, v97 offset:18720
	ds_load_u8 v55, v97 offset:18656
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_lshl_or_b32 v16, v102, 16, v98
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	ds_load_u8 v102, v97 offset:18368
	ds_load_u8 v105, v97 offset:18304
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[9:10], v[13:14], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[11:12], v[13:14], v[140:147] neg_lo:[1,1,0]
	v_perm_b32 v13, v121, v120, 0xc0c0004
	v_lshl_or_b32 v15, v51, 16, v15
	ds_load_u8 v51, v97 offset:18240
	ds_load_u8 v98, v97 offset:18176
	v_perm_b32 v14, v119, v118, 0xc0c0004
	ds_load_u8 v52, v97 offset:19424
	v_wmma_i32_16x16x16_iu4 v[148:155], v[9:10], v[15:16], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[156:163], v[11:12], v[15:16], v[156:163] neg_lo:[1,1,0]
	ds_load_u8 v15, v97 offset:17984
	ds_load_u8 v16, v97 offset:17920
	ds_load_u8 v106, v97 offset:18112
	ds_load_u8 v107, v97 offset:18048
	ds_load_u8 v108, v97 offset:19360
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[9:12], v44 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v14, v14, 16, v13
	v_lshl_or_b32 v13, v110, 16, v109
	ds_load_u8 v109, v97 offset:19232
	ds_load_u8 v110, v97 offset:19168
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v102, v105, v102, 0xc0c0004
	ds_load_u8 v105, v97 offset:19040
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v51, v98, v51, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_lshl_or_b32 v16, v102, 16, v51
	ds_load_u8 v51, v97 offset:18752
	ds_load_u8 v102, v97 offset:18688
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[9:10], v[13:14], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[11:12], v[13:14], v[140:147] neg_lo:[1,1,0]
	v_lshl_or_b32 v15, v106, 16, v15
	ds_load_u8 v106, v97 offset:18880
	ds_load_u8 v113, v97 offset:18816
	v_perm_b32 v13, v54, v56, 0xc0c0004
	v_perm_b32 v14, v53, v134, 0xc0c0004
	v_perm_b32 v53, v104, v103, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[148:155], v[9:10], v[15:16], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[156:163], v[11:12], v[15:16], v[156:163] neg_lo:[1,1,0]
	ds_load_u8 v15, v97 offset:18496
	ds_load_u8 v16, v97 offset:18432
	ds_load_u8 v114, v97 offset:18624
	ds_load_u8 v115, v97 offset:18560
	ds_load_u8 v116, v97 offset:19872
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[9:12], v45 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v54, v99, v55, 0xc0c0004
	v_lshl_or_b32 v14, v14, 16, v13
	ds_load_u8 v107, v97 offset:19936
	ds_load_u8 v56, v97 offset:19616
	ds_load_u8 v103, v97 offset:19488
	ds_load_u8 v98, v97 offset:19104
	v_lshl_or_b32 v13, v54, 16, v53
	ds_load_u8 v55, v97 offset:19808
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v51, v102, v51, 0xc0c0004
	ds_load_u8 v53, v97 offset:19744
	ds_load_u8 v54, v97 offset:19680
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v99, v113, v106, 0xc0c0004
	ds_load_u8 v113, v97 offset:20448
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v104, v115, v114, 0xc0c0004
	v_lshl_or_b32 v16, v99, 16, v51
	ds_load_u8 v51, v97 offset:19264
	ds_load_u8 v99, v97 offset:19200
	s_waitcnt lgkmcnt(10)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[9:10], v[13:14], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[11:12], v[13:14], v[140:147] neg_lo:[1,1,0]
	v_lshl_or_b32 v15, v104, 16, v15
	ds_load_u8 v104, v97 offset:19392
	ds_load_u8 v106, v97 offset:19328
	v_perm_b32 v13, v109, v111, 0xc0c0004
	ds_load_u8 v111, v97 offset:19776
	ds_load_u8 v102, v97 offset:19552
	v_wmma_i32_16x16x16_iu4 v[148:155], v[9:10], v[15:16], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[156:163], v[11:12], v[15:16], v[156:163] neg_lo:[1,1,0]
	ds_load_u8 v15, v97 offset:19008
	ds_load_u8 v16, v97 offset:18944
	ds_load_u8 v114, v97 offset:19136
	ds_load_u8 v115, v97 offset:19072
	ds_load_u8 v117, v97 offset:20384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[9:12], v46 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v14, v108, v52, 0xc0c0004
	v_perm_b32 v52, v112, v105, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v98, v98, v110, 0xc0c0004
	ds_load_u8 v105, v97 offset:20320
	ds_load_u8 v110, v97 offset:20064
	ds_load_u8 v112, v97 offset:19712
	v_lshl_or_b32 v14, v14, 16, v13
	v_lshl_or_b32 v13, v98, 16, v52
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v51, v99, v51, 0xc0c0004
	v_perm_b32 v54, v56, v54, 0xc0c0004
	ds_load_u8 v52, v97 offset:20256
	ds_load_u8 v98, v97 offset:20192
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v104, v106, v104, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v16, v104, 16, v51
	ds_load_u8 v51, v97 offset:19904
	ds_load_u8 v104, v97 offset:19840
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v106, v115, v114, 0xc0c0004
	ds_load_u8 v114, v97 offset:19520
	ds_load_u8 v115, v97 offset:19456
	s_waitcnt lgkmcnt(9)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[9:10], v[13:14], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[11:12], v[13:14], v[140:147] neg_lo:[1,1,0]
	v_perm_b32 v13, v53, v55, 0xc0c0004
	v_lshl_or_b32 v15, v106, 16, v15
	v_perm_b32 v14, v116, v107, 0xc0c0004
	v_perm_b32 v53, v103, v102, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[106:109], v48 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v102, v97 offset:20288
	ds_load_u8 v103, v97 offset:20224
	v_wmma_i32_16x16x16_iu4 v[148:155], v[9:10], v[15:16], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[156:163], v[11:12], v[15:16], v[156:163] neg_lo:[1,1,0]
	ds_load_u8 v15, v97 offset:19648
	ds_load_u8 v16, v97 offset:19584
	ds_load_u8 v118, v97 offset:20000
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[9:12], v47 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v14, v14, 16, v13
	v_lshl_or_b32 v13, v54, 16, v53
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v53, v112, v111, 0xc0c0004
	ds_load_u8 v112, v97 offset:20352
	ds_load_u8 v119, v97 offset:20096
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v51, v104, v51, 0xc0c0004
	ds_load_u8 v104, v97 offset:20416
	ds_load_u8 v99, v97 offset:20128
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v54, v115, v114, 0xc0c0004
	ds_load_u8 v114, v97 offset:20032
	ds_load_u8 v115, v97 offset:19968
	ds_load_u8 v116, v97 offset:20160
	v_perm_b32 v56, v52, v105, 0xc0c0004
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v52, v164, s[40:43], 0 offen offset:4
	buffer_load_u16 v55, v164, s[40:43], 0 offen offset:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v103, v103, v102, 0xc0c0004
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v102, v164, s[40:43], 0 offen offset:264
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_lshl_or_b32 v16, v51, 16, v53
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[122:129], v[9:10], v[13:14], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[140:147], v[11:12], v[13:14], v[140:147] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v53, v164, s[40:43], 0 offen offset:8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v15, v15, 16, v54
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v54, v164, s[40:43], 0 offen offset:12
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v104, v112, v104, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[148:155], v[9:10], v[15:16], v[148:155] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[156:163], v[11:12], v[15:16], v[156:163] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v100, s[24:27], 0 offen
	buffer_load_b128 v[13:16], v101, s[24:27], 0 offen
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v51, v164, s[40:43], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v100, v117, v113, 0xc0c0004
	v_perm_b32 v101, v118, v110, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v105, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v119, v116, 0xc0c0004
	v_lshl_or_b32 v111, v100, 16, v56
	v_lshl_or_b32 v113, v104, 16, v103
	v_lshl_or_b32 v110, v98, 16, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v99, v164, s[40:43], 0 offen offset:28
	buffer_load_u16 v100, v164, s[40:43], 0 offen offset:256
	buffer_load_u16 v101, v164, s[40:43], 0 offen offset:260
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v112, v112, 16, v105
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x3
	buffer_load_u16 v56, v164, s[40:43], 0 offen offset:20
	buffer_load_u16 v98, v164, s[40:43], 0 offen offset:24
	buffer_load_u16 v103, v164, s[40:43], 0 offen offset:268
	buffer_load_u16 v104, v164, s[40:43], 0 offen offset:272
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[122:129], v[106:107], v[110:111], v[122:129] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v105, v164, s[40:43], 0 offen offset:276
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[148:155], v[106:107], v[112:113], v[148:155] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v106, v164, s[40:43], 0 offen offset:280
	buffer_load_u16 v107, v164, s[40:43], 0 offen offset:284
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[140:147], v[108:109], v[110:111], v[140:147] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[156:163], v[108:109], v[112:113], v[156:163] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v116, v123
	v_cvt_f32_i32_e32 v114, v124
	v_cvt_f32_i32_e32 v112, v125
	v_cvt_f32_i32_e32 v111, v126
	v_cvt_f32_i32_e32 v110, v127
	v_cvt_f32_i32_e32 v109, v128
	v_cvt_f32_i32_e32 v108, v129
	v_cvt_f32_i32_e32 v139, v148
	v_cvt_f32_i32_e32 v137, v149
	v_cvt_f32_i32_e32 v136, v150
	v_cvt_f32_i32_e32 v135, v151
	v_cvt_f32_i32_e32 v134, v152
	v_cvt_f32_i32_e32 v132, v153
	v_cvt_f32_i32_e32 v130, v154
	v_cvt_f32_i32_e32 v128, v155
	v_cvt_f32_i32_e32 v118, v140
	v_cvt_f32_i32_e32 v119, v145
	v_cvt_f32_i32_e32 v120, v146
	v_cvt_f32_i32_e32 v121, v147
	v_cvt_f32_i32_e32 v113, v141
	v_cvt_f32_i32_e32 v117, v142
	v_cvt_f32_i32_e32 v127, v143
	v_cvt_f32_i32_e32 v131, v144
	v_cvt_f32_i32_e32 v138, v156
	v_cvt_f32_i32_e32 v124, v161
	v_cvt_f32_i32_e32 v125, v162
	v_cvt_f32_i32_e32 v126, v163
	v_cvt_f32_i32_e32 v115, v157
	v_cvt_f32_i32_e32 v123, v158
	v_cvt_f32_i32_e32 v129, v159
	v_cvt_f32_i32_e32 v133, v160
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v50, 16, v50
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v35, s51, v35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v116, v50, v116 :: v_dual_add_nc_u32 v37, 2, v37
	v_mul_f32_e32 v122, v50, v122
	v_mul_f32_e32 v114, v50, v114
	v_dual_mul_f32 v139, v49, v139 :: v_dual_add_nc_u32 v36, 2, v36
	v_dual_mul_f32 v136, v49, v136 :: v_dual_add_nc_u32 v39, s52, v39
	v_dual_mul_f32 v137, v49, v137 :: v_dual_add_nc_u32 v40, s34, v40
	v_dual_mul_f32 v135, v49, v135 :: v_dual_add_nc_u32 v38, s52, v38
	v_mul_f32_e32 v112, v50, v112
	v_dual_mul_f32 v134, v49, v134 :: v_dual_mul_f32 v111, v50, v111
	v_dual_mul_f32 v132, v49, v132 :: v_dual_mul_f32 v109, v50, v109
	v_dual_mul_f32 v110, v50, v110 :: v_dual_mul_f32 v129, v49, v129
	v_dual_mul_f32 v130, v49, v130 :: v_dual_mul_f32 v119, v50, v119
	v_dual_mul_f32 v128, v49, v128 :: v_dual_mul_f32 v121, v50, v121
	v_dual_mul_f32 v108, v50, v108 :: v_dual_mul_f32 v123, v49, v123
	v_dual_mul_f32 v138, v49, v138 :: v_dual_mul_f32 v131, v50, v131
	v_mul_f32_e32 v118, v50, v118
	v_mul_f32_e32 v120, v50, v120
	v_mul_f32_e32 v127, v50, v127
	v_mul_f32_e32 v117, v50, v117
	v_dual_mul_f32 v50, v50, v113 :: v_dual_mul_f32 v113, v49, v124
	v_mul_f32_e32 v124, v49, v125
	v_mul_f32_e32 v125, v49, v126
	v_mul_f32_e32 v126, v49, v133
	v_mul_f32_e32 v49, v49, v115
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(18)
	ds_store_b64 v22, v[17:18] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(11)
	v_perm_b32 v115, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v9, 16, v51
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_perm_b32 v133, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v10, 16, v52
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_perm_b32 v141, v16, v12, 0x5010400
	v_perm_b32 v142, v16, v12, 0x7030602
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v93, v139, v9 :: v_dual_lshlrev_b32 v12, 16, v54
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v16, 16, v55
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_perm_b32 v140, v15, v11, 0x5010400
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v80, v116, v10 :: v_dual_lshlrev_b32 v55, 16, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v51, 16, v56
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_perm_b32 v15, v15, v11, 0x7030602
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v76, v137, v10 :: v_dual_lshlrev_b32 v11, 16, v53
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v52, 16, v98
	v_lshlrev_b32_e32 v53, 16, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v85, v114, v11 :: v_dual_lshlrev_b32 v54, 16, v100
	v_dual_fmac_f32 v73, v132, v51 :: v_dual_lshlrev_b32 v56, 16, v102
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v75, v128, v53 :: v_dual_lshlrev_b32 v98, 16, v103
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v94, v122, v9 :: v_dual_lshlrev_b32 v99, 16, v104
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v83, v110, v51 :: v_dual_lshlrev_b32 v100, 16, v105
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v78, v135, v12 :: v_dual_lshlrev_b32 v101, 16, v106
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v77, v108, v53 :: v_dual_lshlrev_b32 v102, 16, v107
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v17, 8, v115
	v_lshrrev_b32_e32 v18, 24, v115
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v64, v49, v55 :: v_dual_fmac_f32 v65, v123, v56
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v49, 8, v13
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v68, v50, v55 :: v_dual_fmac_f32 v69, v117, v56
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v50, 24, v13
	v_lshrrev_b32_e32 v51, 8, v133
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v79, v136, v11
	v_fmac_f32_e32 v81, v112, v12
	v_dual_fmac_f32 v72, v134, v16 :: v_dual_fmac_f32 v91, v124, v101
	v_dual_fmac_f32 v82, v111, v16 :: v_dual_fmac_f32 v63, v138, v54
	v_dual_fmac_f32 v74, v130, v52 :: v_dual_fmac_f32 v71, v131, v99
	v_dual_fmac_f32 v84, v109, v52 :: v_dual_fmac_f32 v89, v118, v54
	v_dual_fmac_f32 v66, v129, v98 :: v_dual_fmac_f32 v67, v126, v99
	v_dual_fmac_f32 v92, v113, v100 :: v_dual_fmac_f32 v87, v120, v101
	v_fmac_f32_e32 v90, v125, v102
	v_fmac_f32_e32 v70, v127, v98
	v_fmac_f32_e32 v88, v119, v100
	v_fmac_f32_e32 v86, v121, v102
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b16 v9.l, 0xff, v115.l
	v_lshrrev_b32_e32 v52, 24, v133
	v_lshrrev_b32_e32 v53, 8, v14
	v_lshrrev_b32_e32 v54, 24, v14
	v_lshrrev_b32_e32 v55, 8, v140
	v_lshrrev_b32_e32 v56, 24, v140
	v_lshrrev_b32_e32 v98, 8, v15
	v_lshrrev_b32_e32 v99, 24, v15
	v_lshrrev_b32_e32 v100, 8, v141
	v_lshrrev_b32_e32 v101, 24, v141
	v_lshrrev_b32_e32 v102, 8, v142
	v_lshrrev_b32_e32 v103, 24, v142
	v_lshlrev_b16 v17.l, 8, v17.l
	v_and_b16 v9.h, 0xff, v115.h
	v_lshlrev_b16 v17.h, 8, v18.l
	v_and_b16 v10.l, 0xff, v13.l
	v_lshlrev_b16 v18.l, 8, v49.l
	v_and_b16 v10.h, 0xff, v13.h
	v_lshlrev_b16 v18.h, 8, v50.l
	v_and_b16 v11.l, 0xff, v133.l
	v_lshlrev_b16 v49.l, 8, v51.l
	v_and_b16 v11.h, 0xff, v133.h
	v_and_b16 v12.l, 0xff, v14.l
	v_and_b16 v12.h, 0xff, v14.h
	v_and_b16 v13.l, 0xff, v140.l
	v_and_b16 v13.h, 0xff, v140.h
	v_and_b16 v14.l, 0xff, v15.l
	v_and_b16 v14.h, 0xff, v15.h
	v_and_b16 v15.l, 0xff, v141.l
	v_and_b16 v15.h, 0xff, v141.h
	v_and_b16 v16.l, 0xff, v142.l
	v_and_b16 v16.h, 0xff, v142.h
	v_lshlrev_b16 v49.h, 8, v52.l
	v_lshlrev_b16 v50.l, 8, v53.l
	v_lshlrev_b16 v50.h, 8, v54.l
	v_lshlrev_b16 v51.l, 8, v55.l
	v_lshlrev_b16 v51.h, 8, v56.l
	v_lshlrev_b16 v52.l, 8, v98.l
	v_lshlrev_b16 v52.h, 8, v99.l
	v_lshlrev_b16 v53.l, 8, v100.l
	v_lshlrev_b16 v53.h, 8, v101.l
	v_lshlrev_b16 v54.l, 8, v102.l
	v_lshlrev_b16 v54.h, 8, v103.l
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v49.l
	v_or_b16 v11.h, v11.h, v49.h
	v_or_b16 v12.l, v12.l, v50.l
	v_or_b16 v12.h, v12.h, v50.h
	v_or_b16 v13.l, v13.l, v51.l
	v_or_b16 v13.h, v13.h, v51.h
	v_or_b16 v14.l, v14.l, v52.l
	v_or_b16 v14.h, v14.h, v52.h
	v_or_b16 v15.l, v15.l, v53.l
	v_or_b16 v15.h, v15.h, v53.h
	v_or_b16 v16.l, v16.l, v54.l
	v_or_b16 v16.h, v16.h, v54.h
	ds_store_b16 v23, v9
	ds_store_b16_d16_hi v23, v9 offset:64
	ds_store_b16 v24, v10
	ds_store_b16_d16_hi v24, v10 offset:64
	ds_store_b16 v25, v11
	ds_store_b16_d16_hi v25, v11 offset:64
	ds_store_b16 v26, v12
	ds_store_b16_d16_hi v26, v12 offset:64
	ds_store_b16 v27, v13
	ds_store_b16_d16_hi v27, v13 offset:64
	ds_store_b16 v28, v14
	ds_store_b16_d16_hi v28, v14 offset:64
	ds_store_b16 v29, v15
	ds_store_b16_d16_hi v29, v15 offset:64
	ds_store_b16 v30, v16
	ds_store_b16_d16_hi v30, v16 offset:64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow352
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v99, v19
.LBB0_7:                                ; %Flow355
	.loc	1 126 32 is_stmt 1              ; generate_amdgcn.py:126:32
	v_or_b32_e32 v1, 32, v31
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s6, v31
	s_mul_i32 s3, s48, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s1, 0
	v_and_b32_e32 v98, 16, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s6, v1
	s_add_i32 s3, s3, s0
	s_mov_b32 s1, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s5
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s3, v2, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v1, s3, v1, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x1
	buffer_load_u16 v100, v2, s[36:39], 0 offen
	buffer_load_u16 v101, v1, s[36:39], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
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
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	ds_load_u8 v17, v97 offset:17216
	ds_load_u8 v18, v97 offset:17152
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b32_e32 v1, 56, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v1, v1, v99
	v_or3_b32 v1, v20, v21, v1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:17344
	ds_load_u8 v19, v97 offset:17280
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xad_u32 v2, v1, 56, 0
	ds_load_2addr_stride64_b64 v[25:28], v2 offset1:16
	v_xad_u32 v2, v1, 48, 0
	ds_load_2addr_stride64_b64 v[29:32], v2 offset1:16
	v_xad_u32 v2, v1, 40, 0
	ds_load_2addr_stride64_b64 v[33:36], v2 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xad_u32 v2, v1, 32, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v105, v18, 16, v17
	ds_load_u8 v17, v97 offset:16960
	ds_load_u8 v18, v97 offset:16896
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[37:40], v2 offset1:16
	v_xad_u32 v2, v1, 24, 0
	ds_load_2addr_stride64_b64 v[41:44], v2 offset1:16
	v_xad_u32 v2, v1, 16, 0
	ds_load_2addr_stride64_b64 v[45:48], v2 offset1:16
	v_xad_u32 v2, v1, 8, 0
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_2addr_stride64_b64 v[49:52], v2 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:17088
	ds_load_u8 v19, v97 offset:17024
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[53:56], v1 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v1, v97 offset:16704
	ds_load_u8 v2, v97 offset:16640
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v97 offset:16832
	ds_load_u8 v3, v97 offset:16768
	v_lshl_or_b32 v104, v18, 16, v17
	ds_load_u8 v17, v97 offset:17728
	ds_load_u8 v18, v97 offset:17664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:17856
	ds_load_u8 v19, v97 offset:17792
	v_lshl_or_b32 v103, v2, 16, v1
	ds_load_u8 v1, v97 offset:16448
	ds_load_u8 v2, v97 offset:16384
	ds_load_u8 v118, v97 offset:16416
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v97 offset:16576
	ds_load_u8 v3, v97 offset:16512
	v_lshl_or_b32 v107, v18, 16, v17
	ds_load_u8 v17, v97 offset:17472
	ds_load_u8 v18, v97 offset:17408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:17600
	ds_load_u8 v19, v97 offset:17536
	v_lshl_or_b32 v102, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v8, s11
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_mov_b32_e32 v7, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[53:54], v[102:103], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[104:105], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v106, v18, 16, v17
	ds_load_u8 v17, v97 offset:18240
	ds_load_u8 v18, v97 offset:18176
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[106:107], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:18368
	ds_load_u8 v19, v97 offset:18304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v109, v18, 16, v17
	ds_load_u8 v17, v97 offset:17984
	ds_load_u8 v18, v97 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:18112
	ds_load_u8 v19, v97 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v18, 16, v17
	ds_load_u8 v17, v97 offset:18752
	ds_load_u8 v18, v97 offset:18688
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[108:109], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:18880
	ds_load_u8 v19, v97 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v18, 16, v17
	ds_load_u8 v17, v97 offset:18496
	ds_load_u8 v18, v97 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:18624
	ds_load_u8 v19, v97 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v110, v18, 16, v17
	ds_load_u8 v17, v97 offset:19264
	ds_load_u8 v18, v97 offset:19200
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[110:111], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:19392
	ds_load_u8 v19, v97 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v18, 16, v17
	ds_load_u8 v17, v97 offset:19008
	ds_load_u8 v18, v97 offset:18944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:19136
	ds_load_u8 v19, v97 offset:19072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v18, 16, v17
	ds_load_u8 v17, v97 offset:19776
	ds_load_u8 v18, v97 offset:19712
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[112:113], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:19904
	ds_load_u8 v19, v97 offset:19840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v115, v18, 16, v17
	ds_load_u8 v17, v97 offset:19520
	ds_load_u8 v18, v97 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:19648
	ds_load_u8 v19, v97 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v18, 16, v17
	ds_load_u8 v17, v97 offset:20288
	ds_load_u8 v18, v97 offset:20224
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[114:115], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:20416
	ds_load_u8 v19, v97 offset:20352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v117, v18, 16, v17
	ds_load_u8 v17, v97 offset:20032
	ds_load_u8 v18, v97 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v97 offset:20160
	ds_load_u8 v19, v97 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v116, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[55:56], v[102:103], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v102, v97 offset:16736
	ds_load_u8 v103, v97 offset:16672
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[116:117], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[51:52], v[104:105], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[47:48], v[106:107], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[108:109], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[110:111], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v97 offset:16864
	ds_load_u8 v104, v97 offset:16800
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[112:113], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[31:32], v[114:115], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[116:117], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v111, v103, 16, v102
	ds_load_u8 v102, v97 offset:16480
	ds_load_u8 v103, v97 offset:16608
	ds_load_u8 v104, v97 offset:16544
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v102, v118, v102, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v110, v103, 16, v102
	v_wmma_i32_16x16x16_iu4 v[102:109], v[53:54], v[110:111], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v53, v97 offset:17248
	ds_load_u8 v54, v97 offset:17184
	v_wmma_i32_16x16x16_iu4 v[1:8], v[55:56], v[110:111], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v97 offset:17376
	ds_load_u8 v112, v97 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v112, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v54, 16, v53
	ds_load_u8 v53, v97 offset:16992
	ds_load_u8 v112, v97 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v112, v53, 0xc0c0004
	ds_load_u8 v112, v97 offset:17120
	ds_load_u8 v113, v97 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v53, v112, 16, v53
	v_wmma_i32_16x16x16_iu4 v[102:109], v[49:50], v[53:54], v[102:109] neg_lo:[1,1,0]
	ds_load_u8 v49, v97 offset:17760
	ds_load_u8 v50, v97 offset:17696
	v_wmma_i32_16x16x16_iu4 v[1:8], v[51:52], v[53:54], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v97 offset:17888
	ds_load_u8 v112, v97 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v112, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v97 offset:17504
	ds_load_u8 v112, v97 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v112, v49, 0xc0c0004
	ds_load_u8 v112, v97 offset:17632
	ds_load_u8 v113, v97 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v112, 16, v49
	v_wmma_i32_16x16x16_iu4 v[102:109], v[45:46], v[49:50], v[102:109] neg_lo:[1,1,0]
	ds_load_u8 v45, v97 offset:18272
	ds_load_u8 v46, v97 offset:18208
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[49:50], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v97 offset:18400
	ds_load_u8 v112, v97 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v112, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v97 offset:18016
	ds_load_u8 v112, v97 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v112, v45, 0xc0c0004
	ds_load_u8 v112, v97 offset:18144
	ds_load_u8 v113, v97 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v112, 16, v45
	v_wmma_i32_16x16x16_iu4 v[102:109], v[41:42], v[45:46], v[102:109] neg_lo:[1,1,0]
	ds_load_u8 v41, v97 offset:18784
	ds_load_u8 v42, v97 offset:18720
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[45:46], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v97 offset:18912
	ds_load_u8 v112, v97 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v112, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v97 offset:18528
	ds_load_u8 v112, v97 offset:18464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v112, v41, 0xc0c0004
	ds_load_u8 v112, v97 offset:18656
	ds_load_u8 v113, v97 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v112, 16, v41
	v_wmma_i32_16x16x16_iu4 v[102:109], v[37:38], v[41:42], v[102:109] neg_lo:[1,1,0]
	ds_load_u8 v37, v97 offset:19296
	ds_load_u8 v38, v97 offset:19232
	v_wmma_i32_16x16x16_iu4 v[1:8], v[39:40], v[41:42], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v97 offset:19424
	ds_load_u8 v112, v97 offset:19360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v112, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v97 offset:19040
	ds_load_u8 v112, v97 offset:18976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v112, v37, 0xc0c0004
	ds_load_u8 v112, v97 offset:19168
	ds_load_u8 v113, v97 offset:19104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v112, 16, v37
	v_wmma_i32_16x16x16_iu4 v[102:109], v[33:34], v[37:38], v[102:109] neg_lo:[1,1,0]
	ds_load_u8 v33, v97 offset:19808
	ds_load_u8 v34, v97 offset:19744
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[37:38], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v97 offset:19936
	ds_load_u8 v112, v97 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v112, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v97 offset:19552
	ds_load_u8 v112, v97 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v112, v33, 0xc0c0004
	ds_load_u8 v112, v97 offset:19680
	ds_load_u8 v113, v97 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v112, 16, v33
	v_wmma_i32_16x16x16_iu4 v[102:109], v[29:30], v[33:34], v[102:109] neg_lo:[1,1,0]
	ds_load_u8 v29, v97 offset:20320
	ds_load_u8 v30, v97 offset:20256
	v_wmma_i32_16x16x16_iu4 v[1:8], v[31:32], v[33:34], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v97 offset:20448
	ds_load_u8 v112, v97 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v112, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v97 offset:20064
	ds_load_u8 v112, v97 offset:20000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v112, v29, 0xc0c0004
	ds_load_u8 v112, v97 offset:20192
	ds_load_u8 v97, v97 offset:20128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v97, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v97, 16, v29
	v_wmma_i32_16x16x16_iu4 v[102:109], v[25:26], v[29:30], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[27:28], v[29:30], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v25, v9
	v_cvt_f32_i32_e32 v26, v10
	v_cvt_f32_i32_e32 v27, v11
	v_cvt_f32_i32_e32 v28, v12
	v_cvt_f32_i32_e32 v9, v13
	v_cvt_f32_i32_e32 v12, v14
	v_cvt_f32_i32_e32 v14, v15
	v_cvt_f32_i32_e32 v11, v17
	v_cvt_f32_i32_e32 v10, v18
	v_cvt_f32_i32_e32 v13, v19
	v_cvt_f32_i32_e32 v15, v20
	v_cvt_f32_i32_e32 v17, v21
	v_cvt_f32_i32_e32 v18, v22
	v_cvt_f32_i32_e32 v19, v23
	v_cvt_f32_i32_e32 v22, v24
	v_cvt_f32_i32_e32 v23, v102
	v_cvt_f32_i32_e32 v24, v103
	v_cvt_f32_i32_e32 v31, v104
	v_cvt_f32_i32_e32 v29, v105
	v_cvt_f32_i32_e32 v30, v106
	v_cvt_f32_i32_e32 v32, v107
	v_cvt_f32_i32_e32 v33, v108
	v_cvt_f32_i32_e32 v34, v109
	v_cvt_f32_i32_e32 v35, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_mov_b32_e32 v1, v96
.LBB0_12:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v20, 1, v62
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s35
.Ltmp24:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v50.l, 0
.Ltmp25:
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s49, s49, s0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v50.h, v101.l
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v20, v95, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b32 s24, s14
	.loc	1 232 26 is_stmt 0              ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v20, s49, v20, 1
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v51.h, v100.l
	v_mov_b16_e32 v51.l, v50.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v2, v50
	s_mov_b32 s0, 0x76543210
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v21, 0x80000000, v20, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v35, v35, v50 :: v_dual_add_nc_u32 v36, 4, v20
	v_dual_mul_f32 v6, v6, v50 :: v_dual_add_nc_u32 v37, 8, v20
	v_dual_mul_f32 v7, v7, v50 :: v_dual_add_nc_u32 v38, 12, v20
	v_dual_mul_f32 v8, v8, v50 :: v_dual_add_nc_u32 v39, 16, v20
	v_dual_mul_f32 v31, v31, v50 :: v_dual_add_nc_u32 v40, 20, v20
	v_dual_mul_f32 v34, v34, v50 :: v_dual_add_nc_u32 v41, 24, v20
	v_dual_mul_f32 v33, v33, v50 :: v_dual_add_nc_u32 v42, 28, v20
	v_dual_mul_f32 v32, v32, v50 :: v_dual_add_nc_u32 v43, 0x100, v20
	v_dual_mul_f32 v29, v29, v50 :: v_dual_add_nc_u32 v44, 0x104, v20
	v_dual_mul_f32 v30, v30, v50 :: v_dual_add_nc_u32 v45, 0x114, v20
	v_dual_mul_f32 v23, v23, v50 :: v_dual_add_nc_u32 v46, 0x118, v20
	v_dual_mul_f32 v24, v24, v50 :: v_dual_add_nc_u32 v47, 0x11c, v20
	v_dual_mul_f32 v5, v5, v50 :: v_dual_add_nc_u32 v48, 0x108, v20
	v_dual_mul_f32 v4, v4, v50 :: v_dual_add_nc_u32 v49, 0x10c, v20
	v_dual_mul_f32 v3, v3, v50 :: v_dual_add_nc_u32 v20, 0x110, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v21, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	s_clause 0x3
	buffer_load_u16 v20, v20, s[24:27], 0 offen
	buffer_load_u16 v49, v49, s[24:27], 0 offen
	buffer_load_u16 v48, v48, s[24:27], 0 offen
	buffer_load_u16 v44, v44, s[24:27], 0 offen
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	s_clause 0xa
	buffer_load_u16 v43, v43, s[24:27], 0 offen
	buffer_load_u16 v45, v45, s[24:27], 0 offen
	buffer_load_u16 v46, v46, s[24:27], 0 offen
	buffer_load_u16 v47, v47, s[24:27], 0 offen
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	buffer_load_u16 v41, v41, s[24:27], 0 offen
	buffer_load_u16 v42, v42, s[24:27], 0 offen
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v19, v51
	v_mul_f32_e32 v52, v12, v51
	v_mul_f32_e32 v11, v11, v51
	v_mul_f32_e32 v25, v25, v51
	v_mul_f32_e32 v13, v13, v51
	v_mul_f32_e32 v18, v18, v51
	v_mul_f32_e32 v26, v26, v51
	v_mul_f32_e32 v17, v17, v51
	v_mul_f32_e32 v22, v22, v51
	v_mul_f32_e32 v27, v27, v51
	v_mul_f32_e32 v28, v28, v51
	v_mul_f32_e32 v16, v16, v51
	v_mul_f32_e32 v9, v9, v51
	v_mul_f32_e32 v15, v15, v51
	v_mul_f32_e32 v10, v10, v51
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp27:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v12, 16, v21
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v23, v23, v12, v94
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v20, 16, v20
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v48, 16, v48
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v21, 16, v43
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v43, 16, v45
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v45, 16, v46
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v46, 16, v47
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v11, v21, v63
	v_fma_f32 v3, v3, v48, v69
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v37, 16, v37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v42, 16, v42
	v_lshlrev_b32_e32 v41, 16, v41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v25, v25, v12, v93
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v94, v23, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v39, 16, v39
	v_lshlrev_b32_e32 v38, 16, v38
	v_lshlrev_b32_e32 v47, 16, v49
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v18, v18, v43, v92
	v_fma_f32 v6, v6, v43, v88
	v_fma_f32 v43, v24, v36, v80
	v_fma_f32 v26, v26, v36, v76
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v63, v11, s2
	v_cndmask_b32_e64 v11, v69, v3, s2
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v3, |v12|, |v12|
.Ltmp29:
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v14, v14, v51
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v19, v45, v91
	v_fma_f32 v35, v35, v21, v89
	v_fma_f32 v7, v7, v45, v87
	v_fma_f32 v8, v8, v46, v86
	v_fma_f32 v29, v29, v38, v81
	v_fma_f32 v30, v30, v39, v82
	v_fma_f32 v32, v32, v40, v83
	v_fma_f32 v33, v33, v41, v84
	v_fma_f32 v34, v34, v42, v77
	v_fma_f32 v31, v31, v37, v85
	v_fma_f32 v28, v28, v38, v78
	v_fma_f32 v27, v27, v37, v79
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v93, v25, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v39, v72
	v_fma_f32 v37, v52, v40, v73
	v_fma_f32 v38, v14, v41, v74
	v_fma_f32 v39, v16, v42, v75
	v_fma_f32 v2, v2, v44, v68
	v_fma_f32 v4, v4, v47, v70
	v_fma_f32 v40, v5, v20, v71
	v_fma_f32 v41, v10, v44, v64
	v_fma_f32 v42, v13, v48, v65
	v_fma_f32 v44, v15, v47, v66
	v_fma_f32 v45, v17, v20, v67
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v80, v43, s2
	v_cndmask_b32_e64 v36, v76, v26, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v49, v22, v46, v90
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v92, v18, s2
	v_cndmask_b32_e64 v21, v91, v19, s2
	v_cndmask_b32_e64 v10, v89, v35, s2
	v_cndmask_b32_e64 v5, v88, v6, s2
	v_cndmask_b32_e64 v6, v87, v7, s2
	v_cndmask_b32_e64 v7, v86, v8, s2
	v_cndmask_b32_e64 v18, v85, v31, s2
	v_cndmask_b32_e64 v13, v77, v34, s2
	v_cndmask_b32_e64 v14, v84, v33, s2
	v_cndmask_b32_e64 v15, v83, v32, s2
	v_cndmask_b32_e64 v16, v82, v30, s2
	v_cndmask_b32_e64 v19, v81, v29, s2
	v_cndmask_b32_e64 v34, v79, v27, s2
	v_cndmask_b32_e64 v33, v78, v28, s2
	v_cndmask_b32_e64 v32, v73, v37, s2
	v_cndmask_b32_e64 v35, v72, v9, s2
	v_cndmask_b32_e64 v8, v71, v40, s2
	v_cndmask_b32_e64 v9, v70, v4, s2
	v_cndmask_b32_e64 v17, v68, v2, s2
	v_cndmask_b32_e64 v26, v67, v45, s2
	v_cndmask_b32_e64 v27, v66, v44, s2
	v_cndmask_b32_e64 v29, v65, v42, s2
	v_cndmask_b32_e64 v31, v64, v41, s2
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v2, |v25|, |v25|
	v_max_f32_e64 v4, |v36|, |v36|
	v_max_f32_e64 v41, |v23|, |v23|
.Ltmp31:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v90, v49, s2
	v_cndmask_b32_e64 v28, v75, v39, s2
	v_cndmask_b32_e64 v30, v74, v38, s2
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v37, |v33|, |v35|, |v32|
	v_max3_f32 v39, |v31|, |v29|, |v27|
	v_max3_f32 v40, |v26|, |v22|, |v21|
	v_max3_f32 v42, |v19|, |v16|, |v15|
	v_max3_f32 v43, |v17|, |v11|, |v9|
	v_max3_f32 v44, |v8|, |v5|, |v6|
	v_dual_max_f32 v2, v2, v4 :: v_dual_max_f32 v3, v3, v41
	v_max3_f32 v38, |v30|, |v28|, |v24|
	v_max3_f32 v4, |v14|, |v13|, |v10|
	v_max3_f32 v39, v39, v40, |v20|
	v_max3_f32 v40, v43, v44, |v7|
	v_max3_f32 v2, v2, |v34|, v37
	v_max3_f32 v3, v3, |v18|, v42
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v37, 1, v0
	v_lshl_add_u32 v41, v61, 8, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v2, v38, v39
	v_max3_f32 v3, v3, v4, v40
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v4, 4, v61
	v_and_b32_e32 v37, 0xf0, v37
	v_and_b32_e32 v38, 8, v0
	v_permlanex16_b32 v39, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v42, v62, 3, v4
	v_xor_b32_e32 v4, v4, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v40, v40, v40
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v37, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v4, v41, v4, v38
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v2, v2, v39 :: v_dual_max_f32 v3, v3, v40
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v37, 0, v38, v37
	v_lshrrev_b32_e32 v39, 1, v60
	ds_store_b64 v4, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[2:3], v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v37, v3
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v38, v38, 3, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v3, v3, v37 :: v_dual_mov_b32 v4, v2
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v38, v38, v39, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v37, v3
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v37, v3, v37
	v_dual_max_f32 v2, v2, v4 :: v_dual_mov_b32 v3, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v4, v2 :: v_dual_max_f32 v41, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v2, v4
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v40, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, v4, v40 :: v_dual_lshlrev_b32 v2, 3, v58
	v_max_f32_e32 v4, v37, v41
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v37, 0, v2, v39
	ds_store_b64 v38, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[3:4], v37
.Ltmp52:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_max_f32 v4, 0x2b8cbccc, v4
	v_div_scale_f32 v37, null, 0x40e00000, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v38, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v43, vcc_lo, v3, 0x40e00000, v3
	v_rcp_f32_e32 v39, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v38
	v_fma_f32 v41, -v37, v39, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v38, v40, 1.0
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, s0, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v42, v40
	v_mul_f32_e32 v42, v43, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v44, v41, v40
	v_fma_f32 v45, -v37, v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v38, v44, v41
	v_fmac_f32_e32 v42, v45, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v46, v40
	v_fma_f32 v37, -v37, v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v38, v44, v41
	v_div_fmas_f32 v37, v37, v39, v42
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v40, v44
	v_div_fixup_f32 v3, v37, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v37, v38, 0x40e00000, v4
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v4.h, v50.l
	v_mov_b16_e32 v4.l, v3.h
	v_mov_b16_e32 v38.h, v50.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v38.l, v37.h
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v4, v3, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v37, v38, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v37, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v83, null, v37, v37, v16
	v_div_scale_f32 v87, null, v37, v37, v14
	v_div_scale_f32 v77, null, v37, v37, v23
	v_rcp_f32_e32 v121, v83
	v_div_scale_f32 v95, null, v37, v37, v11
	v_div_scale_f32 v81, null, v37, v37, v19
	v_rcp_f32_e32 v123, v87
	v_div_scale_f32 v89, null, v37, v37, v13
	v_div_scale_f32 v91, null, v37, v37, v10
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v150, -v83, v121, 1.0
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v38, 0xffff0000, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v118, v77
	v_rcp_f32_e32 v127, v95
	v_div_scale_f32 v93, null, v37, v37, v17
	v_fmac_f32_e32 v121, v150, v121
	v_div_scale_f32 v49, null, v38, v38, v32
	v_div_scale_f32 v41, null, v38, v38, v36
	v_div_scale_f32 v53, null, v38, v38, v28
	v_div_scale_f32 v39, null, v38, v38, v25
	v_div_scale_f32 v45, null, v38, v38, v33
	v_div_scale_f32 v65, null, v38, v38, v27
	v_rcp_f32_e32 v106, v49
	v_div_scale_f32 v43, null, v38, v38, v34
	v_div_scale_f32 v69, null, v38, v38, v22
	v_rcp_f32_e32 v102, v41
	v_rcp_f32_e32 v108, v53
	v_div_scale_f32 v61, null, v38, v38, v31
	v_div_scale_f32 v73, null, v38, v38, v20
	v_rcp_f32_e32 v101, v39
	v_rcp_f32_e32 v104, v45
	v_rcp_f32_e32 v112, v65
	v_div_scale_f32 v47, null, v38, v38, v35
	v_rcp_f32_e32 v103, v43
	v_rcp_f32_e32 v114, v69
	v_rcp_f32_e32 v120, v81
	v_div_scale_f32 v85, null, v37, v37, v15
	v_div_scale_f32 v97, null, v37, v37, v9
	v_rcp_f32_e32 v110, v61
	v_rcp_f32_e32 v116, v73
	v_rcp_f32_e32 v124, v89
	v_rcp_f32_e32 v125, v91
	v_fma_f32 v135, -v49, v106, 1.0
	v_div_scale_f32 v51, null, v38, v38, v30
	v_rcp_f32_e32 v105, v47
	v_rcp_f32_e32 v126, v93
	v_fma_f32 v131, -v41, v102, 1.0
	v_fma_f32 v137, -v53, v108, 1.0
	v_fma_f32 v152, -v87, v123, 1.0
	v_div_scale_f32 v50, s4, v32, v38, v32
	v_rcp_f32_e32 v122, v85
	v_rcp_f32_e32 v128, v97
	v_fma_f32 v130, -v39, v101, 1.0
	v_fma_f32 v133, -v45, v104, 1.0
	v_fma_f32 v141, -v65, v112, 1.0
	v_fma_f32 v147, -v77, v118, 1.0
	v_fma_f32 v156, -v95, v127, 1.0
	v_fmac_f32_e32 v106, v135, v106
	v_div_scale_f32 v55, null, v38, v38, v24
	v_rcp_f32_e32 v107, v51
	v_div_scale_f32 v42, s0, v36, v38, v36
	v_div_scale_f32 v54, s6, v28, v38, v28
	v_fma_f32 v132, -v43, v103, 1.0
	v_fma_f32 v143, -v69, v114, 1.0
	v_fma_f32 v149, -v81, v120, 1.0
	v_dual_fmac_f32 v102, v131, v102 :: v_dual_fmac_f32 v123, v152, v123
	v_fmac_f32_e32 v108, v137, v108
	v_div_scale_f32 v40, vcc_lo, v25, v38, v25
	v_div_scale_f32 v46, s2, v33, v38, v33
	v_div_scale_f32 v63, null, v38, v38, v29
	v_div_scale_f32 v66, s10, v27, v38, v27
	v_div_scale_f32 v78, s16, v23, v37, v23
	v_fma_f32 v139, -v61, v110, 1.0
	v_fma_f32 v145, -v73, v116, 1.0
	v_fma_f32 v153, -v89, v124, 1.0
	v_fma_f32 v154, -v91, v125, 1.0
	v_dual_fmac_f32 v101, v130, v101 :: v_dual_fmac_f32 v104, v133, v104
	v_dual_fmac_f32 v127, v156, v127 :: v_dual_fmac_f32 v112, v141, v112
	v_mul_f32_e32 v135, v50, v106
	v_fmac_f32_e32 v118, v147, v118
	v_rcp_f32_e32 v109, v55
	v_fma_f32 v134, -v47, v105, 1.0
	v_div_scale_f32 v44, s1, v34, v38, v34
	v_div_scale_f32 v67, null, v38, v38, v26
	v_div_scale_f32 v70, s12, v22, v38, v22
	v_div_scale_f32 v82, s18, v19, v37, v19
	v_fma_f32 v155, -v93, v126, 1.0
	v_fmac_f32_e32 v103, v132, v103
	v_mul_f32_e32 v131, v42, v102
	v_dual_fmac_f32 v114, v143, v114 :: v_dual_mul_f32 v137, v54, v108
	v_fmac_f32_e32 v120, v149, v120
	v_div_scale_f32 v62, s8, v31, v38, v31
	v_div_scale_f32 v74, s14, v20, v38, v20
	v_div_scale_f32 v90, s22, v13, v37, v13
	v_rcp_f32_e32 v111, v63
	v_fma_f32 v151, -v85, v122, 1.0
	v_fma_f32 v157, -v97, v128, 1.0
	v_dual_fmac_f32 v125, v154, v125 :: v_dual_fmac_f32 v110, v139, v110
	v_mul_f32_e32 v133, v46, v104
	v_fmac_f32_e32 v116, v145, v116
	v_mul_f32_e32 v141, v66, v112
	v_dual_fmac_f32 v124, v153, v124 :: v_dual_mul_f32 v147, v78, v118
	v_mul_f32_e32 v130, v40, v101
	v_fma_f32 v136, -v51, v107, 1.0
	v_div_scale_f32 v48, s3, v35, v38, v35
	v_div_scale_f32 v71, null, v38, v38, v21
	v_fmac_f32_e32 v105, v134, v105
	v_div_scale_f32 v94, s24, v17, v37, v17
	v_rcp_f32_e32 v113, v67
	v_mul_f32_e32 v143, v70, v114
	v_dual_fmac_f32 v126, v155, v126 :: v_dual_mul_f32 v149, v82, v120
	v_mul_f32_e32 v132, v44, v103
	v_div_scale_f32 v86, s20, v15, v37, v15
	v_mul_f32_e32 v139, v62, v110
	v_dual_fmac_f32 v122, v151, v122 :: v_dual_mul_f32 v145, v74, v116
	v_fmac_f32_e32 v128, v157, v128
	v_mul_f32_e32 v153, v90, v124
	v_fma_f32 v157, -v39, v130, v40
	v_fma_f32 v138, -v55, v109, 1.0
	v_div_scale_f32 v52, s5, v30, v38, v30
	v_div_scale_f32 v75, null, v37, v37, v12
	v_fmac_f32_e32 v107, v136, v107
	v_fma_f32 v158, -v41, v131, v42
	v_fma_f32 v160, -v45, v133, v46
	v_rcp_f32_e32 v115, v71
	v_dual_mul_f32 v134, v48, v105 :: v_dual_mul_f32 v155, v94, v126
	v_fma_f32 v159, -v43, v132, v44
	v_fma_f32 v140, -v63, v111, 1.0
	v_dual_fmac_f32 v130, v157, v101 :: v_dual_fmac_f32 v133, v160, v104
	v_div_scale_f32 v56, s7, v24, v38, v24
	v_fmac_f32_e32 v109, v138, v109
	v_rcp_f32_e32 v117, v75
	v_fma_f32 v162, -v49, v135, v50
	v_dual_mul_f32 v136, v52, v107 :: v_dual_fmac_f32 v131, v158, v102
	v_fma_f32 v160, -v61, v139, v62
	v_fma_f32 v161, -v47, v134, v48
	v_fma_f32 v142, -v67, v113, 1.0
	v_fmac_f32_e32 v132, v159, v103
	v_div_scale_f32 v64, s9, v29, v38, v29
	v_fmac_f32_e32 v111, v140, v111
	v_fma_f32 v39, -v39, v130, v40
	v_fma_f32 v158, -v53, v137, v54
	v_dual_mul_f32 v138, v56, v109 :: v_dual_mul_f32 v151, v86, v122
	v_fmac_f32_e32 v135, v162, v106
	v_fma_f32 v157, -v51, v136, v52
	v_fmac_f32_e32 v139, v160, v110
	v_fma_f32 v160, -v73, v145, v74
	v_fma_f32 v40, -v41, v131, v42
	v_fma_f32 v144, -v71, v115, 1.0
	v_fmac_f32_e32 v134, v161, v105
	v_div_scale_f32 v68, s11, v26, v38, v26
	v_fmac_f32_e32 v113, v142, v113
	v_fma_f32 v41, -v43, v132, v44
	v_fma_f32 v162, -v65, v141, v66
	v_mul_f32_e32 v140, v64, v111
	v_div_fmas_f32 v39, v39, v101, v130
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v137, v158, v108
	v_fma_f32 v159, -v55, v138, v56
	v_fma_f32 v42, -v45, v133, v46
	v_fma_f32 v146, -v75, v117, 1.0
	v_fmac_f32_e32 v145, v160, v116
	v_fma_f32 v160, -v85, v151, v86
	v_fmac_f32_e32 v136, v157, v107
	v_div_fmas_f32 v40, v40, v102, v131
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v72, s13, v21, v38, v21
	v_fmac_f32_e32 v115, v144, v115
	v_fma_f32 v43, -v47, v134, v48
	v_fma_f32 v158, -v69, v143, v70
	v_mul_f32_e32 v142, v68, v113
	v_div_fmas_f32 v41, v41, v103, v132
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v99, null, v37, v37, v8
	v_fmac_f32_e32 v141, v162, v112
	v_fma_f32 v161, -v63, v140, v64
	v_fma_f32 v44, -v49, v135, v50
	v_fmac_f32_e32 v138, v159, v109
	v_div_fixup_f32 v25, v39, v38, v25
	v_div_fmas_f32 v39, v42, v104, v133
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v76, s15, v12, v37, v12
	v_fmac_f32_e32 v117, v146, v117
	v_fmac_f32_e32 v151, v160, v122
	v_fma_f32 v45, -v51, v136, v52
	v_fma_f32 v162, -v77, v147, v78
	v_mul_f32_e32 v144, v72, v115
	v_div_fixup_f32 v36, v40, v38, v36
	v_div_fmas_f32 v40, v43, v105, v134
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v143, v158, v114
	v_fma_f32 v157, -v67, v142, v68
	v_fma_f32 v46, -v53, v137, v54
	v_rcp_f32_e32 v129, v99
	v_fmac_f32_e32 v140, v161, v111
	v_div_fixup_f32 v34, v41, v38, v34
	v_div_fmas_f32 v41, v44, v106, v135
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v47, -v55, v138, v56
	v_fma_f32 v158, -v81, v149, v82
	v_mul_f32_e32 v146, v76, v117
	v_div_fixup_f32 v33, v39, v38, v33
	v_div_fmas_f32 v39, v45, v107, v136
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v147, v162, v118
	v_fma_f32 v159, -v71, v144, v72
	v_fma_f32 v48, -v61, v139, v62
	v_fmac_f32_e32 v142, v157, v113
	v_div_fixup_f32 v35, v40, v38, v35
	v_div_fmas_f32 v40, v46, v108, v137
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v49, -v63, v140, v64
	v_div_scale_f32 v79, null, v37, v37, v18
	v_div_fixup_f32 v32, v41, v38, v32
	v_div_fmas_f32 v41, v47, v109, v138
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v149, v158, v120
	v_fma_f32 v161, -v75, v146, v76
	v_fma_f32 v50, -v65, v141, v66
	v_fmac_f32_e32 v144, v159, v115
	v_div_fixup_f32 v30, v39, v38, v30
	v_div_fmas_f32 v39, v48, v110, v139
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v51, -v67, v142, v68
	v_div_fixup_f32 v28, v40, v38, v28
	v_div_fmas_f32 v40, v49, v111, v140
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v119, v79
	v_fma_f32 v52, -v69, v143, v70
	v_fmac_f32_e32 v146, v161, v117
	v_div_fixup_f32 v24, v41, v38, v24
	v_div_fmas_f32 v41, v50, v112, v141
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v53, -v71, v144, v72
	v_div_fixup_f32 v31, v39, v38, v31
	v_div_fmas_f32 v39, v51, v113, v142
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v54, -v73, v145, v74
	v_div_fixup_f32 v29, v40, v38, v29
	v_div_fmas_f32 v40, v52, v114, v143
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v55, -v75, v146, v76
	v_div_fixup_f32 v27, v41, v38, v27
	v_div_fmas_f32 v41, v53, v115, v144
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v56, -v77, v147, v78
	v_div_fixup_f32 v26, v39, v38, v26
	v_div_fmas_f32 v39, v54, v116, v145
	s_mov_b32 vcc_lo, s15
	v_fma_f32 v148, -v79, v119, 1.0
	v_div_fixup_f32 v22, v40, v38, v22
	v_div_fmas_f32 v40, v55, v117, v146
	s_mov_b32 vcc_lo, s16
	v_div_scale_f32 v100, null, v37, v37, v5
	v_div_fixup_f32 v21, v41, v38, v21
	v_div_fmas_f32 v41, v56, v118, v147
	v_div_scale_f32 v80, s17, v18, v37, v18
	v_fmac_f32_e32 v119, v148, v119
	v_div_scale_f32 v84, s19, v16, v37, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v23, v41, v37, v23
	v_rcp_f32_e32 v41, v100
	v_fma_f32 v162, -v89, v153, v90
	v_mul_f32_e32 v148, v80, v119
	v_div_scale_f32 v88, s21, v14, v37, v14
	v_div_scale_f32 v96, s25, v11, v37, v11
	v_fma_f32 v158, -v93, v155, v94
	v_dual_mul_f32 v150, v84, v121 :: v_dual_fmac_f32 v153, v162, v124
	v_fma_f32 v157, -v79, v148, v80
	v_div_scale_f32 v92, s23, v10, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v152, v88, v123 :: v_dual_fmac_f32 v155, v158, v126
	v_fma_f32 v159, -v83, v150, v84
	v_fma_f32 v45, -v100, v41, 1.0
	v_mul_f32_e32 v156, v96, v127
	v_fmac_f32_e32 v148, v157, v119
	v_mul_f32_e32 v154, v92, v125
	v_fma_f32 v161, -v87, v152, v88
	v_fmac_f32_e32 v150, v159, v121
	v_fmac_f32_e32 v41, v45, v41
	v_fma_f32 v159, -v95, v156, v96
	v_div_scale_f32 v45, s1, v5, v37, v5
	v_fma_f32 v61, -v79, v148, v80
	v_fma_f32 v157, -v91, v154, v92
	v_fma_f32 v62, -v81, v149, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v156, v159, v127 :: v_dual_mul_f32 v51, v45, v41
	v_fmac_f32_e32 v152, v161, v123
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v63, -v83, v150, v84
	v_div_fixup_f32 v20, v39, v38, v20
	v_div_fmas_f32 v38, v61, v119, v148
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v64, -v85, v151, v86
	v_fmac_f32_e32 v154, v157, v125
	v_div_fmas_f32 v39, v62, v120, v149
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v65, -v87, v152, v88
	v_div_fixup_f32 v12, v40, v37, v12
	v_div_fmas_f32 v40, v63, v121, v150
	s_mov_b32 vcc_lo, s20
	v_fma_f32 v66, -v89, v153, v90
	v_div_fixup_f32 v18, v38, v37, v18
	v_div_fmas_f32 v38, v64, v122, v151
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v67, -v91, v154, v92
	v_div_fixup_f32 v19, v39, v37, v19
	v_div_fmas_f32 v39, v65, v123, v152
	s_mov_b32 vcc_lo, s22
	v_fma_f32 v68, -v93, v155, v94
	v_div_fixup_f32 v16, v40, v37, v16
	v_div_fmas_f32 v40, v66, v124, v153
	s_mov_b32 vcc_lo, s23
	v_fma_f32 v69, -v95, v156, v96
	v_div_fixup_f32 v15, v38, v37, v15
	v_div_fmas_f32 v38, v67, v125, v154
	s_mov_b32 vcc_lo, s24
	v_div_fixup_f32 v14, v39, v37, v14
	v_div_fmas_f32 v39, v68, v126, v155
	s_mov_b32 vcc_lo, s25
	v_div_fixup_f32 v13, v40, v37, v13
	v_div_fmas_f32 v40, v69, v127, v156
	v_div_fixup_f32 v10, v38, v37, v10
	v_div_fixup_f32 v17, v39, v37, v17
	v_div_scale_f32 v39, vcc_lo, v9, v37, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v40, v37, v11
	v_fma_f32 v40, -v99, v129, 1.0
	v_div_scale_f32 v38, null, v37, v37, v6
	v_mul_f32_e32 v43, v39, v128
	v_div_scale_f32 v44, null, v37, v37, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v129, v40, v129
	v_div_scale_f32 v40, s0, v8, v37, v8
	v_fma_f32 v47, -v97, v43, v39
	v_rcp_f32_e32 v42, v38
	v_rcp_f32_e32 v46, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v49, v40, v129
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v43, v47, v128
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v47, -v99, v49, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v97, v43, v39
	v_fma_f32 v48, -v38, v42, 1.0
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v49, v47, v129
	v_fma_f32 v47, -v100, v51, v45
	v_div_fmas_f32 v39, v39, v128, v43
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v40, -v99, v49, v40
	v_fmac_f32_e32 v51, v47, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v40, v40, v129, v49
	v_fma_f32 v45, -v100, v51, v45
	s_mov_b32 vcc_lo, s1
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v42, v48, v42
	v_div_fmas_f32 v41, v45, v41, v51
	v_div_scale_f32 v48, s2, v6, v37, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v41, v37, v5
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s3, v7, v37, v7
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v9, v39, v37, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v39, v19
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_mul_f32 v54, v50, v46 :: v_dual_and_b32 v19, 15, v21
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v41, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_i32_f32_e32 v49, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_mul_f32 v52, v48, v42 :: v_dual_and_b32 v5, 15, v25
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v15, 15, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v44, v54, v50
	v_div_fixup_f32 v8, v40, v37, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v40, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v53, -v38, v52, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v54, v43, v46 :: v_dual_and_b32 v29, 0x160, v0
	s_mov_b32 vcc_lo, s2
	v_dual_fmac_f32 v52, v53, v42 :: v_dual_and_b32 v25, 15, v40
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v44, v54, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v38, -v38, v52, v48
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v38, v38, v42, v52
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v42, v43, v46, v54
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v7, v42, v37, v7
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v38, v37, v6
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v37, v12
	v_cvt_i32_f32_e32 v46, v11
	v_and_b32_e32 v11, 15, v30
	v_and_b32_e32 v12, 15, v28
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v28, 11, v0
	v_lshlrev_b32_e32 v30, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v42, v14
	v_cvt_i32_f32_e32 v47, v9
	v_cvt_i32_f32_e32 v51, v7
	v_and_b32_e32 v7, 15, v34
	v_and_b32_e32 v9, 15, v35
	v_and_b32_e32 v14, 15, v31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v28, 0x3000, v28
	v_lshlrev_b32_e32 v31, 7, v98
	v_lshlrev_b32_e32 v34, 7, v0
	v_and_b32_e32 v35, 0x60, v30
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v17, v17
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v38, v18
	v_cvt_i32_f32_e32 v44, v10
	v_cvt_i32_f32_e32 v48, v8
	v_and_b32_e32 v8, 15, v33
	v_and_b32_e32 v10, 15, v32
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v32, 0x200, v1
	v_xor_b32_e32 v33, v57, v29
	v_add3_u32 v31, 0, v28, v31
	v_and_or_b32 v34, 0x3600, v34, v35
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v50, v6
	v_and_b32_e32 v6, 15, v36
	v_and_b32_e32 v18, 15, v22
	v_and_b32_e32 v21, 15, v37
	v_and_b32_e32 v22, 15, v23
	v_and_b32_e32 v23, 15, v38
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v37, v31, v32, v33
	v_xad_u32 v38, v34, v59, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v43, v13
	v_cvt_i32_f32_e32 v45, v17
	v_and_b32_e32 v13, 15, v24
	v_and_b32_e32 v16, 15, v27
	v_and_b32_e32 v24, 15, v39
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v37, v[5:8]
	ds_store_b128 v37, v[13:16] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v38
	ds_load_b128 v[13:16], v38 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v17, 15, v26
	v_and_b32_e32 v20, 15, v20
	v_and_b32_e32 v28, 15, v44
	v_and_b32_e32 v29, 15, v45
	v_and_b32_e32 v30, 15, v46
	v_and_b32_e32 v31, 15, v47
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[21:24]
	ds_store_b128 v37, v[28:31] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v38
	ds_load_b128 v[29:32], v38 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[9:12]
	ds_store_b128 v37, v[17:20] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v38
	ds_load_b128 v[17:20], v38 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v26, 15, v41
	v_and_b32_e32 v27, 15, v42
	v_and_b32_e32 v28, 15, v43
	v_and_b32_e32 v33, 15, v48
	v_and_b32_e32 v34, 15, v49
	v_and_b32_e32 v35, 15, v50
	v_and_b32_e32 v36, 15, v51
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[25:28]
	ds_store_b128 v37, v[33:36] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v38
	ds_load_b128 v[33:36], v38 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v37.l, v4.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v13, 4, v5
	v_lshl_or_b32 v5, v14, 4, v6
	v_lshl_or_b32 v6, v15, 4, v7
	v_lshl_or_b32 v7, v16, 4, v8
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s48, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v17, 4, v9
	v_lshl_or_b32 v10, v18, 4, v10
	v_lshl_or_b32 v8, v19, 4, v11
	v_lshl_or_b32 v11, v20, 4, v12
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v18, s2, s1, v2
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v7.l
	v_and_b16 v2.h, 0xff, v6.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v12, v29, 4, v21
	v_lshl_or_b32 v13, v30, 4, v22
	v_lshl_or_b32 v14, v31, 4, v23
	v_lshl_or_b32 v15, v32, 4, v24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v3.l, 8, v5.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v11.l
	v_and_b16 v5.l, 0xff, v8.l
	v_or_b16 v8.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v10.l
	v_and_b16 v2.h, 0xff, v9.l
.Ltmp53:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v39, 4, v59
.Ltmp54:
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v33, 4, v25
	v_lshl_or_b32 v19, v34, 4, v26
	v_lshl_or_b32 v20, v35, 4, v27
	v_lshl_or_b32 v21, v36, 4, v28
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v8.l, v4.l, v3.l
	v_or_b16 v9.h, v5.l, v4.h
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v4.l, 0xff, v14.l
	v_lshlrev_b16 v4.h, 8, v13.l
	v_and_b16 v5.l, 0xff, v12.l
	v_or_b16 v9.l, v2.h, v2.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v16, s0, v39
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v5.h, 8, v21.l
	v_and_b16 v6.l, 0xff, v20.l
	v_lshlrev_b16 v6.h, 8, v19.l
	v_and_b16 v7.l, 0xff, v17.l
	v_or_b16 v10.h, v4.l, v3.l
	v_or_b16 v10.l, v5.l, v4.h
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v37.h, v3.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 2, v58
	v_lshrrev_b32_e32 v4, 2, v60
	v_and_b32_e32 v1, 0x7c, v1
	v_and_b32_e32 v2, 2, v2
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s0, 5
	v_add_nc_u32_e32 v22, v18, v16
	v_add3_u32 v16, v16, s0, v18
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v11.h, v6.l, v5.h
	v_or_b16 v11.l, v7.l, v6.h
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v3, 0, v3, v4
	v_add3_u32 v1, 0, v1, v2
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v4, v0, 63, s48
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s25, s29, 0xffff
	s_mov_b32 s24, s28
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v22, s[24:27], 0 offen
	buffer_store_b64 v[10:11], v16, s[24:27], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v3, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v1
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v4, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	s_and_b32 s25, s31, 0xffff
	s_mov_b32 s24, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[24:27], 0 offen
.Ltmp55:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp56:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 169
		.amdhsa_next_free_sgpr 53
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 169
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15952
; TotalNumSgprs: 55
; NumVgprs: 169
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 169
; Occupancy: 8
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
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     169
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
