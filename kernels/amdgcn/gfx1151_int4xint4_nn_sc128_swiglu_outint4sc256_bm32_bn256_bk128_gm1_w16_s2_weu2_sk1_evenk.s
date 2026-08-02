	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
	v_and_b32_e32 v34, 0x1f0, v0
	v_lshrrev_b32_e32 v35, 4, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v37, 0x1e0, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshlrev_b32_e32 v36, 2, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 24                        ; generate_amdgcn.py:185:24
	v_lshrrev_b32_e32 v2, 3, v34
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
	s_sub_i32 s16, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s9, s16
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s16, s5
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s18, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s17, s8, 0x4f7ffffe
	s_load_b256 s[8:15], s[0:1], 0x0
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s17, s17
	s_mul_i32 s18, s18, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s17, s18
	s_abs_i32 s18, s2
	s_add_i32 s17, s17, s5
	s_mul_hi_u32 s5, s18, s17
	s_xor_b32 s17, s2, s6
	s_mul_i32 s19, s5, s7
	s_ashr_i32 s30, s17, 31
	s_sub_i32 s17, s18, s19
	s_add_i32 s18, s5, 1
	s_sub_i32 s19, s17, s7
	s_cmp_ge_u32 s17, s7
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[10:11]
	s_cselect_b32 s5, s18, s5
	s_cselect_b32 s10, s19, s17
	s_add_i32 s17, s5, 1
	s_cmp_ge_u32 s10, s7
	s_mov_b32 s11, 0x31027000
	s_cselect_b32 s5, s17, s5
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s31, s3, 6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s37, s5, s30
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s10, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s7, s4, 0x7f
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s37, s30
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v1, s31, v2
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s10
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s5, s7, 31
.Ltmp15:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s33, s6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s36, s4, 1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s4, s5, 25
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s4, s7, s4
.Ltmp19:
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s36, v1
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s5, 64, v1
	.loc	1 120 13 is_stmt 1              ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s16
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_lshl_b32 s40, s35, 1
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s41, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s6, s4, 7
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s7, 0x7f
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s10, s40, s31
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s4, s5, vcc_lo
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s23, s11
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s4
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v38, 15, v0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s21, s21, 0xffff
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	s_mul_i32 s16, s34, s36
	.loc	1 216 26 is_stmt 0              ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v33, 4, v38
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[3:4], null, s40, v2, v[33:34]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add3_u32 v1, s41, s10, v3
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	s_mov_b32 s22, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v3, s40, v1
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v4, 0x80000000, v1, vcc_lo
	.loc	1 228 43 is_stmt 1              ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v1, s35, v1
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[6:9], v4, s[20:23], 0 offen
	buffer_load_b128 v[20:23], v3, s[20:23], 0 offen
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v3, s40, v1
	.loc	1 228 35 is_stmt 0              ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	s_clause 0x1
	buffer_load_b128 v[24:27], v1, s[20:23], 0 offen
	buffer_load_b128 v[28:31], v3, s[20:23], 0 offen
	.loc	1 185 24 is_stmt 1              ; generate_amdgcn.py:185:24
	v_lshlrev_b32_e32 v1, 2, v38
	s_mov_b32 s22, -1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v5, s31, v1
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[3:4], null, s36, v35, v[1:2]
	.loc	1 216 26 is_stmt 0              ; generate_amdgcn.py:216:26
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 198 27 is_stmt 1              ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s36, v5
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 216 34 is_stmt 1              ; generate_amdgcn.py:216:34
	v_add3_u32 v3, s31, s16, v3
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s4, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	s_cmpk_gt_i32 s7, 0xff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	buffer_load_b32 v45, v3, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v3, 3, v0
	v_and_b32_e32 v5, 56, v3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v3, 56, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xor_b32_e32 v4, v5, v2
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v10, v36, v3
	v_and_b32_e32 v5, 56, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshl_or_b32 v13, v38, 10, v4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v11, 0, v10
	v_lshlrev_b32_e32 v4, 6, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xor_b32_e32 v10, 0x88, v13
	v_add_nc_u32_e32 v12, 0, v13
	v_xor_b32_e32 v14, 0x110, v13
	v_xor_b32_e32 v15, 0x198, v13
	v_xor_b32_e32 v16, 0x220, v13
	v_xor_b32_e32 v17, 0x2a8, v13
	v_xor_b32_e32 v18, 0x330, v13
	v_xor_b32_e32 v19, 0x3b8, v13
	v_add_nc_u32_e32 v13, 0, v10
	v_add_nc_u32_e32 v14, 0, v14
	v_add_nc_u32_e32 v15, 0, v15
	v_add_nc_u32_e32 v16, 0, v16
	v_add_nc_u32_e32 v17, 0, v17
	v_add_nc_u32_e32 v18, 0, v18
	v_add_nc_u32_e32 v19, 0, v19
	s_waitcnt vmcnt(3)
	v_perm_b32 v10, v20, v6, 0x5010400
	v_perm_b32 v32, v21, v7, 0x5010400
	v_perm_b32 v20, v20, v6, 0x7030602
	v_perm_b32 v21, v21, v7, 0x7030602
	v_perm_b32 v39, v22, v8, 0x5010400
	v_perm_b32 v22, v22, v8, 0x7030602
	v_perm_b32 v40, v23, v9, 0x5010400
	v_perm_b32 v23, v23, v9, 0x7030602
	v_lshrrev_b32_e32 v41, 8, v10
	v_lshrrev_b32_e32 v46, 8, v32
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(1)
	v_perm_b32 v55, v28, v24, 0x5010400
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b16 v6.l, 0xff, v10.l
	v_lshrrev_b32_e32 v42, 24, v10
	v_and_b16 v6.h, 0xff, v10.h
	v_lshrrev_b32_e32 v43, 8, v20
	v_lshrrev_b32_e32 v44, 24, v20
	v_and_b16 v8.l, 0xff, v32.l
	v_lshrrev_b32_e32 v47, 24, v32
	v_and_b16 v8.h, 0xff, v32.h
	v_and_b16 v9.l, 0xff, v21.l
	v_lshrrev_b32_e32 v32, 8, v21
	v_lshrrev_b32_e32 v48, 24, v21
	v_and_b16 v9.h, 0xff, v21.h
	v_and_b16 v10.l, 0xff, v39.l
	v_lshrrev_b32_e32 v49, 8, v39
	v_lshrrev_b32_e32 v50, 24, v39
	v_and_b16 v10.h, 0xff, v39.h
	v_lshrrev_b32_e32 v39, 8, v22
	v_lshrrev_b32_e32 v51, 24, v22
	v_and_b16 v21.l, 0xff, v40.l
	v_lshrrev_b32_e32 v52, 8, v40
	v_lshrrev_b32_e32 v53, 24, v40
	v_and_b16 v21.h, 0xff, v40.h
	v_lshrrev_b32_e32 v40, 8, v23
	v_lshrrev_b32_e32 v54, 24, v23
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v56, v28, v24, 0x7030602
	v_perm_b32 v57, v29, v25, 0x5010400
	v_perm_b32 v58, v29, v25, 0x7030602
	v_perm_b32 v59, v30, v26, 0x5010400
	v_perm_b32 v60, v30, v26, 0x7030602
	v_perm_b32 v61, v31, v27, 0x5010400
	v_perm_b32 v62, v31, v27, 0x7030602
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b16 v7.l, 0xff, v20.l
	v_and_b16 v20.l, 0xff, v22.l
	v_and_b16 v22.l, 0xff, v23.l
	v_lshlrev_b16 v23.l, 8, v41.l
	v_lshlrev_b16 v25.l, 8, v46.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v46, 8, v55
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b16 v7.h, 0xff, v20.h
	v_and_b16 v20.h, 0xff, v22.h
	v_and_b16 v22.h, 0xff, v23.h
	v_lshlrev_b16 v23.h, 8, v42.l
	v_lshlrev_b16 v24.l, 8, v43.l
	v_lshlrev_b16 v24.h, 8, v44.l
	v_lshlrev_b16 v25.h, 8, v47.l
	v_lshlrev_b16 v26.l, 8, v32.l
	v_lshlrev_b16 v26.h, 8, v48.l
	v_lshlrev_b16 v27.l, 8, v49.l
	v_lshlrev_b16 v27.h, 8, v50.l
	v_lshlrev_b16 v28.l, 8, v39.l
	v_lshlrev_b16 v28.h, 8, v51.l
	v_lshlrev_b16 v29.l, 8, v52.l
	v_lshlrev_b16 v29.h, 8, v53.l
	v_lshlrev_b16 v30.l, 8, v40.l
	v_lshlrev_b16 v30.h, 8, v54.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_and_b16 v31.l, 0xff, v55.l
	v_lshrrev_b32_e32 v47, 24, v55
	v_and_b16 v31.h, 0xff, v55.h
	v_and_b16 v32.l, 0xff, v56.l
	v_lshrrev_b32_e32 v48, 8, v56
	v_lshrrev_b32_e32 v49, 24, v56
	v_and_b16 v32.h, 0xff, v56.h
	v_and_b16 v39.l, 0xff, v57.l
	v_lshrrev_b32_e32 v50, 8, v57
	v_lshrrev_b32_e32 v51, 24, v57
	v_and_b16 v39.h, 0xff, v57.h
	v_and_b16 v40.l, 0xff, v58.l
	v_lshrrev_b32_e32 v52, 8, v58
	v_lshrrev_b32_e32 v53, 24, v58
	v_and_b16 v40.h, 0xff, v58.h
	v_and_b16 v41.l, 0xff, v59.l
	v_lshrrev_b32_e32 v54, 8, v59
	v_lshrrev_b32_e32 v55, 24, v59
	v_and_b16 v41.h, 0xff, v59.h
	v_and_b16 v42.l, 0xff, v60.l
	v_lshrrev_b32_e32 v56, 8, v60
	v_lshrrev_b32_e32 v57, 24, v60
	v_and_b16 v42.h, 0xff, v60.h
	v_and_b16 v43.l, 0xff, v61.l
	v_lshrrev_b32_e32 v58, 8, v61
	v_lshrrev_b32_e32 v59, 24, v61
	v_and_b16 v43.h, 0xff, v61.h
	v_lshrrev_b32_e32 v60, 8, v62
	v_lshrrev_b32_e32 v61, 24, v62
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v6.l, v6.l, v23.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v23.l, 8, v46.l
	v_and_b16 v44.l, 0xff, v62.l
	v_and_b16 v44.h, 0xff, v62.h
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v6.h, v6.h, v23.h
	v_or_b16 v7.l, v7.l, v24.l
	v_or_b16 v7.h, v7.h, v24.h
	v_or_b16 v8.l, v8.l, v25.l
	v_or_b16 v8.h, v8.h, v25.h
	v_or_b16 v9.l, v9.l, v26.l
	v_or_b16 v9.h, v9.h, v26.h
	v_or_b16 v10.l, v10.l, v27.l
	v_or_b16 v10.h, v10.h, v27.h
	v_or_b16 v20.l, v20.l, v28.l
	v_or_b16 v20.h, v20.h, v28.h
	v_or_b16 v21.l, v21.l, v29.l
	v_or_b16 v21.h, v21.h, v29.h
	v_or_b16 v22.l, v22.l, v30.l
	v_or_b16 v22.h, v22.h, v30.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v23.h, 8, v47.l
	v_lshlrev_b16 v24.l, 8, v48.l
	v_lshlrev_b16 v24.h, 8, v49.l
	v_lshlrev_b16 v25.l, 8, v50.l
	v_lshlrev_b16 v25.h, 8, v51.l
	v_lshlrev_b16 v26.l, 8, v52.l
	v_lshlrev_b16 v26.h, 8, v53.l
	v_lshlrev_b16 v27.l, 8, v54.l
	v_lshlrev_b16 v27.h, 8, v55.l
	v_lshlrev_b16 v28.l, 8, v56.l
	v_lshlrev_b16 v28.h, 8, v57.l
	v_lshlrev_b16 v29.l, 8, v58.l
	v_lshlrev_b16 v29.h, 8, v59.l
	v_lshlrev_b16 v30.l, 8, v60.l
	v_lshlrev_b16 v30.h, 8, v61.l
	v_or_b16 v23.l, v31.l, v23.l
	v_or_b16 v23.h, v31.h, v23.h
	v_or_b16 v24.l, v32.l, v24.l
	v_or_b16 v24.h, v32.h, v24.h
	v_or_b16 v25.l, v39.l, v25.l
	v_or_b16 v25.h, v39.h, v25.h
	v_or_b16 v26.l, v40.l, v26.l
	v_or_b16 v26.h, v40.h, v26.h
	v_or_b16 v27.l, v41.l, v27.l
	v_or_b16 v27.h, v41.h, v27.h
	v_or_b16 v28.l, v42.l, v28.l
	v_or_b16 v28.h, v42.h, v28.h
	v_or_b16 v29.l, v43.l, v29.l
	v_or_b16 v29.h, v43.h, v29.h
	v_or_b16 v30.l, v44.l, v30.l
	v_or_b16 v30.h, v44.h, v30.h
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v11, v45 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v12, v6
	ds_store_b16_d16_hi v12, v6 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v12, v23 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v13, v7
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v12, v23 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v13, v7 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v13, v24 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v14, v8
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v13, v24 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v14, v8 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v14, v25 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v15, v9
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v14, v25 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v15, v9 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v15, v26 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v16, v10
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v15, v26 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v16, v10 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v16, v27 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v17, v20
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v16, v27 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v17, v20 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v17, v28 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v18, v21
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v17, v28 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v18, v21 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v18, v29 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v19, v22
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v18, v29 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v19, v22 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v19, v30 offset:16384
	ds_store_b16_d16_hi v19, v30 offset:16448
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshl_or_b32 v6, v37, 5, v5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_or_b32_e32 v20, v4, v5
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_mov_b64 s[26:27], s[10:11]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xor_b32_e32 v6, v6, v3
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v21, 8, v20
	v_xor_b32_e32 v22, 16, v20
	v_xor_b32_e32 v23, 24, v20
	v_xor_b32_e32 v24, 32, v20
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b32_e32 v72, v6, v4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_xor_b32_e32 v25, 40, v20
	v_xor_b32_e32 v26, 48, v20
	v_xor_b32_e32 v27, 56, v20
	s_mov_b32 s22, 0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_xor_b32_e32 v73, 8, v72
	v_xor_b32_e32 v74, 16, v72
	v_xor_b32_e32 v75, 24, v72
	v_xor_b32_e32 v76, 32, v72
	v_xor_b32_e32 v77, 40, v72
	v_xor_b32_e32 v78, 48, v72
	v_xor_b32_e32 v79, 56, v72
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr24_sgpr25
                                        ; implicit-def: $vgpr20
                                        ; implicit-def: $vgpr21
                                        ; implicit-def: $vgpr22
                                        ; implicit-def: $vgpr23
                                        ; implicit-def: $vgpr24
                                        ; implicit-def: $vgpr25
                                        ; implicit-def: $vgpr26
                                        ; implicit-def: $vgpr27
                                        ; implicit-def: $vgpr72
                                        ; implicit-def: $vgpr73
                                        ; implicit-def: $vgpr74
                                        ; implicit-def: $vgpr75
                                        ; implicit-def: $vgpr76
                                        ; implicit-def: $vgpr77
                                        ; implicit-def: $vgpr78
                                        ; implicit-def: $vgpr79
