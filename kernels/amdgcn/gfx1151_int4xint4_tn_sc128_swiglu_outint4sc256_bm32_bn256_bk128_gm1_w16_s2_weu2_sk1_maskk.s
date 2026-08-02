	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
	v_and_b32_e32 v10, 0x1f0, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v11, 0x1e0, v0
	v_or_b32_e32 v56, 0x3f0, v0
	v_or_b32_e32 v57, 0x7f0, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v6, 7, v0
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v2, 3, v10
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_lshlrev_b32_e32 v12, 2, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v58, 0, v12
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s34, 31
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
	s_lshr_b32 s11, s11, 27
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
	s_ashr_i32 s9, s9, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
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
	s_sub_i32 s20, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s9, s20
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s20, s5
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	s_abs_i32 s18, s2
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s17, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s16, s8, 0x4f7ffffe
	s_load_b256 s[8:15], s[0:1], 0x0
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s16, s16
	s_mul_i32 s17, s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s16, s17
	s_add_i32 s16, s16, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s18, s16
	s_xor_b32 s16, s2, s6
	s_mul_i32 s19, s5, s7
	s_ashr_i32 s17, s16, 31
	s_sub_i32 s16, s18, s19
	s_add_i32 s18, s5, 1
	s_sub_i32 s19, s16, s7
	s_cmp_ge_u32 s16, s7
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s10, s19, s16
	s_add_i32 s16, s5, 1
	s_cmp_ge_u32 s10, s7
	s_mov_b32 s11, 0x31027000
	s_cselect_b32 s5, s16, s5
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s7, s3, 6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s18, s5, s17
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s10, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s19, s4, 0x7f
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s18, s17
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v1, s7, v2
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s10
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s5, s19, 31
.Ltmp15:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s33, s6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s16, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s4, s5, 25
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s4, s19, s4
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s16, v1
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s5, 64, v1
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s20
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s49, s35, 1
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s50, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s4, 7
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s48, s2, 5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s19, 0x7f
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s10, s49, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s4, s5, vcc_lo
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s31, s11
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s4
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v13, 15, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s29, s29, 0xffff
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s20, s34, s7
	.loc	1 214 26 is_stmt 0              ; generate_amdgcn.py:214:26
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v9, 4, v13
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[3:4], null, s49, v2, v[9:10]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add3_u32 v1, s50, s10, v3
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	s_mov_b32 s30, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v3, s49, v1
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v4, 0x80000000, v1, vcc_lo
	.loc	1 228 43 is_stmt 1              ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v1, s35, v1
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[14:17], v4, s[28:31], 0 offen
	buffer_load_b128 v[18:21], v3, s[28:31], 0 offen
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v3, s49, v1
	.loc	1 228 35 is_stmt 0              ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[22:25], v1, s[28:31], 0 offen
	buffer_load_b128 v[26:29], v3, s[28:31], 0 offen
	.loc	1 185 24 is_stmt 1              ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 2, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v7, s7, v3
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[4:5], null, s34, v3, v[1:2]
	v_lshrrev_b32_e32 v5, 2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s16, v7
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v7
	.loc	1 214 34 is_stmt 1              ; generate_amdgcn.py:214:34
	v_add3_u32 v4, s20, s48, v4
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s20, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s20
	s_mov_b32 s20, -1
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s19, 0xff
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b32 v35, v4, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v4, 3, v6
	v_and_b32_e32 v6, 56, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v4, v4, v2
	v_lshl_or_b32 v4, v13, 10, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v7, 0x88, v4
	v_xor_b32_e32 v8, 0x110, v4
	v_xor_b32_e32 v30, 0x198, v4
	v_xor_b32_e32 v31, 0x220, v4
	v_xor_b32_e32 v32, 0x2a8, v4
	v_add_nc_u32_e32 v60, 0, v7
	v_add_nc_u32_e32 v61, 0, v8
	v_xor_b32_e32 v33, 0x330, v4
	v_add_nc_u32_e32 v59, 0, v4
	v_xor_b32_e32 v4, 0x3b8, v4
	v_add_nc_u32_e32 v62, 0, v30
	v_add_nc_u32_e32 v63, 0, v31
	v_add_nc_u32_e32 v64, 0, v32
	v_add_nc_u32_e32 v65, 0, v33
	v_add_nc_u32_e32 v66, 0, v4
	s_waitcnt vmcnt(3)
	v_perm_b32 v7, v18, v14, 0x5010400
	v_perm_b32 v8, v18, v14, 0x7030602
	v_perm_b32 v14, v19, v15, 0x5010400
	v_perm_b32 v15, v19, v15, 0x7030602
	v_perm_b32 v18, v20, v16, 0x5010400
	v_perm_b32 v19, v20, v16, 0x7030602
	v_perm_b32 v20, v21, v17, 0x5010400
	v_perm_b32 v21, v21, v17, 0x7030602
	v_lshrrev_b32_e32 v30, 8, v7
	v_lshrrev_b32_e32 v36, 24, v14
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(1)
	v_perm_b32 v47, v26, v22, 0x5010400
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v31, 24, v7
	v_lshrrev_b32_e32 v32, 8, v8
	v_lshrrev_b32_e32 v33, 24, v8
	v_lshrrev_b32_e32 v34, 8, v14
	v_lshrrev_b32_e32 v37, 8, v15
	v_lshrrev_b32_e32 v38, 24, v15
	v_lshrrev_b32_e32 v39, 8, v18
	v_lshrrev_b32_e32 v40, 24, v18
	v_lshrrev_b32_e32 v41, 8, v19
	v_lshrrev_b32_e32 v42, 24, v19
	v_lshrrev_b32_e32 v43, 8, v20
	v_lshrrev_b32_e32 v44, 24, v20
	v_lshrrev_b32_e32 v45, 8, v21
	v_lshrrev_b32_e32 v46, 24, v21
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v48, v26, v22, 0x7030602
	v_perm_b32 v49, v27, v23, 0x5010400
	v_perm_b32 v50, v27, v23, 0x7030602
	v_perm_b32 v51, v28, v24, 0x5010400
	v_perm_b32 v52, v28, v24, 0x7030602
	v_perm_b32 v53, v29, v25, 0x5010400
	v_perm_b32 v54, v29, v25, 0x7030602
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b16 v4.l, 0xff, v7.l
	v_and_b16 v4.h, 0xff, v7.h
	v_and_b16 v7.h, 0xff, v8.h
	v_and_b16 v8.h, 0xff, v14.h
	v_and_b16 v14.h, 0xff, v15.h
	v_and_b16 v15.h, 0xff, v18.h
	v_and_b16 v16.l, 0xff, v19.l
	v_and_b16 v18.h, 0xff, v21.h
	v_lshlrev_b16 v19.l, 8, v30.l
	v_lshlrev_b16 v21.h, 8, v36.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v36, 8, v47
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b16 v7.l, 0xff, v8.l
	v_and_b16 v8.l, 0xff, v14.l
	v_and_b16 v14.l, 0xff, v15.l
	v_and_b16 v15.l, 0xff, v18.l
	v_and_b16 v16.h, 0xff, v19.h
	v_and_b16 v17.l, 0xff, v20.l
	v_and_b16 v17.h, 0xff, v20.h
	v_and_b16 v18.l, 0xff, v21.l
	v_lshlrev_b16 v19.h, 8, v31.l
	v_lshlrev_b16 v20.l, 8, v32.l
	v_lshlrev_b16 v20.h, 8, v33.l
	v_lshlrev_b16 v21.l, 8, v34.l
	v_lshlrev_b16 v22.l, 8, v37.l
	v_lshlrev_b16 v22.h, 8, v38.l
	v_lshlrev_b16 v23.l, 8, v39.l
	v_lshlrev_b16 v23.h, 8, v40.l
	v_lshlrev_b16 v24.l, 8, v41.l
	v_lshlrev_b16 v24.h, 8, v42.l
	v_lshlrev_b16 v25.l, 8, v43.l
	v_lshlrev_b16 v25.h, 8, v44.l
	v_lshlrev_b16 v26.l, 8, v45.l
	v_lshlrev_b16 v26.h, 8, v46.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_and_b16 v27.l, 0xff, v47.l
	v_lshrrev_b32_e32 v37, 24, v47
	v_and_b16 v27.h, 0xff, v47.h
	v_and_b16 v28.l, 0xff, v48.l
	v_lshrrev_b32_e32 v38, 8, v48
	v_lshrrev_b32_e32 v39, 24, v48
	v_and_b16 v28.h, 0xff, v48.h
	v_and_b16 v29.l, 0xff, v49.l
	v_lshrrev_b32_e32 v40, 8, v49
	v_lshrrev_b32_e32 v41, 24, v49
	v_and_b16 v29.h, 0xff, v49.h
	v_and_b16 v30.l, 0xff, v50.l
	v_lshrrev_b32_e32 v42, 8, v50
	v_lshrrev_b32_e32 v43, 24, v50
	v_and_b16 v30.h, 0xff, v50.h
	v_and_b16 v31.l, 0xff, v51.l
	v_lshrrev_b32_e32 v44, 8, v51
	v_lshrrev_b32_e32 v45, 24, v51
	v_and_b16 v31.h, 0xff, v51.h
	v_lshrrev_b32_e32 v46, 8, v52
	v_lshrrev_b32_e32 v47, 24, v52
	v_lshrrev_b32_e32 v48, 8, v53
	v_lshrrev_b32_e32 v49, 24, v53
	v_lshrrev_b32_e32 v50, 8, v54
	v_lshrrev_b32_e32 v51, 24, v54
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v4.l, v4.l, v19.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v19.l, 8, v36.l
	v_and_b16 v32.l, 0xff, v52.l
	v_and_b16 v32.h, 0xff, v52.h
	v_and_b16 v33.l, 0xff, v53.l
	v_and_b16 v33.h, 0xff, v53.h
	v_and_b16 v34.l, 0xff, v54.l
	v_and_b16 v34.h, 0xff, v54.h
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v4.h, v4.h, v19.h
	v_or_b16 v7.l, v7.l, v20.l
	v_or_b16 v7.h, v7.h, v20.h
	v_or_b16 v8.l, v8.l, v21.l
	v_or_b16 v8.h, v8.h, v21.h
	v_or_b16 v14.l, v14.l, v22.l
	v_or_b16 v14.h, v14.h, v22.h
	v_or_b16 v15.l, v15.l, v23.l
	v_or_b16 v15.h, v15.h, v23.h
	v_or_b16 v16.l, v16.l, v24.l
	v_or_b16 v16.h, v16.h, v24.h
	v_or_b16 v17.l, v17.l, v25.l
	v_or_b16 v17.h, v17.h, v25.h
	v_or_b16 v18.l, v18.l, v26.l
	v_or_b16 v18.h, v18.h, v26.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v19.h, 8, v37.l
	v_lshlrev_b16 v20.l, 8, v38.l
	v_lshlrev_b16 v20.h, 8, v39.l
	v_lshlrev_b16 v21.l, 8, v40.l
	v_lshlrev_b16 v21.h, 8, v41.l
	v_lshlrev_b16 v22.l, 8, v42.l
	v_lshlrev_b16 v22.h, 8, v43.l
	v_lshlrev_b16 v23.l, 8, v44.l
	v_lshlrev_b16 v23.h, 8, v45.l
	v_lshlrev_b16 v24.l, 8, v46.l
	v_lshlrev_b16 v24.h, 8, v47.l
	v_lshlrev_b16 v25.l, 8, v48.l
	v_lshlrev_b16 v25.h, 8, v49.l
	v_lshlrev_b16 v26.l, 8, v50.l
	v_lshlrev_b16 v26.h, 8, v51.l
	v_or_b16 v19.l, v27.l, v19.l
	v_or_b16 v19.h, v27.h, v19.h
	v_or_b16 v20.l, v28.l, v20.l
	v_or_b16 v20.h, v28.h, v20.h
	v_or_b16 v21.l, v29.l, v21.l
	v_or_b16 v21.h, v29.h, v21.h
	v_or_b16 v22.l, v30.l, v22.l
	v_or_b16 v22.h, v30.h, v22.h
	v_or_b16 v23.l, v31.l, v23.l
	v_or_b16 v23.h, v31.h, v23.h
	v_or_b16 v24.l, v32.l, v24.l
	v_or_b16 v24.h, v32.h, v24.h
	v_or_b16 v25.l, v33.l, v25.l
	v_or_b16 v25.h, v33.h, v25.h
	v_or_b16 v26.l, v34.l, v26.l
	v_or_b16 v26.h, v34.h, v26.h
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v58, v35 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v59, v4
	ds_store_b16_d16_hi v59, v4 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v59, v19 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v60, v7
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v59, v19 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v60, v7 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v60, v20 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v61, v8
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v60, v20 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v61, v8 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v61, v21 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v62, v14
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v61, v21 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v62, v14 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v62, v22 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v63, v15
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v62, v22 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v63, v15 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v63, v23 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v64, v16
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v63, v23 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v64, v16 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v64, v24 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v65, v17
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v64, v24 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v65, v17 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v65, v25 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v66, v18
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v65, v25 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v66, v18 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v66, v26 offset:16384
	ds_store_b16_d16_hi v66, v26 offset:16448
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b32_e32 v4, 56, v5
	v_lshl_or_b32 v7, v11, 5, v6
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_or_b32_e32 v8, 0x3f0, v0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xor_b32_e32 v4, v7, v4
	s_mov_b32 s20, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v47, v13, 6, v4
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_or_b32_e32 v4, 0x7f0, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xor_b32_e32 v48, 8, v47
	v_xor_b32_e32 v49, 16, v47
	v_xor_b32_e32 v50, 24, v47
	v_xor_b32_e32 v51, 32, v47
	v_xor_b32_e32 v52, 40, v47
	v_xor_b32_e32 v53, 48, v47
	v_xor_b32_e32 v54, 56, v47
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
                                        ; implicit-def: $vgpr8
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr54
.LBB0_3:                                ; %Flow431
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b128 s[24:27], s[0:1], 0x20
	v_bfe_u32 v46, v0, 4, 1
	v_dual_mov_b32 v30, 0 :: v_dual_add_nc_u32 v55, 0, v13
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v21, 0
	s_and_not1_b32 vcc_lo, exec_lo, s20
	s_add_i32 s0, s6, -1
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v67, s16, v3
	v_sub_nc_u32_e32 v68, s16, v2
	s_mov_b32 s16, 0
	v_lshl_or_b32 v6, v11, 5, v6
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_and_b32_e32 v4, 56, v5
	v_and_b32_e32 v5, 0x7c, v5
	s_lshl_b32 s19, s17, 9
	s_add_i32 s7, s7, 64
	v_mov_b32_e32 v19, 0
	v_xor_b32_e32 v4, v6, v4
	v_lshl_or_b32 v6, s18, 9, v11
	v_lshl_or_b32 v8, s3, 7, v5
	s_lshl_b32 s18, s18, 8
	v_mov_b32_e32 v18, 0
	v_lshl_or_b32 v47, v13, 6, v4
	v_add_nc_u32_e32 v4, s48, v13
	v_add_nc_u32_e32 v2, s49, v6
	v_subrev_nc_u32_e32 v71, s19, v6
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v6, 0x83, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v7, 16, v4
	v_subrev_nc_u32_e32 v70, s19, v2
	v_add_nc_u32_e32 v2, 0x81, v8
	v_mul_lo_u32 v14, s6, v4
	v_mov_b32_e32 v17, 0
	v_mul_lo_u32 v7, s6, v7
	v_mov_b32_e32 v15, 0
	v_mad_u64_u32 v[4:5], null, s35, v2, s[18:19]
	v_mad_u64_u32 v[5:6], null, s35, v6, s[18:19]
	v_add_nc_u32_e32 v2, 0x82, v8
	v_add_nc_u32_e32 v6, 0x80, v8
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v8, s7, v3
	v_lshlrev_b32_e32 v72, 1, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[2:3], null, s35, v2, s[18:19]
	v_mad_u64_u32 v[6:7], null, s35, v6, s[18:19]
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v3, s34, v8
	v_xor_b32_e32 v48, 8, v47
	v_xor_b32_e32 v49, 16, v47
	v_xor_b32_e32 v50, 24, v47
	v_xor_b32_e32 v51, 32, v47
	v_xor_b32_e32 v52, 40, v47
	v_xor_b32_e32 v53, 48, v47
	v_xor_b32_e32 v54, 56, v47
	s_lshl_b32 s17, s17, 8
	s_mov_b32 s18, s16
	v_subrev_nc_u32_e32 v74, s17, v4
	v_subrev_nc_u32_e32 v75, s17, v5
	v_subrev_nc_u32_e32 v76, s17, v2
	v_subrev_nc_u32_e32 v77, s17, v6
	s_mov_b32 s17, s16
	s_mov_b32 s19, s16
	v_add3_u32 v78, v3, s48, v1
	v_mov_b32_e32 v1, s16
	v_dual_mov_b32 v4, s19 :: v_dual_lshlrev_b32 v69, 1, v46
	v_dual_mov_b32 v6, s21 :: v_dual_lshlrev_b32 v73, 1, v14
	v_dual_mov_b32 v8, s23 :: v_dual_add_nc_u32 v79, 0, v56
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v80, 0, v57
	v_dual_mov_b32 v20, 0 :: v_dual_add_nc_u32 v81, 0, v47
	v_dual_mov_b32 v27, 0 :: v_dual_add_nc_u32 v82, 0, v48
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v83, 0, v49
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v84, 0, v50
	v_dual_mov_b32 v14, 0 :: v_dual_add_nc_u32 v85, 0, v51
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v86, 0, v52
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v87, 0, v53
	v_dual_mov_b32 v33, 0 :: v_dual_add_nc_u32 v88, 0, v54
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_mov_b32_e32 v5, s20
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v28, 0
	v_mov_b32_e32 v40, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v30, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s1, s0, 1
	s_lshl_b32 s3, s35, 2
	s_lshl_b32 s51, s35, 7
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
	v_cmp_lt_i32_e32 vcc_lo, s7, v67
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v90, v73, s[44:47], 0 offen
	buffer_load_u16 v91, v72, s[44:47], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v72, 2, v72
	v_add_nc_u32_e32 v73, 2, v73
	s_add_i32 s1, s1, -1
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v89, 0x80000000, v78, vcc_lo
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s7, v68
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s7, s7, 64
	v_add_nc_u32_e32 v78, s34, v78
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b32 v89, v89, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v92, v55 offset:33008
	ds_load_u8 v93, v55 offset:32976
	ds_load_u8 v94, v55 offset:32944
	ds_load_u8 v95, v55 offset:32912
	ds_load_u8 v96, v55 offset:32880
	ds_load_u8 v97, v55 offset:32848
	ds_load_u8 v98, v55 offset:32784
	ds_load_u8 v99, v55 offset:32816
	ds_load_u8 v164, v55 offset:32800
	ds_load_u8 v100, v55 offset:33264
	ds_load_u8 v101, v55 offset:33232
	ds_load_u8 v102, v55 offset:33200
	ds_load_u8 v103, v55 offset:33168
	ds_load_u8 v104, v55 offset:33136
	ds_load_u8 v105, v55 offset:33104
	ds_load_u8 v170, v55 offset:33792
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[130:133], v81 offset1:32
	ds_load_2addr_stride64_b64 v[134:137], v82 offset1:32
	ds_load_2addr_stride64_b64 v[138:141], v83 offset1:32
	ds_load_2addr_stride64_b64 v[142:145], v84 offset1:32
	ds_load_2addr_stride64_b64 v[146:149], v85 offset1:32
	ds_load_2addr_stride64_b64 v[150:153], v86 offset1:32
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	.loc	1 0 0                           ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[154:157], v87 offset1:32
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v94, v95, v94, 0xc0c0004
	ds_load_u8 v95, v55 offset:33072
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	ds_load_u8 v97, v55 offset:33520
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v98, v98, v99, 0xc0c0004
	v_lshl_or_b32 v117, v92, 16, v94
	ds_load_u8 v92, v55 offset:33456
	ds_load_u8 v94, v55 offset:33424
	ds_load_u8 v99, v55 offset:33488
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	v_lshl_or_b32 v116, v96, 16, v98
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v96, v103, v102, 0xc0c0004
	ds_load_u8 v103, v55 offset:33296
	ds_load_u8 v93, v55 offset:33040
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v102, v105, v104, 0xc0c0004
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(13)
	v_wmma_i32_16x16x16_iu4 v[108:115], v[132:133], v[116:117], v[1:8] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v119, v100, 16, v96
	ds_load_u8 v100, v55 offset:33744
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[158:161], v88 offset1:32
	.loc	1 198 26 is_stmt 1              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s1, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v92, v94, v92, 0xc0c0004
	ds_load_u8 v94, v55 offset:33584
	ds_load_u8 v101, v55 offset:33360
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v93, v93, v95, 0xc0c0004
	ds_load_u8 v95, v55 offset:33328
	v_lshl_or_b32 v118, v102, 16, v93
	ds_load_u8 v93, v55 offset:33648
	ds_load_u8 v96, v55 offset:33616
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[108:115], v[136:137], v[118:119], v[108:115] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v95, v103, v95, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v96, v93, 0xc0c0004
	ds_load_u8 v96, v55 offset:34032
	ds_load_u8 v98, v55 offset:33392
	v_perm_b32 v97, v99, v97, 0xc0c0004
	ds_load_u8 v99, v55 offset:33552
	v_lshl_or_b32 v121, v97, 16, v92
	ds_load_u8 v97, v79 offset:32768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v98, v101, v98, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v120, v98, 16, v95
	ds_load_u8 v92, v55 offset:33712
	ds_load_u8 v95, v55 offset:33680
	ds_load_u8 v98, v55 offset:34000
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v94, v99, v94, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v97, v100, v97, 0xc0c0004
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[108:115], v[140:141], v[120:121], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v122, v93, 16, v94
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v92, v95, v92, 0xc0c0004
	ds_load_u8 v95, v80 offset:32768
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v94, v98, v96, 0xc0c0004
	v_lshl_or_b32 v123, v97, 16, v92
	ds_load_u8 v92, v55 offset:33968
	ds_load_u8 v93, v55 offset:33936
	ds_load_u8 v96, v55 offset:33872
	ds_load_u8 v97, v55 offset:33840
	ds_load_u8 v98, v55 offset:33808
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[108:115], v[144:145], v[122:123], v[108:115] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v55 offset:33904
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_lshl_or_b32 v125, v94, 16, v92
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v93, v96, v93, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v124, v93, 16, v97
	ds_load_u8 v92, v55 offset:34288
	ds_load_u8 v93, v55 offset:34256
	ds_load_u8 v94, v55 offset:34224
	ds_load_u8 v96, v55 offset:34192
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[108:115], v[148:149], v[124:125], v[108:115] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v96, v94, 0xc0c0004
	ds_load_u8 v93, v55 offset:34160
	ds_load_u8 v96, v55 offset:34128
	ds_load_u8 v97, v55 offset:34096
	ds_load_u8 v98, v55 offset:34064
	v_lshl_or_b32 v127, v92, 16, v94
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v96, v93, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v126, v93, 16, v97
	ds_load_u8 v92, v55 offset:34544
	ds_load_u8 v93, v55 offset:34512
	ds_load_u8 v94, v55 offset:34480
	ds_load_u8 v96, v55 offset:34448
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[108:115], v[152:153], v[126:127], v[108:115] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v96, v94, 0xc0c0004
	ds_load_u8 v93, v55 offset:34416
	ds_load_u8 v96, v55 offset:34384
	ds_load_u8 v97, v55 offset:34352
	ds_load_u8 v98, v55 offset:34320
	v_lshl_or_b32 v129, v92, 16, v94
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v96, v93, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v128, v93, 16, v97
	ds_load_u8 v92, v55 offset:34672
	ds_load_u8 v93, v55 offset:34640
	ds_load_u8 v94, v55 offset:34608
	ds_load_u8 v96, v55 offset:34576
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[108:115], v[156:157], v[128:129], v[108:115] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v93, v92, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v94, v96, v94, 0xc0c0004
	ds_load_u8 v93, v55 offset:34768
	ds_load_u8 v96, v55 offset:34736
	ds_load_u8 v97, v55 offset:34704
	v_lshl_or_b32 v162, v92, 16, v94
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v93, v93, v95, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v96, v97, v96, 0xc0c0004
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v90, 16, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v163, v93, 16, v96
	v_wmma_i32_16x16x16_iu4 v[92:99], v[130:131], v[116:117], v[1:8] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[108:115], v[160:161], v[162:163], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[92:99], v[134:135], v[118:119], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[138:139], v[120:121], v[92:99] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[92:99], v[142:143], v[122:123], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[146:147], v[124:125], v[92:99] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[92:99], v[150:151], v[126:127], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[154:155], v[128:129], v[92:99] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[92:99], v[158:159], v[162:163], v[92:99] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v101, v98
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v100, v99
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v99, v108
	v_cvt_f32_i32_e32 v98, v109
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v108, v55 offset:32928
	ds_load_u8 v109, v55 offset:32896
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v102, v97
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v97, v110
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v103, v96
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v96, v111
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v104, v95
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v95, v112
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v107, v92
	v_cvt_f32_i32_e32 v106, v93
	v_cvt_f32_i32_e32 v105, v94
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v94, v113
	v_cvt_f32_i32_e32 v93, v114
	v_cvt_f32_i32_e32 v92, v115
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v55 offset:32992
	ds_load_u8 v110, v55 offset:32960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v55 offset:32864
	ds_load_u8 v111, v55 offset:32832
	v_lshl_or_b32 v163, v109, 16, v108
	ds_load_u8 v108, v55 offset:33184
	ds_load_u8 v109, v55 offset:33152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v55 offset:32768
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v111, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v162, v110, 16, v111
	ds_load_u8 v109, v55 offset:33248
	ds_load_u8 v110, v55 offset:33216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v55 offset:33056
	ds_load_u8 v111, v55 offset:33024
	v_lshl_or_b32 v165, v109, 16, v108
	ds_load_u8 v108, v55 offset:33440
	ds_load_u8 v109, v55 offset:33408
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v55 offset:33120
	ds_load_u8 v112, v55 offset:33088
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v164, v111, 16, v110
	ds_load_u8 v109, v55 offset:33504
	ds_load_u8 v110, v55 offset:33472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v55 offset:33312
	ds_load_u8 v111, v55 offset:33280
	v_lshl_or_b32 v167, v109, 16, v108
	ds_load_u8 v108, v55 offset:33696
	ds_load_u8 v109, v55 offset:33664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v55 offset:33376
	ds_load_u8 v112, v55 offset:33344
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v166, v111, 16, v110
	ds_load_u8 v109, v55 offset:33760
	ds_load_u8 v110, v55 offset:33728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v55 offset:33568
	ds_load_u8 v111, v55 offset:33536
	v_lshl_or_b32 v169, v109, 16, v108
	ds_load_u8 v108, v55 offset:33952
	ds_load_u8 v109, v55 offset:33920
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v55 offset:33632
	ds_load_u8 v112, v55 offset:33600
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v168, v111, 16, v110
	ds_load_u8 v109, v55 offset:34016
	ds_load_u8 v110, v55 offset:33984
	ds_load_u8 v111, v55 offset:33888
	ds_load_u8 v112, v55 offset:33856
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v55 offset:33824
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	v_lshl_or_b32 v171, v109, 16, v108
	ds_load_u8 v108, v55 offset:34208
	ds_load_u8 v109, v55 offset:34176
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v110, v170, v110, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v170, v111, 16, v110
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v55 offset:34272
	ds_load_u8 v110, v55 offset:34240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v55 offset:34080
	ds_load_u8 v111, v55 offset:34048
	v_lshl_or_b32 v173, v109, 16, v108
	ds_load_u8 v108, v55 offset:34464
	ds_load_u8 v109, v55 offset:34432
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v55 offset:34144
	ds_load_u8 v112, v55 offset:34112
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v172, v111, 16, v110
	ds_load_u8 v109, v55 offset:34528
	ds_load_u8 v110, v55 offset:34496
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v55 offset:34336
	ds_load_u8 v111, v55 offset:34304
	v_lshl_or_b32 v175, v109, 16, v108
	ds_load_u8 v108, v55 offset:34720
	ds_load_u8 v109, v55 offset:34688
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v55 offset:34400
	ds_load_u8 v112, v55 offset:34368
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v174, v111, 16, v110
	ds_load_u8 v109, v55 offset:34752
	ds_load_u8 v110, v55 offset:34784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v109, v110, 0xc0c0004
	ds_load_u8 v110, v55 offset:34592
	ds_load_u8 v111, v55 offset:34560
	v_lshl_or_b32 v177, v109, 16, v108
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v111, v55 offset:34656
	ds_load_u8 v112, v55 offset:34624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v112, v111, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v176, v111, 16, v110
	v_wmma_i32_16x16x16_iu4 v[108:115], v[130:131], v[162:163], v[1:8] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[124:131], v[132:133], v[162:163], v[1:8] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[108:115], v[134:135], v[164:165], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[124:131], v[136:137], v[164:165], v[124:131] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[108:115], v[138:139], v[166:167], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[124:131], v[140:141], v[166:167], v[124:131] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[108:115], v[142:143], v[168:169], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[124:131], v[144:145], v[168:169], v[124:131] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[108:115], v[146:147], v[170:171], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[124:131], v[148:149], v[170:171], v[124:131] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[108:115], v[150:151], v[172:173], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[124:131], v[152:153], v[172:173], v[124:131] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[108:115], v[154:155], v[174:175], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[124:131], v[156:157], v[174:175], v[124:131] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[108:115], v[158:159], v[176:177], v[108:115] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[124:131], v[160:161], v[176:177], v[124:131] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v116, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v122, v109
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v115, v124
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v124, v9, v77
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v117, v114
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v114, v125
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v91, 16, v91
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v125, v9, v76
	v_cndmask_b32_e32 v124, 0x80000000, v124, vcc_lo
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v120, v111
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v111, v128
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v106, v91, v106
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v128, 0x80000000, v125, vcc_lo
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v123, v108
	v_cvt_f32_i32_e32 v121, v110
	v_cvt_f32_i32_e32 v119, v112
	v_cvt_f32_i32_e32 v118, v113
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v113, v126
	v_cvt_f32_i32_e32 v112, v127
	v_cvt_f32_i32_e32 v110, v129
	v_cvt_f32_i32_e32 v109, v130
	v_cvt_f32_i32_e32 v108, v131
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b128 v[124:127], v124, s[28:31], 0 offen
	buffer_load_b128 v[128:131], v128, s[28:31], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v107, v91, v107 :: v_dual_add_nc_u32 v76, s51, v76
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v77, s51, v77
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v132, v128, v124, 0x5010400
	v_perm_b32 v133, v128, v124, 0x7030602
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v124, v9, v74
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_perm_b32 v134, v129, v125, 0x5010400
	v_perm_b32 v135, v129, v125, 0x7030602
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v125, v9, v75
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_perm_b32 v136, v130, v126, 0x5010400
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v124, 0x80000000, v124, vcc_lo
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_perm_b32 v137, v130, v126, 0x7030602
	v_perm_b32 v138, v131, v127, 0x5010400
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v128, 0x80000000, v125, vcc_lo
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_perm_b32 v139, v131, v127, 0x7030602
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_clause 0x1
	buffer_load_b128 v[124:127], v124, s[28:31], 0 offen
	buffer_load_b128 v[128:131], v128, s[28:31], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v74, s51, v74
	v_add_nc_u32_e32 v75, s51, v75
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(0)
	v_perm_b32 v140, v128, v124, 0x5010400
	v_perm_b32 v124, v128, v124, 0x7030602
	v_perm_b32 v128, v129, v125, 0x5010400
	v_perm_b32 v125, v129, v125, 0x7030602
	v_perm_b32 v129, v130, v126, 0x5010400
	v_perm_b32 v126, v130, v126, 0x7030602
	v_perm_b32 v130, v131, v127, 0x5010400
	v_perm_b32 v127, v131, v127, 0x7030602
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v131, v69, v71
	s_clause 0x7
	buffer_load_u16 v141, v131, s[40:43], 0 offen
	buffer_load_u16 v142, v131, s[40:43], 0 offen offset:4
	buffer_load_u16 v143, v131, s[40:43], 0 offen offset:8
	buffer_load_u16 v144, v131, s[40:43], 0 offen offset:12
	buffer_load_u16 v145, v131, s[40:43], 0 offen offset:16
	buffer_load_u16 v146, v131, s[40:43], 0 offen offset:20
	buffer_load_u16 v147, v131, s[40:43], 0 offen offset:24
	buffer_load_u16 v131, v131, s[40:43], 0 offen offset:28
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v71, s3, v71
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v141, 16, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v45, v107, v141
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v107, v90, v123
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v43, v107, v141
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v107, 16, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v41, v106, v107
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v106, v90, v122 :: v_dual_mul_f32 v105, v91, v105
	v_mul_f32_e32 v104, v91, v104
	v_mul_f32_e32 v103, v91, v103
	v_dual_mul_f32 v102, v91, v102 :: v_dual_fmac_f32 v27, v106, v107
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v101, v91, v101 :: v_dual_lshlrev_b32 v106, 16, v143
	v_mul_f32_e32 v100, v91, v100
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v98, v91, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v99, v91, v99 :: v_dual_fmac_f32 v40, v105, v106
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v105, v90, v121
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v97, v91, v97
	v_mul_f32_e32 v96, v91, v96
	v_mul_f32_e32 v95, v91, v95
	v_mul_f32_e32 v94, v91, v94
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v26, v105, v106 :: v_dual_lshlrev_b32 v105, 16, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v39, v104, v105 :: v_dual_mul_f32 v104, v90, v120
	v_fmac_f32_e32 v25, v104, v105
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v104, 16, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v38, v103, v104 :: v_dual_mul_f32 v103, v90, v119
	v_fmac_f32_e32 v17, v103, v104
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v103, 16, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v37, v102, v103
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v102, v90, v118
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v16, v102, v103
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v102, 16, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v36, v101, v102 :: v_dual_mul_f32 v101, v90, v117
	v_fmac_f32_e32 v15, v101, v102
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v101, 16, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v30, v100, v101
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v100, v90, v116
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v14, v100, v101
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	v_add_nc_u32_e32 v100, v69, v70
	s_clause 0x7
	buffer_load_u16 v101, v100, s[40:43], 0 offen
	buffer_load_u16 v102, v100, s[40:43], 0 offen offset:4
	buffer_load_u16 v103, v100, s[40:43], 0 offen offset:8
	buffer_load_u16 v104, v100, s[40:43], 0 offen offset:12
	buffer_load_u16 v105, v100, s[40:43], 0 offen offset:16
	buffer_load_u16 v106, v100, s[40:43], 0 offen offset:20
	buffer_load_u16 v107, v100, s[40:43], 0 offen offset:24
	buffer_load_u16 v100, v100, s[40:43], 0 offen offset:28
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v93, v91, v93
	v_dual_mul_f32 v91, v91, v92 :: v_dual_add_nc_u32 v70, s3, v70
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v101, 16, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v115, v90, v115 :: v_dual_fmac_f32 v44, v99, v101
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v42, v115, v101 :: v_dual_mul_f32 v99, v90, v114
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v101, 16, v102
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v92, 16, v100
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v100, 24, v124
	v_lshrrev_b32_e32 v102, 24, v125
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v24, v99, v101 :: v_dual_lshlrev_b32 v99, 16, v103
	v_fmac_f32_e32 v35, v98, v101
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v98, v90, v113
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v28, v91, v92
	.loc	1 220 26 is_stmt 1              ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v91, 24, v132
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v34, v97, v99 :: v_dual_mul_f32 v97, v90, v112
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v23, v98, v99 :: v_dual_lshlrev_b32 v98, 16, v104
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v91.l, 8, v91.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v99, 24, v140
	v_lshlrev_b16 v100.l, 8, v100.l
	v_lshrrev_b32_e32 v101, 24, v128
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v22, v97, v98 :: v_dual_lshlrev_b32 v97, 16, v105
	v_dual_fmac_f32 v33, v96, v98 :: v_dual_mul_f32 v96, v90, v111
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v98, 24, v139
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v99.l, 8, v99.l
	v_lshlrev_b16 v101.l, 8, v101.l
	v_lshlrev_b16 v102.l, 8, v102.l
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v18, v96, v97
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v96, 16, v106
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v98.l, 8, v98.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v103, 24, v129
	v_lshrrev_b32_e32 v104, 24, v126
	v_lshrrev_b32_e32 v105, 24, v130
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v31, v94, v96
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v94, v90, v109
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v32, v95, v97 :: v_dual_mul_f32 v95, v90, v110
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v90, v90, v108
	.loc	1 220 26 is_stmt 1              ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v97, 24, v138
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v103.l, 8, v103.l
	v_lshlrev_b16 v104.l, 8, v104.l
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v21, v95, v96
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v95, 16, v107
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v19, v90, v92
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v90, 8, v132
	v_and_b16 v90.h, 0xff, v132.l
	v_lshrrev_b32_e32 v92, 24, v133
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v29, v93, v95
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v93, 24, v134
	v_lshlrev_b16 v90.l, 8, v90.l
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fmac_f32_e32 v20, v94, v95
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v92.l, 8, v92.l
	v_lshrrev_b32_e32 v94, 24, v135
	v_lshlrev_b16 v93.l, 8, v93.l
	v_or_b16 v90.l, v90.h, v90.l
	v_and_b16 v90.h, 0xff, v132.h
	v_lshrrev_b32_e32 v95, 24, v136
	v_lshlrev_b16 v94.l, 8, v94.l
	v_lshrrev_b32_e32 v96, 24, v137
	v_lshlrev_b16 v97.l, 8, v97.l
	v_or_b16 v90.h, v90.h, v91.l
	v_lshrrev_b32_e32 v91, 8, v133
	v_and_b16 v91.h, 0xff, v133.l
	v_lshlrev_b16 v95.l, 8, v95.l
	v_lshlrev_b16 v96.l, 8, v96.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v105.l, 8, v105.l
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v91.l, 8, v91.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v106, 24, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v91.l, v91.h, v91.l
	v_and_b16 v91.h, 0xff, v133.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v106.l, 8, v106.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v91.h, v91.h, v92.l
	v_lshrrev_b32_e32 v92, 8, v134
	v_and_b16 v92.h, 0xff, v134.l
	v_lshlrev_b16 v92.l, 8, v92.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v92.l, v92.h, v92.l
	v_and_b16 v92.h, 0xff, v134.h
	v_or_b16 v92.h, v92.h, v93.l
	v_lshrrev_b32_e32 v93, 8, v135
	v_and_b16 v93.h, 0xff, v135.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v93.l, 8, v93.l
	v_or_b16 v93.l, v93.h, v93.l
	v_and_b16 v93.h, 0xff, v135.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v93.h, v93.h, v94.l
	v_lshrrev_b32_e32 v94, 8, v136
	v_and_b16 v94.h, 0xff, v136.l
	v_lshlrev_b16 v94.l, 8, v94.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v94.l, v94.h, v94.l
	v_and_b16 v94.h, 0xff, v136.h
	v_or_b16 v94.h, v94.h, v95.l
	v_lshrrev_b32_e32 v95, 8, v137
	v_and_b16 v95.h, 0xff, v137.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v95.l, 8, v95.l
	v_or_b16 v95.l, v95.h, v95.l
	v_and_b16 v95.h, 0xff, v137.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v95.h, v95.h, v96.l
	v_lshrrev_b32_e32 v96, 8, v138
	v_and_b16 v96.h, 0xff, v138.l
	v_lshlrev_b16 v96.l, 8, v96.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v96.l, v96.h, v96.l
	v_and_b16 v96.h, 0xff, v138.h
	v_or_b16 v96.h, v96.h, v97.l
	v_lshrrev_b32_e32 v97, 8, v139
	v_and_b16 v97.h, 0xff, v139.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v97.l, 8, v97.l
	v_or_b16 v97.l, v97.h, v97.l
	v_and_b16 v97.h, 0xff, v139.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v97.h, v97.h, v98.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v98, 8, v140
	v_and_b16 v98.h, 0xff, v140.l
	v_lshlrev_b16 v98.l, 8, v98.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v98.l, v98.h, v98.l
	v_and_b16 v98.h, 0xff, v140.h
	v_or_b16 v98.h, v98.h, v99.l
	v_lshrrev_b32_e32 v99, 8, v124
	v_and_b16 v99.h, 0xff, v124.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v99.l, 8, v99.l
	v_or_b16 v99.l, v99.h, v99.l
	v_and_b16 v99.h, 0xff, v124.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v99.h, v99.h, v100.l
	v_lshrrev_b32_e32 v100, 8, v128
	v_and_b16 v100.h, 0xff, v128.l
	v_lshlrev_b16 v100.l, 8, v100.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v100.l, v100.h, v100.l
	v_and_b16 v100.h, 0xff, v128.h
	v_or_b16 v100.h, v100.h, v101.l
	v_lshrrev_b32_e32 v101, 8, v125
	v_and_b16 v101.h, 0xff, v125.l
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	ds_store_b32 v58, v89 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v59, v90
	ds_store_b16_d16_hi v59, v90 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v59, v98 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v60, v91
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v59, v98 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v60, v91 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v60, v99 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v61, v92
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v60, v99 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v61, v92 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v61, v100 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v62, v93
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v61, v100 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v62, v93 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v101.l, 8, v101.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v101.l, v101.h, v101.l
	v_and_b16 v101.h, 0xff, v125.h
	v_or_b16 v101.h, v101.h, v102.l
	v_lshrrev_b32_e32 v102, 8, v129
	v_and_b16 v102.h, 0xff, v129.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v102.l, 8, v102.l
	v_or_b16 v102.l, v102.h, v102.l
	v_and_b16 v102.h, 0xff, v129.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v102.h, v102.h, v103.l
	v_lshrrev_b32_e32 v103, 8, v126
	v_and_b16 v103.h, 0xff, v126.l
	v_lshlrev_b16 v103.l, 8, v103.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v103.l, v103.h, v103.l
	v_and_b16 v103.h, 0xff, v126.h
	v_or_b16 v103.h, v103.h, v104.l
	v_lshrrev_b32_e32 v104, 8, v130
	v_and_b16 v104.h, 0xff, v130.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v104.l, 8, v104.l
	v_or_b16 v104.l, v104.h, v104.l
	v_and_b16 v104.h, 0xff, v130.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v104.h, v104.h, v105.l
	v_lshrrev_b32_e32 v105, 8, v127
	v_and_b16 v105.h, 0xff, v127.l
	v_lshlrev_b16 v105.l, 8, v105.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v105.l, v105.h, v105.l
	v_and_b16 v105.h, 0xff, v127.h
	v_or_b16 v105.h, v105.h, v106.l
	ds_store_b16 v62, v101 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v63, v94
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v62, v101 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v63, v94 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v63, v102 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v64, v95
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v63, v102 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v64, v95 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v64, v103 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v65, v96
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v64, v103 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v65, v96 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v65, v104 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v66, v97
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v65, v104 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v66, v97 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v66, v105 offset:16384
	ds_store_b16_d16_hi v66, v105 offset:16448
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v8, v56
	v_mov_b32_e32 v4, v57
