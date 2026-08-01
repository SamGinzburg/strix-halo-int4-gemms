	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 251 0                         ; generate_amdgcn.py:251:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:260:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s28, 31
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s29, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_lshr_b32 s6, s6, 27
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_lshr_b32 s7, s7, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_add_i32 s4, s4, s6
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s5, s7
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s28, s4, 5
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s30, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 262 17 is_stmt 1              ; generate_amdgcn.py:262:17
	s_mul_i32 s31, s30, s28
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cmp_ge_i32 s2, s31
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s14, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	v_lshrrev_b32_e32 v8, 3, v0
	.loc	1 276 36 is_stmt 1              ; generate_amdgcn.py:276:36
	v_and_b32_e32 v2, 15, v0
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v16, 0xe0, v0
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_and_b32_e32 v4, 0x100, v0
	v_and_b32_e32 v8, 24, v8
	v_lshlrev_b32_e32 v11, 5, v2
	v_lshlrev_b32_e32 v20, 10, v0
	v_and_b32_e32 v17, 24, v9
	v_and_b32_e32 v18, 0x60, v9
	v_xor_b32_e32 v19, v9, v8
	v_lshlrev_b32_e32 v8, 4, v16
	v_and_or_b32 v13, 0x218, v9, v11
	v_lshlrev_b32_e32 v3, 3, v0
	v_and_b32_e32 v6, 0x180, v0
	v_lshrrev_b32_e32 v10, 4, v4
	v_or3_b32 v11, v8, v17, v11
	v_lshlrev_b32_e32 v8, 2, v0
	v_bfe_i32 v17, v0, 3, 1
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:301:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s14, 63
.Ltmp12:
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_lshr_b32 s15, s14, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_ashr_i32 s1, s0, 31
	v_and_or_b32 v8, 0x31c, v8, v18
	v_and_b32_e32 v17, 0x2040, v17
	s_lshr_b32 s1, s1, 26
.Ltmp14:
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_add_i32 s14, s14, s15
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_add_i32 s1, s0, s1
	v_and_b32_e32 v18, 0x1c00, v20
	v_lshrrev_b32_e32 v4, 1, v4
	v_xor_b32_e32 v8, v8, v17
	v_and_b32_e32 v9, 28, v9
.Ltmp16:
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_ashr_i32 s33, s14, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_ashr_i32 s34, s1, 6
	s_cmp_gt_i32 s0, 63
	v_or3_b32 v4, v18, v4, v8
	s_cselect_b32 s0, -1, 0
	s_and_b32 s17, s5, 0xffff
	s_abs_i32 s5, s30
	v_lshrrev_b32_e32 v6, 5, v6
	v_and_or_b32 v8, 0xf00, v3, v9
	s_cvt_f32_u32 s1, s5