.LBB0_3:                                ; %Flow362
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b128 s[16:19], s[0:1], 0x20
	v_bfe_u32 v71, v0, 4, 1
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v43, 0
	s_and_not1_b32 vcc_lo, exec_lo, s22
	s_add_i32 s1, s6, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	v_lshl_or_b32 v6, v37, 5, v5
	s_mov_b32 s44, 0
	v_or_b32_e32 v20, v4, v5
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	v_xor_b32_e32 v3, v6, v3
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	v_or_b32_e32 v72, v3, v4
	s_mov_b32 s51, s44
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v3, s34, v38
	v_lshlrev_b32_e32 v7, 2, v35
	v_lshl_or_b32 v4, s37, 9, v37
	v_sub_nc_u32_e32 v29, s36, v2
	s_lshl_b32 s0, s30, 9
	v_add_nc_u32_e32 v5, 16, v3
	v_lshl_or_b32 v7, s3, 7, v7
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v6, s40, v4
	v_subrev_nc_u32_e32 v32, s0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s6, v5
	v_add_nc_u32_e32 v2, 0x81, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v31, s0, v6
	s_lshl_b32 s0, s37, 8
	v_add_nc_u32_e32 v4, 0x83, v7
	v_mul_lo_u32 v8, s6, v3
	v_mad_u64_u32 v[2:3], null, s35, v2, s[0:1]
	v_lshlrev_b32_e32 v80, 1, v5
	v_add_nc_u32_e32 v5, 0x82, v7
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v6, 0x80, v7
	v_mad_u64_u32 v[3:4], null, s35, v4, s[0:1]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mad_u64_u32 v[4:5], null, s35, v5, s[0:1]
	v_mad_u64_u32 v[5:6], null, s35, v6, s[0:1]
	s_lshl_b32 s0, s30, 8
	v_xor_b32_e32 v78, 48, v72
	v_subrev_nc_u32_e32 v82, s0, v2
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v2, s34, v35
	v_xor_b32_e32 v79, 56, v72
	v_sub_nc_u32_e32 v28, s36, v1
	v_lshlrev_b32_e32 v30, 1, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[9:10], null, s36, v2, v[1:2]
	v_dual_mov_b32 v46, 0 :: v_dual_lshlrev_b32 v81, 1, v8
	v_subrev_nc_u32_e32 v83, s0, v3
	v_subrev_nc_u32_e32 v84, s0, v4
	v_subrev_nc_u32_e32 v85, s0, v5
	v_mov_b32_e32 v1, s44
	v_xor_b32_e32 v21, 8, v20
	v_xor_b32_e32 v22, 16, v20
	v_xor_b32_e32 v23, 24, v20
	v_xor_b32_e32 v24, 32, v20
	v_xor_b32_e32 v25, 40, v20
	v_xor_b32_e32 v26, 48, v20
	v_xor_b32_e32 v27, 56, v20
	v_xor_b32_e32 v73, 8, v72
	v_xor_b32_e32 v74, 16, v72
	v_xor_b32_e32 v75, 24, v72
	v_xor_b32_e32 v76, 32, v72
	v_xor_b32_e32 v77, 40, v72
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v10, 0, v78
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v86, 0, v79
	v_dual_mov_b32 v2, s45 :: v_dual_mov_b32 v3, s46
	v_dual_mov_b32 v4, s47 :: v_dual_mov_b32 v5, s48
	v_dual_mov_b32 v6, s49 :: v_dual_mov_b32 v7, s50
	v_mov_b32_e32 v8, s51
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v61, 0
	v_mov_b32_e32 v66, 0
	v_mov_b32_e32 v64, 0
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v56, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_mov_b64 s[24:25], s[12:13]
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_max_i32 s7, s1, 1
	s_lshl_b32 s3, s35, 2
	s_lshl_b32 s42, s35, 7
	s_add_i32 s43, s31, 64
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s43, v28
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v87, s43, v9
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s0, s43, v29
	v_add_nc_u32_e32 v95, 0, v72
	v_add_nc_u32_e32 v96, 0, v21
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	v_dual_cndmask_b32 v87, 0x80000000, v87 :: v_dual_add_nc_u32 v90, v33, v85
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, s0, s5
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v91, v33, v84
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v148, 0x80000000, v90 :: v_dual_add_nc_u32 v97, 0, v73
	.loc	1 228 43                        ; generate_amdgcn.py:228:43
	v_add_nc_u32_e32 v92, v33, v82
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v88, v81, s[36:39], 0 offen
	buffer_load_u16 v89, v80, s[36:39], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v149, 0x80000000, v91, vcc_lo
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_add_nc_u32_e32 v93, v33, v83
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b32 v87, v87, s[8:11], 0 offen
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v150, 0x80000000, v92, vcc_lo
	v_add_nc_u32_e32 v94, 0, v20
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_cndmask_b32_e32 v151, 0x80000000, v93, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_barrier
	ds_load_2addr_stride64_b64 v[120:123], v94 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[124:127], v95 offset1:32
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[128:131], v96 offset0:64 offset1:66
	.loc	1 0 0                           ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[132:135], v97 offset1:32
	v_add_nc_u32_e32 v136, 0, v22
	v_add_nc_u32_e32 v137, 0, v74
	v_add_nc_u32_e32 v138, 0, v23
	v_add_nc_u32_e32 v139, 0, v75
	v_add_nc_u32_e32 v140, 0, v24
	v_add_nc_u32_e32 v141, 0, v76
	v_add_nc_u32_e32 v142, 0, v25
	v_add_nc_u32_e32 v143, 0, v77
	v_add_nc_u32_e32 v144, 0, v26
	v_add_nc_u32_e32 v145, 0, v27
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_add_i32 s7, s7, -1
	s_add_i32 s43, s43, 64
	s_cmp_lg_u32 s7, 0
	v_add_nc_u32_e32 v83, s42, v83
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[124:125], v[120:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[124:125], v[122:123], v[1:8] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[106:113], v[126:127], v[120:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[126:127], v[122:123], v[1:8] neg_lo:[1,1,0]
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[132:133], v[128:129], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[132:133], v[130:131], v[98:105] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[106:113], v[134:135], v[128:129], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[134:135], v[130:131], v[114:121] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[122:125], v136 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[126:129], v137 offset1:32
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[130:133], v138 offset0:64 offset1:66
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[126:127], v[122:123], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[126:127], v[124:125], v[98:105] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[106:113], v[128:129], v[122:123], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[128:129], v[124:125], v[114:121] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[122:125], v139 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[126:129], v140 offset0:64 offset1:66
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[122:123], v[130:131], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[122:123], v[132:133], v[98:105] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[106:113], v[124:125], v[130:131], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[124:125], v[132:133], v[114:121] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[122:125], v141 offset1:32
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[130:133], v142 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[134:137], v143 offset1:32
	.loc	1 220 26 is_stmt 1              ; generate_amdgcn.py:220:26
	buffer_load_b128 v[138:141], v148, s[20:23], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[122:123], v[126:127], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[122:123], v[128:129], v[98:105] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[106:113], v[124:125], v[126:127], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[124:125], v[128:129], v[114:121] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[122:125], v144 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[126:129], v10 offset1:32
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[134:135], v[130:131], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[134:135], v[132:133], v[98:105] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[106:113], v[136:137], v[130:131], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[136:137], v[132:133], v[114:121] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[130:133], v145 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[134:137], v86 offset1:32
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[126:127], v[122:123], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[126:127], v[124:125], v[98:105] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[106:113], v[128:129], v[122:123], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[128:129], v[124:125], v[114:121] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b128 v[122:125], v149, s[20:23], 0 offen
	buffer_load_b128 v[126:129], v150, s[20:23], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[134:135], v[130:131], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[134:135], v[132:133], v[98:105] neg_lo:[1,1,0]
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[106:113], v[136:137], v[130:131], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[136:137], v[132:133], v[114:121] neg_lo:[1,1,0]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	buffer_load_b128 v[130:133], v151, s[20:23], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v150, v92
	v_cvt_f32_i32_e32 v143, v103
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v161, v111
	v_cvt_f32_i32_e32 v148, v114
	v_cvt_f32_i32_e32 v149, v115
	v_cvt_f32_i32_e32 v118, v118
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v114, v90
	v_cvt_f32_i32_e32 v115, v91
	v_cvt_f32_i32_e32 v134, v98
	v_cvt_f32_i32_e32 v135, v99
	v_cvt_f32_i32_e32 v136, v100
	v_cvt_f32_i32_e32 v137, v101
	v_cvt_f32_i32_e32 v142, v102
	v_cvt_f32_i32_e32 v144, v104
	v_cvt_f32_i32_e32 v145, v105
	v_cvt_f32_i32_e32 v152, v94
	v_cvt_f32_i32_e32 v153, v95
	v_cvt_f32_i32_e32 v154, v96
	v_cvt_f32_i32_e32 v155, v97
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v156, v106
	v_cvt_f32_i32_e32 v157, v107
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v117, v117
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v151, v93
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v158, v108
	v_cvt_f32_i32_e32 v159, v109
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v160, v110
	v_cvt_f32_i32_e32 v162, v112
	v_cvt_f32_i32_e32 v163, v113
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(2)
	v_perm_b32 v105, v122, v138, 0x5010400
	v_perm_b32 v104, v122, v138, 0x7030602
	v_perm_b32 v103, v123, v139, 0x5010400
	v_perm_b32 v102, v123, v139, 0x7030602
	v_perm_b32 v101, v124, v140, 0x5010400
	v_perm_b32 v100, v124, v140, 0x7030602
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	s_waitcnt vmcnt(0)
	v_perm_b32 v91, v133, v129, 0x5010400
	v_perm_b32 v90, v133, v129, 0x7030602
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v129, 16, v88
	v_lshlrev_b32_e32 v111, 16, v89
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v146, v30, v32
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_perm_b32 v99, v125, v141, 0x5010400
	v_perm_b32 v98, v125, v141, 0x7030602
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v97, v130, v126, 0x5010400
	v_perm_b32 v96, v130, v126, 0x7030602
	v_perm_b32 v95, v131, v127, 0x5010400
	v_perm_b32 v94, v131, v127, 0x7030602
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x7
	buffer_load_u16 v106, v146, s[28:31], 0 offen
	buffer_load_u16 v107, v146, s[28:31], 0 offen offset:4
	buffer_load_u16 v122, v146, s[28:31], 0 offen offset:8
	buffer_load_u16 v123, v146, s[28:31], 0 offen offset:12
	buffer_load_u16 v124, v146, s[28:31], 0 offen offset:16
	buffer_load_u16 v125, v146, s[28:31], 0 offen offset:20
	buffer_load_u16 v126, v146, s[28:31], 0 offen offset:24
	buffer_load_u16 v127, v146, s[28:31], 0 offen offset:28
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v89, v111, v134
	v_mul_f32_e32 v88, v129, v114
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_perm_b32 v93, v132, v128, 0x5010400
	v_perm_b32 v92, v132, v128, 0x7030602
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v106, 16, v106
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v122, 16, v122
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v123, 16, v123
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v124, 16, v124
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v70, v89, v106 :: v_dual_lshlrev_b32 v89, 16, v107
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v107, v111, v118
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v118, v129, v150 :: v_dual_add_nc_u32 v147, v30, v31
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v68, v88, v106
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v88, v111, v135
	v_mul_f32_e32 v135, v111, v136
	v_mul_f32_e32 v136, v111, v137
	.loc	1 235 27 is_stmt 1              ; generate_amdgcn.py:235:27
	s_clause 0x3
	buffer_load_u16 v128, v147, s[28:31], 0 offen
	buffer_load_u16 v132, v147, s[28:31], 0 offen offset:12
	buffer_load_u16 v133, v147, s[28:31], 0 offen offset:16
	buffer_load_u16 v134, v147, s[28:31], 0 offen offset:20
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v108, v111, v117
	v_mul_f32_e32 v109, v111, v116
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_clause 0x3
	buffer_load_u16 v116, v147, s[28:31], 0 offen offset:24
	buffer_load_u16 v117, v147, s[28:31], 0 offen offset:28
	buffer_load_u16 v130, v147, s[28:31], 0 offen offset:4
	buffer_load_u16 v131, v147, s[28:31], 0 offen offset:8
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v114, v111, v143
	v_mul_f32_e32 v112, v111, v145
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v66, v88, v89
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v88, v129, v115 :: v_dual_mul_f32 v115, v111, v142
	v_mul_f32_e32 v113, v111, v144
	.loc	1 236 29 is_stmt 1              ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v106, v111, v119
	v_dual_mul_f32 v110, v111, v149 :: v_dual_mul_f32 v119, v129, v151
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v52, v88, v89
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v88, v111, v121 :: v_dual_add_nc_u32 v31, s3, v31
	v_mul_f32_e32 v89, v111, v120
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v121, v129, v153 :: v_dual_add_nc_u32 v32, s3, v32
	v_dual_mul_f32 v137, v129, v154 :: v_dual_add_nc_u32 v80, 2, v80
	v_dual_mul_f32 v120, v129, v152 :: v_dual_add_nc_u32 v81, 2, v81
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v139, v129, v159 :: v_dual_add_nc_u32 v82, s42, v82
	v_dual_mul_f32 v141, v129, v157 :: v_dual_add_nc_u32 v84, s42, v84
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v138, v129, v155 :: v_dual_add_nc_u32 v85, s42, v85
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v140, v129, v158
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v142, v129, v156 :: v_dual_lshlrev_b32 v125, 16, v125
	v_mul_f32_e32 v143, v129, v163
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v144, v129, v162 :: v_dual_lshlrev_b32 v127, 16, v127
	v_mul_f32_e32 v145, v129, v161
	v_dual_mul_f32 v129, v129, v160 :: v_dual_lshlrev_b32 v126, 16, v126
	v_mul_f32_e32 v111, v111, v148
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v39, v138, v127
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v40, v137, v126
	v_dual_fmac_f32 v64, v136, v123 :: v_dual_fmac_f32 v61, v113, v126
	v_fmac_f32_e32 v63, v115, v124
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v113, 8, v101
	v_lshrrev_b32_e32 v115, 8, v100
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v126, 24, v95
	v_lshrrev_b32_e32 v136, 24, v90
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v51, v118, v122 :: v_dual_fmac_f32 v50, v119, v123
	v_fmac_f32_e32 v41, v121, v125
	v_dual_fmac_f32 v65, v135, v122 :: v_dual_fmac_f32 v42, v120, v124
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshrrev_b32_e32 v118, 24, v99
	v_lshrrev_b32_e32 v119, 8, v98
	v_lshrrev_b32_e32 v120, 24, v98
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshrrev_b32_e32 v121, 8, v97
	v_lshrrev_b32_e32 v122, 24, v97
	v_lshrrev_b32_e32 v123, 8, v96
	v_lshrrev_b32_e32 v124, 24, v96
	v_lshrrev_b32_e32 v135, 8, v90
	v_and_b16 v90.l, 0xff, v90.l
	v_and_b16 v90.h, 0xff, v90.h
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v128, 16, v128
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v132, 16, v132
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v133, 16, v133
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v134, 16, v134
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v116, 16, v116
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v117, 16, v117
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v130, 16, v130
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v58, v108, v132 :: v_dual_lshlrev_b32 v131, 16, v131
	v_fmac_f32_e32 v57, v107, v133
	v_dual_fmac_f32 v55, v106, v134 :: v_dual_fmac_f32 v54, v89, v116
	v_fmac_f32_e32 v53, v88, v117
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b16 v88.l, 0xff, v105.l
	v_lshrrev_b32_e32 v106, 8, v105
	v_lshrrev_b32_e32 v107, 24, v105
	v_and_b16 v88.h, 0xff, v105.h
	v_lshrrev_b32_e32 v105, 8, v104
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v62, v114, v125 :: v_dual_fmac_f32 v49, v141, v130
	v_dual_fmac_f32 v56, v112, v127 :: v_dual_fmac_f32 v67, v142, v128
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_dual_fmac_f32 v48, v140, v131 :: v_dual_fmac_f32 v47, v139, v132
	v_dual_fmac_f32 v43, v129, v133 :: v_dual_fmac_f32 v60, v110, v130
	v_dual_fmac_f32 v46, v145, v134 :: v_dual_fmac_f32 v45, v144, v116
	v_dual_fmac_f32 v44, v143, v117 :: v_dual_fmac_f32 v59, v109, v131
	v_fmac_f32_e32 v69, v111, v128
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_and_b16 v89.l, 0xff, v104.l
	v_lshrrev_b32_e32 v108, 24, v104
	v_and_b16 v104.l, 0xff, v103.l
	v_lshrrev_b32_e32 v109, 8, v103
	v_lshrrev_b32_e32 v110, 24, v103
	v_and_b16 v103.l, 0xff, v103.h
	v_and_b16 v103.h, 0xff, v102.l
	v_lshrrev_b32_e32 v111, 8, v102
	v_lshrrev_b32_e32 v112, 24, v102
	v_and_b16 v102.l, 0xff, v102.h
	v_and_b16 v102.h, 0xff, v101.l
	v_lshrrev_b32_e32 v114, 24, v101
	v_and_b16 v101.l, 0xff, v101.h
	v_and_b16 v101.h, 0xff, v100.l
	v_lshrrev_b32_e32 v116, 24, v100
	v_and_b16 v100.l, 0xff, v100.h
	v_and_b16 v100.h, 0xff, v99.l
	v_lshrrev_b32_e32 v117, 8, v99
	v_and_b16 v99.l, 0xff, v99.h
	v_and_b16 v99.h, 0xff, v98.l
	v_and_b16 v98.l, 0xff, v98.h
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_and_b16 v98.h, 0xff, v97.l
	v_and_b16 v97.l, 0xff, v97.h
	v_and_b16 v97.h, 0xff, v96.l
	v_and_b16 v96.l, 0xff, v96.h
	v_and_b16 v96.h, 0xff, v95.l
	v_lshrrev_b32_e32 v125, 8, v95
	v_and_b16 v95.l, 0xff, v95.h
	v_and_b16 v95.h, 0xff, v94.l
	v_lshrrev_b32_e32 v127, 8, v94
	v_lshrrev_b32_e32 v128, 24, v94
	v_and_b16 v94.l, 0xff, v94.h
	v_and_b16 v94.h, 0xff, v93.l
	v_lshrrev_b32_e32 v129, 8, v93
	v_lshrrev_b32_e32 v130, 24, v93
	v_and_b16 v93.l, 0xff, v93.h
	v_and_b16 v93.h, 0xff, v92.l
	v_lshrrev_b32_e32 v131, 8, v92
	v_lshrrev_b32_e32 v132, 24, v92
	v_and_b16 v92.l, 0xff, v92.h
	v_and_b16 v92.h, 0xff, v91.l
	v_lshrrev_b32_e32 v133, 8, v91
	v_lshrrev_b32_e32 v134, 24, v91
	v_and_b16 v91.l, 0xff, v91.h
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v91.h, 8, v105.l
	v_and_b16 v89.h, 0xff, v104.h
	v_lshlrev_b16 v104.h, 8, v106.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v109.h, 8, v121.l
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b16 v105.l, 8, v112.l
	v_or_b16 v89.l, v89.l, v91.h
	v_lshlrev_b16 v91.h, 8, v108.l
	v_or_b16 v88.l, v88.l, v104.h
	v_lshlrev_b16 v104.h, 8, v107.l
	v_lshlrev_b16 v105.h, 8, v113.l
	v_lshlrev_b16 v106.l, 8, v114.l
	v_or_b16 v89.h, v89.h, v91.h
	v_lshlrev_b16 v91.h, 8, v109.l
	v_or_b16 v88.h, v88.h, v104.h
	v_lshlrev_b16 v104.h, 8, v111.l
	v_lshlrev_b16 v106.h, 8, v115.l
	v_lshlrev_b16 v107.l, 8, v116.l
	v_or_b16 v91.h, v104.l, v91.h
	v_lshlrev_b16 v104.l, 8, v110.l
	v_lshlrev_b16 v107.h, 8, v117.l
	v_lshlrev_b16 v108.l, 8, v118.l
	v_lshlrev_b16 v108.h, 8, v119.l
	v_lshlrev_b16 v109.l, 8, v120.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_lshlrev_b16 v110.l, 8, v122.l
	v_lshlrev_b16 v110.h, 8, v123.l
	v_lshlrev_b16 v111.l, 8, v124.l
	v_lshlrev_b16 v111.h, 8, v125.l
	v_lshlrev_b16 v112.l, 8, v126.l
	v_lshlrev_b16 v112.h, 8, v127.l
	v_lshlrev_b16 v113.l, 8, v128.l
	v_lshlrev_b16 v113.h, 8, v129.l
	v_lshlrev_b16 v114.l, 8, v130.l
	v_lshlrev_b16 v114.h, 8, v131.l
	v_lshlrev_b16 v115.l, 8, v132.l
	v_lshlrev_b16 v115.h, 8, v133.l
	v_lshlrev_b16 v116.l, 8, v134.l
	v_lshlrev_b16 v116.h, 8, v135.l
	v_lshlrev_b16 v117.l, 8, v136.l
	v_or_b16 v98.h, v98.h, v109.h
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_or_b16 v103.l, v103.l, v104.l
	v_or_b16 v103.h, v103.h, v104.h
	v_or_b16 v102.l, v102.l, v105.l
	v_or_b16 v102.h, v102.h, v105.h
	v_or_b16 v101.l, v101.l, v106.l
	v_or_b16 v101.h, v101.h, v106.h
	v_or_b16 v100.l, v100.l, v107.l
	v_or_b16 v100.h, v100.h, v107.h
	v_or_b16 v99.l, v99.l, v108.l
	v_or_b16 v99.h, v99.h, v108.h
	v_or_b16 v98.l, v98.l, v109.l
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	v_or_b16 v97.l, v97.l, v110.l
	v_or_b16 v97.h, v97.h, v110.h
	v_or_b16 v96.l, v96.l, v111.l
	v_or_b16 v96.h, v96.h, v111.h
	v_or_b16 v95.l, v95.l, v112.l
	v_or_b16 v95.h, v95.h, v112.h
	v_or_b16 v94.l, v94.l, v113.l
	v_or_b16 v94.h, v94.h, v113.h
	v_or_b16 v93.l, v93.l, v114.l
	v_or_b16 v93.h, v93.h, v114.h
	v_or_b16 v92.l, v92.l, v115.l
	v_or_b16 v92.h, v92.h, v115.h
	v_or_b16 v91.l, v91.l, v116.l
	v_or_b16 v90.l, v90.l, v116.h
	v_or_b16 v90.h, v90.h, v117.l
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b32 v11, v87 offset:32768
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v12, v88
	ds_store_b16_d16_hi v12, v88 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v12, v98 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v13, v89
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v12, v97 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v13, v89 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v13, v97 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v14, v91
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v13, v96 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v14, v103 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v14, v96 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v15, v103
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v14, v95 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v15, v102 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v15, v95 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v16, v102
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v15, v94 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v16, v101 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v16, v94 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v17, v101
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v16, v93 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v17, v100 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v17, v93 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v18, v100
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v17, v92 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v18, v99 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16_d16_hi v18, v92 offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16_d16_hi v19, v99
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v18, v91 offset:16448
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_store_b16 v19, v98 offset:64
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_store_b16 v19, v90 offset:16384
	ds_store_b16_d16_hi v19, v90 offset:16448
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow363
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s6, v38
	s_mul_i32 s0, s34, s6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s1, s1, 0
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v111, 0, v75
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v9, 0, v24
	v_add_nc_u32_e32 v10, 0, v25
	v_add_nc_u32_e32 v5, 0, v23
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_add3_u32 v1, s0, s1, v1
	s_lshl_b32 s0, s6, 4
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v11, 0, v26
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v3, 0, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v75, 0 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, v1, s0, 1
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v12, 0, v27
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v99, 0, v79
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v100, 0, v78
	s_clause 0x1
	buffer_load_u16 v89, v2, s[24:27], 0 offen
	buffer_load_u16 v90, v1, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v1, 0, v20
	v_add_nc_u32_e32 v2, 0, v21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v101, 0, v77
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v112, 0, v74
	v_add_nc_u32_e32 v113, 0, v73
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v114, 0, v72
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v72, 0
	ds_load_2addr_stride64_b64 v[29:32], v1 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[17:20], v2 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[1:4], v3 offset0:64 offset1:66
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	ds_load_2addr_stride64_b64 v[21:24], v9 offset0:64 offset1:66
	v_mov_b32_e32 v79, 0
	ds_load_2addr_stride64_b64 v[25:28], v10 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[13:16], v11 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[9:12], v12 offset0:64 offset1:66
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v110, 0, v76
	v_mov_b32_e32 v76, 0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[5:8], v5 offset0:64 offset1:66
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	v_cndmask_b32_e64 v82, 0, 1, s2
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v80, 16, v0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_ne_u32_e64 s0, 1, v82
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_b64 v[72:73], v114
	ds_load_b64 v[74:75], v113
	ds_load_b64 v[76:77], v112
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v98, s11 :: v_dual_mov_b32 v97, s10
	v_dual_mov_b32 v96, s9 :: v_dual_mov_b32 v95, s8
	v_dual_mov_b32 v94, s7 :: v_dual_mov_b32 v93, s6
	v_dual_mov_b32 v92, s5 :: v_dual_mov_b32 v91, s4
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_b64 v[78:79], v111
	ds_load_b64 v[82:83], v110
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[72:73], v[29:30], v[91:98] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[72:73], v[31:32], v[91:98] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_b64 v[72:73], v101
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[74:75], v[17:18], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[74:75], v[19:20], v[91:98] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_b64 v[74:75], v100
	ds_load_b64 v[84:85], v99
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[76:77], v[1:2], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[76:77], v[3:4], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[78:79], v[5:6], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[78:79], v[7:8], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[82:83], v[21:22], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[82:83], v[23:24], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[72:73], v[25:26], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[72:73], v[27:28], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[74:75], v[13:14], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[74:75], v[15:16], v[91:98] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[84:85], v[9:10], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[91:98], v[84:85], v[11:12], v[91:98] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v76, v102
	v_cvt_f32_i32_e32 v77, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v78, v104
	v_cvt_f32_i32_e32 v79, v105
	v_cvt_f32_i32_e32 v75, v106
	v_cvt_f32_i32_e32 v74, v107
	v_cvt_f32_i32_e32 v73, v108
	v_cvt_f32_i32_e32 v72, v109
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_mov_b32_e32 v108, 0
	.loc	1 229 36 is_stmt 1              ; generate_amdgcn.py:229:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_load_b64 v[81:82], v114 offset:16384
	ds_load_b64 v[83:84], v113 offset:16384
	ds_load_b64 v[85:86], v112 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v109, s11 :: v_dual_mov_b32 v108, s10
	v_dual_mov_b32 v107, s9 :: v_dual_mov_b32 v106, s8
	v_dual_mov_b32 v105, s7 :: v_dual_mov_b32 v104, s6
	v_dual_mov_b32 v103, s5 :: v_dual_mov_b32 v102, s4
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_load_b64 v[87:88], v111 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[81:82], v[29:30], v[102:109] neg_lo:[1,1,0]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_load_b64 v[29:30], v110 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[102:109], v[81:82], v[31:32], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[83:84], v[17:18], v[111:118] neg_lo:[1,1,0]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_load_b64 v[17:18], v101 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[102:109], v[83:84], v[19:20], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[85:86], v[1:2], v[111:118] neg_lo:[1,1,0]
	.loc	1 228 35                        ; generate_amdgcn.py:228:35
	ds_load_b64 v[1:2], v100 offset:16384
	ds_load_b64 v[19:20], v99 offset:16384
	.loc	1 229 36                        ; generate_amdgcn.py:229:36
	v_wmma_i32_16x16x16_iu4 v[102:109], v[85:86], v[3:4], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[87:88], v[5:6], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[87:88], v[7:8], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[29:30], v[21:22], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[29:30], v[23:24], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[17:18], v[25:26], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[17:18], v[27:28], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[1:2], v[13:14], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[1:2], v[15:16], v[102:109] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[111:118], v[19:20], v[9:10], v[111:118] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[102:109], v[19:20], v[11:12], v[102:109] neg_lo:[1,1,0]
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_cvt_f32_i32_e32 v85, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v86, v112
	v_cvt_f32_i32_e32 v87, v113
	v_cvt_f32_i32_e32 v88, v114
	v_cvt_f32_i32_e32 v81, v115
	v_cvt_f32_i32_e32 v82, v116
	v_cvt_f32_i32_e32 v83, v117
	v_cvt_f32_i32_e32 v84, v118
	v_cvt_f32_i32_e32 v102, v102
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
.LBB0_10:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	s_waitcnt lgkmcnt(5)
	v_lshrrev_b32_e32 v1, 1, v37
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s1, s1, s40
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s21, s15, 0xffff
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s0, s41, s1
	s_mov_b32 s23, 0x31027000
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_or_b32_e32 v1, v71, v1
	.loc	1 235 35                        ; generate_amdgcn.py:235:35
	s_add_i32 s1, s0, s35
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s20, s14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v2, 2, v1
	v_or_b32_e32 v3, 4, v1
	v_or_b32_e32 v4, 6, v1
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v5, 8, v1
	v_or_b32_e32 v6, 10, v1
	v_or_b32_e32 v7, 12, v1
	v_or_b32_e32 v12, 14, v1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_lshl_u32 v8, s0, v1, 1
	v_add_lshl_u32 v9, s0, v2, 1
	v_add_lshl_u32 v10, s0, v3, 1
	v_add_lshl_u32 v11, s0, v4, 1
	v_add_lshl_u32 v13, s0, v5, 1
	v_add_lshl_u32 v14, s0, v6, 1
	v_add_lshl_u32 v15, s0, v7, 1
	v_add_lshl_u32 v16, s0, v12, 1
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v1, s1, v1, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_add_lshl_u32 v2, s1, v2, 1
	v_add_lshl_u32 v3, s1, v3, 1
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	v_cndmask_b32_e64 v10, 0x80000000, v10, s2
	v_cndmask_b32_e64 v11, 0x80000000, v11, s2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s2
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x8
	buffer_load_u16 v8, v8, s[20:23], 0 offen
	buffer_load_u16 v9, v9, s[20:23], 0 offen
	buffer_load_u16 v10, v10, s[20:23], 0 offen
	buffer_load_u16 v11, v11, s[20:23], 0 offen
	buffer_load_u16 v13, v13, s[20:23], 0 offen
	buffer_load_u16 v14, v14, s[20:23], 0 offen
	buffer_load_u16 v15, v15, s[20:23], 0 offen
	buffer_load_u16 v16, v16, s[20:23], 0 offen
	buffer_load_u16 v17, v1, s[20:23], 0 offen
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_cndmask_b32_e64 v2, 0x80000000, v3, s2
	v_add_lshl_u32 v3, s1, v4, 1
	v_add_lshl_u32 v4, s1, v5, 1
	v_add_lshl_u32 v5, s1, v6, 1
	v_add_lshl_u32 v6, s1, v7, 1
	v_add_lshl_u32 v7, s1, v12, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_clause 0x6
	buffer_load_u16 v12, v1, s[20:23], 0 offen
	buffer_load_u16 v18, v2, s[20:23], 0 offen
	buffer_load_u16 v3, v3, s[20:23], 0 offen
	buffer_load_u16 v4, v4, s[20:23], 0 offen
	buffer_load_u16 v5, v5, s[20:23], 0 offen
	buffer_load_u16 v6, v6, s[20:23], 0 offen
	buffer_load_u16 v7, v7, s[20:23], 0 offen
.Ltmp22:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v1.l, 0
.Ltmp23:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(16)
	v_mov_b16_e32 v1.h, v90.l
	v_mov_b16_e32 v2.h, v89.l
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp25:
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v2.l, v1.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v19, v91, v1
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_mul_f32_e32 v31, v106, v1
	v_mul_f32_e32 v89, v109, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v28, v103, v1 :: v_dual_mul_f32 v81, v81, v2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v76, v76, v2
	v_dual_mul_f32 v20, v92, v1 :: v_dual_mul_f32 v77, v77, v2
	v_dual_mul_f32 v21, v93, v1 :: v_dual_mul_f32 v78, v78, v2
	v_dual_mul_f32 v22, v94, v1 :: v_dual_mul_f32 v79, v79, v2
	v_dual_mul_f32 v23, v95, v1 :: v_dual_mul_f32 v86, v86, v2
	v_dual_mul_f32 v24, v96, v1 :: v_dual_mul_f32 v85, v85, v2
	v_dual_mul_f32 v25, v97, v1 :: v_dual_mul_f32 v88, v88, v2
	v_dual_mul_f32 v26, v98, v1 :: v_dual_mul_f32 v87, v87, v2
	.loc	1 236 29                        ; generate_amdgcn.py:236:29
	v_dual_mul_f32 v29, v104, v1 :: v_dual_mul_f32 v82, v82, v2
	v_mul_f32_e32 v32, v107, v1
	v_mul_f32_e32 v71, v108, v1
	v_mul_f32_e32 v83, v83, v2
	v_dual_mul_f32 v27, v102, v1 :: v_dual_mul_f32 v84, v84, v2
	v_dual_mul_f32 v30, v105, v1 :: v_dual_mul_f32 v75, v75, v2
.Ltmp26:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s20, s16
.Ltmp27:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v8, 16, v8
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v9, 16, v9
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v10, 16, v10
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v11, 16, v11
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v13, 16, v13
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v19, v8, v70
	v_fma_f32 v8, v76, v8, v68
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v16, 16, v16
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v23, v23, v13, v63
	v_fma_f32 v24, v24, v14, v62
	v_fma_f32 v22, v22, v11, v64
	v_fma_f32 v21, v21, v10, v65
	v_fma_f32 v26, v26, v16, v56
	v_fma_f32 v20, v20, v9, v66
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v12, 16, v12
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v18, 16, v18
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v4, 16, v4
	v_lshlrev_b32_e32 v3, 16, v3
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v28, v28, v12, v60
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v29, v29, v18, v59
	v_fma_f32 v31, v31, v4, v57
	v_fma_f32 v4, v81, v4, v43
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v76, v89, v7, v53
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v68, v68, v8, s2
	v_cndmask_b32_e64 v8, v66, v20, s2
	v_cndmask_b32_e64 v43, v43, v4, s2
	v_cndmask_b32_e64 v20, v65, v21, s2
	v_cndmask_b32_e64 v53, v53, v76, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v15, 16, v15
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v21, v64, v22, s2
	v_cndmask_b32_e64 v22, v63, v23, s2
	v_cndmask_b32_e64 v23, v62, v24, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v4, 0xbfb8aa3b, v53
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v25, v25, v15, v61
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v27, v27, v17, v69
	v_fma_f32 v32, v32, v5, v55
	v_fma_f32 v30, v30, v3, v58
	v_fma_f32 v5, v82, v5, v46
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v61, v25, s2
	v_cndmask_b32_e64 v25, v56, v26, s2
	v_cndmask_b32_e64 v26, v60, v28, s2
	v_cndmask_b32_e64 v28, v59, v29, s2
	.loc	1 235 27                        ; generate_amdgcn.py:235:27
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v27, v69, v27, s2
	v_cndmask_b32_e64 v29, v58, v30, s2
	v_cndmask_b32_e64 v30, v57, v31, s2
	v_cndmask_b32_e64 v31, v55, v32, s2
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v71, v71, v6, v54
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v46, v46, v5, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v79, v11, v50
	v_fma_f32 v10, v78, v10, v51
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v32, v54, v71, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v54, 0xbfb8aa3b, v27
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v17, v85, v17, v67
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v50, v11, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_dual_mul_f32 v50, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v32
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v18, v87, v18, v48
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v17, v67, v17, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v51, v10, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v4, 0, 0x42800000, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v18, v48, v18, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v29
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v3, v88, v3, v47
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v54, 0xbfb8aa3b, v18
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v7, v84, v7, v44
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v47, v47, v3, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v3, 0xbfb8aa3b, v17
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v12, v86, v12, v49
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v44, v44, v7, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v48
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v49, v12, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v49, 0xbfb8aa3b, v28
	.loc	1 236 17                        ; generate_amdgcn.py:236:17
	v_fma_f32 v6, v83, v6, v45
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v7, 0xbfb8aa3b, v30
	v_cndmask_b32_e64 v3, 0, 0x42800000, s0
	v_cndmask_b32_e64 v50, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v59, 0xbfb8aa3b, v43
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v45, v45, v6, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v6, 0xbfb8aa3b, v31
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v77, v9, v52
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v56, 0xbfb8aa3b, v44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v49
	v_mul_f32_e32 v57, 0xbfb8aa3b, v45
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v6
	v_cndmask_b32_e64 v48, 0, 0x42800000, s3
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v27
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v52, v9, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_mul_f32_e32 v52, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v6, 0, 0x42800000, s5
	v_fmac_f32_e32 v3, 0xbfb8aa3b, v17
	v_dual_mul_f32 v55, 0xbfb8aa3b, v12 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v46
	v_cndmask_b32_e64 v49, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v31
	v_exp_f32_e32 v3, v3
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v7
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v57
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v26
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v59
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v29
	v_exp_f32_e32 v51, v51
	v_cndmask_b32_e64 v7, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v5
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v55
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v52
	v_cndmask_b32_e64 v59, 0, 0x42800000, s11
	v_cndmask_b32_e64 v57, 0, 0x42800000, s13
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v56
	v_dual_fmac_f32 v49, 0xbfb8aa3b, v28 :: v_dual_fmac_f32 v4, 0xbfb8aa3b, v53
	v_exp_f32_e32 v50, v50
	v_ldexp_f32 v3, v3, v61
	v_cndmask_b32_e64 v5, 0, 0x42800000, s6
	v_cndmask_b32_e64 v55, 0, 0x42800000, s8
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v54
	v_cndmask_b32_e64 v52, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v58
	v_cndmask_b32_e64 v56, 0, 0x42800000, s0
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v7, 0xbfb8aa3b, v30 :: v_dual_fmac_f32 v52, 0xbfb8aa3b, v47
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v43 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v44
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v45
	v_exp_f32_e32 v4, v4
	v_ldexp_f32 v51, v51, v60
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v60, 1.0, v3
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v54, 0, 0x42800000, s9
	v_cndmask_b32_e64 v58, 0, 0x42800000, s12
	v_fmac_f32_e32 v5, 0xbfb8aa3b, v32
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s7
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v12
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v7, v7
	v_exp_f32_e32 v59, v59
	v_ldexp_f32 v50, v50, v62
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v62, null, v60, v60, v17
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v48, v48
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s4
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, s11
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v46
	v_exp_f32_e32 v6, v6
	v_exp_f32_e32 v5, v5
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v52, v52
	v_ldexp_f32 v4, v4, v69
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v85, v62
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s3
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v19, v70, v19, s2
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s10
	v_exp_f32_e32 v54, v54
	v_ldexp_f32 v49, v49, v63
	v_ldexp_f32 v7, v7, v65
	v_ldexp_f32 v3, v59, v77
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v59, null, v51, v51, v27
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v48, v48, v64
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s9
	v_exp_f32_e32 v58, v58
	v_ldexp_f32 v6, v6, v66
	v_ldexp_f32 v5, v5, v67
	v_ldexp_f32 v55, v55, v70
	v_ldexp_f32 v52, v52, v76
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v7, 1.0, v7 :: v_dual_add_f32 v48, 1.0, v48
	v_dual_add_f32 v49, 1.0, v49 :: v_dual_add_f32 v50, 1.0, v50
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v104, -v62, v85, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v64, 1.0, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v3, v59
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, s12
	v_ldexp_f32 v54, v54, v71
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_dual_add_f32 v5, 1.0, v5 :: v_dual_add_f32 v6, 1.0, v6
	v_dual_add_f32 v52, 1.0, v52 :: v_dual_add_f32 v55, 1.0, v55
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v65, null, v50, v50, v26
	v_div_scale_f32 v76, null, v7, v7, v30
	v_div_scale_f32 v67, null, v49, v49, v28
	v_div_scale_f32 v70, null, v48, v48, v29
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v58, v58, v78
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v78, null, v6, v6, v31
	v_div_scale_f32 v81, null, v5, v5, v32
	v_div_scale_f32 v86, null, v55, v55, v12
	v_div_scale_f32 v90, null, v52, v52, v47
	v_rcp_f32_e32 v93, v65
	v_rcp_f32_e32 v96, v76
	v_fma_f32 v100, -v59, v3, 1.0
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v83, null, v4, v4, v53
	v_rcp_f32_e32 v94, v67
	v_rcp_f32_e32 v95, v70
	v_rcp_f32_e32 v97, v78
	v_rcp_f32_e32 v98, v81
	v_rcp_f32_e32 v101, v86
	v_rcp_f32_e32 v103, v90
	v_fmac_f32_e32 v3, v100, v3
	v_div_scale_f32 v88, null, v54, v54, v18
	v_rcp_f32_e32 v99, v83
	v_div_scale_f32 v61, vcc_lo, v27, v51, v27
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v102, v88
	v_fma_f32 v100, -v65, v93, 1.0
	v_fma_f32 v107, -v76, v96, 1.0
	v_fma_f32 v105, -v67, v94, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v57, v57
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v106, -v70, v95, 1.0
	v_div_scale_f32 v66, s3, v26, v50, v26
	v_div_scale_f32 v77, s6, v30, v7, v30
	v_fma_f32 v108, -v78, v97, 1.0
	v_fma_f32 v109, -v81, v98, 1.0
	v_fmac_f32_e32 v85, v104, v85
	v_fma_f32 v104, -v86, v101, 1.0
	v_fma_f32 v112, -v90, v103, 1.0
	v_dual_mul_f32 v113, v61, v3 :: v_dual_fmac_f32 v96, v107, v96
	v_dual_fmac_f32 v93, v100, v93 :: v_dual_fmac_f32 v94, v105, v94
	v_div_scale_f32 v63, s1, v17, v60, v17
	v_div_scale_f32 v69, s4, v28, v49, v28
	v_fma_f32 v110, -v83, v99, 1.0
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s13
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v71, s5, v29, v48, v29
	v_dual_fmac_f32 v95, v106, v95 :: v_dual_fmac_f32 v98, v109, v98
	v_div_scale_f32 v82, s8, v32, v5, v32
	v_div_scale_f32 v91, s12, v47, v52, v47
	v_fma_f32 v111, -v88, v102, 1.0
	v_fmac_f32_e32 v97, v108, v97
	v_dual_fmac_f32 v101, v104, v101 :: v_dual_mul_f32 v106, v69, v94
	v_dual_fmac_f32 v103, v112, v103 :: v_dual_mul_f32 v108, v77, v96
	v_fma_f32 v104, -v59, v113, v61
	v_mul_f32_e32 v105, v66, v93
	v_dual_fmac_f32 v99, v110, v99 :: v_dual_mul_f32 v100, v63, v85
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v57, v57, v79
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v79, s7, v31, v6, v31
	v_div_scale_f32 v84, s9, v53, v4, v53
	v_div_scale_f32 v87, s10, v12, v55, v12
	v_dual_mul_f32 v107, v71, v95 :: v_dual_mul_f32 v110, v82, v98
	v_mul_f32_e32 v116, v91, v103
	v_fma_f32 v119, -v76, v108, v77
	v_fmac_f32_e32 v113, v104, v3
	v_fma_f32 v104, -v65, v105, v66
	v_div_scale_f32 v89, s11, v18, v54, v18
	v_fmac_f32_e32 v102, v111, v102
	v_fma_f32 v112, -v62, v100, v63
	v_fma_f32 v117, -v67, v106, v69
	v_mul_f32_e32 v109, v79, v97
	v_dual_mul_f32 v111, v84, v99 :: v_dual_mul_f32 v114, v87, v101
	v_fma_f32 v118, -v70, v107, v71
	v_fma_f32 v121, -v81, v110, v82
	v_dual_fmac_f32 v105, v104, v93 :: v_dual_fmac_f32 v108, v119, v96
	v_fma_f32 v59, -v59, v113, v61
	v_dual_mul_f32 v115, v89, v102 :: v_dual_fmac_f32 v100, v112, v85
	v_fmac_f32_e32 v106, v117, v94
	v_fma_f32 v120, -v78, v109, v79
	v_fma_f32 v112, -v86, v114, v87
	v_dual_fmac_f32 v107, v118, v95 :: v_dual_fmac_f32 v110, v121, v98
	v_div_fmas_f32 v3, v59, v3, v113
	v_fma_f32 v59, -v65, v105, v66
	v_fma_f32 v61, -v62, v100, v63
	v_fma_f32 v62, -v67, v106, v69
	v_fmac_f32_e32 v109, v120, v97
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v114, v112, v101
	v_fma_f32 v63, -v70, v107, v71
	v_div_fixup_f32 v27, v3, v51, v27
	v_div_fmas_f32 v3, v59, v93, v105
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v65, -v76, v108, v77
	v_div_fmas_f32 v51, v62, v94, v106
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v66, -v78, v109, v79
	v_div_fmas_f32 v59, v63, v95, v107
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v67, -v81, v110, v82
	v_div_fixup_f32 v3, v3, v50, v26
	v_div_fmas_f32 v26, v65, v96, v108
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v28, v51, v49, v28
	v_div_fmas_f32 v49, v66, v97, v109
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v122, -v83, v111, v84
	v_div_fixup_f32 v29, v59, v48, v29
	v_div_fmas_f32 v48, v67, v98, v110
	v_fma_f32 v123, -v88, v115, v89
	v_fma_f32 v124, -v90, v116, v91
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v70, -v86, v114, v87
	v_div_fixup_f32 v5, v48, v5, v32
	v_fmac_f32_e32 v111, v122, v99
	v_dual_fmac_f32 v115, v123, v102 :: v_dual_fmac_f32 v116, v124, v103
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v8, v8, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v3, v26, v7, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v83, v111, v84
	v_fma_f32 v71, -v88, v115, v89
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v7, v20, v28
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v76, -v90, v116, v91
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v3, v22, v3
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v26, v69, v99, v111
	s_mov_b32 vcc_lo, s1
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_exp_f32_e32 v56, v56
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fmas_f32 v20, v61, v85, v100
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v6, v49, v6, v31
	v_div_fmas_f32 v22, v70, v101, v114
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v17, v20, v60, v17
	v_div_fmas_f32 v28, v71, v102, v115
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v26, v26, v4, v53
	v_div_fmas_f32 v30, v76, v103, v116
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v4, v23, v6
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v18, v28, v54, v18
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v6, v24, v5
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v23, 1.0, v57
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v20, v30, v52, v47
	v_div_scale_f32 v92, null, v64, v64, v43
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v18, v10, v18
	.loc	1 238 38                        ; generate_amdgcn.py:238:38
	v_add_f32_e32 v10, 1.0, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v20, v11, v20
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v5, v25, v26
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v12, v22, v55, v12
	v_div_scale_f32 v24, null, v10, v10, v46
	.loc	1 238 44                        ; generate_amdgcn.py:238:44
	v_ldexp_f32 v11, v56, v11
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v26, v73, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v22, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v28, v24
	v_div_scale_f32 v25, null, v23, v23, v45
	.loc	1 238 38 is_stmt 0              ; generate_amdgcn.py:238:38
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_mul_f32 v12, v9, v12
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v9, v74, v2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v31, v25
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v15, v26, v15, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_scale_f32 v32, null, v11, v11, v44
	v_fma_f32 v47, -v24, v28, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v92, v22, 1.0
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v14, v41
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_rcp_f32_e32 v48, v32
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v15, v40, v15, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v28, v47, v28
	v_div_scale_f32 v47, s0, v46, v10, v46
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v2, v72, v2
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v17, v68, v17
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v41, v9, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_mul_f32_e32 v51, v47, v28
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v13, v75, v13, v42
	v_fma_f32 v2, v2, v16, v39
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fma_f32 v16, -v25, v31, 1.0
	v_fmac_f32_e32 v22, v30, v22
	v_div_scale_f32 v30, vcc_lo, v43, v64, v43
	v_fma_f32 v50, -v32, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v16, v31
	v_div_scale_f32 v16, s1, v45, v23, v45
	v_mul_f32_e32 v49, v30, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s3, v44, v11, v44
	v_mul_f32_e32 v52, v16, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v92, v49, v30
	v_fma_f32 v14, -v24, v51, v47
	v_mul_f32_e32 v53, v50, v48
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v13, v42, v13, s2
	v_cndmask_b32_e64 v2, v39, v2, s2
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_fmac_f32_e32 v49, v26, v22
	v_fma_f32 v26, -v25, v52, v16
	v_fmac_f32_e32 v51, v14, v28
	v_fma_f32 v14, -v32, v53, v50
	s_mov_b32 s7, 0x76543210
	v_fma_f32 v30, -v92, v49, v30
	v_fmac_f32_e32 v52, v26, v31
	v_fma_f32 v24, -v24, v51, v47
	v_fmac_f32_e32 v53, v14, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v22, v30, v22, v49
	v_fma_f32 v14, -v25, v52, v16
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v16, v24, v28, v51
	v_fma_f32 v24, -v32, v53, v50
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v14, v14, v31, v52
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v16, v10, v46
	v_div_fmas_f32 v24, v24, v48, v53
	v_div_fixup_f32 v16, v22, v64, v43
	v_div_fixup_f32 v14, v14, v23, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 238 19 is_stmt 0              ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v23, v9, v10
	.loc	1 238 26                        ; generate_amdgcn.py:238:26
	v_div_fixup_f32 v11, v24, v11, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_dual_mul_f32 v13, v13, v16 :: v_dual_mul_f32 v14, v15, v14
	v_dual_mul_f32 v15, v19, v27 :: v_dual_lshlrev_b32 v24, 7, v38
	v_mul_f32_e32 v22, v2, v11
.Ltmp28:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, |v17|, |v12|, |v18|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v10, |v20|, |v13|, |v23|
	v_max3_f32 v16, |v15|, |v8|, |v7|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e64 v11, |v14|, |v22|
	v_max3_f32 v10, v2, v10, v11
.Ltmp29:
	.loc	1 238 19                        ; generate_amdgcn.py:238:19
	v_mul_f32_e32 v9, v21, v29
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v21, |v6|, |v5|
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v2, 3, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v19, |v9|, |v3|, |v4|
	v_max3_f32 v11, v16, v19, v21
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v16, v10, s7, 0xfedcba98 op_sel:[1,0]
	v_lshrrev_b32_e32 v21, 2, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v19, v11, s7, 0xfedcba98 op_sel:[1,0]
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v25, v2, v21
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v10, v10, v16
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v16, v37, 2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v11, v11, v19
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v19, 0, v24, v25
	s_delay_alu instid0(VALU_DEP_3)
	v_xad_u32 v16, v16, v21, 0
	ds_store_b64 v19, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[10:11], v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v16, v10
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v11 :: v_dual_max_f32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v10, v10, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v19, v19, v19 :: v_dual_mov_b32 v16, v10
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v11, v11, v19 :: v_dual_max_f32 v16, v16, v16
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v19, v11 :: v_dual_max_f32 v10, v10, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v16, v10 :: v_dual_max_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v11, v11, v19 :: v_dual_max_f32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v19, v11 :: v_dual_max_f32 v10, v10, v16
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v16, v10 :: v_dual_max_f32 v19, v19, v19
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v11, v11, v19 :: v_dual_max_f32 v16, v16, v16
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v19, v11 :: v_dual_max_f32 v10, v10, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v19, v19, v19 :: v_dual_add_nc_u32 v16, 0, v21
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v11, v11, v19
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v19, 0, v2
.Ltmp52:
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v2, s33, 7, v2
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v16, v[10:11]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[10:11], v19
.Ltmp54:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v10, 0x2b8cbccc, v10
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v10
	v_div_scale_f32 v27, vcc_lo, v10, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v16
	v_fma_f32 v25, -v16, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v25, v21
	v_max_f32_e32 v11, 0x2b8cbccc, v11
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v24, v19
	v_fma_f32 v26, -v19, v24, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v24, v26, v24
	v_mul_f32_e32 v26, v27, v21
	v_div_scale_f32 v25, s0, v11, 0x40e00000, v11
	v_fma_f32 v29, -v16, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v28, v25, v24
	v_fma_f32 v30, -v19, v28, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v28, v30, v24
	v_fmac_f32_e32 v26, v29, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v28, v25
	v_fma_f32 v16, -v16, v26, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v16, v16, v21, v26
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v19, v19, v24, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v10, v16, 0x40e00000, v10
	v_div_fixup_f32 v11, v19, 0x40e00000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v16, v10, 16, 1
	v_bfe_u32 v19, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v10, v16, 0x7fff
	v_add3_u32 v19, v11, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v10, 0xffff0000, v21
	v_and_b32_e32 v11, 0xffff0000, v19
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v19.l, v19.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v16, null, v10, v10, v17
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v19.h, v1.l
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v44, null, v11, v11, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v16
	v_div_scale_f32 v45, null, v11, v11, v8
	v_rcp_f32_e32 v55, v44
	v_div_scale_f32 v46, null, v11, v11, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v56, v45
	v_fma_f32 v57, -v16, v47, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v44, v55, 1.0
	v_fmac_f32_e32 v47, v57, v47
	v_div_scale_f32 v25, null, v10, v10, v12
	v_div_scale_f32 v27, null, v10, v10, v18
	v_div_scale_f32 v29, null, v10, v10, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v25
	v_div_scale_f32 v31, null, v10, v10, v13
	v_rcp_f32_e32 v49, v27
	v_div_scale_f32 v42, null, v10, v10, v22
	v_rcp_f32_e32 v50, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v51, v31
	v_div_scale_f32 v24, vcc_lo, v17, v10, v17
	v_rcp_f32_e32 v54, v42
	v_fma_f32 v58, -v25, v48, 1.0
	v_div_scale_f32 v38, null, v10, v10, v23
	v_fma_f32 v59, -v27, v49, 1.0
	v_div_scale_f32 v26, s0, v12, v10, v12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v29, v50, 1.0
	v_dual_fmac_f32 v48, v58, v48 :: v_dual_fmac_f32 v49, v59, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v61, -v31, v51, 1.0
	v_div_scale_f32 v28, s1, v18, v10, v18
	v_fma_f32 v64, -v42, v54, 1.0
	v_mul_f32_e32 v57, v24, v47
	v_div_scale_f32 v30, s2, v20, v10, v20
	v_div_scale_f32 v40, null, v10, v10, v14
	v_rcp_f32_e32 v52, v38
	v_dual_fmac_f32 v50, v60, v50 :: v_dual_fmac_f32 v51, v61, v51
	v_dual_mul_f32 v58, v26, v48 :: v_dual_mul_f32 v59, v28, v49
	v_div_scale_f32 v32, s3, v13, v10, v13
	v_div_scale_f32 v43, s6, v22, v10, v22
	v_dual_fmac_f32 v54, v64, v54 :: v_dual_fmac_f32 v55, v65, v55
	v_fma_f32 v65, -v16, v57, v24
	v_rcp_f32_e32 v53, v40
	v_dual_mul_f32 v60, v30, v50 :: v_dual_mul_f32 v61, v32, v51
	v_fma_f32 v66, -v25, v58, v26
	v_fma_f32 v67, -v27, v59, v28
	v_dual_mul_f32 v64, v43, v54 :: v_dual_fmac_f32 v57, v65, v47
	v_fma_f32 v62, -v38, v52, 1.0
	v_fma_f32 v68, -v29, v60, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v58, v66, v48 :: v_dual_fmac_f32 v59, v67, v49
	v_fma_f32 v69, -v31, v61, v32
	v_fma_f32 v16, -v16, v57, v24
	v_div_scale_f32 v39, s4, v23, v10, v23
	v_fma_f32 v63, -v40, v53, 1.0
	v_fmac_f32_e32 v52, v62, v52
	v_dual_fmac_f32 v60, v68, v50 :: v_dual_fmac_f32 v61, v69, v51
	v_fma_f32 v24, -v25, v58, v26
	v_fma_f32 v25, -v27, v59, v28
	v_div_fmas_f32 v16, v16, v47, v57
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v41, s5, v14, v10, v14
	v_fmac_f32_e32 v53, v63, v53
	v_mul_f32_e32 v62, v39, v52
	v_fma_f32 v26, -v29, v60, v30
	v_div_fmas_f32 v24, v24, v48, v58
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v27, -v31, v61, v32
	v_div_fmas_f32 v25, v25, v49, v59
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v63, v41, v53
	v_fma_f32 v70, -v38, v62, v39
	v_div_fixup_f32 v16, v16, v10, v17
	v_div_fmas_f32 v17, v26, v50, v60
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v12, v24, v10, v12
	v_div_fmas_f32 v24, v27, v51, v61
	v_rcp_f32_e32 v27, v46
	v_fma_f32 v71, -v40, v63, v41
	v_fmac_f32_e32 v62, v70, v52
	v_fma_f32 v26, -v42, v64, v43
	v_div_fixup_f32 v13, v24, v10, v13
	v_fma_f32 v24, -v45, v56, 1.0
	v_fmac_f32_e32 v63, v71, v53
	v_fma_f32 v28, -v38, v62, v39
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v25, v10, v18
	v_fma_f32 v30, -v46, v27, 1.0
	v_fmac_f32_e32 v56, v24, v56
	v_div_fmas_f32 v25, v28, v52, v62
	v_div_scale_f32 v24, s1, v8, v11, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, v30, v27
	v_fmac_f32_e32 v64, v26, v54
	v_div_fixup_f32 v23, v25, v10, v23
	v_fma_f32 v25, -v40, v63, v41
	v_div_fixup_f32 v17, v17, v10, v20
	v_div_scale_f32 v20, s0, v15, v11, v15
	v_mul_f32_e32 v29, v24, v56
	v_fma_f32 v31, -v42, v64, v43
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v28, v20, v55
	v_div_fmas_f32 v25, v25, v53, v63
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v32, null, v11, v11, v9
	v_div_fmas_f32 v31, v31, v54, v64
	v_fma_f32 v26, -v44, v28, v20
	v_div_fixup_f32 v14, v25, v10, v14
	v_div_scale_f32 v30, s2, v7, v11, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v10, v31, v10, v22
	v_div_scale_f32 v22, null, v11, v11, v3
	v_rcp_f32_e32 v38, v32
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v31, null, v11, v11, v5
	v_rcp_f32_e32 v25, v22
	v_fmac_f32_e32 v28, v26, v55
	v_fma_f32 v26, -v45, v29, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v40, v31
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v20, -v44, v28, v20
	v_fmac_f32_e32 v29, v26, v56
	v_mul_f32_e32 v26, v30, v27
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v20, v20, v55, v28
	v_fma_f32 v24, -v45, v29, v24
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v28, -v46, v26, v30
	v_fma_f32 v44, -v31, v40, 1.0
	v_div_fixup_f32 v15, v20, v11, v15
	v_div_fmas_f32 v24, v24, v56, v29
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v26, v28, v27
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s3, v5, v11, v5
	v_div_fixup_f32 v8, v24, v11, v8
	v_fma_f32 v24, -v32, v38, 1.0
	v_fma_f32 v20, -v46, v26, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v47, v44, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v8, v8
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v38, v24, v38
	v_div_scale_f32 v24, null, v11, v11, v4
	v_div_fmas_f32 v20, v20, v27, v26
	v_div_scale_f32 v26, null, v11, v11, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v28, v24
	v_div_scale_f32 v27, vcc_lo, v9, v11, v9
	v_div_fixup_f32 v7, v20, v11, v7
	v_fma_f32 v20, -v22, v25, 1.0
	v_rcp_f32_e32 v29, v26
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v25, v20, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v24, v28, 1.0
	v_div_scale_f32 v20, s0, v3, v11, v3
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, s1, v4, v11, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v43, v20, v25
	v_fma_f32 v42, -v26, v29, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v45, v39, v28
	v_dual_mul_f32 v30, v27, v38 :: v_dual_fmac_f32 v29, v42, v29
	v_div_scale_f32 v42, s2, v6, v11, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v32, v30, v27
	v_fmac_f32_e32 v30, v41, v38
	v_fma_f32 v41, -v22, v43, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v27, -v32, v30, v27
	v_fma_f32 v32, -v24, v45, v39
	v_mul_f32_e32 v46, v42, v29
	v_fmac_f32_e32 v43, v41, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v27, v27, v38, v30
	v_fmac_f32_e32 v45, v32, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v26, v46, v42
	v_fma_f32 v20, -v22, v43, v20
	v_fma_f32 v22, -v31, v47, v44
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v24, -v24, v45, v39
	v_fmac_f32_e32 v46, v41, v29
	s_mov_b32 s0, 0xc1000000
	v_fmac_f32_e32 v47, v22, v40
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v20, v20, v25, v43
	v_fma_f32 v22, -v26, v46, v42
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v25, -v31, v47, v44
	v_div_fmas_f32 v24, v24, v28, v45
	s_mov_b32 vcc_lo, s2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v22, v22, v29, v46
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v27, v11, v9
	v_div_fixup_f32 v3, v20, v11, v3
	v_div_fixup_f32 v6, v22, v11, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v22, v7
	v_and_b32_e32 v7, 15, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v25, v25, v40, v47
	v_div_fixup_f32 v4, v24, v11, v4
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v25, v11, v5
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v16
	v_rndne_f32_e32 v16, v18
	v_rndne_f32_e32 v18, v23
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v20, v8
	v_cvt_i32_f32_e32 v23, v9
	v_cvt_i32_f32_e32 v24, v3
	v_and_b32_e32 v3, 15, v11
	v_and_b32_e32 v11, 15, v15
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v15, 11, v0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v80
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v8, 15, v18
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v18, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v26, v6
	v_cvt_i32_f32_e32 v27, v5
	v_and_b32_e32 v5, 15, v16
	v_and_b32_e32 v6, 15, v17
	v_and_b32_e32 v9, 15, v14
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v16, 0x60, v0
	v_and_or_b32 v17, 0x600, v36, v33
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v14, 15, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v15, 0x3000, v15
	v_lshlrev_b32_e32 v23, 7, v0
	v_and_b32_e32 v18, 0x60, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v25, v4
	v_and_b32_e32 v4, 15, v12
	v_and_b32_e32 v12, 15, v20
	v_and_b32_e32 v13, 15, v22
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v20, 7, v80
	v_xor_b32_e32 v22, v17, v16
	v_add_nc_u32_e32 v28, 0, v15
	v_and_or_b32 v23, 0x3600, v23, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_and_b32_e32 v15, 15, v24
	v_and_b32_e32 v16, 15, v25
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v20, v28, v20, v22
	v_xad_u32 v22, v23, v34, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v10, v10
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v20, v[3:6]
	ds_store_b128 v20, v[11:14] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v22
	ds_load_b128 v[11:14], v22 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v10, 15, v10
	v_and_b32_e32 v17, 15, v26
	v_and_b32_e32 v18, 15, v27
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v20, v[7:10]
	ds_store_b128 v20, v[15:18] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v22
	ds_load_b128 v[15:18], v22 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v20.l, v21.h
	v_mov_b16_e32 v20.h, v1.l
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v11, v11, 4, v3
	v_lshl_or_b32 v12, v12, 4, v4
	v_lshl_or_b32 v3, v13, 4, v5
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v4, s34, v35
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v1, v14, 4, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v3.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v4, s0, v[2:3]
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v5, v15, 4, v7
	v_lshl_or_b32 v7, v17, 4, v9
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v9, v20, v19, vcc_lo
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v16, 4, v8
	v_lshl_or_b32 v8, v18, 4, v10
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 31, s34
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v1.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v9, v9, 0, 16
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v0.h, 8, v8.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v8, v2, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	v_lshlrev_b16 v1.l, 8, v12.l
	v_and_b16 v0.l, 0xff, v11.l
	v_and_b16 v1.h, 0xff, v7.l
	v_lshlrev_b16 v2.l, 8, v6.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v6, v9, s7, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v2.h, 0xff, v5.l
	v_or_b16 v4.l, v0.l, v1.l
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v8, s33, 1
	v_cndmask_b32_e32 v1, v6, v20, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v37
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[20:23], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	buffer_store_b16 v1, v0, s[20:23], 0 offen
.Ltmp55:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp56:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 164
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 164
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13916
; TotalNumSgprs: 54
; NumVgprs: 164
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 164
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     164
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