.LBB0_7:                                ; %Flow432
	.loc	1 195 26 is_stmt 1              ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s6, v13
	s_mul_i32 s3, s48, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s1, s0, 0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_lshl_b32 s0, s6, 4
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v4, 0, v4
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v196, 0, v48
	v_dual_mov_b32 v182, 0 :: v_dual_add_nc_u32 v197, 0, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_add3_u32 v2, s3, s1, v2
	v_mov_b32_e32 v47, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v5, 0, 1, s2
	v_and_b32_e32 v1, 16, v0
	v_add_nc_u32_e32 v54, 0, v54
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v3, 1, v2
	v_add_lshl_u32 v2, v2, s0, 1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_cmp_ne_u32_e64 s0, 1, v5
	v_add_nc_u32_e32 v53, 0, v53
	v_add_nc_u32_e32 v52, 0, v52
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v183, 0, v51
	s_clause 0x1
	buffer_load_u16 v6, v3, s[36:39], 0 offen
	buffer_load_u16 v7, v2, s[36:39], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u8_d16 v177, v55 offset:33760
	ds_load_u8_d16 v146, v55 offset:33792
	ds_load_u8_d16 v150, v55 offset:33824
	ds_load_u8_d16 v144, v55 offset:33856
	ds_load_u8_d16 v147, v55 offset:33888
	ds_load_u8_d16 v61, v55 offset:33872
	ds_load_u8_d16 v71, v55 offset:33840
	ds_load_u8_d16 v75, v55 offset:33808
	ds_load_u8_d16 v167, v55 offset:33920
	ds_load_u8_d16 v171, v55 offset:33952
	ds_load_u8_d16 v164, v55 offset:33984
	ds_load_u8_d16 v168, v55 offset:34016
	ds_load_u8_d16 v92, v55 offset:34000
	ds_load_u8_d16 v104, v55 offset:33968
	ds_load_u8_d16 v108, v55 offset:33936
	ds_load_u8_d16 v81, v55 offset:33904
	ds_load_u8_d16 v148, v55 offset:34048
	ds_load_u8_d16 v151, v55 offset:34080
	ds_load_u8_d16 v145, v55 offset:34112
	ds_load_u8_d16 v149, v55 offset:34144
	ds_load_u8_d16 v58, v55 offset:34128
	ds_load_u8_d16 v68, v55 offset:34096
	ds_load_u8_d16 v72, v55 offset:34064
	ds_load_u8_d16 v115, v55 offset:34032
	ds_load_u8_d16 v172, v55 offset:34176
	ds_load_u8_d16 v174, v55 offset:34208
	ds_load_u8_d16 v169, v55 offset:34240
	ds_load_u8_d16 v173, v55 offset:34272
	ds_load_u8_d16 v93, v55 offset:34256
	ds_load_u8_d16 v105, v55 offset:34224
	ds_load_u8_d16 v109, v55 offset:34192
	ds_load_u8_d16 v82, v55 offset:34160
	ds_load_u8_d16 v122, v55 offset:34304
	ds_load_u8_d16 v123, v55 offset:34336
	ds_load_u8_d16 v124, v55 offset:34368
	ds_load_u8_d16 v125, v55 offset:34400
	ds_load_u8_d16 v59, v55 offset:34384
	ds_load_u8_d16 v69, v55 offset:34352
	ds_load_u8_d16 v73, v55 offset:34320
	ds_load_u8_d16 v116, v55 offset:34288
	ds_load_u8_d16 v127, v55 offset:34432
	ds_load_u8_d16 v128, v55 offset:34464
	ds_load_u8_d16 v129, v55 offset:34496
	ds_load_u8_d16 v130, v55 offset:34528
	ds_load_u8_d16 v94, v55 offset:34512
	ds_load_u8_d16 v106, v55 offset:34480
	ds_load_u8_d16 v110, v55 offset:34448
	ds_load_u8_d16 v83, v55 offset:34416
	ds_load_u8_d16 v80, v55 offset:34560
	ds_load_u8_d16 v85, v55 offset:34592
	ds_load_u8_d16 v86, v55 offset:34624
	ds_load_u8_d16 v87, v55 offset:34656
	ds_load_u8_d16 v60, v55 offset:34640
	ds_load_u8_d16 v70, v55 offset:34608
	ds_load_u8_d16 v74, v55 offset:34576
	ds_load_u8_d16 v117, v55 offset:34544
	ds_load_u8_d16 v118, v55 offset:34688
	ds_load_u8_d16 v119, v55 offset:34720
	ds_load_u8_d16 v120, v55 offset:34752
	ds_load_u8_d16 v121, v55 offset:34784
	ds_load_u8_d16 v95, v55 offset:34768
	ds_load_u8_d16 v107, v55 offset:34736
	ds_load_u8_d16 v111, v55 offset:34704
	ds_load_u8_d16 v84, v55 offset:34672
	ds_load_u8_d16 v126, v55 offset:32864
	ds_load_u8_d16 v133, v55 offset:32896
	ds_load_u8_d16 v134, v55 offset:32928
	ds_load_u8_d16 v132, v55 offset:32960
	ds_load_u8_d16 v88, v55 offset:32976
	ds_load_u8_d16 v96, v55 offset:32944
	ds_load_u8_d16 v100, v55 offset:32912
	ds_load_u8_d16 v76, v55 offset:32880
	ds_load_u8_d16 v178, v55 offset:32992
	ds_load_u8_d16 v136, v55 offset:33024
	ds_load_u8_d16 v138, v55 offset:33056
	ds_load_u8_d16 v135, v55 offset:33088
	ds_load_u8_d16 v2, v55 offset:33104
	ds_load_u8_d16 v62, v55 offset:33072
	ds_load_u8_d16 v65, v55 offset:33040
	ds_load_u8_d16 v112, v55 offset:33008
	ds_load_u8_d16 v152, v55 offset:33120
	ds_load_u8_d16 v156, v55 offset:33152
	ds_load_u8_d16 v158, v55 offset:33184
	ds_load_u8_d16 v155, v55 offset:33216
	ds_load_u8_d16 v89, v55 offset:33232
	ds_load_u8_d16 v97, v55 offset:33200
	ds_load_u8_d16 v101, v55 offset:33168
	ds_load_u8_d16 v77, v55 offset:33136
	ds_load_u8_d16 v175, v55 offset:33248
	ds_load_u8_d16 v139, v55 offset:33280
	ds_load_u8_d16 v141, v55 offset:33312
	ds_load_u8_d16 v137, v55 offset:33344
	ds_load_u8_d16 v56, v55 offset:33360
	ds_load_u8_d16 v63, v55 offset:33328
	ds_load_u8_d16 v66, v55 offset:33296
	ds_load_u8_d16 v113, v55 offset:33264
	ds_load_u8_d16 v153, v55 offset:33376
	ds_load_u8_d16 v159, v55 offset:33408
	ds_load_u8_d16 v162, v55 offset:33440
	ds_load_u8_d16 v157, v55 offset:33472
	ds_load_u8_d16 v90, v55 offset:33488
	ds_load_u8_d16 v98, v55 offset:33456
	ds_load_u8_d16 v102, v55 offset:33424
	ds_load_u8_d16 v78, v55 offset:33392
	ds_load_u8_d16 v176, v55 offset:33504
	ds_load_u8_d16 v142, v55 offset:33536
	ds_load_u8_d16 v143, v55 offset:33568
	ds_load_u8_d16 v140, v55 offset:33600
	ds_load_u8_d16 v57, v55 offset:33616
	ds_load_u8_d16 v64, v55 offset:33584
	ds_load_u8_d16 v67, v55 offset:33552
	ds_load_u8_d16 v114, v55 offset:33520
	ds_load_u8_d16 v154, v55 offset:33632
	ds_load_u8_d16 v163, v55 offset:33664
	ds_load_u8_d16 v166, v55 offset:33696
	ds_load_u8_d16 v160, v55 offset:33728
	ds_load_u8_d16 v91, v55 offset:33744
	ds_load_u8_d16 v99, v55 offset:33712
	ds_load_u8_d16 v103, v55 offset:33680
	ds_load_u8_d16 v79, v55 offset:33648
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v3, 0, v8
	ds_load_u8_d16 v193, v55 offset:32768
	ds_load_u8_d16 v161, v55 offset:32784
	ds_load_u8_d16 v195, v55 offset:32800
	ds_load_u8_d16 v170, v55 offset:32816
	ds_load_u8_d16 v194, v55 offset:32832
	ds_load_u8_d16 v165, v55 offset:32848
	ds_load_u8_d16 v131, v3 offset:32768
	ds_load_u8_d16 v55, v4 offset:32768
	v_mov_b32_e32 v8, 0
	v_add_nc_u32_e32 v188, 0, v50
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v192, 0, v49
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v4, 0
	v_mov_b32_e32 v3, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v186, 0
	v_mov_b32_e32 v187, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_b64 v[3:4], v54
	ds_load_b64 v[47:48], v53
	ds_load_b64 v[49:50], v52
	ds_load_b64 v[179:180], v183
	ds_load_b64 v[181:182], v188
	ds_load_b64 v[184:185], v192
	ds_load_b64 v[186:187], v196
	ds_load_b64 v[189:190], v197
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v5, v133, v134, 0xc0c0004
	v_perm_b32 v51, v132, v178, 0xc0c0004
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	v_lshl_or_b32 v215, v51, 16, v5
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v5, v193, v195, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v51, v194, v126, 0xc0c0004
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v205, s11 :: v_dual_mov_b32 v204, s10
	v_lshl_or_b32 v214, v51, 16, v5
	v_dual_mov_b32 v203, s9 :: v_dual_mov_b32 v202, s8
	v_dual_mov_b32 v201, s7 :: v_dual_mov_b32 v200, s6
	v_dual_mov_b32 v199, s5 :: v_dual_mov_b32 v198, s4
	v_perm_b32 v5, v156, v158, 0xc0c0004
	v_perm_b32 v51, v155, v175, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[189:190], v[214:215], v[198:205] neg_lo:[1,1,0]
	v_lshl_or_b32 v215, v51, 16, v5
	v_perm_b32 v5, v136, v138, 0xc0c0004
	v_perm_b32 v51, v135, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v214, v51, 16, v5
	v_perm_b32 v5, v159, v162, 0xc0c0004
	v_perm_b32 v51, v157, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[206:213], v[186:187], v[214:215], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v215, v51, 16, v5
	v_perm_b32 v5, v139, v141, 0xc0c0004
	v_perm_b32 v51, v137, v153, 0xc0c0004
	v_lshl_or_b32 v214, v51, 16, v5
	v_perm_b32 v5, v163, v166, 0xc0c0004
	v_perm_b32 v51, v160, v177, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[184:185], v[214:215], v[206:213] neg_lo:[1,1,0]
	v_lshl_or_b32 v215, v51, 16, v5
	v_perm_b32 v5, v142, v143, 0xc0c0004
	v_perm_b32 v51, v140, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v214, v51, 16, v5
	v_perm_b32 v5, v167, v171, 0xc0c0004
	v_perm_b32 v51, v164, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[206:213], v[181:182], v[214:215], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v215, v51, 16, v5
	v_perm_b32 v5, v146, v150, 0xc0c0004
	v_perm_b32 v51, v144, v147, 0xc0c0004
	v_lshl_or_b32 v214, v51, 16, v5
	v_perm_b32 v5, v172, v174, 0xc0c0004
	v_perm_b32 v51, v169, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[179:180], v[214:215], v[206:213] neg_lo:[1,1,0]
	v_lshl_or_b32 v215, v51, 16, v5
	v_perm_b32 v5, v148, v151, 0xc0c0004
	v_perm_b32 v51, v145, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v214, v51, 16, v5
	v_perm_b32 v5, v127, v128, 0xc0c0004
	v_perm_b32 v51, v129, v130, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[206:213], v[49:50], v[214:215], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v215, v51, 16, v5
	v_perm_b32 v5, v122, v123, 0xc0c0004
	v_perm_b32 v51, v124, v125, 0xc0c0004
	v_lshl_or_b32 v214, v51, 16, v5
	v_perm_b32 v5, v118, v119, 0xc0c0004
	v_perm_b32 v51, v120, v121, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[206:213], v[47:48], v[214:215], v[206:213] neg_lo:[1,1,0]
	v_lshl_or_b32 v215, v51, 16, v5
	v_perm_b32 v5, v80, v85, 0xc0c0004
	v_perm_b32 v51, v86, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v214, v51, 16, v5
	v_perm_b32 v5, v100, v96, 0xc0c0004
	v_perm_b32 v51, v88, v112, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[206:213], v[3:4], v[214:215], v[206:213] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v215, v51, 16, v5
	v_perm_b32 v5, v161, v170, 0xc0c0004
	v_perm_b32 v51, v165, v76, 0xc0c0004
	v_lshl_or_b32 v214, v51, 16, v5
	v_perm_b32 v5, v101, v97, 0xc0c0004
	v_perm_b32 v51, v89, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[198:205], v[189:190], v[214:215], v[198:205] neg_lo:[1,1,0]
	v_lshl_or_b32 v190, v51, 16, v5
	v_perm_b32 v5, v65, v62, 0xc0c0004
	v_perm_b32 v51, v2, v77, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v189, v51, 16, v5
	v_perm_b32 v5, v102, v98, 0xc0c0004
	v_perm_b32 v51, v90, v114, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[198:205], v[186:187], v[189:190], v[198:205] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v187, v51, 16, v5
	v_perm_b32 v5, v66, v63, 0xc0c0004
	v_perm_b32 v51, v56, v78, 0xc0c0004
	v_lshl_or_b32 v186, v51, 16, v5
	v_perm_b32 v5, v103, v99, 0xc0c0004
	v_perm_b32 v51, v91, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[198:205], v[184:185], v[186:187], v[198:205] neg_lo:[1,1,0]
	v_lshl_or_b32 v185, v51, 16, v5
	v_perm_b32 v5, v67, v64, 0xc0c0004
	v_perm_b32 v51, v57, v79, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v184, v51, 16, v5
	v_perm_b32 v5, v108, v104, 0xc0c0004
	v_perm_b32 v51, v92, v115, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[198:205], v[181:182], v[184:185], v[198:205] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v182, v51, 16, v5
	v_perm_b32 v5, v75, v71, 0xc0c0004
	v_perm_b32 v51, v61, v81, 0xc0c0004
	v_lshl_or_b32 v181, v51, 16, v5
	v_perm_b32 v5, v109, v105, 0xc0c0004
	v_perm_b32 v51, v93, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[198:205], v[179:180], v[181:182], v[198:205] neg_lo:[1,1,0]
	v_lshl_or_b32 v180, v51, 16, v5
	v_perm_b32 v5, v72, v68, 0xc0c0004
	v_perm_b32 v51, v58, v82, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v179, v51, 16, v5
	v_perm_b32 v5, v110, v106, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v51, v209
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[198:205], v[49:50], v[179:180], v[198:205] neg_lo:[1,1,0]
	v_perm_b32 v49, v94, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v49, 16, v5
	v_perm_b32 v5, v73, v69, 0xc0c0004
	v_perm_b32 v49, v59, v83, 0xc0c0004
	v_lshl_or_b32 v49, v49, 16, v5
	v_perm_b32 v5, v111, v107, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[198:205], v[47:48], v[49:50], v[198:205] neg_lo:[1,1,0]
	v_perm_b32 v47, v95, v55, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v49, v207
	v_cvt_f32_i32_e32 v50, v208
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v48, v47, 16, v5
	v_perm_b32 v5, v74, v70, 0xc0c0004
	v_perm_b32 v47, v60, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v47, v47, 16, v5
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v5, v211
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[198:205], v[3:4], v[47:48], v[198:205] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v48, v206
	v_cvt_f32_i32_e32 v47, v210
	v_cvt_f32_i32_e32 v4, v212
	v_cvt_f32_i32_e32 v3, v213
	v_cvt_f32_i32_e32 v179, v198
	v_cvt_f32_i32_e32 v180, v199
	v_cvt_f32_i32_e32 v181, v200
	v_cvt_f32_i32_e32 v182, v201
	v_cvt_f32_i32_e32 v184, v202
	v_cvt_f32_i32_e32 v185, v203
	v_cvt_f32_i32_e32 v186, v204
	v_cvt_f32_i32_e32 v187, v205
