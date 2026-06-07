	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk
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
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[22:23], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	v_lshrrev_b32_e32 v8, 3, v0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_and_b32_e32 v2, 15, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v19, 0xe0, v0
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v4, 0x100, v0
	v_and_b32_e32 v8, 24, v8
	v_lshlrev_b32_e32 v11, 5, v2
	v_lshlrev_b32_e32 v21, 10, v0
	v_and_b32_e32 v15, 24, v9
	v_and_b32_e32 v20, 0x60, v9
	v_xor_b32_e32 v14, v9, v8
	v_lshlrev_b32_e32 v8, 4, v19
	v_and_or_b32 v13, 0x218, v9, v11
	v_lshlrev_b32_e32 v3, 3, v0
	v_and_b32_e32 v6, 0x180, v0
	v_lshrrev_b32_e32 v10, 4, v4
	v_or3_b32 v11, v8, v15, v11
	v_lshlrev_b32_e32 v8, 2, v0
	v_bfe_i32 v15, v0, 3, 1
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s12, 63
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s13, s12, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
	v_and_or_b32 v8, 0x31c, v8, v20
	v_and_b32_e32 v15, 0x2040, v15
	s_lshr_b32 s1, s1, 26
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s12, s12, s13
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	v_and_b32_e32 v20, 0x1c00, v21
	v_lshrrev_b32_e32 v4, 1, v4
	v_xor_b32_e32 v8, v8, v15
	v_and_b32_e32 v9, 28, v9
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s26, s12, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s27, s1, 6
	s_cmp_gt_i32 s0, 63
	v_or3_b32 v4, v20, v4, v8
	s_cselect_b32 s28, -1, 0
	s_abs_i32 s29, s24
	v_lshrrev_b32_e32 v6, 5, v6
	v_and_or_b32 v8, 0xf00, v3, v9
	s_cvt_f32_u32 s0, s29
