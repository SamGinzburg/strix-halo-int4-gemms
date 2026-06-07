	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[20:21], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s20, 31
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s21, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 27
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s20, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s24, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s25, s24, s20
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s25
	s_cbranch_scc1 .LBB0_22
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[22:23], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_and_b32_e32 v17, 0xe0, v0
	v_lshlrev_b32_e32 v15, 1, v0
	v_lshlrev_b32_e32 v9, 2, v0
	v_bfe_i32 v19, v0, 3, 1
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v2, 15, v0
	v_lshrrev_b32_e32 v13, 2, v17
	v_and_b32_e32 v20, 0x60, v15
	v_and_b32_e32 v3, 0x100, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v4, 7, v0
	v_lshrrev_b32_e32 v10, 1, v17
	v_and_b32_e32 v12, 0x438, v9
	v_xor_b32_e32 v13, v9, v13
	v_and_b32_e32 v21, 0x2040, v19
	v_and_or_b32 v9, 0x31c, v9, v20
	.loc	1 258 43                        ; generate_amdgcn.py:258:43
	s_lshl_b32 s26, s3, 6
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v6, 0x180, v0
	v_lshrrev_b32_e32 v11, 4, v3
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s12, 0xff
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s3, s12, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s12, s12, s3
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 24
	v_add3_u32 v19, 0, v2, v10
	s_add_i32 s1, s0, s1
	v_lshlrev_b32_e32 v10, 10, v4
	v_lshrrev_b32_e32 v3, 1, v3
	v_xor_b32_e32 v9, v9, v21
	v_lshlrev_b32_e32 v20, 3, v0
	v_and_b32_e32 v15, 28, v15
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s27, s12, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s28, s1, 8
	s_cmpk_gt_i32 s0, 0xff
	v_or3_b32 v3, v10, v3, v9
	s_cselect_b32 s29, -1, 0
	s_abs_i32 s30, s24
	v_lshrrev_b32_e32 v6, 5, v6
	v_and_or_b32 v9, 0xf00, v20, v15
	s_cvt_f32_u32 s0, s30
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v16, 4, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v5, 16, v0
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshrrev_b32_e32 v18, 3, v0
	v_xor_b32_e32 v6, v9, v6
	v_rcp_iflag_f32_e32 v9, s0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v7, 7, v0
	v_lshlrev_b32_e32 v33, 4, v0
	v_lshlrev_b32_e32 v0, 5, v0
	v_lshlrev_b32_e32 v10, 2, v5
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v8, 2, v2
	v_lshl_or_b32 v12, v2, 6, v12
	v_xor_b32_e32 v15, 4, v3
	v_and_b32_e32 v0, 32, v0
	v_readfirstlane_b32 s0, v9
	v_xor_b32_e32 v36, 8, v3
	v_xor_b32_e32 v14, 8, v12
	v_xor_b32_e32 v27, 16, v12
	v_or3_b32 v0, v0, v10, v6
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[9:10], null, s21, v7, v[1:2]
	v_or_b32_e32 v1, s26, v18
	s_mul_f32 s0, s0, 0x4f7ffffe
	v_xor_b32_e32 v28, 24, v12
	v_xor_b32_e32 v29, 32, v12
	v_xor_b32_e32 v30, 40, v12
	v_mul_lo_u32 v7, s21, v1
	v_xor_b32_e32 v31, 48, v12
	v_xor_b32_e32 v32, 56, v12
	v_xor_b32_e32 v37, 12, v3
	v_xor_b32_e32 v38, 16, v3
	v_xor_b32_e32 v6, 20, v3
	v_xor_b32_e32 v40, 24, v3
	v_xor_b32_e32 v41, 28, v3
	v_xor_b32_e32 v43, 0x1010, v0
	v_xor_b32_e32 v44, 0x2040, v0
	v_xor_b32_e32 v45, 0x3050, v0
	v_or_b32_e32 v21, s26, v8
	s_cvt_u32_f32 s3, s0
	s_sub_i32 s1, 0, s30
	s_mov_b32 s12, s4
	s_mov_b32 s4, s6
	s_mul_i32 s6, s1, s3
	v_sub_nc_u32_e32 v20, s27, v8
	v_cmp_gt_i32_e64 s0, 0x80, v21
	v_cmp_gt_i32_e64 s1, 0x80, v1
	v_lshrrev_b32_e32 v21, 3, v5
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_or_b32_e32 v22, v11, v2
	v_lshl_add_u32 v23, v4, 4, v7
	v_add_nc_u32_e32 v24, 0, v13
	v_add_nc_u32_e32 v25, 0, v12
	v_add_nc_u32_e32 v26, 0, v14
	v_add_nc_u32_e32 v27, 0, v27
	v_add_nc_u32_e32 v28, 0, v28
	v_add_nc_u32_e32 v29, 0, v29
	v_add_nc_u32_e32 v30, 0, v30
	v_add_nc_u32_e32 v31, 0, v31
	v_add_nc_u32_e32 v32, 0, v32
	v_add_nc_u32_e32 v33, 0, v33
	v_add_nc_u32_e32 v34, 0, v3
	v_add_nc_u32_e32 v35, 0, v15
	v_add_nc_u32_e32 v36, 0, v36
	v_add_nc_u32_e32 v37, 0, v37
	v_add_nc_u32_e32 v38, 0, v38
	v_add_nc_u32_e32 v39, 0, v6
	v_add_nc_u32_e32 v40, 0, v40
	v_add_nc_u32_e32 v41, 0, v41
	v_add_nc_u32_e32 v42, 0, v0
	v_add_nc_u32_e32 v43, 0, v43
	v_add_nc_u32_e32 v44, 0, v44
	v_dual_mov_b32 v0, 0 :: v_dual_add_nc_u32 v45, 0, v45
	s_mul_hi_u32 s6, s3, s6
	s_mov_b32 s15, 0x31027000
	s_and_b32 s13, s5, 0xffff
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s5, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	s_lshl_b32 s31, s21, 2
	s_lshl_b32 s33, s21, 3
	s_mul_i32 s34, s21, 12
	s_lshl_b32 s35, s21, 4
	s_mul_i32 s36, s21, 20
	s_mul_i32 s37, s21, 24
	s_mul_i32 s38, s21, 28
	s_ashr_i32 s39, s24, 31
	s_add_i32 s40, s3, s6
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s41, s21, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s42, s28, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s43, s21, 7
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_6 Depth 2
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_10 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
                                        ;     Child Loop BB0_14 Depth 2
                                        ;     Child Loop BB0_16 Depth 2
                                        ;     Child Loop BB0_18 Depth 2
                                        ;     Child Loop BB0_20 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s3, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s6, s3, s40
	s_xor_b32 s7, s7, s39
	s_mul_i32 s10, s6, s30
	v_mov_b32_e32 v11, v0
	s_sub_i32 s3, s3, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s3, s30
	s_cmp_ge_u32 s3, s30
	v_mov_b32_e32 v14, v0
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s3, s11, s3
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s3, s30
	v_mov_b32_e32 v12, v0
	s_cselect_b32 s3, s10, s6
	v_mov_b32_e32 v13, v0
	s_xor_b32 s3, s3, s7
	v_mov_b32_e32 v15, v0
	s_sub_i32 s7, s3, s7
	v_mov_b32_e32 v46, v0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s3, s20, s7
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s18, s7, s24
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s10, s3, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s18, s2, s18
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s6, s10
	s_abs_i32 s19, s18
	s_cvt_f32_u32 s3, s6
	s_sub_i32 s11, 0, s6
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v47, v0
	v_rcp_iflag_f32_e32 v1, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s3, v1
	s_mul_f32 s3, s3, 0x4f7ffffe
	s_cvt_u32_f32 s3, s3
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s3
	s_mul_hi_u32 s11, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s11
	s_mul_hi_u32 s11, s19, s3
	s_xor_b32 s3, s18, s10
	s_mul_i32 s44, s11, s6
	s_ashr_i32 s3, s3, 31
	s_sub_i32 s19, s19, s44
	s_add_i32 s44, s11, 1
	s_sub_i32 s45, s19, s6
	s_cmp_ge_u32 s19, s6
	s_cselect_b32 s11, s44, s11
	s_cselect_b32 s19, s45, s19
	s_add_i32 s44, s11, 1
	s_cmp_ge_u32 s19, s6
	s_cselect_b32 s6, s44, s11
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_not1_b32 vcc_lo, exec_lo, s29
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s6, s6, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s45, s6, s3
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s10, s45, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s10, s18, s10
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s44, s10, 5
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v2, s44, v22
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v3, s44, v16
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_or_b32 v1, s6, 8, v17
	v_lshl_add_u32 v4, s6, 7, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v50, s42, v2
	v_mad_u64_u32 v[10:11], null, s27, v3, v[8:9]
	s_lshl_b32 s7, s3, 8
	s_lshl_b32 s3, s3, 7
	v_subrev_nc_u32_e32 v49, s7, v1
	v_subrev_nc_u32_e32 v51, s3, v4
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	s_mov_b32 s46, s26
	s_mov_b32 s47, s28
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 259 31 is_stmt 1              ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v1, s46, v18
	v_cmp_lt_i32_e32 vcc_lo, s46, v20
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v7, v0
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s3, s27, v1
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v1, s46, v10
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 s3, s3, s1
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_mov_b32 v6, v0
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s47, s47, -1
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_b32 v5, v1, s[12:15], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e64 v1, 0x80000000, v51, s3
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v51, s43, v51
	s_addk_i32 s46, 0x80
	s_cmp_lg_u32 s47, 0
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b128 v[1:4], v1, s[4:7], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v24, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[60:61], v25
	ds_load_b64 v[62:63], v26
	ds_load_b64 v[64:65], v27
	ds_load_b64 v[66:67], v28
	ds_load_b64 v[68:69], v29
	ds_load_b64 v[70:71], v30
	ds_load_b64 v[72:73], v31
	ds_load_b64 v[74:75], v32
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v33, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v1, v19 offset:640
	ds_load_u8 v2, v19 offset:512
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v19 offset:896
	ds_load_u8 v3, v19 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v2, 16, v1
	ds_load_u8 v1, v19 offset:128
	ds_load_u8 v2, v19
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v19 offset:384
	ds_load_u8 v3, v19 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_mov_b32_e32 v3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v76, v2, 16, v1
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_dual_mov_b32 v59, v7 :: v_dual_mov_b32 v58, v6
	v_dual_mov_b32 v57, v5 :: v_dual_mov_b32 v56, v4
	v_dual_mov_b32 v55, v3 :: v_dual_mov_b32 v54, v2
	v_dual_mov_b32 v53, v1 :: v_dual_mov_b32 v52, v0
	ds_load_u8 v1, v19 offset:1664
	ds_load_u8 v2, v19 offset:1536
	v_wmma_i32_16x16x16_iu4 v[52:59], v[76:77], v[60:61], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v19 offset:1920
	ds_load_u8 v3, v19 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v19 offset:1152
	ds_load_u8 v3, v19 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v19 offset:1408
	ds_load_u8 v4, v19 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[62:63], v[52:59] neg_lo:[1,1,0]
	ds_load_u8 v1, v19 offset:2688
	ds_load_u8 v2, v19 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v19 offset:2944
	ds_load_u8 v3, v19 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v19 offset:2176
	ds_load_u8 v3, v19 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v19 offset:2432
	ds_load_u8 v4, v19 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[64:65], v[52:59] neg_lo:[1,1,0]
	ds_load_u8 v1, v19 offset:3712
	ds_load_u8 v2, v19 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v19 offset:3968
	ds_load_u8 v3, v19 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v19 offset:3200
	ds_load_u8 v3, v19 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v19 offset:3456
	ds_load_u8 v4, v19 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[66:67], v[52:59] neg_lo:[1,1,0]
	ds_load_u8 v1, v19 offset:4736
	ds_load_u8 v2, v19 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v19 offset:4992
	ds_load_u8 v3, v19 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v19 offset:4224
	ds_load_u8 v3, v19 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v19 offset:4480
	ds_load_u8 v4, v19 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[68:69], v[52:59] neg_lo:[1,1,0]
	ds_load_u8 v1, v19 offset:5760
	ds_load_u8 v2, v19 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v19 offset:6016
	ds_load_u8 v3, v19 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v19 offset:5248
	ds_load_u8 v3, v19 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v19 offset:5504
	ds_load_u8 v4, v19 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[70:71], v[52:59] neg_lo:[1,1,0]
	ds_load_u8 v1, v19 offset:6784
	ds_load_u8 v2, v19 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v19 offset:7040
	ds_load_u8 v3, v19 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v19 offset:6272
	ds_load_u8 v3, v19 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v19 offset:6528
	ds_load_u8 v4, v19 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[72:73], v[52:59] neg_lo:[1,1,0]
	ds_load_u8 v1, v19 offset:7808
	ds_load_u8 v2, v19 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v19 offset:8064
	ds_load_u8 v3, v19 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v19 offset:7296
	ds_load_u8 v3, v19 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v19 offset:7552
	ds_load_u8 v4, v19 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[74:75], v[52:59] neg_lo:[1,1,0]
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v1, v50, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v2, v21, v49
	s_clause 0x7
	buffer_load_u16 v3, v2, s[16:19], 0 offen
	buffer_load_u16 v4, v2, s[16:19], 0 offen offset:4
	buffer_load_u16 v5, v2, s[16:19], 0 offen offset:8
	buffer_load_u16 v6, v2, s[16:19], 0 offen offset:12
	buffer_load_u16 v7, v2, s[16:19], 0 offen offset:16
	buffer_load_u16 v60, v2, s[16:19], 0 offen offset:20
	buffer_load_u16 v61, v2, s[16:19], 0 offen offset:24
	buffer_load_u16 v2, v2, s[16:19], 0 offen offset:28
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v49, s41, v49
	v_add_nc_u32_e32 v50, 2, v50
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v6, 16, v6
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v60, 16, v60
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v61, 16, v61
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v53, v53, v1 :: v_dual_lshlrev_b32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v48, v53, v4 :: v_dual_lshlrev_b32 v3, 16, v3
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v52, v52, v1 :: v_dual_lshlrev_b32 v7, 16, v7
	v_mul_f32_e32 v54, v54, v1
	v_mul_f32_e32 v55, v55, v1
	v_mul_f32_e32 v56, v56, v1
	v_mul_f32_e32 v57, v57, v1
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v58, v58, v1 :: v_dual_fmac_f32 v47, v52, v3
	v_mul_f32_e32 v1, v59, v1
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v15, v55, v6
	v_dual_fmac_f32 v13, v56, v7 :: v_dual_fmac_f32 v12, v57, v60
	v_fmac_f32_e32 v46, v54, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v14, v58, v61 :: v_dual_fmac_f32 v11, v1, v2
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_4
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s3, s45, 7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s44, s44, s21
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v3, s44, s3, v9
	s_barrier
	ds_store_b32 v34, v47
	ds_store_b32 v35, v48
	ds_store_b32 v36, v46
	ds_store_b32 v37, v15
	ds_store_b32 v38, v13
	ds_store_b32 v39, v12
	ds_store_b32 v40, v14
	ds_store_b32 v41, v11
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v4, 31, v3
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_lshlrev_b64 v[1:2], 2, v[3:4]
	v_add_co_u32 v12, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s23, v2, vcc_lo
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	ds_load_2addr_b32 v[10:11], v42 offset1:32
	ds_load_2addr_b32 v[6:7], v43 offset1:32
	ds_load_2addr_b32 v[4:5], v44 offset1:32
	ds_load_2addr_b32 v[1:2], v45 offset1:32
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	global_load_b32 v15, v[12:13], off
.LBB0_6:                                ; %atomicrmw.start38
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v14, v15, v10
	global_atomic_cmpswap_b32 v14, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v14, v15
	v_mov_b32_e32 v15, v14
	s_or_b32 s3, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end37
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	v_add_nc_u32_e32 v12, s31, v3
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v13, 31, v12
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v12, vcc_lo, s22, v12
	v_add_co_ci_u32_e64 v13, null, s23, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_8:                                ; %atomicrmw.start32
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v14, v15, v6
	global_atomic_cmpswap_b32 v10, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v10, v15
	v_mov_b32_e32 v15, v10
	s_or_b32 s3, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end31
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	v_add_nc_u32_e32 v12, s33, v3
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v13, 31, v12
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v12, vcc_lo, s22, v12
	v_add_co_ci_u32_e64 v13, null, s23, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_10:                               ; %atomicrmw.start26
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v14, v15, v4
	global_atomic_cmpswap_b32 v6, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v6, v15
	v_mov_b32_e32 v15, v6
	s_or_b32 s3, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end25
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	v_add_nc_u32_e32 v12, s34, v3
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v13, 31, v12
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v12, vcc_lo, s22, v12
	v_add_co_ci_u32_e64 v13, null, s23, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_12:                               ; %atomicrmw.start20
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v14, v15, v1
	global_atomic_cmpswap_b32 v4, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v15
	v_mov_b32_e32 v15, v4
	s_or_b32 s3, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end19
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	v_add_nc_u32_e32 v12, s35, v3
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v13, 31, v12
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v12, vcc_lo, s22, v12
	v_add_co_ci_u32_e64 v13, null, s23, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_14:                               ; %atomicrmw.start14
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v15, v11
	global_atomic_cmpswap_b32 v1, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v15
	v_mov_b32_e32 v15, v1
	s_or_b32 s3, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	v_add_nc_u32_e32 v10, s36, v3
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v10, vcc_lo, s22, v10
	v_add_co_ci_u32_e64 v11, null, s23, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_16:                               ; %atomicrmw.start8
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v7
	global_atomic_cmpswap_b32 v1, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v13
	v_mov_b32_e32 v13, v1
	s_or_b32 s3, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	v_add_nc_u32_e32 v6, s37, v3
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v6, vcc_lo, s22, v6
	v_add_co_ci_u32_e64 v7, null, s23, v7, vcc_lo
	global_load_b32 v11, v[6:7], off
.LBB0_18:                               ; %atomicrmw.start2
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v5
	global_atomic_cmpswap_b32 v1, v[6:7], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v11
	v_mov_b32_e32 v11, v1
	s_or_b32 s3, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	v_add_nc_u32_e32 v3, s38, v3
	s_mov_b32 s3, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v3, vcc_lo, s22, v3
	v_add_co_ci_u32_e64 v4, null, s23, v4, vcc_lo
	global_load_b32 v6, v[3:4], off
.LBB0_20:                               ; %atomicrmw.start
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v5, v6, v2
	global_atomic_cmpswap_b32 v1, v[3:4], v[5:6], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v6
	v_mov_b32_e32 v6, v1
	s_or_b32 s3, vcc_lo, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s3
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s25
	s_cbranch_scc1 .LBB0_2
.LBB0_22:                               ; %._crit_edge9
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
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
		.amdhsa_next_free_vgpr 78
		.amdhsa_next_free_sgpr 48
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
		.amdhsa_inst_pref_size 31
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_vgpr, 78
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3884
; TotalNumSgprs: 50
; NumVgprs: 78
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 78
; Occupancy: 16
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	205                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	206                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	246                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp0-.Lfunc_begin0
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
.Ldebug_ranges2:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     78
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