.LBB0_9:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v208, 0
	v_mov_b32_e32 v209, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	s_waitcnt lgkmcnt(61)
	v_perm_b32 v8, v133, v134, 0xc0c0004
	s_waitcnt lgkmcnt(55)
	v_perm_b32 v134, v132, v178, 0xc0c0004
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_load_b64 v[132:133], v196 offset:16384
	ds_load_b64 v[197:198], v197 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v126, v194, v126, 0xc0c0004
	v_perm_b32 v136, v136, v138, 0xc0c0004
	v_perm_b32 v138, v135, v152, 0xc0c0004
	v_lshl_or_b32 v200, v134, 16, v8
	v_perm_b32 v8, v193, v195, 0xc0c0004
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_load_b64 v[134:135], v192 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v209, s11 :: v_dual_mov_b32 v208, s10
	v_lshl_or_b32 v199, v126, 16, v8
	v_dual_mov_b32 v207, s9 :: v_dual_mov_b32 v206, s8
	v_dual_mov_b32 v205, s7 :: v_dual_mov_b32 v204, s6
	v_dual_mov_b32 v203, s5 :: v_dual_mov_b32 v202, s4
	v_perm_b32 v8, v156, v158, 0xc0c0004
	v_perm_b32 v126, v155, v175, 0xc0c0004
	v_lshl_or_b32 v155, v138, 16, v136
	v_perm_b32 v138, v139, v141, 0xc0c0004
	v_perm_b32 v141, v137, v153, 0xc0c0004
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_load_b64 v[136:137], v188 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[197:198], v[199:200], v[202:209] neg_lo:[1,1,0]
	v_lshl_or_b32 v156, v126, 16, v8
	v_perm_b32 v8, v159, v162, 0xc0c0004
	v_perm_b32 v126, v157, v176, 0xc0c0004
	v_lshl_or_b32 v138, v141, 16, v138
	v_perm_b32 v142, v142, v143, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[189:196], v[132:133], v[155:156], v[189:196] neg_lo:[1,1,0]
	v_perm_b32 v143, v140, v154, 0xc0c0004
	v_lshl_or_b32 v139, v126, 16, v8
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_load_b64 v[140:141], v183 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_perm_b32 v8, v163, v166, 0xc0c0004
	v_perm_b32 v126, v160, v177, 0xc0c0004
	v_perm_b32 v146, v146, v150, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[134:135], v[138:139], v[189:196] neg_lo:[1,1,0]
	v_lshl_or_b32 v138, v143, 16, v142
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_load_b64 v[142:143], v52 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_lshl_or_b32 v139, v126, 16, v8
	v_perm_b32 v8, v167, v171, 0xc0c0004
	v_perm_b32 v126, v164, v168, 0xc0c0004
	v_perm_b32 v144, v144, v147, 0xc0c0004
	v_perm_b32 v52, v169, v173, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[136:137], v[138:139], v[189:196] neg_lo:[1,1,0]
	v_perm_b32 v88, v88, v112, 0xc0c0004
	v_lshl_or_b32 v139, v126, 16, v8
	v_lshl_or_b32 v138, v144, 16, v146
	v_perm_b32 v8, v172, v174, 0xc0c0004
	v_perm_b32 v126, v148, v151, 0xc0c0004
	v_perm_b32 v144, v145, v149, 0xc0c0004
	v_perm_b32 v76, v165, v76, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[140:141], v[138:139], v[189:196] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v52, 16, v8
	v_perm_b32 v8, v100, v96, 0xc0c0004
	v_lshl_or_b32 v138, v144, 16, v126
	v_perm_b32 v96, v161, v170, 0xc0c0004
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_load_b64 v[144:145], v54 offset:16384
	ds_load_b64 v[52:53], v53 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_perm_b32 v54, v89, v113, 0xc0c0004
	v_perm_b32 v62, v65, v62, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[142:143], v[138:139], v[189:196] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v88, 16, v8
	v_lshl_or_b32 v138, v76, 16, v96
	v_perm_b32 v8, v101, v97, 0xc0c0004
	v_perm_b32 v2, v2, v77, 0xc0c0004
	v_perm_b32 v56, v56, v78, 0xc0c0004
	v_perm_b32 v65, v127, v128, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[202:209], v[197:198], v[138:139], v[202:209] neg_lo:[1,1,0]
	v_lshl_or_b32 v77, v54, 16, v8
	v_lshl_or_b32 v76, v2, 16, v62
	v_perm_b32 v2, v102, v98, 0xc0c0004
	v_perm_b32 v8, v90, v114, 0xc0c0004
	v_perm_b32 v54, v66, v63, 0xc0c0004
	v_perm_b32 v88, v129, v130, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[202:209], v[132:133], v[76:77], v[202:209] neg_lo:[1,1,0]
	v_perm_b32 v66, v122, v123, 0xc0c0004
	v_lshl_or_b32 v63, v8, 16, v2
	v_lshl_or_b32 v62, v56, 16, v54
	v_perm_b32 v2, v103, v99, 0xc0c0004
	v_perm_b32 v8, v91, v131, 0xc0c0004
	v_perm_b32 v54, v67, v64, 0xc0c0004
	v_perm_b32 v64, v57, v79, 0xc0c0004
	v_perm_b32 v78, v124, v125, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[202:209], v[134:135], v[62:63], v[202:209] neg_lo:[1,1,0]
	v_lshl_or_b32 v63, v8, 16, v2
	v_perm_b32 v2, v108, v104, 0xc0c0004
	v_lshl_or_b32 v62, v64, 16, v54
	v_perm_b32 v8, v92, v115, 0xc0c0004
	v_perm_b32 v54, v75, v71, 0xc0c0004
	v_perm_b32 v61, v61, v81, 0xc0c0004
	v_lshl_or_b32 v57, v88, 16, v65
	v_lshl_or_b32 v56, v78, 16, v66
	v_wmma_i32_16x16x16_iu4 v[202:209], v[136:137], v[62:63], v[202:209] neg_lo:[1,1,0]
	v_lshl_or_b32 v62, v8, 16, v2
	v_lshl_or_b32 v61, v61, 16, v54
	v_perm_b32 v2, v109, v105, 0xc0c0004
	v_perm_b32 v8, v93, v116, 0xc0c0004
	v_perm_b32 v54, v72, v68, 0xc0c0004
	v_perm_b32 v63, v58, v82, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[52:53], v[56:57], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[202:209], v[140:141], v[61:62], v[202:209] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v8, 16, v2
	v_perm_b32 v2, v110, v106, 0xc0c0004
	v_lshl_or_b32 v57, v63, 16, v54
	v_perm_b32 v8, v94, v117, 0xc0c0004
	v_perm_b32 v54, v73, v69, 0xc0c0004
	v_perm_b32 v59, v59, v83, 0xc0c0004
	v_perm_b32 v64, v118, v119, 0xc0c0004
	v_perm_b32 v65, v120, v121, 0xc0c0004
	v_perm_b32 v61, v80, v85, 0xc0c0004
	v_perm_b32 v62, v86, v87, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[202:209], v[142:143], v[57:58], v[202:209] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v8, 16, v2
	v_lshl_or_b32 v57, v59, 16, v54
	v_perm_b32 v2, v111, v107, 0xc0c0004
	v_perm_b32 v8, v95, v55, 0xc0c0004
	v_perm_b32 v54, v74, v70, 0xc0c0004
	v_perm_b32 v59, v60, v84, 0xc0c0004
	v_lshl_or_b32 v56, v65, 16, v64
	v_lshl_or_b32 v55, v62, 16, v61
	v_wmma_i32_16x16x16_iu4 v[202:209], v[52:53], v[57:58], v[202:209] neg_lo:[1,1,0]
	v_lshl_or_b32 v53, v8, 16, v2
	v_lshl_or_b32 v52, v59, 16, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[189:196], v[144:145], v[55:56], v[189:196] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[202:209], v[144:145], v[52:53], v[202:209] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v198, v189
	v_cvt_f32_i32_e32 v199, v190
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v200, v191
	v_cvt_f32_i32_e32 v201, v192
	v_cvt_f32_i32_e32 v8, v193
	v_cvt_f32_i32_e32 v189, v194
	v_cvt_f32_i32_e32 v190, v195
	v_cvt_f32_i32_e32 v191, v196
	v_cvt_f32_i32_e32 v202, v202
	v_cvt_f32_i32_e32 v203, v203
	v_cvt_f32_i32_e32 v204, v204
	v_cvt_f32_i32_e32 v205, v205
	v_cvt_f32_i32_e32 v206, v206
	v_cvt_f32_i32_e32 v207, v207
	v_cvt_f32_i32_e32 v208, v208
	v_cvt_f32_i32_e32 v209, v209
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(51)
	v_lshrrev_b32_e32 v2, 1, v11
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s1, s1, s49
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s17, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s50, s1
	s_mov_b32 s19, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v2, v46, v2
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s35
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s16, s14
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v6.h, v6.l
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v46, 2, v2
	v_or_b32_e32 v52, 4, v2
	v_or_b32_e32 v53, 6, v2
	v_or_b32_e32 v54, 8, v2
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v55, 10, v2
	v_or_b32_e32 v56, 12, v2
	v_or_b32_e32 v61, 14, v2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v57, s0, v2, 1
	v_add_lshl_u32 v58, s0, v46, 1
	v_add_lshl_u32 v59, s0, v52, 1
	v_add_lshl_u32 v60, s0, v53, 1
	v_add_lshl_u32 v62, s0, v54, 1
	v_add_lshl_u32 v63, s0, v55, 1
	v_add_lshl_u32 v64, s0, v56, 1
	v_add_lshl_u32 v65, s0, v61, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v2, s1, v2, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v57, 0x80000000, v57, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v46, s1, v46, 1
	v_add_lshl_u32 v52, s1, v52, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v58, 0x80000000, v58, s2
	v_cndmask_b32_e64 v59, 0x80000000, v59, s2
	v_cndmask_b32_e64 v60, 0x80000000, v60, s2
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	v_cndmask_b32_e64 v63, 0x80000000, v63, s2
	v_cndmask_b32_e64 v64, 0x80000000, v64, s2
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x8
	buffer_load_u16 v57, v57, s[16:19], 0 offen
	buffer_load_u16 v58, v58, s[16:19], 0 offen
	buffer_load_u16 v59, v59, s[16:19], 0 offen
	buffer_load_u16 v60, v60, s[16:19], 0 offen
	buffer_load_u16 v62, v62, s[16:19], 0 offen
	buffer_load_u16 v63, v63, s[16:19], 0 offen
	buffer_load_u16 v64, v64, s[16:19], 0 offen
	buffer_load_u16 v65, v65, s[16:19], 0 offen
	buffer_load_u16 v66, v2, s[16:19], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v2, 0x80000000, v46, s2
	v_cndmask_b32_e64 v46, 0x80000000, v52, s2
	v_add_lshl_u32 v52, s1, v53, 1
	v_add_lshl_u32 v53, s1, v54, 1
	v_add_lshl_u32 v54, s1, v55, 1
	v_add_lshl_u32 v55, s1, v56, 1
	v_add_lshl_u32 v56, s1, v61, 1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s2
	v_cndmask_b32_e64 v53, 0x80000000, v53, s2
	v_cndmask_b32_e64 v54, 0x80000000, v54, s2
	v_cndmask_b32_e64 v55, 0x80000000, v55, s2
	v_cndmask_b32_e64 v56, 0x80000000, v56, s2
	s_clause 0x6
	buffer_load_u16 v61, v2, s[16:19], 0 offen
	buffer_load_u16 v46, v46, s[16:19], 0 offen
	buffer_load_u16 v52, v52, s[16:19], 0 offen
	buffer_load_u16 v53, v53, s[16:19], 0 offen
	buffer_load_u16 v54, v54, s[16:19], 0 offen
	buffer_load_u16 v55, v55, s[16:19], 0 offen
	buffer_load_u16 v56, v56, s[16:19], 0 offen
