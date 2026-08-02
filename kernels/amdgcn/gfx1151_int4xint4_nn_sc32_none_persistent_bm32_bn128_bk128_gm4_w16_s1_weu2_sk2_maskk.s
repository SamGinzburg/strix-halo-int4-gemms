	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 251 0                         ; generate_amdgcn.py:251:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[28:29], s[0:1], 0x30
.Ltmp0:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
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
	s_ashr_i32 s14, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 262 17 is_stmt 1              ; generate_amdgcn.py:262:17
	s_mul_i32 s30, s14, s28
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cmp_ge_i32 s2, s30
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s15, s[0:1], 0x38
	s_load_b64 s[12:13], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 276 36 is_stmt 1              ; generate_amdgcn.py:276:36
	v_and_b32_e32 v3, 15, v0
	v_bfe_i32 v11, v0, 7, 1
	v_and_b32_e32 v14, 0x108, v0
	v_lshlrev_b32_e32 v16, 1, v0
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshlrev_b32_e32 v5, 2, v0
	v_and_b32_e32 v15, 0x17f, v0
	v_and_b32_e32 v11, 0x88, v11
	v_lshl_or_b32 v19, v3, 4, v14
	v_bfe_i32 v14, v0, 3, 1
	v_and_b32_e32 v17, 0x60, v16
	.loc	1 305 28                        ; generate_amdgcn.py:305:28
	v_and_b32_e32 v8, 0x1e0, v0
	v_xor_b32_e32 v18, v11, v15
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_and_b32_e32 v9, 0x180, v0
	v_and_b32_e32 v14, 0x2040, v14
	v_and_or_b32 v15, 0x31c, v5, v17
	.loc	1 263 24                        ; generate_amdgcn.py:263:24
	s_lshl_b32 s31, s14, 2
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_and_b32_e32 v4, 0x100, v0
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:301:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s15, 31
.Ltmp12:
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_lshr_b32 s16, s15, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_add_i32 s15, s15, s16
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_lshr_b32 s1, s1, 27
	v_xor_b32_e32 v14, v15, v14
	s_add_i32 s1, s0, s1
	v_and_b32_e32 v15, 28, v16
.Ltmp16:
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_ashr_i32 s33, s15, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_ashr_i32 s34, s1, 5
	s_cmp_gt_i32 s0, 31
	v_lshrrev_b32_e32 v9, 5, v9
	s_cselect_b32 s0, -1, 0
	s_and_b32 s17, s5, 0xffff
	s_abs_i32 s5, s31
	v_lshl_or_b32 v8, v8, 3, v15
	s_cvt_f32_u32 s1, s5
	v_lshlrev_b32_e32 v11, 10, v0