.Ltmp18:
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v17, 4, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v18, 2, v0
	v_and_b32_e32 v5, 16, v0
	v_xor_b32_e32 v6, v8, v6
	v_rcp_iflag_f32_e32 v8, s0
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v7, 7, v0
	v_lshrrev_b32_e32 v12, 1, v0
	v_lshlrev_b32_e32 v0, 5, v0
	v_lshlrev_b32_e32 v9, 2, v5
	v_xor_b32_e32 v16, 8, v13
	v_xor_b32_e32 v25, 16, v13
	v_and_b32_e32 v12, 24, v12
	v_and_b32_e32 v0, 32, v0
	v_readfirstlane_b32 s0, v8
	v_xor_b32_e32 v26, 24, v13
	v_xor_b32_e32 v29, 8, v11
	v_xor_b32_e32 v30, 16, v11
	v_or3_b32 v0, v0, v9, v6
	s_mul_f32 s0, s0, 0x4f7ffffe
	v_xor_b32_e32 v31, 24, v11
	v_xor_b32_e32 v15, 4, v4
	v_xor_b32_e32 v34, 8, v4
	v_xor_b32_e32 v35, 12, v4
	v_xor_b32_e32 v6, 16, v4
	v_xor_b32_e32 v37, 20, v4
	v_xor_b32_e32 v38, 24, v4
	v_xor_b32_e32 v39, 28, v4
	v_xor_b32_e32 v41, 0x1010, v0
	v_xor_b32_e32 v42, 0x2040, v0
	v_xor_b32_e32 v43, 0x3050, v0
	s_cvt_u32_f32 s0, s0
	v_add_nc_u32_e32 v40, 0, v0
	v_mov_b32_e32 v0, 0
	v_xor_b32_e32 v12, v3, v12
	s_sub_i32 s1, 0, s29
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_mad_u64_u32 v[8:9], null, s21, v7, v[1:2]
	s_lshl_b32 s3, s3, 5
	s_mul_i32 s1, s1, s0
	v_lshrrev_b32_e32 v20, 3, v5
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_or_b32_e32 v21, v10, v2
	v_lshl_or_b32 v9, v2, 1, s3
	v_and_or_b32 v10, v3, 24, s3
	v_add_nc_u32_e32 v22, 0, v14
	v_add_nc_u32_e32 v23, 0, v13
	v_add_nc_u32_e32 v24, 0, v16
	v_add_nc_u32_e32 v25, 0, v25
	v_add_nc_u32_e32 v26, 0, v26
	v_add_nc_u32_e32 v27, 0, v12
	v_add_nc_u32_e32 v28, 0, v11
	v_add_nc_u32_e32 v29, 0, v29
	v_add_nc_u32_e32 v30, 0, v30
	v_add_nc_u32_e32 v31, 0, v31
	v_add_nc_u32_e32 v32, 0, v4
	v_add_nc_u32_e32 v33, 0, v15
	v_add_nc_u32_e32 v34, 0, v34
	v_add_nc_u32_e32 v35, 0, v35
	v_add_nc_u32_e32 v36, 0, v6
	v_add_nc_u32_e32 v37, 0, v37
	v_add_nc_u32_e32 v38, 0, v38
	v_add_nc_u32_e32 v39, 0, v39
	v_add_nc_u32_e32 v41, 0, v41
	v_add_nc_u32_e32 v42, 0, v42
	v_add_nc_u32_e32 v43, 0, v43
	s_mul_hi_u32 s1, s0, s1
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s4
	s_and_b32 s13, s5, 0xffff
	s_and_b32 s5, s7, 0xffff
	s_mov_b32 s4, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s17, s11, 0xffff
	s_mov_b32 s16, s10
	s_lshl_b32 s30, s21, 2
	s_lshl_b32 s31, s21, 3
	s_mul_i32 s33, s21, 12
	s_lshl_b32 s34, s21, 4
	s_mul_i32 s35, s21, 20
	s_mul_i32 s36, s21, 24
	s_mul_i32 s37, s21, 28
	s_ashr_i32 s38, s24, 31
	s_add_i32 s39, s0, s1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s40, s21, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s41, s27, 1
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
	s_abs_i32 s0, s2
	s_ashr_i32 s3, s2, 31
	s_mul_hi_u32 s1, s0, s39
	s_xor_b32 s3, s3, s38
	s_mul_i32 s6, s1, s29
	v_mov_b32_e32 v15, v0
	s_sub_i32 s0, s0, s6
	s_add_i32 s6, s1, 1
	s_sub_i32 s7, s0, s29
	s_cmp_ge_u32 s0, s29
	v_mov_b32_e32 v16, v0
	s_cselect_b32 s1, s6, s1
	s_cselect_b32 s0, s7, s0
	s_add_i32 s6, s1, 1
	s_cmp_ge_u32 s0, s29
	v_mov_b32_e32 v13, v0
	s_cselect_b32 s0, s6, s1
	v_mov_b32_e32 v14, v0
	s_xor_b32 s0, s0, s3
	v_mov_b32_e32 v44, v0
	s_sub_i32 s3, s0, s3
	v_mov_b32_e32 v45, v0
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s0, s20, s3
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s10, s3, s24
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s6, s0, 1
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s10, s2, s10
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s1, s6
	s_abs_i32 s11, s10
	s_cvt_f32_u32 s0, s1
	s_sub_i32 s7, 0, s1
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v46, v0
	v_rcp_iflag_f32_e32 v1, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s0, v1
	s_mul_f32 s0, s0, 0x4f7ffffe
	s_cvt_u32_f32 s0, s0
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s0
	s_mul_hi_u32 s7, s0, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s0, s0, s7
	s_mul_hi_u32 s7, s11, s0
	s_xor_b32 s0, s10, s6
	s_mul_i32 s18, s7, s1
	s_ashr_i32 s0, s0, 31
	s_sub_i32 s11, s11, s18
	s_add_i32 s18, s7, 1
	s_sub_i32 s19, s11, s1
	s_cmp_ge_u32 s11, s1
	s_cselect_b32 s7, s18, s7
	s_cselect_b32 s11, s19, s11
	s_add_i32 s18, s7, 1
	s_cmp_ge_u32 s11, s1
	s_cselect_b32 s1, s18, s7
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_and_not1_b32 vcc_lo, exec_lo, s28
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_xor_b32 s1, s1, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s43, s1, s0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s6, s43, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s10, s6
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s6, s6, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 18 is_stmt 1              ; generate_amdgcn.py:221:18
	s_lshl_b32 s42, s6, 5
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_5
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v4, s42, v17
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_lshl_or_b32 v1, s1, 8, v19
	v_lshl_or_b32 v2, s1, 7, v18
	s_lshl_b32 s3, s0, 8
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[11:12], null, s26, v4, v[9:10]
	s_lshl_b32 s0, s0, 7
	v_dual_mov_b32 v46, 0 :: v_dual_add_nc_u32 v3, s42, v21
	v_subrev_nc_u32_e32 v48, s3, v1
	v_subrev_nc_u32_e32 v1, s0, v2
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v49, s41, v3
	v_mov_b32_e32 v14, 0
	v_mad_u64_u32 v[12:13], null, s26, v1, v[10:11]
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v15, 0
	s_mov_b32 s44, 0
	s_mov_b32 s45, s27
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 258 26 is_stmt 1              ; generate_amdgcn.py:258:26
	v_add_nc_u32_e32 v1, s44, v9
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v2, s44, v10
	.loc	1 259 55 is_stmt 0              ; generate_amdgcn.py:259:55
	v_cmp_gt_i32_e32 vcc_lo, 32, v9
	v_cmp_gt_i32_e64 s0, 32, v10
	.loc	1 265 30 is_stmt 1              ; generate_amdgcn.py:265:30
	v_add_nc_u32_e32 v3, s44, v11
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s1, s26, v1
	v_cmp_gt_i32_e64 s3, s26, v2
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_add_nc_u32_e32 v4, s44, v12
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s10, s14
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s3, s0
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s11, s15
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_cndmask_b32_e32 v2, 0x80000000, v4, vcc_lo
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v4, v20, v48
	s_mov_b32 s18, s14
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_u16 v3, v1, s[12:15], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	buffer_load_b64 v[1:2], v2, s[4:7], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s19, s15
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v5, v0 :: v_dual_add_nc_u32 v48, s40, v48
	v_mov_b32_e32 v6, v0
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s45, s45, -1
	s_add_i32 s44, s44, 32
	s_cmp_lg_u32 s45, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(1)
	ds_store_b16 v22, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[58:59], v23
	ds_load_b64 v[60:61], v24
	ds_load_b64 v[62:63], v25
	ds_load_b64 v[64:65], v26
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v27, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v68, v49, s[8:11], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v69, v4, s[16:19], 0 offen
	buffer_load_u16 v70, v4, s[16:19], 0 offen offset:4
	buffer_load_u16 v71, v4, s[16:19], 0 offen offset:8
	buffer_load_u16 v72, v4, s[16:19], 0 offen offset:12
	buffer_load_u16 v73, v4, s[16:19], 0 offen offset:16
	buffer_load_u16 v74, v4, s[16:19], 0 offen offset:20
	buffer_load_u16 v75, v4, s[16:19], 0 offen offset:24
	buffer_load_u16 v76, v4, s[16:19], 0 offen offset:28
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_dual_mov_b32 v4, v0 :: v_dual_add_nc_u32 v49, 2, v49
	v_dual_mov_b32 v57, v7 :: v_dual_mov_b32 v56, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v55, v5 :: v_dual_mov_b32 v54, v4
	v_dual_mov_b32 v53, v3 :: v_dual_mov_b32 v52, v2
	v_dual_mov_b32 v51, v1 :: v_dual_mov_b32 v50, v0
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_b64 v[1:2], v28
	ds_load_b64 v[3:4], v29
	ds_load_b64 v[5:6], v30
	ds_load_b64 v[66:67], v31
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[1:2], v[58:59], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[3:4], v[60:61], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[5:6], v[62:63], v[50:57] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[50:57], v[66:67], v[64:65], v[50:57] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v2, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v4, v53
	v_cvt_f32_i32_e32 v6, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v50
	v_cvt_f32_i32_e32 v3, v52
	v_cvt_f32_i32_e32 v5, v54
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v50, v57
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v52, 16, v69
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v55, 16, v72
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	v_lshlrev_b32_e32 v51, 16, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v4, v4, v51
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v44, v4, v55 :: v_dual_lshlrev_b32 v53, 16, v70
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v2, v2, v51
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v54, 16, v71
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v3, v3, v51 :: v_dual_lshlrev_b32 v56, 16, v73
	v_mul_f32_e32 v1, v1, v51
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v6, v6, v51 :: v_dual_lshlrev_b32 v57, 16, v74
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v50, v50, v51 :: v_dual_lshlrev_b32 v59, 16, v76
	v_dual_mul_f32 v7, v7, v51 :: v_dual_fmac_f32 v46, v1, v52
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v47, v2, v53 :: v_dual_lshlrev_b32 v58, 16, v75
	v_fmac_f32_e32 v45, v3, v54
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v5, v5, v51
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v13, v6, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v15, v50, v59 :: v_dual_fmac_f32 v16, v7, v58
	v_fmac_f32_e32 v14, v5, v56
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_4
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s0, s43, 7
	.loc	1 279 27                        ; generate_amdgcn.py:279:27
	s_mul_i32 s42, s42, s21
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v3, s42, s0, v8
	s_barrier
	ds_store_b32 v32, v46
	ds_store_b32 v33, v47
	ds_store_b32 v34, v45
	ds_store_b32 v35, v44
	ds_store_b32 v36, v14
	ds_store_b32 v37, v13
	ds_store_b32 v38, v16
	ds_store_b32 v39, v15
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v4, 31, v3
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_lshlrev_b64 v[1:2], 2, v[3:4]
	v_add_co_u32 v13, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s23, v2, vcc_lo
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	ds_load_2addr_b32 v[11:12], v40 offset1:32
	ds_load_2addr_b32 v[6:7], v41 offset1:32
	ds_load_2addr_b32 v[4:5], v42 offset1:32
	ds_load_2addr_b32 v[1:2], v43 offset1:32
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	global_load_b32 v16, v[13:14], off
.LBB0_6:                                ; %atomicrmw.start38
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v15, v16, v11
	global_atomic_cmpswap_b32 v15, v[13:14], v[15:16], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v15, v16
	v_mov_b32_e32 v16, v15
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end37
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v13, s30, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v14, 31, v13
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v13, vcc_lo, s22, v13
	v_add_co_ci_u32_e64 v14, null, s23, v14, vcc_lo
	global_load_b32 v16, v[13:14], off