.Ltmp22:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v2.l, 0
.Ltmp23:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v2.h, v7.l
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp25:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v9, 0x600, v12, v9
.Ltmp26:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v6.l, v2.l
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v78, v206, v2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v70, v184, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v80, v208, v2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v69, v182, v2
	v_mul_f32_e32 v50, v50, v6
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v87, v190, v6
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v7, v179, v2
	v_mul_f32_e32 v68, v181, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v74, v202, v2
	v_mul_f32_e32 v76, v204, v2
	v_mul_f32_e32 v84, v200, v6
	v_mul_f32_e32 v8, v8, v6
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v71, v185, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v85, v201, v6
	v_mul_f32_e32 v86, v189, v6
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v73, v187, v2
	v_mul_f32_e32 v72, v186, v2
	v_mul_f32_e32 v67, v180, v2
	v_mul_f32_e32 v4, v4, v6
.Ltmp27:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s25, 0xffff
	s_mov_b32 s16, s24
.Ltmp28:
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v5, v5, v6
	v_dual_mul_f32 v3, v3, v6 :: v_dual_lshlrev_b32 v12, 5, v0
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp29:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v12, 0x60, v12
.Ltmp30:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v57, 16, v57
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v59, 16, v59
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v60, 16, v60
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v7, v7, v57, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v63, 16, v63
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v50, v50, v59, v26
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v65, 16, v65
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v68, v68, v59, v40
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v7, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v64, 16, v64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v26, v26, v50, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v3, v3, v65, v14
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v40, v40, v68, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v61, 16, v61
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v69, v69, v60, v39
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v76, v76, v46, v34
	v_fma_f32 v46, v84, v46, v23
	v_fma_f32 v78, v78, v53, v32
	v_fma_f32 v8, v8, v53, v18
	v_fma_f32 v80, v80, v55, v29
	v_fma_f32 v55, v87, v55, v20
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v23, v46, s2
	v_cndmask_b32_e64 v32, v32, v78, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v77, v205, v2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v29, v29, v80, s2
	v_cndmask_b32_e64 v50, v20, v55, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v75, v203, v2 :: v_dual_mul_f32 v20, 0xbfb8aa3b, v32
	.loc	1 236 17 is_stmt 0              ; generate_amdgcn.py:236:17
	v_fma_f32 v77, v77, v52, v33
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v18, v8, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v18, 0xbfb8aa3b, v29
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v56, 16, v56
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v20
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v33, v33, v77, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v18
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v75, v75, v61, v35
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, s4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v51, v51, v6
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v74, v74, v66, v44
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v18, 0, 0x42800000, s6
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v83, v199, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v35, v35, v75, s2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v79, v207, v2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v7, v44, v74, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v48, v48, v6
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v32
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v44, v51, v60, v25
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v51, v85, v52, v22
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v53, 0xbfb8aa3b, v7
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v48, v48, v57, v43
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v29
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v52, v83, v61, v24
	.loc	1 236 29 is_stmt 0              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v82, v198, v6
	.loc	1 238 44 is_stmt 1              ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v43, v43, v48, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v23
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v24, v52, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v52, 0xbfb8aa3b, v35
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v88, v191, v6
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v81, v209, v2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v7
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v48, v88, v56, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v34, v34, v76, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v55
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v49, v49, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v48, v19, v48, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v22, v51, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v35
	v_cndmask_b32_e64 v55, 0, 0x42800000, s9
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v62, 16, v62
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v79, v79, v54, v31
	v_fma_f32 v54, v86, v54, v21
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v53, v53
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v23
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v70, v70, v62, v38
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v31, v31, v79, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v20, v20
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v71, v71, v63, v37
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v25, v44, s2
	v_cndmask_b32_e64 v38, v38, v70, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v19, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s4
	v_ldexp_f32 v53, v53, v61
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v37, v37, v71, s2
	v_cndmask_b32_e64 v39, v39, v69, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v19
	v_ldexp_f32 v20, v20, v70
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v55, v55
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v72, v72, v64, v36
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v19, 0, 0x42800000, s5
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v58, 16, v58
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s5
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v61, null, v53, v53, v7
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v31
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v49, v49, v58, v27
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s9
	v_exp_f32_e32 v18, v18
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v36, v36, v72, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v19, v19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v27, v49, s2
	v_cndmask_b32_e64 v49, v21, v54, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v21, 0xbfb8aa3b, v33
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s6
	v_ldexp_f32 v55, v55, v75
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v67, v67, v58, v41
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v49
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v21
	v_ldexp_f32 v18, v18, v72
	v_ldexp_f32 v19, v19, v71
	v_mul_f32_e32 v54, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v59
	v_cndmask_b32_e64 v21, 0, 0x42800000, s3
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s3
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v54
	v_cndmask_b32_e64 v59, 0, 0x42800000, s12
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v33
	.loc	1 236 17 is_stmt 1              ; generate_amdgcn.py:236:17
	v_fma_f32 v57, v82, v66, v42
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v66, v73, v65, v30
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v73, v81, v56, v28
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v56, 0xbfb8aa3b, v24
	v_exp_f32_e32 v21, v21
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v42, v42, v57, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v54, 0, 0x42800000, s10
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v28, v28, v73, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v49 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v42
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_dual_add_f32 v55, 1.0, v55 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v56, 0, 0x42800000, s8
	v_ldexp_f32 v21, v21, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v44
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v69, v61
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v8
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v47, v47, v6 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v24
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v44, 0, 0x42800000, s0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v30, v30, v66, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v8, 0, 0x42800000, s7
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s7
	v_exp_f32_e32 v56, v56
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v42
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v99, -v61, v69, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v28
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v22
	v_dual_mul_f32 v58, 0xbfb8aa3b, v50 :: v_dual_add_f32 v21, 1.0, v21
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v8, v8
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v69, v99, v69
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v54, v54
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s10
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v59, v59
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v87, null, v55, v55, v23
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v8, v8, v73
	v_mul_f32_e32 v51, 0xbfb8aa3b, v34
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v41, v41, v67, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s12
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v8, 1.0, v8
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v51
	v_ldexp_f32 v44, v44, v66
	v_ldexp_f32 v56, v56, v74
	v_ldexp_f32 v54, v54, v76
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v51, 0, 0x42800000, s1
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s1
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v74, null, v21, v21, v33
	v_div_scale_f32 v76, null, v20, v20, v32
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v34
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v101, v87
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v52, v52, v67
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v44, 1.0, v44
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v59, v59, v78
	v_exp_f32_e32 v51, v51
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v78, null, v19, v19, v31
	v_div_scale_f32 v80, null, v18, v18, v29
	v_rcp_f32_e32 v94, v74
	v_rcp_f32_e32 v95, v76
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v58
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v67, null, v44, v44, v42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v51, v51, v68
	v_mul_f32_e32 v60, 0xbfb8aa3b, v46
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v82, null, v8, v8, v28
	v_rcp_f32_e32 v96, v78
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v51, 1.0, v51
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v60
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v97, v80
	v_fma_f32 v110, -v87, v101, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v72, null, v51, v51, v34
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v60, 0, 0x42800000, s11
	v_cndmask_b32_e64 v58, 0, 0x42800000, s13
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v93, v72
	v_div_scale_f32 v73, s4, v34, v51, v34
	v_rcp_f32_e32 v84, v67
	v_rcp_f32_e32 v98, v82
	v_fma_f32 v105, -v74, v94, 1.0
	v_fma_f32 v106, -v76, v95, 1.0
	v_fmac_f32_e32 v101, v110, v101
	v_div_scale_f32 v70, null, v52, v52, v35
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v104, -v72, v93, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v46
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v50 :: v_dual_fmac_f32 v95, v106, v95
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v92, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v104, v93
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v60, v60
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v107, -v78, v96, 1.0
	v_fma_f32 v108, -v80, v97, 1.0
	v_fmac_f32_e32 v94, v105, v94
	v_mul_f32_e32 v105, v73, v93
	v_fma_f32 v103, -v67, v84, 1.0
	v_fma_f32 v109, -v82, v98, 1.0
	v_fmac_f32_e32 v97, v108, v97
	v_div_scale_f32 v81, s8, v29, v18, v29
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v60, v60, v77
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v77, s6, v32, v20, v32
	v_fma_f32 v116, -v72, v105, v73
	v_fmac_f32_e32 v96, v107, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v60, 1.0, v60 :: v_dual_mul_f32 v107, v77, v95
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v68, s1, v42, v44, v42
	v_fma_f32 v99, -v70, v92, 1.0
	v_fmac_f32_e32 v84, v103, v84
	v_fma_f32 v118, -v76, v107, v77
	v_fmac_f32_e32 v98, v109, v98
	v_dual_mul_f32 v109, v81, v97 :: v_dual_add_f32 v54, 1.0, v54
	v_fmac_f32_e32 v92, v99, v92
	v_mul_f32_e32 v99, v68, v84
	v_div_scale_f32 v85, null, v56, v56, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v89, null, v54, v54, v22
	v_div_scale_f32 v66, vcc_lo, v7, v53, v7
	v_rcp_f32_e32 v100, v85
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v102, v89
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v58, v58
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v71, s3, v35, v52, v35
	v_div_scale_f32 v90, s12, v22, v54, v22
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s13
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v75, s5, v33, v21, v33
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v103, -v85, v100, 1.0
	v_fma_f32 v111, -v89, v102, 1.0
	v_div_scale_f32 v86, s10, v24, v56, v24
	v_fma_f32 v120, -v80, v109, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v100, v103, v100
	v_fmac_f32_e32 v102, v111, v102
	v_fma_f32 v111, -v67, v99, v68
	v_mul_f32_e32 v112, v66, v69
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v58, v58, v79
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v79, s7, v31, v19, v31
	v_dual_mul_f32 v115, v90, v102 :: v_dual_mul_f32 v104, v71, v92
	v_fmac_f32_e32 v99, v111, v84
	v_fma_f32 v103, -v61, v112, v66
	v_fmac_f32_e32 v109, v120, v97
	v_dual_mul_f32 v113, v86, v100 :: v_dual_mul_f32 v106, v75, v94
	v_div_scale_f32 v83, s9, v28, v8, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v112, v103, v69
	v_fma_f32 v103, -v70, v104, v71
	v_fma_f32 v117, -v74, v106, v75
	v_dual_fmac_f32 v105, v116, v93 :: v_dual_mul_f32 v108, v79, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v61, v112, v66
	v_dual_fmac_f32 v104, v103, v92 :: v_dual_fmac_f32 v107, v118, v95
	v_mul_f32_e32 v110, v83, v98
	v_div_scale_f32 v88, s11, v23, v55, v23
	v_fma_f32 v119, -v78, v108, v79
	v_fmac_f32_e32 v106, v117, v94
	v_fma_f32 v66, -v67, v99, v68
	v_div_fmas_f32 v61, v61, v69, v112
	v_fma_f32 v67, -v70, v104, v71
	v_fma_f32 v68, -v72, v105, v73
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v121, -v82, v110, v83
	v_fma_f32 v111, -v85, v113, v86
	v_mul_f32_e32 v114, v88, v101
	v_fmac_f32_e32 v108, v119, v96
	v_fma_f32 v69, -v74, v106, v75
	v_div_fixup_f32 v53, v61, v53, v7
	v_div_fmas_f32 v7, v67, v92, v104
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v70, -v76, v107, v77
	v_div_fmas_f32 v61, v68, v93, v105
	s_mov_b32 vcc_lo, s5
	v_dual_fmac_f32 v110, v121, v98 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v48
	v_fmac_f32_e32 v113, v111, v100
	v_fma_f32 v122, -v87, v114, v88
	v_fma_f32 v71, -v78, v108, v79
	v_div_fmas_f32 v67, v69, v94, v106
	v_div_fixup_f32 v7, v7, v52, v35
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v72, -v80, v109, v81
	v_div_fmas_f32 v35, v70, v95, v107
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v73, -v82, v110, v83
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v57
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v123, -v89, v115, v90
	v_div_fixup_f32 v34, v61, v51, v34
	v_div_fmas_f32 v51, v71, v96, v108
	v_div_fixup_f32 v33, v67, v21, v33
	s_mov_b32 vcc_lo, s8
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v21, v41, v7 :: v_dual_fmac_f32 v114, v122, v101
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v115, v123, v102
	v_div_fmas_f32 v52, v72, v97, v109
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v74, -v85, v113, v86
	v_div_fixup_f32 v7, v35, v20, v32
	v_div_fmas_f32 v32, v73, v98, v110
	s_mov_b32 vcc_lo, s1
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, s0
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v75, -v87, v114, v88
	v_div_fixup_f32 v19, v51, v19, v31
	v_div_fmas_f32 v31, v66, v84, v99
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v18, v52, v18, v29
	v_div_fmas_f32 v29, v74, v100, v113
	s_mov_b32 vcc_lo, s11
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v48
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v28, v32, v8, v28
	v_div_fmas_f32 v32, v75, v101, v114
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v37, v19
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v91, null, v60, v60, v46
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v23, v32, v55, v23
	v_div_fixup_f32 v24, v29, v56, v24
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v47, v47, v62, v17
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v76, -v89, v115, v90
	s_mov_b32 vcc_lo, s12
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v23, v26, v23
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s0
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v17, v47, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v24, v27, v24
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v27, v91
	v_div_fixup_f32 v31, v31, v44, v42
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v26, v57, v26
	.loc	1 233 13 is_stmt 1              ; generate_amdgcn.py:233:13
	v_fma_f32 v4, v4, v64, v15
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v19, v36, v18 :: v_dual_mul_f32 v18, v30, v28
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v28, 1.0, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v26, 1.0, v26
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v4, v15, v4, s2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v7, v38, v7
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v5, v5, v63, v16
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v3, v14, v3, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v6, null, v26, v26, v48
	s_mov_b32 s7, 0x76543210
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v5, v16, v5, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v37, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v6, v37, 1.0
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v20, v40, v34
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v34, v76, v102, v115
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s3, v48, v26, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v34, v54, v22
	v_fma_f32 v34, -v91, v27, 1.0
	v_mul_f32_e32 v54, v41, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v22, v25, v22 :: v_dual_fmac_f32 v27, v34, v27
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v34, vcc_lo, v46, v60, v46
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v25, 1.0, v59
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v40, v34, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v29, null, v25, v25, v49
	v_fma_f32 v42, -v91, v40, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v32, v29
	v_fmac_f32_e32 v40, v42, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v91, v40, v34
	v_fma_f32 v36, -v29, v32, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v34, v27, v40
	v_fmac_f32_e32 v32, v36, v32
	v_div_scale_f32 v36, s0, v49, v25, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v15, v27, v60, v46
	s_mov_b32 vcc_lo, s0
	v_dual_mul_f32 v44, v36, v32 :: v_dual_mul_f32 v15, v17, v15
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v17, v45, v53
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v30, null, v28, v28, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v29, v44, v36
.Ltmp31:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v27, |v17|, |v21|, |v20|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v35, v30
	v_fmac_f32_e32 v44, v42, v32
	v_fma_f32 v42, -v6, v54, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v29, v44, v36
	v_fmac_f32_e32 v54, v42, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v30, v35, 1.0
	v_div_fmas_f32 v29, v29, v32, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v6, -v6, v54, v41
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, s1, v50, v28, v50
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v29, v25, v49
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v25, v43, v31
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v51, v38, v35
.Ltmp33:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v29, |v19|, |v18|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v14, v5, v14
	.loc	1 238 26 is_stmt 0              ; generate_amdgcn.py:238:26
	v_fma_f32 v52, -v30, v51, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v5, |v22|, |v15|, |v14|
