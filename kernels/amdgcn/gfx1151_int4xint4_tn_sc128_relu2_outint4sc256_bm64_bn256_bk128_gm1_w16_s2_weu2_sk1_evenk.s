	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s10, 0, s16
	s_mov_b32 s11, 0x31027000
	s_mul_f32 s17, s17, 0x4f7ffffe
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s31, s11
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
	s_mov_b32 s30, s10
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
	s_and_b32 s29, s29, 0xffff
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s4
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[5:8], v3, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v1, s[28:31], 0 offen
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
.LBB0_3:                                ; %Flow225
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b128 s[24:27], s[0:1], 0x20
	v_or_b32_e32 v31, v4, v58
	v_bfe_u32 v95, v0, 4, 1
	v_dual_mov_b32 v63, 0 :: v_dual_lshlrev_b32 v20, 6, v58
	v_dual_mov_b32 v64, 0 :: v_dual_lshlrev_b32 v21, 5, v62
	v_dual_mov_b32 v65, 0 :: v_dual_lshlrev_b32 v96, 2, v0
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v97, 0, v31
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v67, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v33, s16, v2
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v2, s19, v2
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
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v82, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v13, s35, v14
	v_mul_lo_u32 v2, s35, v2
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v79, 0
	v_mov_b32_e32 v78, 0
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
	v_mov_b32_e32 v93, 0
	v_xor_b32_e32 v5, v5, v19
	v_lshlrev_b32_e32 v37, 1, v4
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_add3_u32 v40, v3, s48, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or3_b32 v5, v20, v21, v5
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
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
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v47, 0, v11
	v_add_nc_u32_e32 v48, 0, v12
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v7, s22 :: v_dual_lshlrev_b32 v36, 1, v14
	v_dual_mov_b32 v4, s19 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v8, s23 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v69, 0
	v_mov_b32_e32 v68, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v63, 0
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
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
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
	v_dual_cndmask_b32 v9, 0x80000000, v40 :: v_dual_add_nc_u32 v146, v34, v35
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s0, s0, s3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s7, 0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v10, 0x80000000, v39, s0
	v_cndmask_b32_e64 v13, 0x80000000, v38, s0
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b64 v[17:18], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[51:54], v41 offset1:16
	ds_load_2addr_stride64_b64 v[98:101], v42 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v55, v97 offset:16704
	ds_load_u8 v56, v97 offset:16640
	ds_load_u8 v102, v97 offset:16832
	ds_load_u8 v103, v97 offset:16768
	ds_load_u8 v104, v97 offset:16448
	ds_load_u8 v105, v97 offset:16384
	ds_load_u8 v106, v97 offset:16416
	ds_load_u8 v107, v97 offset:16576
	ds_load_u8 v108, v97 offset:16512
	ds_load_u8 v109, v97 offset:17216
	ds_load_u8 v110, v97 offset:17152
	ds_load_u8 v111, v97 offset:17344
	ds_load_u8 v112, v97 offset:17280
	ds_load_u8 v113, v97 offset:16960
	ds_load_u8 v114, v97 offset:16896
	ds_load_u8 v115, v97 offset:17088
	ds_load_u8 v116, v97 offset:17024
	ds_load_u8 v140, v97 offset:17728
	ds_load_u8 v141, v97 offset:17664
	ds_load_u8 v142, v97 offset:17856
	ds_load_u8 v143, v97 offset:17792
	ds_load_u8 v144, v97 offset:17472
	ds_load_u8 v145, v97 offset:17408
	ds_load_u8 v147, v97 offset:17600
	ds_load_u8 v148, v97 offset:17536
	ds_load_u8 v117, v97 offset:16736
	ds_load_u8 v118, v97 offset:16672
	ds_load_u8 v119, v97 offset:16864
	ds_load_u8 v120, v97 offset:16800
	ds_load_u8 v121, v97 offset:16480
	ds_load_u8 v122, v97 offset:16608
	ds_load_u8 v123, v97 offset:16544
	ds_load_u8 v124, v97 offset:17248
	ds_load_u8 v125, v97 offset:17184
	ds_load_u8 v126, v97 offset:17376
	ds_load_u8 v127, v97 offset:17312
	ds_load_u8 v128, v97 offset:16992
	ds_load_u8 v129, v97 offset:16928
	ds_load_u8 v130, v97 offset:17120
	ds_load_u8 v131, v97 offset:17056
	ds_load_u8 v149, v97 offset:17760
	ds_load_u8 v150, v97 offset:17696
	ds_load_u8 v151, v97 offset:17888
	ds_load_u8 v152, v97 offset:17824
	ds_load_u8 v153, v97 offset:17504
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v56, v103, v102, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v102, v105, v104, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v103, v108, v107, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v104, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v105, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v107, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v108, v116, v115, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v109, v118, v117, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v110, v120, v119, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v106, v106, v121, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v111, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v112, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v113, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v114, v129, v128, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v115, v131, v130, 0xc0c0004
	v_lshl_or_b32 v56, v56, 16, v55
	v_lshl_or_b32 v55, v103, 16, v102
	v_lshl_or_b32 v103, v105, 16, v104
	v_lshl_or_b32 v102, v108, 16, v107
	v_lshl_or_b32 v105, v110, 16, v109
	v_lshl_or_b32 v104, v111, 16, v106
	v_lshl_or_b32 v107, v113, 16, v112
	v_lshl_or_b32 v106, v115, 16, v114
	v_wmma_i32_16x16x16_iu4 v[108:115], v[51:52], v[55:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[53:54], v[55:56], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[124:131], v[51:52], v[104:105], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[98:99], v[102:103], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[100:101], v[102:103], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[132:139], v[53:54], v[104:105], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v102, v97 offset:17568
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[51:54], v43 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v55, v141, v140, 0xc0c0004
	v_perm_b32 v56, v143, v142, 0xc0c0004
	v_perm_b32 v103, v145, v144, 0xc0c0004
	v_perm_b32 v104, v148, v147, 0xc0c0004
	ds_load_u8 v154, v97 offset:17440
	ds_load_u8 v155, v97 offset:17632
	ds_load_u8 v105, v97 offset:18240
	ds_load_u8 v141, v97 offset:17984
	v_lshl_or_b32 v56, v56, 16, v55
	v_lshl_or_b32 v55, v104, 16, v103
	v_wmma_i32_16x16x16_iu4 v[124:131], v[98:99], v[106:107], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[132:139], v[100:101], v[106:107], v[132:139] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v103, v150, v149, 0xc0c0004
	ds_load_u8 v107, v97 offset:18304
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v140, v152, v151, 0xc0c0004
	ds_load_u8 v104, v97 offset:18176
	ds_load_u8 v106, v97 offset:18368
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[98:101], v44 offset1:16
	s_clause 0x1
	buffer_load_b128 v[9:12], v10, s[28:31], 0 offen
	buffer_load_b128 v[13:16], v13, s[28:31], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[51:52], v[55:56], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[53:54], v[55:56], v[116:123] neg_lo:[1,1,0]
	ds_load_u8 v55, v97 offset:18272
	ds_load_u8 v56, v97 offset:18208
	v_lshl_or_b32 v103, v140, 16, v103
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v97 offset:18560
	ds_load_u8 v144, v97 offset:18112
	ds_load_u8 v143, v97 offset:17920
	v_perm_b32 v142, v154, v153, 0xc0c0004
	v_perm_b32 v102, v102, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v102, v102, 16, v142
	ds_load_u8 v140, v97 offset:18048
	ds_load_u8 v142, v97 offset:18752
	v_wmma_i32_16x16x16_iu4 v[124:131], v[51:52], v[102:103], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[132:139], v[53:54], v[102:103], v[132:139] neg_lo:[1,1,0]
	ds_load_u8 v53, v97 offset:18400
	ds_load_u8 v54, v97 offset:18336
	ds_load_u8 v102, v97 offset:18016
	ds_load_u8 v103, v97 offset:17952
	ds_load_u8 v145, v97 offset:18144
	ds_load_u8 v147, v97 offset:18080
	v_perm_b32 v51, v104, v105, 0xc0c0004
	v_perm_b32 v52, v107, v106, 0xc0c0004
	ds_load_u8 v104, v97 offset:18688
	ds_load_u8 v105, v97 offset:18880
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v106, v143, v141, 0xc0c0004
	v_lshl_or_b32 v52, v52, 16, v51
	ds_load_u8 v143, v97 offset:18784
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v140, v140, v144, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_lshl_or_b32 v51, v140, 16, v106
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v144, v147, v145, 0xc0c0004
	v_lshl_or_b32 v54, v53, 16, v55
	ds_load_u8 v106, v97 offset:18432
	ds_load_u8 v140, v97 offset:18624
	ds_load_u8 v103, v97 offset:18720
	ds_load_u8 v141, v97 offset:18496
	ds_load_u8 v145, v97 offset:18912
	ds_load_u8 v107, v97 offset:18816
	v_lshl_or_b32 v53, v144, 16, v102
	ds_load_u8 v102, v97 offset:18848
	ds_load_u8 v144, v97 offset:18528
	ds_load_u8 v147, v97 offset:18464
	ds_load_u8 v148, v97 offset:18656
	v_wmma_i32_16x16x16_iu4 v[108:115], v[98:99], v[51:52], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[100:101], v[51:52], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[124:131], v[98:99], v[53:54], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[132:139], v[100:101], v[53:54], v[132:139] neg_lo:[1,1,0]
	ds_load_u8 v149, v97 offset:18592
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[51:54], v45 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v55, v104, v142, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[98:101], v46 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v103, v103, v143, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v104, v107, v105, 0xc0c0004
	v_perm_b32 v105, v106, v141, 0xc0c0004
	v_perm_b32 v106, v56, v140, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v102, v102, v145, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v141, v147, v144, 0xc0c0004
	v_lshl_or_b32 v56, v104, 16, v55
	ds_load_u8 v107, v97 offset:19264
	ds_load_u8 v140, v97 offset:19008
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v149, v148, 0xc0c0004
	v_lshl_or_b32 v55, v106, 16, v105
	v_lshl_or_b32 v103, v102, 16, v103
	ds_load_u8 v104, v97 offset:19200
	ds_load_u8 v105, v97 offset:19392
	ds_load_u8 v106, v97 offset:19328
	v_lshl_or_b32 v102, v143, 16, v141
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[51:52], v[55:56], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[53:54], v[55:56], v[116:123] neg_lo:[1,1,0]
	ds_load_u8 v55, v97 offset:19296
	ds_load_u8 v56, v97 offset:19232
	ds_load_u8 v141, v97 offset:19072
	ds_load_u8 v143, v97 offset:19776
	v_wmma_i32_16x16x16_iu4 v[124:131], v[51:52], v[102:103], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[132:139], v[53:54], v[102:103], v[132:139] neg_lo:[1,1,0]
	ds_load_u8 v53, v97 offset:19424
	ds_load_u8 v54, v97 offset:19360
	ds_load_u8 v102, v97 offset:19040
	ds_load_u8 v103, v97 offset:18976
	ds_load_u8 v145, v97 offset:19168
	ds_load_u8 v147, v97 offset:19104
	ds_load_u8 v149, v97 offset:19488
	ds_load_u8 v150, v97 offset:19680
	ds_load_u8 v148, v97 offset:19808
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	ds_load_u8 v56, v97 offset:19584
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v97 offset:19744
	ds_load_u8 v144, v97 offset:19136
	ds_load_u8 v142, v97 offset:18944
	v_perm_b32 v51, v104, v107, 0xc0c0004
	v_perm_b32 v52, v106, v105, 0xc0c0004
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v104, v97 offset:19712
	ds_load_u8 v105, v97 offset:19904
	v_lshl_or_b32 v52, v52, 16, v51
	v_lshl_or_b32 v54, v53, 16, v55
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v106, v142, v140, 0xc0c0004
	v_perm_b32 v140, v141, v144, 0xc0c0004
	ds_load_u8 v141, v97 offset:19520
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v55, v104, v143, 0xc0c0004
	ds_load_u8 v104, v97 offset:20288
	v_lshl_or_b32 v51, v140, 16, v106
	ds_load_u8 v106, v97 offset:19456
	ds_load_u8 v144, v97 offset:19648
	v_perm_b32 v140, v147, v145, 0xc0c0004
	ds_load_u8 v145, v97 offset:19936
	v_wmma_i32_16x16x16_iu4 v[116:123], v[100:101], v[51:52], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[108:115], v[98:99], v[51:52], v[108:115] neg_lo:[1,1,0]
	v_lshl_or_b32 v53, v140, 16, v102
	ds_load_u8 v102, v97 offset:19872
	ds_load_u8 v147, v97 offset:19552
	v_wmma_i32_16x16x16_iu4 v[132:139], v[100:101], v[53:54], v[132:139] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[124:131], v[98:99], v[53:54], v[124:131] neg_lo:[1,1,0]
	ds_load_u8 v98, v97 offset:19616
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[51:54], v47 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v100, v106, v141, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v101, v56, v144, 0xc0c0004
	ds_load_u8 v144, v97 offset:20160
	ds_load_u8 v107, v97 offset:19840
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[140:143], v48 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v102, v102, v145, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v106, v149, v147, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v98, v150, 0xc0c0004
	ds_load_u8 v149, v97 offset:20384
	ds_load_u8 v150, v97 offset:20064
	ds_load_u8 v151, v97 offset:20000
	ds_load_u8 v152, v97 offset:20192
	ds_load_u8 v153, v97 offset:20128
	v_lshl_or_b32 v98, v98, 16, v106
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v99, v107, v105, 0xc0c0004
	ds_load_u8 v107, v97 offset:19968
	v_lshl_or_b32 v56, v99, 16, v55
	v_perm_b32 v99, v103, v148, 0xc0c0004
	v_lshl_or_b32 v55, v101, 16, v100
	ds_load_u8 v100, v97 offset:20224
	ds_load_u8 v101, v97 offset:20416
	ds_load_u8 v103, v97 offset:20352
	ds_load_u8 v105, v97 offset:20032
	v_lshl_or_b32 v99, v102, 16, v99
	ds_load_u8 v102, v97 offset:20096
	ds_load_u8 v145, v97 offset:20320
	ds_load_u8 v147, v97 offset:20256
	ds_load_u8 v148, v97 offset:20448
	v_wmma_i32_16x16x16_iu4 v[108:115], v[51:52], v[55:56], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[53:54], v[55:56], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[124:131], v[51:52], v[98:99], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[132:139], v[53:54], v[98:99], v[132:139] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x4
	buffer_load_u16 v51, v146, s[40:43], 0 offen
	buffer_load_u16 v52, v146, s[40:43], 0 offen offset:4
	buffer_load_u16 v53, v146, s[40:43], 0 offen offset:8
	buffer_load_u16 v54, v146, s[40:43], 0 offen offset:12
	buffer_load_u16 v55, v146, s[40:43], 0 offen offset:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v56, v100, v104, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v98, v103, v101, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v99, v107, v105, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v100, v102, v144, 0xc0c0004
	v_perm_b32 v107, v151, v150, 0xc0c0004
	v_perm_b32 v144, v153, v152, 0xc0c0004
	v_lshl_or_b32 v106, v98, 16, v56
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v103, v147, v145, 0xc0c0004
	v_lshl_or_b32 v105, v100, 16, v99
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v104, v149, v148, 0xc0c0004
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v102, v146, s[40:43], 0 offen offset:264
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v144, v144, 16, v107
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v56, v146, s[40:43], 0 offen offset:20
	buffer_load_u16 v98, v146, s[40:43], 0 offen offset:24
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[108:115], v[140:141], v[105:106], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[142:143], v[105:106], v[116:123] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x5
	buffer_load_u16 v106, v146, s[40:43], 0 offen offset:280
	buffer_load_u16 v107, v146, s[40:43], 0 offen offset:284
	buffer_load_u16 v99, v146, s[40:43], 0 offen offset:28
	buffer_load_u16 v100, v146, s[40:43], 0 offen offset:256
	buffer_load_u16 v101, v146, s[40:43], 0 offen offset:260
	buffer_load_u16 v105, v146, s[40:43], 0 offen offset:276
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v145, v104, 16, v103
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v103, v146, s[40:43], 0 offen offset:268
	buffer_load_u16 v104, v146, s[40:43], 0 offen offset:272
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[124:131], v[140:141], v[144:145], v[124:131] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[132:139], v[142:143], v[144:145], v[132:139] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v50, 16, v50
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_dual_mul_f32 v108, v49, v108 :: v_dual_add_nc_u32 v35, s51, v35
	v_dual_mul_f32 v109, v49, v109 :: v_dual_add_nc_u32 v36, 2, v36
	v_dual_mul_f32 v110, v49, v110 :: v_dual_add_nc_u32 v37, 2, v37
	v_dual_mul_f32 v111, v49, v111 :: v_dual_add_nc_u32 v38, s52, v38
	v_dual_mul_f32 v112, v49, v112 :: v_dual_add_nc_u32 v39, s52, v39
	v_dual_mul_f32 v113, v49, v113 :: v_dual_add_nc_u32 v40, s34, v40
	v_mul_f32_e32 v115, v49, v115
	v_mul_f32_e32 v114, v49, v114
	v_mul_f32_e32 v116, v49, v116
	v_mul_f32_e32 v117, v49, v117
	v_mul_f32_e32 v118, v49, v118
	v_mul_f32_e32 v119, v49, v119
	v_mul_f32_e32 v120, v49, v120
	v_mul_f32_e32 v121, v49, v121
	v_mul_f32_e32 v122, v49, v122
	v_mul_f32_e32 v49, v49, v123
	v_mul_f32_e32 v123, v50, v124
	v_mul_f32_e32 v124, v50, v125
	v_mul_f32_e32 v125, v50, v126
	v_mul_f32_e32 v126, v50, v127
	v_mul_f32_e32 v127, v50, v128
	v_mul_f32_e32 v128, v50, v129
	v_mul_f32_e32 v129, v50, v130
	v_mul_f32_e32 v130, v50, v131
	v_mul_f32_e32 v131, v50, v132
	v_mul_f32_e32 v132, v50, v133
	v_mul_f32_e32 v133, v50, v134
	v_mul_f32_e32 v134, v50, v135
	v_mul_f32_e32 v135, v50, v136
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v136, v50, v137
	v_mul_f32_e32 v137, v50, v138
	v_mul_f32_e32 v50, v50, v139
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(18)
	ds_store_b64 v22, v[17:18] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(16)
	v_perm_b32 v17, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_perm_b32 v18, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v138, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v139, v16, v12, 0x5010400
	v_perm_b32 v140, v16, v12, 0x7030602
	v_and_b16 v9.l, 0xff, v17.l
	v_and_b16 v9.h, 0xff, v17.h
	v_and_b16 v10.l, 0xff, v13.l
	v_and_b16 v11.l, 0xff, v18.l
	v_and_b16 v10.h, 0xff, v13.h
	v_and_b16 v11.h, 0xff, v18.h
	v_and_b16 v12.l, 0xff, v14.l
	v_and_b16 v12.h, 0xff, v14.h
	v_and_b16 v16.l, 0xff, v140.l
	v_and_b16 v16.h, 0xff, v140.h
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v54, 16, v54
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v67, v108, v51
	v_dual_fmac_f32 v93, v109, v52 :: v_dual_fmac_f32 v92, v110, v53
	v_fmac_f32_e32 v91, v111, v54
	v_fmac_f32_e32 v94, v123, v51
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v51, 8, v13
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v78, v124, v52
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v52, 24, v13
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v77, v125, v53 :: v_dual_fmac_f32 v76, v126, v54
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v53, 8, v18
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v90, v112, v55
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v54, 24, v18
	v_lshlrev_b16 v18.l, 8, v51.l
	v_lshlrev_b16 v18.h, 8, v52.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v102, 16, v102
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v56, 16, v56
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v75, v127, v55 :: v_dual_lshlrev_b32 v98, 16, v98
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v84, v118, v102 :: v_dual_lshlrev_b32 v107, 16, v107
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v100, 16, v100
	v_lshlrev_b32_e32 v99, 16, v99
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v105, 16, v105
	v_lshlrev_b32_e32 v101, 16, v101
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v88, v114, v98 :: v_dual_lshlrev_b32 v103, 16, v103
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v87, v115, v99 :: v_dual_lshlrev_b32 v104, 16, v104
	v_fmac_f32_e32 v79, v49, v107
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v49, 8, v17
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v89, v113, v56
	v_dual_fmac_f32 v64, v137, v106 :: v_dual_fmac_f32 v63, v50, v107
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v50, 24, v17
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v86, v116, v100 :: v_dual_fmac_f32 v81, v121, v105
	v_dual_fmac_f32 v85, v117, v101 :: v_dual_fmac_f32 v82, v120, v104
	v_dual_fmac_f32 v83, v119, v103 :: v_dual_fmac_f32 v80, v122, v106
	v_dual_fmac_f32 v74, v128, v56 :: v_dual_fmac_f32 v73, v129, v98
	v_dual_fmac_f32 v72, v130, v99 :: v_dual_fmac_f32 v71, v131, v100
	v_dual_fmac_f32 v70, v132, v101 :: v_dual_fmac_f32 v69, v133, v102
	v_fmac_f32_e32 v68, v134, v103
	v_dual_fmac_f32 v66, v135, v104 :: v_dual_fmac_f32 v65, v136, v105
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v55, 8, v14
	v_lshrrev_b32_e32 v56, 24, v14
	v_lshrrev_b32_e32 v98, 8, v138
	v_lshrrev_b32_e32 v99, 24, v138
	v_lshrrev_b32_e32 v100, 8, v15
	v_lshrrev_b32_e32 v101, 24, v15
	v_lshrrev_b32_e32 v102, 8, v139
	v_lshrrev_b32_e32 v103, 24, v139
	v_lshrrev_b32_e32 v104, 8, v140
	v_lshrrev_b32_e32 v105, 24, v140
	v_lshlrev_b16 v17.l, 8, v49.l
	v_lshlrev_b16 v17.h, 8, v50.l
	v_lshlrev_b16 v49.l, 8, v53.l
	v_and_b16 v13.l, 0xff, v138.l
	v_and_b16 v13.h, 0xff, v138.h
	v_and_b16 v14.l, 0xff, v15.l
	v_and_b16 v14.h, 0xff, v15.h
	v_and_b16 v15.l, 0xff, v139.l
	v_and_b16 v15.h, 0xff, v139.h
	v_lshlrev_b16 v49.h, 8, v54.l
	v_lshlrev_b16 v50.l, 8, v55.l
	v_lshlrev_b16 v50.h, 8, v56.l
	v_lshlrev_b16 v51.l, 8, v98.l
	v_lshlrev_b16 v51.h, 8, v99.l
	v_lshlrev_b16 v52.l, 8, v100.l
	v_lshlrev_b16 v52.h, 8, v101.l
	v_lshlrev_b16 v53.l, 8, v102.l
	v_lshlrev_b16 v53.h, 8, v103.l
	v_lshlrev_b16 v54.l, 8, v104.l
	v_lshlrev_b16 v54.h, 8, v105.l
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
; %bb.6:                                ; %Flow223
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v99, v19
.LBB0_7:                                ; %Flow226
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
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
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
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[47:48], v[106:107], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[108:109], v[17:24] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[110:111], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v97 offset:16864
	ds_load_u8 v104, v97 offset:16800
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[112:113], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[31:32], v[114:115], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[27:28], v[116:117], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
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
	v_cvt_f32_i32_e32 v25, v20
	v_cvt_f32_i32_e32 v26, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v102
	v_cvt_f32_i32_e32 v28, v103
	v_cvt_f32_i32_e32 v29, v104
	v_cvt_f32_i32_e32 v30, v105
	v_cvt_f32_i32_e32 v31, v106
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
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s14
	.loc	1 232 26 is_stmt 0              ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v20, s49, v20, 1
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v51.h, v100.l
	v_mov_b16_e32 v51.l, v50.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v8, v8, v50
	s_mov_b32 s0, 0x76543210
	v_dual_mul_f32 v27, v27, v50 :: v_dual_add_nc_u32 v36, 4, v20
	v_dual_mul_f32 v28, v28, v50 :: v_dual_add_nc_u32 v37, 8, v20
	v_dual_mul_f32 v29, v29, v50 :: v_dual_add_nc_u32 v38, 12, v20
	v_dual_mul_f32 v30, v30, v50 :: v_dual_add_nc_u32 v39, 16, v20
	v_dual_mul_f32 v31, v31, v50 :: v_dual_add_nc_u32 v40, 20, v20
	v_dual_mul_f32 v32, v32, v50 :: v_dual_add_nc_u32 v41, 24, v20
	v_dual_mul_f32 v33, v33, v50 :: v_dual_add_nc_u32 v42, 28, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v21, 0x80000000, v20, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v34, v34, v50 :: v_dual_add_nc_u32 v43, 0x100, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v35, v35, v50 :: v_dual_add_nc_u32 v44, 0x104, v20
	v_dual_mul_f32 v2, v2, v50 :: v_dual_add_nc_u32 v45, 0x108, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v21, v21, s[20:23], 0 offen
	buffer_load_u16 v36, v36, s[20:23], 0 offen
	buffer_load_u16 v37, v37, s[20:23], 0 offen
	buffer_load_u16 v38, v38, s[20:23], 0 offen
	buffer_load_u16 v39, v39, s[20:23], 0 offen
	buffer_load_u16 v40, v40, s[20:23], 0 offen
	buffer_load_u16 v41, v41, s[20:23], 0 offen
	buffer_load_u16 v42, v42, s[20:23], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v3, v3, v50 :: v_dual_add_nc_u32 v46, 0x10c, v20
	v_dual_mul_f32 v4, v4, v50 :: v_dual_add_nc_u32 v47, 0x110, v20
	v_dual_mul_f32 v5, v5, v50 :: v_dual_add_nc_u32 v48, 0x114, v20
	v_dual_mul_f32 v6, v6, v50 :: v_dual_add_nc_u32 v49, 0x118, v20
	v_dual_mul_f32 v7, v7, v50 :: v_dual_add_nc_u32 v20, 0x11c, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	s_clause 0x7
	buffer_load_u16 v43, v43, s[20:23], 0 offen
	buffer_load_u16 v44, v44, s[20:23], 0 offen
	buffer_load_u16 v45, v45, s[20:23], 0 offen
	buffer_load_u16 v46, v46, s[20:23], 0 offen
	buffer_load_u16 v47, v47, s[20:23], 0 offen
	buffer_load_u16 v48, v48, s[20:23], 0 offen
	buffer_load_u16 v49, v49, s[20:23], 0 offen
	buffer_load_u16 v20, v20, s[20:23], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v9, v9, v51
	v_mul_f32_e32 v10, v10, v51
	v_mul_f32_e32 v11, v11, v51
	v_mul_f32_e32 v12, v12, v51
	v_mul_f32_e32 v13, v13, v51
	v_mul_f32_e32 v14, v14, v51
	v_mul_f32_e32 v15, v15, v51
	v_mul_f32_e32 v16, v16, v51
	v_mul_f32_e32 v17, v17, v51
	v_mul_f32_e32 v18, v18, v51
	v_mul_f32_e32 v19, v19, v51
	v_mul_f32_e32 v25, v25, v51
	v_mul_f32_e32 v23, v23, v51
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp27:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s25, 0xffff
	s_mov_b32 s20, s24
.Ltmp28:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v37, 16, v37
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v21, v67
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v11, v37, v92
	v_fma_f32 v12, v12, v38, v91
	v_fma_f32 v13, v13, v39, v90
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v67, v9, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v26, v26, v51
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v21, v27, v21, v94
	v_fma_f32 v10, v10, v36, v93
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v92, v11, s2
	v_cndmask_b32_e64 v12, v91, v12, s2
	v_cndmask_b32_e64 v13, v90, v13, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v24, v24, v51 :: v_dual_max_f32 v9, v9, v9
	v_mul_f32_e32 v22, v22, v51
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v46, 16, v46
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	s_waitcnt vmcnt(3)
	v_dual_max_f32 v12, v12, v12 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v48, 16, v48
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	s_waitcnt vmcnt(0)
	v_dual_max_f32 v11, v11, v11 :: v_dual_lshlrev_b32 v20, 16, v20
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v14, v14, v40, v89
	v_fma_f32 v16, v16, v42, v87
	v_fma_f32 v18, v18, v44, v85
	v_fma_f32 v19, v19, v45, v84
	v_fma_f32 v25, v25, v46, v83
	v_fma_f32 v26, v26, v47, v82
	v_fma_f32 v23, v23, v49, v80
	v_fma_f32 v8, v8, v20, v63
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v93, v10, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v9, 0, v9
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v22, v22, v48, v81
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v13, v13, v13
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v24, v24, v20, v79
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v94, v21, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v15, v15, v41, v88
	v_fma_f32 v27, v28, v36, v78
	v_fma_f32 v28, v29, v37, v77
	v_fma_f32 v29, v30, v38, v76
	v_fma_f32 v2, v2, v44, v70
	v_fma_f32 v3, v3, v45, v69
	v_fma_f32 v4, v4, v46, v68
	v_fma_f32 v5, v5, v47, v66
	v_fma_f32 v6, v6, v48, v65
	v_fma_f32 v7, v7, v49, v64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v89, v14, s2
	v_cndmask_b32_e64 v16, v87, v16, s2
	v_cndmask_b32_e64 v18, v85, v18, s2
	v_cndmask_b32_e64 v19, v84, v19, s2
	v_cndmask_b32_e64 v21, v83, v25, s2
	v_cndmask_b32_e64 v25, v82, v26, s2
	v_cndmask_b32_e64 v22, v81, v22, s2
	v_cndmask_b32_e64 v23, v80, v23, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v20, v20, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v30, v31, v39, v75
	v_fma_f32 v31, v32, v40, v74
	v_fma_f32 v32, v33, v41, v73
	v_fma_f32 v33, v34, v42, v72
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v10, v10, v10
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v17, v17, v43, v86
	v_fma_f32 v34, v35, v43, v71
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v88, v15, s2
	v_cndmask_b32_e64 v24, v79, v24, s2
	v_cndmask_b32_e64 v26, v78, v27, s2
	v_cndmask_b32_e64 v17, v86, v17, s2
	v_cndmask_b32_e64 v27, v77, v28, s2
	v_cndmask_b32_e64 v28, v76, v29, s2
	v_cndmask_b32_e64 v29, v75, v30, s2
	v_cndmask_b32_e64 v30, v74, v31, s2
	v_cndmask_b32_e64 v31, v73, v32, s2
	v_cndmask_b32_e64 v32, v72, v33, s2
	v_cndmask_b32_e64 v33, v71, v34, s2
	v_cndmask_b32_e64 v2, v70, v2, s2
	v_cndmask_b32_e64 v3, v69, v3, s2
	v_cndmask_b32_e64 v4, v68, v4, s2
	v_cndmask_b32_e64 v5, v66, v5, s2
	v_cndmask_b32_e64 v6, v65, v6, s2
	v_cndmask_b32_e64 v7, v64, v7, s2
	v_cndmask_b32_e64 v8, v63, v8, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v14, v14, v14 :: v_dual_max_f32 v15, v15, v15
	v_dual_max_f32 v16, v16, v16 :: v_dual_max_f32 v17, v17, v17
	v_dual_max_f32 v18, v18, v18 :: v_dual_max_f32 v19, v19, v19
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v22, v22, v22
	v_dual_max_f32 v25, v25, v25 :: v_dual_max_f32 v24, v24, v24
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v27, v27, v27
	v_dual_max_f32 v28, v28, v28 :: v_dual_max_f32 v29, v29, v29
	v_dual_max_f32 v30, v30, v30 :: v_dual_max_f32 v31, v31, v31
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v33, v33, v33
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v5, v5, v5
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v7, v7, v7
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v15, 0, v15
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v38, 0, v19 :: v_dual_max_f32 v39, 0, v24
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v40, 0, v26 :: v_dual_max_f32 v41, 0, v27
	v_dual_max_f32 v42, 0, v28 :: v_dual_max_f32 v43, 0, v29
	v_dual_max_f32 v44, 0, v30 :: v_dual_max_f32 v45, 0, v31
	v_dual_max_f32 v46, 0, v32 :: v_dual_max_f32 v47, 0, v33
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v49, 0, v6
	v_dual_max_f32 v48, 0, v5 :: v_dual_max_f32 v51, 0, v7
	v_dual_max_f32 v52, 0, v8 :: v_dual_mul_f32 v29, v9, v9
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v37, v10, v10 :: v_dual_mul_f32 v34, v13, v13
	v_dual_mul_f32 v35, v12, v12 :: v_dual_mul_f32 v32, v15, v15
	v_dual_mul_f32 v33, v14, v14 :: v_dual_mul_f32 v30, v17, v17
	v_dual_mul_f32 v31, v16, v16 :: v_dual_mul_f32 v28, v18, v18
	v_dual_mul_f32 v27, v38, v38 :: v_dual_mul_f32 v26, v21, v21
	v_dual_mul_f32 v25, v25, v25 :: v_dual_mul_f32 v24, v22, v22
	v_dual_mul_f32 v22, v23, v23 :: v_dual_mul_f32 v21, v41, v41
	v_dual_mul_f32 v19, v20, v20 :: v_dual_mul_f32 v36, v11, v11
	v_dual_mul_f32 v23, v39, v39 :: v_dual_mul_f32 v20, v40, v40
	v_dual_mul_f32 v18, v42, v42 :: v_dual_mul_f32 v17, v43, v43
	v_dual_mul_f32 v15, v44, v44 :: v_dual_mul_f32 v12, v46, v46
	v_dual_mul_f32 v11, v45, v45 :: v_dual_mul_f32 v14, v2, v2
	v_dual_mul_f32 v13, v47, v47 :: v_dual_mul_f32 v6, v48, v48
	v_dual_mul_f32 v10, v3, v3 :: v_dual_mul_f32 v5, v4, v4
	v_dual_mul_f32 v7, v49, v49 :: v_dual_mul_f32 v8, v51, v51
	v_dual_mul_f32 v9, v52, v52 :: v_dual_max_f32 v2, v29, v37
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v3, v35, v34, v33
	v_max3_f32 v16, v28, v27, v26
	v_max3_f32 v38, v25, v24, v22
	v_max3_f32 v4, v32, v31, v30
	v_max_f32_e32 v39, v19, v20
	v_max3_f32 v40, v18, v17, v15
	v_max3_f32 v41, v14, v10, v5
	v_max3_f32 v42, v6, v7, v8
	v_max3_f32 v2, v2, v36, v3
	v_max3_f32 v3, v16, v38, v23
	v_max3_f32 v43, v11, v12, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v38, v41, v42, v9
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v41, v61, 8, 0
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v2, v4, v3
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v4, 4, v61
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v16, v39, v21, v40
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v39, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v42, v62, 3, v4
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v3, v16, v43, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v40, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v40, v40, v40
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v38, 0xf0, v39
	v_permlanex16_b32 v39, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v16, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v3, v3, v40
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v4, v4, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v38, v42, v38
	v_add3_u32 v4, v41, v4, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v39
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v38, 0, v16, v38
	v_lshrrev_b32_e32 v39, 1, v60
	v_lshl_add_u32 v16, v16, 3, 0
	ds_store_b64 v4, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[2:3], v38
	v_add3_u32 v16, v16, v39, v99
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v38, v3
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v38
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v38, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v38, v3, v38
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v3, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v4, v2
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v41, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v4
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v2, v4
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v40, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, v4, v40 :: v_dual_lshlrev_b32 v2, 3, v58
	v_max_f32_e32 v4, v38, v41
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v38, 0, v2, v39
	ds_store_b64 v16, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[3:4], v38
.Ltmp59:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_max_f32 v4, 0x2b8cbccc, v4
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v38, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v43, vcc_lo, v3, 0x40e00000, v3
	v_rcp_f32_e32 v39, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v38
	v_fma_f32 v41, -v16, v39, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v38, v40, 1.0
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, s0, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v42, v40
	v_mul_f32_e32 v42, v43, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v44, v41, v40
	v_fma_f32 v45, -v16, v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v38, v44, v41
	v_fmac_f32_e32 v42, v45, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v46, v40
	v_fma_f32 v16, -v16, v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v38, v44, v41
	v_div_fmas_f32 v16, v16, v39, v42
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v40, v44
	v_div_fixup_f32 v3, v16, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v38, 0x40e00000, v4
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v4.h, v50.l
	v_mov_b16_e32 v4.l, v3.h
	v_mov_b16_e32 v38.h, v50.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v38.l, v16.h
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v4, v3, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v16, v38, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v38, 0xffff0000, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v16, 0xffff0000, v3
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v69, null, v38, v38, v24
	v_div_scale_f32 v70, s12, v24, v38, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v77, null, v16, v16, v20
	v_rcp_f32_e32 v101, v69
	v_div_scale_f32 v78, s16, v20, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v105, v77
	v_fma_f32 v123, -v69, v101, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v127, -v77, v105, 1.0
	v_fmac_f32_e32 v101, v123, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v105, v127, v105
	v_mul_f32_e32 v123, v70, v101
	v_div_scale_f32 v61, null, v38, v38, v28
	v_div_scale_f32 v39, null, v38, v38, v29
	v_div_scale_f32 v41, null, v38, v38, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v96, v61
	v_div_scale_f32 v73, null, v38, v38, v23
	v_div_scale_f32 v43, null, v38, v38, v36
	v_div_scale_f32 v65, null, v38, v38, v26
	v_rcp_f32_e32 v87, v39
	v_div_scale_f32 v45, null, v38, v38, v35
	v_mul_f32_e32 v127, v78, v105
	v_div_scale_f32 v81, null, v16, v16, v18
	v_rcp_f32_e32 v88, v41
	v_rcp_f32_e32 v103, v73
	v_div_scale_f32 v47, null, v38, v38, v34
	v_rcp_f32_e32 v89, v43
	v_rcp_f32_e32 v99, v65
	v_div_scale_f32 v49, null, v38, v38, v33
	v_fma_f32 v119, -v61, v96, 1.0
	v_rcp_f32_e32 v90, v45
	v_rcp_f32_e32 v107, v81
	v_div_scale_f32 v51, null, v38, v38, v32
	v_rcp_f32_e32 v91, v47
	v_div_scale_f32 v53, null, v38, v38, v31
	v_div_scale_f32 v62, s8, v28, v38, v28
	v_rcp_f32_e32 v92, v49
	v_fma_f32 v110, -v39, v87, 1.0
	v_fma_f32 v149, -v77, v127, v78
	v_fmac_f32_e32 v96, v119, v96
	v_div_scale_f32 v55, null, v38, v38, v30
	v_div_scale_f32 v71, null, v38, v38, v22
	v_rcp_f32_e32 v93, v51
	v_fma_f32 v111, -v41, v88, 1.0
	v_fma_f32 v125, -v73, v103, 1.0
	v_rcp_f32_e32 v94, v53
	v_fma_f32 v112, -v43, v89, 1.0
	v_fma_f32 v121, -v65, v99, 1.0
	v_div_scale_f32 v40, vcc_lo, v29, v38, v29
	v_fmac_f32_e32 v87, v110, v87
	v_fmac_f32_e32 v127, v149, v105
	v_mul_f32_e32 v119, v62, v96
	v_div_scale_f32 v63, null, v38, v38, v27
	v_rcp_f32_e32 v95, v55
	v_fma_f32 v113, -v45, v90, 1.0
	v_fma_f32 v129, -v81, v107, 1.0
	v_div_scale_f32 v42, s0, v37, v38, v37
	v_div_scale_f32 v74, s14, v23, v38, v23
	v_rcp_f32_e32 v102, v71
	v_dual_fmac_f32 v103, v125, v103 :: v_dual_fmac_f32 v88, v111, v88
	v_fma_f32 v114, -v47, v91, 1.0
	v_div_scale_f32 v44, s1, v36, v38, v36
	v_div_scale_f32 v66, s10, v26, v38, v26
	v_fmac_f32_e32 v89, v112, v89
	v_fmac_f32_e32 v99, v121, v99
	v_div_scale_f32 v79, null, v16, v16, v21
	v_fma_f32 v115, -v49, v92, 1.0
	v_fma_f32 v141, -v61, v119, v62
	v_mul_f32_e32 v110, v40, v87
	v_div_scale_f32 v46, s2, v35, v38, v35
	v_div_scale_f32 v82, s19, v18, v16, v18
	v_rcp_f32_e32 v97, v63
	v_fmac_f32_e32 v107, v129, v107
	v_fmac_f32_e32 v90, v113, v90
	v_fma_f32 v116, -v51, v93, 1.0
	v_mul_f32_e32 v125, v74, v103
	v_mul_f32_e32 v111, v42, v88
	v_div_scale_f32 v48, s3, v34, v38, v34
	v_fmac_f32_e32 v91, v114, v91
	v_div_scale_f32 v67, null, v38, v38, v25
	v_fma_f32 v117, -v53, v94, 1.0
	v_dual_mul_f32 v112, v44, v89 :: v_dual_mul_f32 v121, v66, v99
	v_div_scale_f32 v50, s4, v33, v38, v33
	v_rcp_f32_e32 v106, v79
	v_fma_f32 v145, -v69, v123, v70
	v_fmac_f32_e32 v92, v115, v92
	v_fmac_f32_e32 v119, v141, v96
	v_fma_f32 v132, -v39, v110, v40
	v_fma_f32 v118, -v55, v95, 1.0
	v_mul_f32_e32 v129, v82, v107
	v_mul_f32_e32 v113, v46, v90
	v_div_scale_f32 v52, s5, v32, v38, v32
	v_fma_f32 v124, -v71, v102, 1.0
	v_fmac_f32_e32 v93, v116, v93
	v_fma_f32 v133, -v41, v111, v42
	v_mul_f32_e32 v114, v48, v91
	v_div_scale_f32 v54, s6, v31, v38, v31
	v_rcp_f32_e32 v100, v67
	v_fma_f32 v134, -v43, v112, v44
	v_fma_f32 v143, -v65, v121, v66
	v_fmac_f32_e32 v94, v117, v94
	v_dual_fmac_f32 v110, v132, v87 :: v_dual_fmac_f32 v123, v145, v101
	v_mul_f32_e32 v115, v50, v92
	v_div_scale_f32 v56, s7, v30, v38, v30
	v_fma_f32 v120, -v63, v97, 1.0
	v_fmac_f32_e32 v95, v118, v95
	v_fma_f32 v135, -v45, v113, v46
	v_dual_fmac_f32 v102, v124, v102 :: v_dual_fmac_f32 v111, v133, v88
	v_mul_f32_e32 v116, v52, v93
	v_fma_f32 v136, -v47, v114, v48
	v_dual_fmac_f32 v112, v134, v89 :: v_dual_fmac_f32 v121, v143, v99
	v_mul_f32_e32 v117, v54, v94
	v_fma_f32 v128, -v79, v106, 1.0
	v_fma_f32 v137, -v49, v115, v50
	v_fma_f32 v39, -v39, v110, v40
	v_div_scale_f32 v64, s9, v27, v38, v27
	v_fmac_f32_e32 v97, v120, v97
	v_dual_mul_f32 v118, v56, v95 :: v_dual_fmac_f32 v113, v135, v90
	v_fma_f32 v138, -v51, v116, v52
	v_fma_f32 v40, -v41, v111, v42
	v_fmac_f32_e32 v114, v136, v91
	v_fma_f32 v122, -v67, v100, 1.0
	v_fma_f32 v139, -v53, v117, v54
	v_fma_f32 v41, -v43, v112, v44
	v_dual_fmac_f32 v106, v128, v106 :: v_dual_fmac_f32 v115, v137, v92
	v_div_fmas_f32 v39, v39, v87, v110
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v120, v64, v97
	v_fma_f32 v140, -v55, v118, v56
	v_fma_f32 v42, -v45, v113, v46
	v_fmac_f32_e32 v116, v138, v93
	v_div_fmas_f32 v40, v40, v88, v111
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v43, -v47, v114, v48
	v_div_scale_f32 v68, s11, v25, v38, v25
	v_fma_f32 v147, -v73, v125, v74
	v_dual_fmac_f32 v100, v122, v100 :: v_dual_fmac_f32 v117, v139, v94
	v_div_fmas_f32 v41, v41, v89, v112
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v44, -v49, v115, v50
	v_fma_f32 v142, -v63, v120, v64
	v_fmac_f32_e32 v118, v140, v95
	v_div_fixup_f32 v29, v39, v38, v29
	v_div_fmas_f32 v39, v42, v90, v113
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v45, -v51, v116, v52
	v_div_scale_f32 v72, s13, v22, v38, v22
	v_div_fixup_f32 v37, v40, v38, v37
	v_div_fmas_f32 v40, v43, v91, v114
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v125, v147, v103 :: v_dual_mul_f32 v122, v68, v100
	v_fma_f32 v46, -v53, v117, v54
	v_div_fixup_f32 v36, v41, v38, v36
	v_div_fmas_f32 v41, v44, v92, v115
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v120, v142, v97
	v_fma_f32 v47, -v55, v118, v56
	v_div_fixup_f32 v35, v39, v38, v35
	v_div_fmas_f32 v39, v45, v93, v116
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v75, null, v16, v16, v19
	v_mul_f32_e32 v124, v72, v102
	v_fma_f32 v48, -v61, v119, v62
	v_fma_f32 v144, -v67, v122, v68
	v_div_fixup_f32 v34, v40, v38, v34
	v_div_fmas_f32 v40, v46, v94, v117
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v49, -v63, v120, v64
	v_div_fixup_f32 v33, v41, v38, v33
	v_div_fmas_f32 v41, v47, v95, v118
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v104, v75
	v_fma_f32 v146, -v71, v124, v72
	v_fma_f32 v50, -v65, v121, v66
	v_div_fixup_f32 v32, v39, v38, v32
	v_div_fmas_f32 v39, v48, v96, v119
	v_div_scale_f32 v48, null, v16, v16, v14
	v_fmac_f32_e32 v122, v144, v100
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v31, v40, v38, v31
	v_div_fmas_f32 v40, v49, v97, v120
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v124, v146, v102
	v_div_fixup_f32 v30, v41, v38, v30
	v_div_fmas_f32 v41, v50, v99, v121
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v51, -v67, v122, v68
	v_fma_f32 v52, -v69, v123, v70
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v126, -v75, v104, 1.0
	v_fma_f32 v53, -v71, v124, v72
	v_div_fixup_f32 v28, v39, v38, v28
	v_div_fmas_f32 v39, v51, v100, v122
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v27, v40, v38, v27
	v_div_fmas_f32 v40, v52, v101, v123
	s_mov_b32 vcc_lo, s13
	v_div_scale_f32 v76, s15, v19, v16, v19
	v_fma_f32 v151, -v81, v129, v82
	v_fmac_f32_e32 v104, v126, v104
	v_div_fixup_f32 v26, v41, v38, v26
	v_div_fmas_f32 v41, v53, v102, v124
	v_fma_f32 v53, -v48, v50, 1.0
	v_fmac_f32_e32 v129, v151, v107
	v_fma_f32 v54, -v73, v125, v74
	s_mov_b32 vcc_lo, s14
	v_div_fixup_f32 v25, v39, v38, v25
	v_fmac_f32_e32 v50, v53, v50
	v_mul_f32_e32 v126, v76, v104
	v_div_fmas_f32 v39, v54, v103, v125
	s_mov_b32 vcc_lo, s15
	v_div_scale_f32 v86, null, v16, v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v148, -v75, v126, v76
	v_div_fixup_f32 v24, v40, v38, v24
	v_div_scale_f32 v46, null, v16, v16, v13
	v_div_scale_f32 v83, null, v16, v16, v17
	v_fmac_f32_e32 v126, v148, v104
	v_div_scale_f32 v85, null, v16, v16, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v108, v83
	v_div_scale_f32 v80, s18, v21, v16, v21
	v_fma_f32 v55, -v75, v126, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v109, v85
	v_fma_f32 v56, -v77, v127, v78
	v_mul_f32_e32 v128, v80, v106
	v_div_scale_f32 v84, s17, v17, v16, v17
	v_div_fmas_f32 v40, v55, v104, v126
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v130, -v83, v108, 1.0
	v_fma_f32 v150, -v79, v128, v80
	s_mov_b32 vcc_lo, s16
	v_fma_f32 v62, -v81, v129, v82
	v_div_fixup_f32 v19, v40, v16, v19
	v_rcp_f32_e32 v40, v86
	v_fma_f32 v131, -v85, v109, 1.0
	v_fmac_f32_e32 v108, v130, v108
	v_div_fmas_f32 v42, v56, v105, v127
	v_fmac_f32_e32 v128, v150, v106
	v_div_fixup_f32 v22, v41, v38, v22
	v_fmac_f32_e32 v109, v131, v109
	v_div_fixup_f32 v23, v39, v38, v23
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v61, -v79, v128, v80
	v_fma_f32 v44, -v86, v40, 1.0
	v_div_fixup_f32 v20, v42, v16, v20
	v_div_scale_f32 v39, s0, v15, v16, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v61, v106, v128
	v_fmac_f32_e32 v40, v44, v40
	v_rcp_f32_e32 v44, v46
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v42, null, v16, v16, v12
	v_div_fmas_f32 v41, v62, v107, v129
	s_mov_b32 vcc_lo, s17
	v_div_fixup_f32 v21, v43, v16, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v53, s3, v14, v16, v14
	v_fma_f32 v49, -v46, v44, 1.0
	v_div_fixup_f32 v18, v41, v16, v18
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v30, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v44, v49, v44
	v_div_scale_f32 v49, null, v16, v16, v10
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v54, v49
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v56, -v49, v54, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v54, v56, v54
	v_mul_f32_e32 v130, v84, v108
	v_fma_f32 v38, -v83, v130, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v130, v38, v108
	v_mul_f32_e32 v38, v39, v109
	v_fma_f32 v41, -v83, v130, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v85, v38, v39
	v_div_fmas_f32 v41, v41, v108, v130
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v38, v43, v109
	v_div_scale_f32 v43, s1, v11, v16, v11
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v17, v41, v16, v17
	v_fma_f32 v41, -v42, v45, 1.0
	v_fma_f32 v39, -v85, v38, v39
	v_mul_f32_e32 v47, v43, v40
	v_div_scale_f32 v52, s0, v13, v16, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v41, v45
	v_div_scale_f32 v41, s2, v12, v16, v12
	v_div_fmas_f32 v38, v39, v109, v38
	v_fma_f32 v39, -v86, v47, v43
	v_mul_f32_e32 v55, v52, v44
	v_mul_f32_e32 v51, v41, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v15, v38, v16, v15
	v_fmac_f32_e32 v47, v39, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v42, v51, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v38, -v86, v47, v43
	v_mul_f32_e32 v43, v53, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v39, v45
	v_fma_f32 v39, -v46, v55, v52
	v_div_fmas_f32 v38, v38, v40, v47
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v42, v51, v41
	v_fmac_f32_e32 v55, v39, v44
	v_fma_f32 v39, -v48, v43, v53
	v_div_scale_f32 v41, s1, v10, v16, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v45, v51
	v_div_scale_f32 v45, null, v16, v16, v5
	v_fmac_f32_e32 v43, v39, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v41, v54
	v_fma_f32 v42, -v46, v55, v52
	v_rcp_f32_e32 v47, v45
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v11, v38, v16, v11
	v_fma_f32 v46, -v49, v39, v41
	v_div_fmas_f32 v42, v42, v44, v55
	v_fma_f32 v44, -v48, v43, v53
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v12, v40, v16, v12
	v_fmac_f32_e32 v39, v46, v54
	v_div_scale_f32 v40, null, v16, v16, v6
	v_div_fmas_f32 v43, v44, v50, v43
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v38, -v49, v39, v41
	v_fma_f32 v41, -v45, v47, 1.0
	v_div_fixup_f32 v13, v42, v16, v13
	v_div_fixup_f32 v14, v43, v16, v14
	v_div_scale_f32 v42, null, v16, v16, v8
	v_div_fmas_f32 v38, v38, v54, v39
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v43, vcc_lo, v5, v16, v5
	v_rcp_f32_e32 v39, v40
	v_rcp_f32_e32 v46, v42
	v_div_scale_f32 v49, null, v16, v16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v48, v43, v47
	v_div_fixup_f32 v10, v38, v16, v10
	v_div_scale_f32 v41, null, v16, v16, v7
	v_rcp_f32_e32 v51, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fma_f32 v52, -v45, v48, v43
	v_fma_f32 v38, -v40, v39, 1.0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v53, -v42, v46, 1.0
	v_rcp_f32_e32 v44, v41
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v48, v52, v47
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s0, v6, v16, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v49, v51, 1.0
	v_fma_f32 v43, -v45, v48, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v54, v38, v39
	v_fma_f32 v50, -v41, v44, 1.0
	v_fmac_f32_e32 v51, v55, v51
	v_div_fmas_f32 v43, v43, v47, v48
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v52, -v40, v54, v38
	v_div_scale_f32 v55, s3, v9, v16, v9
	v_div_fixup_f32 v5, v43, v16, v5
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v54, v52, v39
	v_mul_f32_e32 v62, v55, v51
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v38, -v40, v54, v38
	v_fma_f32 v40, -v49, v62, v55
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v27, v27
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v43, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s1, v7, v16, v7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v48, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v46, v53, v46
	v_div_scale_f32 v53, s2, v8, v16, v8
	v_fmac_f32_e32 v62, v40, v51
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v38, v38, v39, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v61, v53, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v38, v16, v6
	v_fma_f32 v52, -v42, v61, v53
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_and_b32_e32 v11, 15, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_fmac_f32 v61, v52, v46 :: v_dual_and_b32 v32, 0x200, v1
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v1, 0x7c, v1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v42, v61, v53
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v42, v15
	v_and_b32_e32 v15, 15, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_mul_f32 v56, v50, v44 :: v_dual_and_b32 v27, 15, v43
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v41, v56, v50
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v56, v45, v44
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v39, -v41, v56, v50
	v_fma_f32 v41, -v49, v62, v55
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v45, v13
	v_and_b32_e32 v13, 15, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v39, v39, v44, v56
	s_mov_b32 vcc_lo, s2
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v30, 5, v0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v40, v40, v46, v61
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v7, v39, v16, v7
	v_div_fmas_f32 v41, v41, v51, v62
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v46, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v8, v40, v16, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v14, 15, v28
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v28, 11, v0
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v9, v41, v16, v9
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v29
	v_rndne_f32_e32 v29, v37
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v44, v12
	v_cvt_i32_f32_e32 v49, v6
	v_cvt_i32_f32_e32 v51, v8
	v_cvt_i32_f32_e32 v52, v9
	v_and_b32_e32 v6, 15, v29
	v_and_b32_e32 v8, 15, v35
	v_and_b32_e32 v9, 15, v34
	v_and_b32_e32 v12, 15, v31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v29, 0x160, v0
	v_and_b32_e32 v28, 0x3000, v28
	v_lshlrev_b32_e32 v31, 7, v98
	v_lshlrev_b32_e32 v34, 7, v0
	v_and_b32_e32 v35, 0x60, v30
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v37, v19
	v_cvt_i32_f32_e32 v38, v20
	v_cvt_i32_f32_e32 v47, v10
	v_and_b32_e32 v10, 15, v33
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xor_b32_e32 v33, v57, v29
	v_add3_u32 v31, 0, v28, v31
	v_and_or_b32 v34, 0x3600, v34, v35
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v39, v21
	v_cvt_i32_f32_e32 v40, v18
	v_cvt_i32_f32_e32 v50, v7
	v_and_b32_e32 v5, 15, v16
	v_and_b32_e32 v7, 15, v36
	v_and_b32_e32 v19, 15, v22
	v_and_b32_e32 v21, 15, v37
	v_and_b32_e32 v22, 15, v38
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v37, v31, v32, v33
	v_xad_u32 v38, v34, v59, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_and_b32_e32 v16, 15, v26
	v_and_b32_e32 v18, 15, v24
	v_and_b32_e32 v20, 15, v23
	v_and_b32_e32 v23, 15, v39
	v_and_b32_e32 v24, 15, v40
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v37, v[5:8]
	ds_store_b128 v37, v[13:16] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v38
	ds_load_b128 v[13:16], v38 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v41, v17
	v_and_b32_e32 v17, 15, v25
	v_and_b32_e32 v28, 15, v45
	v_and_b32_e32 v29, 15, v46
	v_and_b32_e32 v30, 15, v47
	v_and_b32_e32 v31, 15, v48
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
	v_and_b32_e32 v25, 15, v41
	v_and_b32_e32 v26, 15, v42
	v_and_b32_e32 v28, 15, v44
	v_and_b32_e32 v33, 15, v49
	v_and_b32_e32 v34, 15, v50
	v_and_b32_e32 v35, 15, v51
	v_and_b32_e32 v36, 15, v52
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
.Ltmp60:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v39, 4, v59
.Ltmp61:
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
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v22, s[20:23], 0 offen
	buffer_store_b64 v[10:11], v16, s[20:23], 0 offen
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
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s20, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[20:23], 0 offen
.Ltmp62:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp63:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 156
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 156
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16456
; TotalNumSgprs: 55
; NumVgprs: 156
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 156
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     156
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