.LBB0_8:                                ; %atomicrmw.start32
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v15, v16, v6
	global_atomic_cmpswap_b32 v11, v[13:14], v[15:16], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v11, v16
	v_mov_b32_e32 v16, v11
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end31
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v13, s31, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v14, 31, v13
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v13, vcc_lo, s22, v13
	v_add_co_ci_u32_e64 v14, null, s23, v14, vcc_lo
	global_load_b32 v16, v[13:14], off
.LBB0_10:                               ; %atomicrmw.start26
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v15, v16, v4
	global_atomic_cmpswap_b32 v6, v[13:14], v[15:16], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v6, v16
	v_mov_b32_e32 v16, v6
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end25
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v13, s33, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v14, 31, v13
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v13, vcc_lo, s22, v13
	v_add_co_ci_u32_e64 v14, null, s23, v14, vcc_lo
	global_load_b32 v16, v[13:14], off
.LBB0_12:                               ; %atomicrmw.start20
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v15, v16, v1
	global_atomic_cmpswap_b32 v4, v[13:14], v[15:16], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v16
	v_mov_b32_e32 v16, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end19
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v13, s34, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v14, 31, v13
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v13, vcc_lo, s22, v13
	v_add_co_ci_u32_e64 v14, null, s23, v14, vcc_lo
	global_load_b32 v16, v[13:14], off