.Ltmp36:
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v51, v52, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v30, v51, v38
	v_div_fmas_f32 v30, v30, v35, v51
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v6, v6, v37, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v16, v30, v28, v50
	v_div_fixup_f32 v6, v6, v26, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v16, v4, v16
	v_mul_f32_e32 v4, v39, v33
	v_mul_f32_e32 v26, v3, v6
.Ltmp37:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v3, |v25|, |v24|, |v23|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v28, |v4|, |v7|, |v8|
	v_max_f32_e64 v6, |v16|, |v26|
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v5, v3, v5, v6
	v_max3_f32 v6, v27, v28, v29
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v3, 3, v13
	v_lshrrev_b32_e32 v29, 2, v11
	v_lshlrev_b32_e32 v13, 7, v13
	v_permlanex16_b32 v27, v5, s7, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v6, s7, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v30, v3, v29
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v28, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v13, 0, v13, v30
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v5, v27
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v27, v11, 2, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v28
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xad_u32 v27, v27, v29, 0
	ds_store_b64 v13, v[5:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[5:6], v27
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v13, v5
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v27, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v27, v27 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v13, v13, v13
	v_max_f32_e32 v27, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v5, v5, v13
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v13, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v5, v5, v13
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v13, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v6, v6, v27 :: v_dual_max_f32 v5, v5, v13
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v27, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v13, v5
	v_mov_b32_dpp v27, v27 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v27, v27, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v6, v6, v27
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v27, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v27, v27 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v27, v27, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v6, v6, v27
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v27, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v27, v27 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v27, v27, v27
	v_max_f32_e32 v5, v5, v13
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_max_f32 v6, v6, v27 :: v_dual_add_nc_u32 v13, 0, v29
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v27, 0, v3
.Ltmp59:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, s33, 7, v3
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v13, v[5:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[5:6], v27
.Ltmp61:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v5, 0x2b8cbccc, v5 :: v_dual_max_f32 v6, 0x2b8cbccc, v6
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v27, null, 0x40e00000, 0x40e00000, v6
	v_div_scale_f32 v32, vcc_lo, v5, 0x40e00000, v5
	v_rcp_f32_e32 v28, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v29, v27
	v_fma_f32 v30, -v13, v28, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v27, v29, 1.0
	v_dual_fmac_f32 v28, v30, v28 :: v_dual_fmac_f32 v29, v31, v29
	v_div_scale_f32 v30, s0, v6, 0x40e00000, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v31, v32, v28
	v_fma_f32 v34, -v13, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v31, v34, v28
	v_fma_f32 v13, -v13, v31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v13, v13, v28, v31
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v5, v13, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v28, v5, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v5, 0xffff0000, v28
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v34, null, v5, v5, v22
	v_div_scale_f32 v31, s0, v24, v5, v24
	.loc	1 76 14 is_stmt 1               ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v33, v30, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v50, v34
	v_div_scale_f32 v13, null, v5, v5, v25
	v_div_scale_f32 v32, null, v5, v5, v23
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v35, -v27, v33, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v47, v13
	v_div_scale_f32 v42, null, v5, v5, v26
	v_rcp_f32_e32 v49, v32
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v34, v50, 1.0
	v_div_scale_f32 v43, s6, v26, v5, v26
	v_rcp_f32_e32 v54, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_dual_fmac_f32 v50, v60, v50 :: v_dual_fmac_f32 v33, v35, v29
	v_div_scale_f32 v35, s2, v22, v5, v22
	v_fma_f32 v57, -v13, v47, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v32, v49, 1.0
	v_mul_f32_e32 v60, v35, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v42, v54, 1.0
	v_fmac_f32_e32 v47, v57, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v59, v49
	v_fma_f32 v68, -v34, v60, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v54, v64, v54
	v_fmac_f32_e32 v60, v68, v50
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v27, -v27, v33, v30
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v30, null, v5, v5, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v64, v43, v54
	v_rcp_f32_e32 v48, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v30, v48, 1.0
	v_fmac_f32_e32 v48, v58, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v58, v31, v48
	v_fma_f32 v66, -v30, v58, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v66, v48
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v27, v27, v29, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v29, vcc_lo, v25, v5, v25
	v_div_scale_f32 v33, s1, v23, v5, v23
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v27, 0x40e00000, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v57, v29, v47
	v_mul_f32_e32 v59, v33, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v27, v6, 16, 1
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v67, -v32, v59, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v27, v6, v27, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_fmac_f32 v59, v67, v49 :: v_dual_and_b32 v6, 0xffff0000, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v44, null, v6, v6, v17
	v_div_scale_f32 v45, null, v6, v6, v21
	v_div_scale_f32 v46, null, v6, v6, v20
	v_rcp_f32_e32 v55, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v56, v45
	v_fma_f32 v65, -v44, v55, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v55, v65, v55
	v_fma_f32 v65, -v13, v57, v29
	v_fmac_f32_e32 v57, v65, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v13, -v13, v57, v29
	v_fma_f32 v29, -v30, v58, v31
	v_fma_f32 v30, -v32, v59, v33
	v_fma_f32 v31, -v34, v60, v35
	v_div_fmas_f32 v13, v13, v47, v57
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v29, v29, v48, v58
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v13, v13, v5, v25
	v_div_fmas_f32 v30, v30, v49, v59
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v25, v31, v50, v60
	v_fma_f32 v31, -v42, v64, v43
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v64, v31, v54
	v_div_scale_f32 v36, null, v5, v5, v15
	v_div_scale_f32 v37, s3, v15, v5, v15
	v_div_scale_f32 v38, null, v5, v5, v14
	v_rcp_f32_e32 v51, v36
	v_div_scale_f32 v40, null, v5, v5, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v38
	v_div_scale_f32 v39, s4, v14, v5, v14
	v_rcp_f32_e32 v53, v40
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v24, v29, v5, v24
	v_div_scale_f32 v41, s5, v16, v5, v16
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v61, -v36, v51, 1.0
	v_div_fixup_f32 v23, v30, v5, v23
	v_fma_f32 v62, -v38, v52, 1.0
	v_div_fixup_f32 v22, v25, v5, v22
	v_div_scale_f32 v25, s0, v17, v6, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v51, v61, v51 :: v_dual_fmac_f32 v52, v62, v52
	v_fma_f32 v63, -v40, v53, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_mul_f32 v61, v37, v51 :: v_dual_mul_f32 v62, v39, v52
	v_fma_f32 v69, -v36, v61, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v38, v62, v39
	v_dual_fmac_f32 v61, v69, v51 :: v_dual_fmac_f32 v62, v70, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v36, v61, v37
	v_fma_f32 v33, -v38, v62, v39
	v_div_scale_f32 v37, null, v6, v6, v4
	v_fma_f32 v36, -v42, v64, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v29, v32, v51, v61
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v38, v37
	v_div_fmas_f32 v30, v33, v52, v62
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v29, v5, v15
	v_fma_f32 v29, -v45, v56, 1.0
	v_fmac_f32_e32 v53, v63, v53
	v_div_fixup_f32 v14, v30, v5, v14
	v_rcp_f32_e32 v32, v46
	v_mul_f32_e32 v33, v25, v55
	v_fmac_f32_e32 v56, v29, v56
	v_mul_f32_e32 v63, v41, v53
	v_div_scale_f32 v29, s1, v21, v6, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v44, v33, v25
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v71, -v40, v63, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v34, v29, v56
	v_fma_f32 v35, -v46, v32, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v63, v71, v53
	v_fmac_f32_e32 v32, v35, v32
	v_div_scale_f32 v35, s2, v20, v6, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v40, v63, v41
	v_div_fmas_f32 v30, v30, v53, v63
	s_mov_b32 vcc_lo, s6
	v_div_fmas_f32 v36, v36, v54, v64
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v16, v30, v5, v16
	v_div_fixup_f32 v5, v36, v5, v26
	v_div_scale_f32 v26, null, v6, v6, v7
	v_div_scale_f32 v36, null, v6, v6, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v30, v26
	v_fmac_f32_e32 v33, v31, v55
	v_fma_f32 v31, -v45, v34, v29
	v_rcp_f32_e32 v40, v36
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v25, -v44, v33, v25
	v_fmac_f32_e32 v34, v31, v56
	v_mul_f32_e32 v31, v35, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v25, v55, v33
	v_fma_f32 v29, -v45, v34, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v31, v35
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v44, -v36, v40, 1.0
	v_div_fixup_f32 v17, v25, v6, v17
	v_div_fmas_f32 v29, v29, v56, v34
	v_fmac_f32_e32 v31, v33, v32
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s3, v18, v6, v18
	v_div_fixup_f32 v21, v29, v6, v21
	v_fma_f32 v29, -v37, v38, 1.0
	v_fma_f32 v25, -v46, v31, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v47, v44, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v38, v29, v38
	v_div_scale_f32 v29, null, v6, v6, v8
	v_div_fmas_f32 v25, v25, v32, v31
	v_div_scale_f32 v31, null, v6, v6, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v33, v29
	v_div_scale_f32 v32, vcc_lo, v4, v6, v4
	v_rcp_f32_e32 v34, v31
	v_div_fixup_f32 v20, v25, v6, v20
	v_fma_f32 v25, -v26, v30, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v35, v32, v38
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v30, v25, v30
	v_div_scale_f32 v25, s0, v7, v6, v7
	v_fma_f32 v39, -v29, v33, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v31, v34, 1.0
	v_fma_f32 v41, -v37, v35, v32
	v_mul_f32_e32 v43, v25, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v33, v39, v33
	v_div_scale_f32 v39, s1, v8, v6, v8
	v_fmac_f32_e32 v34, v42, v34
	v_div_scale_f32 v42, s2, v19, v6, v19
	v_fmac_f32_e32 v35, v41, v38
	v_fma_f32 v41, -v26, v43, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v45, v39, v33 :: v_dual_mul_f32 v46, v42, v34
	v_fma_f32 v32, -v37, v35, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v41, v30
	v_fma_f32 v37, -v29, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v31, v46, v42
	v_div_fmas_f32 v32, v32, v38, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v25, -v26, v43, v25
	v_fma_f32 v26, -v36, v47, v44
	v_fmac_f32_e32 v45, v37, v33
	v_fmac_f32_e32 v46, v41, v34
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v4, v32, v6, v4
	v_fmac_f32_e32 v47, v26, v40
	v_fma_f32 v29, -v29, v45, v39
	v_fma_f32 v26, -v31, v46, v42
	v_div_fmas_f32 v25, v25, v30, v43
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v30, -v36, v47, v44
	v_div_fmas_f32 v29, v29, v33, v45
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v7, v25, v6, v7
	v_div_fmas_f32 v26, v26, v34, v46
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v8, v29, v6, v8
	v_div_fmas_f32 v30, v30, v40, v47
	s_mov_b32 s0, 0xc1000000
	v_div_fixup_f32 v19, v26, v6, v19
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v21, v21, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v30, v6, v18
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v24
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v19, v19
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v18, v18
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v24, v5
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v25, v4
	v_and_b32_e32 v5, 15, v18
	v_and_b32_e32 v18, 15, v21
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v21, 11, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v26, v7
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v29, v19
	v_and_b32_e32 v7, 15, v22
	v_and_b32_e32 v19, 15, v20
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v22, 0x60, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v20, 15, v25
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v21, 0x3000, v21
	v_lshlrev_b32_e32 v25, 7, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_and_b32_e32 v4, 15, v13
	v_and_b32_e32 v13, 15, v15
	v_and_b32_e32 v15, 15, v16
	v_and_b32_e32 v16, 15, v24
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v24, 7, v1
	v_xor_b32_e32 v9, v9, v22
	v_add_nc_u32_e32 v31, 0, v21
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v22, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v8, 0x3600, v25, v12
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v30, v6
	v_and_b32_e32 v6, 15, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v9, v31, v24, v9
	v_xad_u32 v8, v8, v10, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v17, 15, v17
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v9, v[4:7]
	ds_store_b128 v9, v[17:20] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v8
	ds_load_b128 v[17:20], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v14, v14
	v_and_b32_e32 v21, 15, v26
	v_and_b32_e32 v23, 15, v29
	v_and_b32_e32 v24, 15, v30
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v14, 15, v14
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	ds_store_b128 v9, v[13:16]
	ds_store_b128 v9, v[21:24] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v8
	ds_load_b128 v[21:24], v8 offset:2048
.Ltmp62:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v8, 4, v10
.Ltmp63:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v9.h, v2.l
	v_mov_b16_e32 v10.h, v2.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v9.l, v28.h
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v16, v17, 4, v4
	v_lshl_or_b32 v4, v19, 4, v6
	v_lshl_or_b32 v2, v20, 4, v7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v8, s48, v8
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v10.l, v27.h
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v18, 4, v5
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v2.l
	v_and_b16 v2.h, 0xff, v4.l
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v8, s0, v[3:4]
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v2.h, v2.l
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v5.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v5, v0, 31, s48
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v1, v9, v10, vcc_lo
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v6, v21, 4, v12
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v7, v22, 4, v13
	v_lshl_or_b32 v12, v23, 4, v14
	v_lshl_or_b32 v13, v24, 4, v15
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v8, v5, s0
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v5, v1, 0, 16
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v16.l
	v_and_b16 v1.l, 0xff, v12.l
	v_lshlrev_b16 v0.h, 8, v13.l
	v_lshlrev_b16 v1.h, 8, v7.l
	v_and_b16 v2.h, 0xff, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v6, v5, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.l, v0.l, v2.l
	v_or_b16 v5.h, v1.l, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v8, s33, 1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v1.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v1, v6, v9, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v11
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[16:19], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s17, s27, 0xffff
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_mov_b32 s16, s26
	buffer_store_b16 v1, v0, s[16:19], 0 offen
.Ltmp64:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp65:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 216
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 216
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19512
; TotalNumSgprs: 54
; NumVgprs: 216
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 216
; Occupancy: 7
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
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
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     216
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