.Ltmp18:
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v7, 16, v0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v12, 4, v4
	v_xor_b32_e32 v8, v8, v9
	v_rcp_iflag_f32_e32 v9, s1
	v_and_b32_e32 v11, 0x1c00, v11
	v_lshrrev_b32_e32 v4, 1, v4
	v_lshlrev_b32_e32 v16, 5, v0
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v10, 7, v0
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v2, 0x7c, v5
	v_or3_b32 v4, v11, v4, v14
	v_and_b32_e32 v11, 32, v16
	v_lshlrev_b32_e32 v14, 2, v7
	v_readfirstlane_b32 s1, v9
	s_mov_b32 s16, s4
	s_sub_i32 s4, 0, s5
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v13, 4, v0
	v_or3_b32 v31, v11, v14, v8
	s_mul_f32 s1, s1, 0x4f7ffffe
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_mad_u64_u32 v[8:9], null, s29, v10, v[1:2]
	.loc	1 305 28                        ; generate_amdgcn.py:305:28
	v_lshrrev_b32_e32 v1, 5, v0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cvt_u32_f32 s1, s1
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_and_b32_e32 v15, 0xe0, v0
	v_cndmask_b32_e64 v0, 0, 1, s0
	s_mul_i32 s4, s4, s1
	v_xor_b32_e32 v20, 8, v19
	s_mul_hi_u32 s4, s1, s4
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v6, 0x70, v6
	s_add_i32 s41, s1, s4
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_lshl_b32 s1, s3, 4
	v_xor_b32_e32 v24, 4, v4
	v_or_b32_e32 v16, s1, v1
	v_xor_b32_e32 v25, 8, v4
	v_xor_b32_e32 v26, 12, v4
	v_xor_b32_e32 v27, 16, v4
	v_xor_b32_e32 v28, 20, v4
	v_xor_b32_e32 v29, 24, v4
	v_xor_b32_e32 v30, 28, v4
	v_xor_b32_e32 v32, 0x1010, v31
	v_xor_b32_e32 v33, 0x2040, v31
	v_xor_b32_e32 v34, 0x3050, v31
	v_cmp_ne_u32_e64 s0, 1, v0
	v_mov_b32_e32 v0, 0
	v_add_nc_u32_e32 v22, 0, v3
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_or_b32_e32 v9, s1, v3
	v_mad_u64_u32 v[10:11], null, s29, v16, v[2:3]
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_lshrrev_b32_e32 v14, 3, v7
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_or_b32_e32 v17, v12, v3
	v_add_nc_u32_e32 v18, 0, v18
	v_add_nc_u32_e32 v19, 0, v19
	v_add_nc_u32_e32 v20, 0, v20
	v_add_nc_u32_e32 v21, 0, v5
	v_add_nc_u32_e32 v22, v22, v6
	v_add_nc_u32_e32 v23, 0, v4
	v_add_nc_u32_e32 v24, 0, v24
	v_add_nc_u32_e32 v25, 0, v25
	v_add_nc_u32_e32 v26, 0, v26
	v_add_nc_u32_e32 v27, 0, v27
	v_add_nc_u32_e32 v28, 0, v28
	v_add_nc_u32_e32 v29, 0, v29
	v_add_nc_u32_e32 v30, 0, v30
	v_add_nc_u32_e32 v31, 0, v31
	v_add_nc_u32_e32 v32, 0, v32
	v_add_nc_u32_e32 v33, 0, v33
	v_add_nc_u32_e32 v34, 0, v34
	v_cmp_gt_i32_e64 s1, 16, v16
	v_cmp_gt_i32_e64 s3, 16, v9
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
	s_bfe_i32 s40, s14, 0x1001d
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
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
	ds_store_b32 v23, v38
	ds_store_b32 v24, v41
	ds_store_b32 v25, v40
	ds_store_b32 v26, v39
	ds_store_b32 v27, v37
	ds_store_b32 v28, v36
	ds_store_b32 v29, v35
	ds_store_b32 v30, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[1:2], v31 offset1:32
	ds_load_2addr_b32 v[3:4], v32 offset1:32
	ds_load_2addr_b32 v[5:6], v33 offset1:32
	ds_load_2addr_b32 v[11:12], v34 offset1:32
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	s_lshl_b32 s4, s44, 7
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_mul_i32 s45, s45, s29
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	v_add3_u32 v7, s45, s4, v8
	s_cmp_lt_i32 s2, s30
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_lshlrev_b32_e32 v35, 2, v7
	v_add_lshl_u32 v36, v7, s6, 2
	v_add_lshl_u32 v37, v7, s7, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v1, v35, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v3, v36, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v5, v37, s[12:15], 0 offen
	v_add_lshl_u32 v1, v7, s35, 2
	v_add_lshl_u32 v3, v7, s36, 2
	v_add_lshl_u32 v5, v7, s37, 2
	v_add_lshl_u32 v35, v7, s38, 2
	v_add_lshl_u32 v7, v7, s39, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v11, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v5, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v35, s[12:15], 0 offen
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
	v_mov_b32_e32 v12, v0
	s_sub_i32 s4, s4, s22
	s_add_i32 s22, s10, 1
	s_sub_i32 s23, s4, s5
	s_cmp_ge_u32 s4, s5
	v_mov_b32_e32 v35, v0
	s_cselect_b32 s10, s22, s10
	s_cselect_b32 s4, s23, s4
	s_add_i32 s22, s10, 1
	s_cmp_ge_u32 s4, s5
	v_mov_b32_e32 v36, v0
	s_cselect_b32 s4, s22, s10
	v_mov_b32_e32 v37, v0
	s_xor_b32 s4, s4, s11
	v_mov_b32_e32 v39, v0
	s_sub_i32 s4, s4, s11
	v_mov_b32_e32 v40, v0
	.loc	1 272 23                        ; generate_amdgcn.py:272:23
	s_lshl_b32 s11, s4, 2
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_mul_i32 s4, s4, s31
	.loc	1 273 35                        ; generate_amdgcn.py:273:35
	s_sub_i32 s10, s28, s11
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_sub_i32 s27, s2, s4
	.loc	1 273 24                        ; generate_amdgcn.py:273:24
	s_min_i32 s22, s10, 4
	v_mov_b32_e32 v41, v0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s10, s22
	v_mov_b32_e32 v38, v0
	s_cvt_f32_u32 s23, s10
	s_sub_i32 s26, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s23
	v_readfirstlane_b32 s23, v1
	s_mul_f32 s23, s23, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s23, s23
	s_mul_i32 s26, s26, s23
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s23, s26
	s_abs_i32 s26, s27
	s_add_i32 s23, s23, s4
	s_xor_b32 s4, s27, s22
	s_mul_hi_u32 s23, s26, s23
	s_ashr_i32 s4, s4, 31
	s_mul_i32 s44, s23, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s26, s26, s44
	s_add_i32 s44, s23, 1
	s_sub_i32 s45, s26, s10
	s_cmp_ge_u32 s26, s10
	s_cselect_b32 s23, s44, s23
	s_cselect_b32 s26, s45, s26
	s_add_i32 s44, s23, 1
	s_cmp_ge_u32 s26, s10
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
	s_sub_i32 s22, s27, s22
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
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v2, s45, v17
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v3, s45, v13
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_lshl_or_b32 v1, s10, 8, v15
	v_lshl_add_u32 v4, s10, 7, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v43, s43, v2
	v_mad_u64_u32 v[11:12], null, s33, v3, v[9:10]
	s_lshl_b32 s11, s4, 8
	s_lshl_b32 s4, s4, 7
	v_subrev_nc_u32_e32 v42, s11, v1
	v_subrev_nc_u32_e32 v44, s4, v4
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v12, 0
	s_mov_b32 s46, 0
	s_mov_b32 s47, s34
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 314 31 is_stmt 1              ; generate_amdgcn.py:314:31
	v_add_nc_u32_e32 v1, s46, v9
	.loc	1 313 26                        ; generate_amdgcn.py:313:26
	v_add_nc_u32_e32 v2, s46, v16
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_dual_mov_b32 v4, v0 :: v_dual_add_nc_u32 v3, s46, v11
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	s_mov_b32 s22, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 314 31                        ; generate_amdgcn.py:314:31
	v_cmp_gt_i32_e32 vcc_lo, s33, v1
	v_cmp_gt_i32_e64 s4, s33, v2
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	s_mov_b32 s23, s19
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 314 30                        ; generate_amdgcn.py:314:30
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_mov_b32 s26, s18
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 314 30                        ; generate_amdgcn.py:314:30
	s_and_b32 vcc_lo, s4, s1
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_dual_mov_b32 v6, v0 :: v_dual_add_nc_u32 v3, v14, v42
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	v_cndmask_b32_e32 v2, 0x80000000, v44, vcc_lo
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_mov_b32 s27, s19
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	buffer_load_u8 v1, v1, s[16:19], 0 offen
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	buffer_load_b32 v2, v2, s[20:23], 0 offen
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_dual_mov_b32 v5, v0 :: v_dual_add_nc_u32 v44, s36, v44
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_add_i32 s47, s47, -1
	s_add_i32 s46, s46, 16
	s_cmp_lg_u32 s47, 0
	v_add_nc_u32_e32 v42, s42, v42
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	s_waitcnt vmcnt(1)
	ds_store_b8 v18, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[53:54], v19
	ds_load_b64 v[55:56], v20
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v21, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	buffer_load_u16 v57, v43, s[8:11], 0 offen
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x7
	buffer_load_u16 v58, v3, s[24:27], 0 offen
	buffer_load_u16 v59, v3, s[24:27], 0 offen offset:4
	buffer_load_u16 v60, v3, s[24:27], 0 offen offset:8
	buffer_load_u16 v61, v3, s[24:27], 0 offen offset:12
	buffer_load_u16 v62, v3, s[24:27], 0 offen offset:16
	buffer_load_u16 v63, v3, s[24:27], 0 offen offset:20
	buffer_load_u16 v64, v3, s[24:27], 0 offen offset:24
	buffer_load_u16 v65, v3, s[24:27], 0 offen offset:28
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v52, v7 :: v_dual_mov_b32 v51, v6
	v_dual_mov_b32 v50, v5 :: v_dual_mov_b32 v49, v4
	v_dual_mov_b32 v48, v3 :: v_dual_mov_b32 v47, v2
	v_dual_mov_b32 v46, v1 :: v_dual_mov_b32 v45, v0
	ds_load_u8 v1, v22 offset:640
	ds_load_u8 v2, v22 offset:896
	ds_load_u8 v3, v22 offset:768
	ds_load_u8 v4, v22 offset:512
	ds_load_u8 v5, v22 offset:128
	ds_load_u8 v6, v22 offset:384
	ds_load_u8 v7, v22 offset:256
	ds_load_u8 v66, v22
	ds_load_u8 v67, v22 offset:1664
	ds_load_u8 v68, v22 offset:1920
	ds_load_u8 v69, v22 offset:1792
	ds_load_u8 v70, v22 offset:1536
	ds_load_u8 v71, v22 offset:1152
	ds_load_u8 v72, v22 offset:1280
	ds_load_u8 v73, v22 offset:1024
	ds_load_u8 v74, v22 offset:1408
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v1, v4, v1, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v4, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v3, v66, v5, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v1
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v6, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v5, v70, v67, 0xc0c0004
	v_lshl_or_b32 v1, v4, 16, v3
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v7, v73, v71, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v72, v74, 0xc0c0004
	v_lshl_or_b32 v4, v6, 16, v5
	v_wmma_i32_16x16x16_iu4 v[45:52], v[1:2], v[53:54], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v3, v66, 16, v7
	v_wmma_i32_16x16x16_iu4 v[45:52], v[3:4], v[55:56], v[45:52] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_cvt_f32_i32_e32 v2, v46
	v_cvt_f32_i32_e32 v3, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v1, v45
	v_cvt_f32_i32_e32 v4, v48
	v_cvt_f32_i32_e32 v5, v49
	v_cvt_f32_i32_e32 v6, v50
	v_cvt_f32_i32_e32 v7, v51
	v_cvt_f32_i32_e32 v45, v52
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v46, 16, v57
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_add_nc_u32_e32 v43, 2, v43
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v48, 16, v59
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v49, 16, v60
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v3, v3, v46 :: v_dual_lshlrev_b32 v50, 16, v61
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v5, v5, v46 :: v_dual_lshlrev_b32 v52, 16, v63
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v6, v6, v46 :: v_dual_lshlrev_b32 v53, 16, v64
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v7, v46 :: v_dual_lshlrev_b32 v54, 16, v65
	v_mul_f32_e32 v1, v1, v46
	v_mul_f32_e32 v2, v2, v46
	v_mul_f32_e32 v4, v4, v46
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v40, v3, v49 :: v_dual_lshlrev_b32 v47, 16, v58
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	v_lshlrev_b32_e32 v51, 16, v62
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_dual_mul_f32 v45, v45, v46 :: v_dual_fmac_f32 v36, v6, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v38, v1, v47 :: v_dual_fmac_f32 v41, v2, v48
	v_fmac_f32_e32 v39, v4, v50
	v_fmac_f32_e32 v37, v5, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v35, v7, v53 :: v_dual_fmac_f32 v12, v45, v54
	.loc	1 307 13 is_stmt 1              ; generate_amdgcn.py:307:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge9
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk
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
		.amdhsa_next_free_vgpr 75
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
		.amdhsa_inst_pref_size 18
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.num_vgpr, 75
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2252
; TotalNumSgprs: 50
; NumVgprs: 75
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 75
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     75
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