.LBB0_14:                               ; %atomicrmw.start14
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v15, v16, v12
	global_atomic_cmpswap_b32 v1, v[13:14], v[15:16], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v16
	v_mov_b32_e32 v16, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end13
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v11, s35, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v12, 31, v11
	v_lshlrev_b64 v[11:12], 2, v[11:12]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v11, vcc_lo, s22, v11
	v_add_co_ci_u32_e64 v12, null, s23, v12, vcc_lo
	global_load_b32 v14, v[11:12], off
.LBB0_16:                               ; %atomicrmw.start8
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v13, v14, v7
	global_atomic_cmpswap_b32 v1, v[11:12], v[13:14], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v14
	v_mov_b32_e32 v14, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end7
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v6, s36, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 279 13                        ; generate_amdgcn.py:279:13
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v6, vcc_lo, s22, v6
	v_add_co_ci_u32_e64 v7, null, s23, v7, vcc_lo
	global_load_b32 v12, v[6:7], off
.LBB0_18:                               ; %atomicrmw.start2
                                        ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v11, v12, v5
	global_atomic_cmpswap_b32 v1, v[6:7], v[11:12], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v1, v12
	v_mov_b32_e32 v12, v1
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end1
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	v_add_nc_u32_e32 v3, s37, v3
	s_mov_b32 s0, 0
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
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13                          ; generate_amdgcn.py:0:13
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lt_i32 s2, s25
	s_cbranch_scc1 .LBB0_2
.LBB0_22:                               ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk
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
		.amdhsa_next_free_vgpr 77
		.amdhsa_next_free_sgpr 46
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
		.amdhsa_inst_pref_size 21
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.num_vgpr, 77
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2668
; TotalNumSgprs: 48
; NumVgprs: 77
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 77
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     77
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