.Ltmp18:
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v14, 4, v0
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshrrev_b32_e32 v15, 2, v0
	v_and_b32_e32 v5, 16, v0
	v_xor_b32_e32 v6, v8, v6
	v_rcp_iflag_f32_e32 v8, s1
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v7, 7, v0
	v_lshrrev_b32_e32 v12, 1, v0
	v_lshlrev_b32_e32 v0, 5, v0
	v_lshlrev_b32_e32 v9, 2, v5
	s_mov_b32 s16, s4
	s_sub_i32 s4, 0, s5
	v_and_b32_e32 v12, 24, v12
	v_and_b32_e32 v0, 32, v0
	v_readfirstlane_b32 s1, v8
	v_xor_b32_e32 v21, 8, v13
	v_xor_b32_e32 v22, 16, v13
	v_xor_b32_e32 v23, 24, v13
	v_or3_b32 v0, v0, v9, v6
	s_mul_f32 s1, s1, 0x4f7ffffe
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_mad_u64_u32 v[8:9], null, s29, v7, v[1:2]
	v_cndmask_b32_e64 v1, 0, 1, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cvt_u32_f32 s1, s1
	s_lshl_b32 s0, s3, 5
	v_xor_b32_e32 v26, 8, v11
	v_xor_b32_e32 v27, 16, v11
	v_xor_b32_e32 v28, 24, v11
	v_xor_b32_e32 v30, 4, v4
	v_xor_b32_e32 v31, 8, v4
	v_xor_b32_e32 v32, 12, v4
	v_xor_b32_e32 v6, 16, v4
	v_xor_b32_e32 v34, 20, v4
	v_xor_b32_e32 v35, 24, v4
	v_xor_b32_e32 v36, 28, v4
	v_xor_b32_e32 v38, 0x1010, v0
	v_xor_b32_e32 v39, 0x2040, v0
	v_xor_b32_e32 v40, 0x3050, v0
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_or_b32_e32 v18, v10, v2
	v_lshl_or_b32 v9, v2, 1, s0
	v_add_nc_u32_e32 v37, 0, v0
	v_mov_b32_e32 v0, 0
	v_xor_b32_e32 v12, v3, v12
	v_and_or_b32 v10, v3, 24, s0
	s_mul_i32 s4, s4, s1
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_lshrrev_b32_e32 v17, 3, v5
	s_mul_hi_u32 s4, s1, s4
	v_cmp_ne_u32_e64 s0, 1, v1
	s_add_i32 s41, s1, s4
	v_add_nc_u32_e32 v19, 0, v19
	v_add_nc_u32_e32 v20, 0, v13
	v_add_nc_u32_e32 v21, 0, v21
	v_add_nc_u32_e32 v22, 0, v22
	v_add_nc_u32_e32 v23, 0, v23
	v_add_nc_u32_e32 v24, 0, v12
	v_add_nc_u32_e32 v25, 0, v11
	v_add_nc_u32_e32 v26, 0, v26
	v_add_nc_u32_e32 v27, 0, v27
	v_add_nc_u32_e32 v28, 0, v28
	v_add_nc_u32_e32 v29, 0, v4
	v_add_nc_u32_e32 v30, 0, v30
	v_add_nc_u32_e32 v31, 0, v31
	v_add_nc_u32_e32 v32, 0, v32
	v_add_nc_u32_e32 v33, 0, v6
	v_add_nc_u32_e32 v34, 0, v34
	v_add_nc_u32_e32 v35, 0, v35
	v_add_nc_u32_e32 v36, 0, v36
	v_add_nc_u32_e32 v38, 0, v38
	v_add_nc_u32_e32 v39, 0, v39
	v_add_nc_u32_e32 v40, 0, v40
	v_cmp_gt_i32_e64 s1, 32, v9
	v_cmp_gt_i32_e64 s3, 32, v10
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s21, s7, 0xffff
	s_mov_b32 s20, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_lshl_b32 s6, s29, 2
	s_lshl_b32 s7, s29, 3
	s_mul_i32 s35, s29, 12
	s_lshl_b32 s36, s29, 4
	s_mul_i32 s37, s29, 20
	s_mul_i32 s38, s29, 24
	s_mul_i32 s39, s29, 28
	s_and_b32 s13, s13, 0xffff
	s_ashr_i32 s40, s30, 31
	s_lshl_b32 s42, s29, 1
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_lshl_b32 s43, s34, 1
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v29, v44
	ds_store_b32 v30, v47
	ds_store_b32 v31, v46
	ds_store_b32 v32, v45
	ds_store_b32 v33, v43
	ds_store_b32 v34, v42
	ds_store_b32 v35, v41
	ds_store_b32 v36, v13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[1:2], v37 offset1:32
	ds_load_2addr_b32 v[3:4], v38 offset1:32
	ds_load_2addr_b32 v[5:6], v39 offset1:32
	ds_load_2addr_b32 v[11:12], v40 offset1:32
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	s_lshl_b32 s4, s44, 7
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_mul_i32 s45, s45, s29
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	v_add3_u32 v7, s45, s4, v8
	s_cmp_lt_i32 s2, s31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_lshlrev_b32_e32 v13, 2, v7
	v_add_lshl_u32 v41, v7, s6, 2
	v_add_lshl_u32 v42, v7, s7, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v1, v13, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v3, v41, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v5, v42, s[12:15], 0 offen
	v_add_lshl_u32 v1, v7, s35, 2
	v_add_lshl_u32 v3, v7, s36, 2
	v_add_lshl_u32 v5, v7, s37, 2
	v_add_lshl_u32 v13, v7, s38, 2
	v_add_lshl_u32 v7, v7, s39, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v11, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v5, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v13, s[12:15], 0 offen
	buffer_atomic_add_f32 v12, v7, s[12:15], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s4, s2
	s_ashr_i32 s11, s2, 31
	s_mul_hi_u32 s10, s4, s41
	s_xor_b32 s11, s11, s40
	s_mul_i32 s22, s10, s5
	v_mov_b32_e32 v13, v0
	s_sub_i32 s4, s4, s22
	s_add_i32 s22, s10, 1
	s_sub_i32 s23, s4, s5
	s_cmp_ge_u32 s4, s5
	v_mov_b32_e32 v41, v0
	s_cselect_b32 s10, s22, s10
	s_cselect_b32 s4, s23, s4
	s_add_i32 s22, s10, 1
	s_cmp_ge_u32 s4, s5
	v_mov_b32_e32 v42, v0
	s_cselect_b32 s4, s22, s10
	v_mov_b32_e32 v43, v0
	s_xor_b32 s4, s4, s11
	v_mov_b32_e32 v45, v0
	s_sub_i32 s11, s4, s11
	v_mov_b32_e32 v46, v0
	.loc	1 273 35                        ; generate_amdgcn.py:273:35
	s_sub_i32 s4, s28, s11
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_mul_i32 s26, s11, s30
	.loc	1 273 24                        ; generate_amdgcn.py:273:24
	s_min_i32 s22, s4, 1
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_sub_i32 s26, s2, s26
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s10, s22
	s_abs_i32 s27, s26
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s23, 0, s10
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v44, v0
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s23, s23, s4
	s_mul_hi_u32 s23, s4, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s23
	s_mul_hi_u32 s23, s27, s4
	s_xor_b32 s4, s26, s22
	s_mul_i32 s44, s23, s10
	s_ashr_i32 s4, s4, 31
	s_sub_i32 s27, s27, s44
	s_add_i32 s44, s23, 1
	s_sub_i32 s45, s27, s10
	s_cmp_ge_u32 s27, s10
	s_cselect_b32 s23, s44, s23
	s_cselect_b32 s27, s45, s27
	s_add_i32 s44, s23, 1
	s_cmp_ge_u32 s27, s10
	s_cselect_b32 s10, s44, s23
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_xor_b32 s10, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s44, s10, s4
	.loc	1 274 32                        ; generate_amdgcn.py:274:32
	s_mul_i32 s22, s44, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s22, s26, s22
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_add_i32 s22, s22, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 276 18 is_stmt 1              ; generate_amdgcn.py:276:18
	s_lshl_b32 s45, s22, 5
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v4, s45, v14
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_lshl_or_b32 v1, s10, 8, v16
	v_lshl_or_b32 v2, s10, 7, v15
	s_lshl_b32 s11, s4, 8
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[11:12], null, s33, v4, v[9:10]
	s_lshl_b32 s4, s4, 7
	v_dual_mov_b32 v44, 0 :: v_dual_add_nc_u32 v3, s45, v18
	v_subrev_nc_u32_e32 v48, s11, v1
	v_subrev_nc_u32_e32 v1, s4, v2
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v45, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v49, s43, v3
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_mad_u64_u32 v[12:13], null, s33, v1, v[10:11]
	v_mov_b32_e32 v41, 0
	v_mov_b32_e32 v13, 0
	s_mov_b32 s46, 0
	s_mov_b32 s47, s34
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 313 26 is_stmt 1              ; generate_amdgcn.py:313:26
	v_add_nc_u32_e32 v1, s46, v9
	.loc	1 314 31                        ; generate_amdgcn.py:314:31
	v_add_nc_u32_e32 v2, s46, v10
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	v_add_nc_u32_e32 v3, s46, v11
	.loc	1 323 30                        ; generate_amdgcn.py:323:30
	v_add_nc_u32_e32 v4, s46, v12
	s_mov_b32 s22, s18
	.loc	1 314 31                        ; generate_amdgcn.py:314:31
	v_cmp_gt_i32_e32 vcc_lo, s33, v1
	v_cmp_gt_i32_e64 s4, s33, v2
	.loc	1 323 30                        ; generate_amdgcn.py:323:30
	s_mov_b32 s23, s19
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 314 30                        ; generate_amdgcn.py:314:30
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_mov_b32 s26, s18
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 314 30                        ; generate_amdgcn.py:314:30
	s_and_b32 vcc_lo, s4, s3
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_mov_b32 s27, s19
	.loc	1 323 30                        ; generate_amdgcn.py:323:30
	v_cndmask_b32_e32 v2, 0x80000000, v4, vcc_lo
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_dual_mov_b32 v5, v0 :: v_dual_add_nc_u32 v4, v17, v48
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	buffer_load_u16 v3, v1, s[16:19], 0 offen
	.loc	1 323 30                        ; generate_amdgcn.py:323:30
	buffer_load_b64 v[1:2], v2, s[20:23], 0 offen
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_dual_mov_b32 v7, v0 :: v_dual_add_nc_u32 v48, s42, v48
	v_mov_b32_e32 v6, v0
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_add_i32 s47, s47, -1
	s_add_i32 s46, s46, 32
	s_cmp_lg_u32 s47, 0
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	s_waitcnt vmcnt(1)
	ds_store_b16 v19, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[58:59], v20
	ds_load_b64 v[60:61], v21
	ds_load_b64 v[62:63], v22
	ds_load_b64 v[64:65], v23
	.loc	1 323 30                        ; generate_amdgcn.py:323:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v24, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	buffer_load_u16 v68, v49, s[8:11], 0 offen
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x7
	buffer_load_u16 v69, v4, s[24:27], 0 offen
	buffer_load_u16 v70, v4, s[24:27], 0 offen offset:4
	buffer_load_u16 v71, v4, s[24:27], 0 offen offset:8
	buffer_load_u16 v72, v4, s[24:27], 0 offen offset:12
	buffer_load_u16 v73, v4, s[24:27], 0 offen offset:16
	buffer_load_u16 v74, v4, s[24:27], 0 offen offset:20
	buffer_load_u16 v75, v4, s[24:27], 0 offen offset:24
	buffer_load_u16 v76, v4, s[24:27], 0 offen offset:28
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_dual_mov_b32 v4, v0 :: v_dual_add_nc_u32 v49, 2, v49
	v_dual_mov_b32 v57, v7 :: v_dual_mov_b32 v56, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v55, v5 :: v_dual_mov_b32 v54, v4
	v_dual_mov_b32 v53, v3 :: v_dual_mov_b32 v52, v2
	v_dual_mov_b32 v51, v1 :: v_dual_mov_b32 v50, v0
	.loc	1 323 30                        ; generate_amdgcn.py:323:30
	ds_load_b64 v[1:2], v25
	ds_load_b64 v[3:4], v26
	ds_load_b64 v[5:6], v27
	ds_load_b64 v[66:67], v28
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
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
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_cvt_f32_i32_e32 v2, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v3, v52
	v_cvt_f32_i32_e32 v5, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v6, v55
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v1, v50
	v_cvt_f32_i32_e32 v4, v53
	v_cvt_f32_i32_e32 v50, v57
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v54, 16, v71
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	v_lshlrev_b32_e32 v51, 16, v68
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v3, v3, v51 :: v_dual_lshlrev_b32 v56, 16, v73
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v46, v3, v54
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v6, v6, v51 :: v_dual_lshlrev_b32 v57, 16, v74
	v_dual_mul_f32 v1, v1, v51 :: v_dual_lshlrev_b32 v52, 16, v69
	v_dual_mul_f32 v2, v2, v51 :: v_dual_lshlrev_b32 v53, 16, v70
	v_dual_mul_f32 v4, v4, v51 :: v_dual_lshlrev_b32 v55, 16, v72
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v50, v50, v51 :: v_dual_lshlrev_b32 v59, 16, v76
	v_dual_mul_f32 v5, v5, v51 :: v_dual_fmac_f32 v42, v6, v57
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	v_lshlrev_b32_e32 v58, 16, v75
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_dual_mul_f32 v7, v7, v51 :: v_dual_fmac_f32 v44, v1, v52
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v47, v2, v53
	v_fmac_f32_e32 v45, v4, v55
	v_fmac_f32_e32 v43, v5, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v41, v7, v58
	v_fmac_f32_e32 v13, v50, v59
	.loc	1 307 13 is_stmt 1              ; generate_amdgcn.py:307:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge7
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk
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
		.amdhsa_inst_pref_size 17
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.num_vgpr, 77
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2056
; TotalNumSgprs: 50
; NumVgprs: 77
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 50
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x5f DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x39 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	260                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	261                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	301                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm32_bn128_bk128_gm1_w16_s1_weu2_sk4_maskk.kd
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
