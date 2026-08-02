	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
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
	.loc	1 277 36 is_stmt 1              ; generate_amdgcn.py:277:36
	v_and_b32_e32 v13, 0xe0, v0
	v_lshlrev_b32_e32 v9, 2, v0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_and_b32_e32 v2, 15, v0
	v_and_b32_e32 v3, 0x100, v0
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v4, 7, v0
	v_lshrrev_b32_e32 v16, 2, v13
	v_and_b32_e32 v15, 0x438, v9
	v_lshrrev_b32_e32 v10, 1, v13
	.loc	1 313 43                        ; generate_amdgcn.py:313:43
	s_lshl_b32 s33, s3, 6
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_and_b32_e32 v6, 0x180, v0
	v_xor_b32_e32 v20, v9, v16
	v_lshlrev_b32_e32 v16, 1, v0
	v_lshl_or_b32 v21, v2, 6, v15
	v_bfe_i32 v15, v0, 3, 1
	v_lshrrev_b32_e32 v11, 4, v3
	v_lshrrev_b32_e32 v3, 1, v3
	v_and_b32_e32 v17, 0x60, v16
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:301:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s15, 0xff
	v_and_b32_e32 v18, 0x2040, v15
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp12:
	.loc	1 265 22 is_stmt 1              ; generate_amdgcn.py:265:22
	s_lshr_b32 s3, s15, 31
	v_and_or_b32 v9, 0x31c, v9, v17
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_lshr_b32 s1, s1, 24
.Ltmp14:
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_add_i32 s15, s15, s3
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_add_i32 s1, s0, s1
	v_add3_u32 v15, 0, v2, v10
	v_lshlrev_b32_e32 v10, 10, v4
	v_xor_b32_e32 v9, v9, v18
	v_lshlrev_b32_e32 v17, 3, v0
	v_and_b32_e32 v16, 28, v16
.Ltmp16:
	.loc	1 263 24                        ; generate_amdgcn.py:263:24
	s_lshl_b32 s31, s14, 2
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_ashr_i32 s34, s15, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_ashr_i32 s35, s1, 8
	s_cmpk_gt_i32 s0, 0xff
	v_or3_b32 v3, v10, v3, v9
	s_cselect_b32 s3, -1, 0
	s_and_b32 s17, s5, 0xffff
	s_abs_i32 s5, s31
	v_lshrrev_b32_e32 v6, 5, v6
	v_and_or_b32 v9, 0xf00, v17, v16
	s_cvt_f32_u32 s0, s5
.Ltmp18:
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v12, 4, v0
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v5, 16, v0
	.loc	1 305 28                        ; generate_amdgcn.py:305:28
	v_lshrrev_b32_e32 v14, 3, v0
	v_xor_b32_e32 v6, v9, v6
	v_rcp_iflag_f32_e32 v9, s0
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v7, 7, v0
	v_lshlrev_b32_e32 v29, 4, v0
	v_lshlrev_b32_e32 v0, 5, v0
	.loc	1 305 28                        ; generate_amdgcn.py:305:28
	v_lshlrev_b32_e32 v8, 2, v2
	v_lshlrev_b32_e32 v10, 2, v5
	s_mov_b32 s16, s4
	v_xor_b32_e32 v22, 8, v21
	v_and_b32_e32 v0, 32, v0
	v_readfirstlane_b32 s0, v9
	v_xor_b32_e32 v23, 16, v21
	v_xor_b32_e32 v24, 24, v21
	v_xor_b32_e32 v25, 32, v21
	v_or3_b32 v0, v0, v10, v6
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_mad_u64_u32 v[9:10], null, s29, v7, v[1:2]
	v_or_b32_e32 v1, s33, v8
	v_or_b32_e32 v7, s33, v14
	s_mul_f32 s0, s0, 0x4f7ffffe
	v_xor_b32_e32 v26, 40, v21
	v_xor_b32_e32 v27, 48, v21
	v_xor_b32_e32 v28, 56, v21
	s_cvt_u32_f32 s4, s0
	v_cmp_gt_i32_e64 s0, 0x80, v1
	v_mul_lo_u32 v1, s29, v7
	v_xor_b32_e32 v31, 4, v3
	v_xor_b32_e32 v32, 8, v3
	v_xor_b32_e32 v33, 12, v3
	v_xor_b32_e32 v34, 16, v3
	v_xor_b32_e32 v6, 20, v3
	v_xor_b32_e32 v36, 24, v3
	v_xor_b32_e32 v37, 28, v3
	v_xor_b32_e32 v39, 0x1010, v0
	v_xor_b32_e32 v40, 0x2040, v0
	v_xor_b32_e32 v41, 0x3050, v0
	v_lshrrev_b32_e32 v17, 3, v5
	v_cndmask_b32_e64 v5, 0, 1, s3
	s_sub_i32 s1, 0, s5
	s_mov_b32 s24, s10
	s_mul_i32 s10, s1, s4
	v_sub_nc_u32_e32 v16, s34, v8
	v_cmp_gt_i32_e64 s1, 0x80, v7
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_or_b32_e32 v18, v11, v2
	v_lshl_add_u32 v19, v4, 4, v1
	v_cmp_ne_u32_e64 s3, 1, v5
	v_add_nc_u32_e32 v20, 0, v20
	v_add_nc_u32_e32 v21, 0, v21
	v_add_nc_u32_e32 v22, 0, v22
	v_add_nc_u32_e32 v23, 0, v23
	v_add_nc_u32_e32 v24, 0, v24
	v_add_nc_u32_e32 v25, 0, v25
	v_add_nc_u32_e32 v26, 0, v26
	v_add_nc_u32_e32 v27, 0, v27
	v_add_nc_u32_e32 v28, 0, v28
	v_add_nc_u32_e32 v29, 0, v29
	v_add_nc_u32_e32 v30, 0, v3
	v_add_nc_u32_e32 v31, 0, v31
	v_add_nc_u32_e32 v32, 0, v32
	v_add_nc_u32_e32 v33, 0, v33
	v_add_nc_u32_e32 v34, 0, v34
	v_add_nc_u32_e32 v35, 0, v6
	v_add_nc_u32_e32 v36, 0, v36
	v_add_nc_u32_e32 v37, 0, v37
	v_add_nc_u32_e32 v38, 0, v0
	v_add_nc_u32_e32 v39, 0, v39
	v_add_nc_u32_e32 v40, 0, v40
	v_dual_mov_b32 v0, 0 :: v_dual_add_nc_u32 v41, 0, v41
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_mul_hi_u32 s10, s4, s10
	s_and_b32 s21, s7, 0xffff
	s_mov_b32 s20, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s25, s11, 0xffff
	s_lshl_b32 s6, s29, 2
	s_lshl_b32 s7, s29, 3
	s_mul_i32 s36, s29, 12
	s_lshl_b32 s37, s29, 4
	s_mul_i32 s38, s29, 20
	s_mul_i32 s39, s29, 24
	s_mul_i32 s40, s29, 28
	s_and_b32 s13, s13, 0xffff
	s_bfe_i32 s41, s14, 0x1001d
	s_add_i32 s42, s4, s10
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_lshl_b32 s43, s29, 1
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_lshl_b32 s44, s35, 1
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_lshl_b32 s45, s29, 7
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v30, v45
	ds_store_b32 v31, v48
	ds_store_b32 v32, v47
	ds_store_b32 v33, v46
	ds_store_b32 v34, v44
	ds_store_b32 v35, v43
	ds_store_b32 v36, v42
	ds_store_b32 v37, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[1:2], v38 offset1:32
	ds_load_2addr_b32 v[3:4], v39 offset1:32
	ds_load_2addr_b32 v[5:6], v40 offset1:32
	ds_load_2addr_b32 v[10:11], v41 offset1:32
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	s_lshl_b32 s4, s46, 7
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_mul_i32 s47, s47, s29
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	v_add3_u32 v7, s47, s4, v9
	s_cmp_lt_i32 s2, s30
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_lshlrev_b32_e32 v42, 2, v7
	v_add_lshl_u32 v43, v7, s6, 2
	v_add_lshl_u32 v44, v7, s7, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v1, v42, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v3, v43, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v5, v44, s[12:15], 0 offen
	v_add_lshl_u32 v1, v7, s36, 2
	v_add_lshl_u32 v3, v7, s37, 2
	v_add_lshl_u32 v5, v7, s38, 2
	v_add_lshl_u32 v42, v7, s39, 2
	v_add_lshl_u32 v7, v7, s40, 2
	s_waitcnt lgkmcnt(0)
	s_clause 0x4
	buffer_atomic_add_f32 v10, v1, s[12:15], 0 offen
	buffer_atomic_add_f32 v2, v3, s[12:15], 0 offen
	buffer_atomic_add_f32 v4, v5, s[12:15], 0 offen
	buffer_atomic_add_f32 v6, v42, s[12:15], 0 offen
	buffer_atomic_add_f32 v11, v7, s[12:15], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s4, s2
	s_ashr_i32 s11, s2, 31
	s_mul_hi_u32 s10, s4, s42
	s_xor_b32 s11, s11, s41
	s_mul_i32 s22, s10, s5
	v_mov_b32_e32 v11, v0
	s_sub_i32 s4, s4, s22
	s_add_i32 s22, s10, 1
	s_sub_i32 s23, s4, s5
	s_cmp_ge_u32 s4, s5
	v_mov_b32_e32 v42, v0
	s_cselect_b32 s10, s22, s10
	s_cselect_b32 s4, s23, s4
	s_add_i32 s22, s10, 1
	s_cmp_ge_u32 s4, s5
	v_mov_b32_e32 v43, v0
	s_cselect_b32 s4, s22, s10
	v_mov_b32_e32 v44, v0
	s_xor_b32 s4, s4, s11
	v_mov_b32_e32 v46, v0
	s_sub_i32 s4, s4, s11
	v_mov_b32_e32 v47, v0
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
	v_mov_b32_e32 v48, v0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s10, s22
	v_mov_b32_e32 v45, v0
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
	s_mul_i32 s46, s23, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s26, s26, s46
	s_add_i32 s46, s23, 1
	s_sub_i32 s47, s26, s10
	s_cmp_ge_u32 s26, s10
	s_cselect_b32 s23, s46, s23
	s_cselect_b32 s26, s47, s26
	s_add_i32 s46, s23, 1
	s_cmp_ge_u32 s26, s10
	s_cselect_b32 s10, s46, s23
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_xor_b32 s10, s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s46, s10, s4
	.loc	1 274 32                        ; generate_amdgcn.py:274:32
	s_mul_i32 s22, s46, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s22, s27, s22
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_add_i32 s22, s22, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 276 18 is_stmt 1              ; generate_amdgcn.py:276:18
	s_lshl_b32 s47, s22, 5
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v2, s47, v18
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v3, s47, v12
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_lshl_or_b32 v1, s10, 8, v13
	v_lshl_add_u32 v4, s10, 7, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v50, s44, v2
	v_mad_u64_u32 v[10:11], null, s34, v3, v[8:9]
	s_lshl_b32 s11, s4, 8
	s_lshl_b32 s4, s4, 7
	v_subrev_nc_u32_e32 v49, s11, v1
	v_subrev_nc_u32_e32 v51, s4, v4
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v11, 0
	s_mov_b32 s48, s33
	s_mov_b32 s49, s35
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 314 31 is_stmt 1              ; generate_amdgcn.py:314:31
	v_add_nc_u32_e32 v1, s48, v14
	v_cmp_lt_i32_e32 vcc_lo, s48, v16
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_mov_b32_e32 v7, v0
	.loc	1 314 31                        ; generate_amdgcn.py:314:31
	v_cmp_gt_i32_e64 s4, s34, v1
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	v_add_nc_u32_e32 v1, s48, v10
	.loc	1 314 30                        ; generate_amdgcn.py:314:30
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 314 30                        ; generate_amdgcn.py:314:30
	s_and_b32 s4, s4, s1
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_mov_b32 v6, v0
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_add_i32 s49, s49, -1
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	buffer_load_b32 v5, v1, s[16:19], 0 offen
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	v_cndmask_b32_e64 v1, 0x80000000, v51, s4
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_add_nc_u32_e32 v51, s45, v51
	s_addk_i32 s48, 0x80
	s_cmp_lg_u32 s49, 0
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	buffer_load_b128 v[1:4], v1, s[20:23], 0 offen
	.loc	1 320 30                        ; generate_amdgcn.py:320:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v20, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[60:61], v21
	ds_load_b64 v[62:63], v22
	ds_load_b64 v[64:65], v23
	ds_load_b64 v[66:67], v24
	ds_load_b64 v[68:69], v25
	ds_load_b64 v[70:71], v26
	ds_load_b64 v[72:73], v27
	ds_load_b64 v[74:75], v28
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v29, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	ds_load_u8 v1, v15 offset:640
	ds_load_u8 v2, v15 offset:512
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v15 offset:896
	ds_load_u8 v3, v15 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v77, v2, 16, v1
	ds_load_u8 v1, v15 offset:128
	ds_load_u8 v2, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v15 offset:384
	ds_load_u8 v3, v15 offset:256
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
	ds_load_u8 v1, v15 offset:1664
	ds_load_u8 v2, v15 offset:1536
	v_wmma_i32_16x16x16_iu4 v[52:59], v[76:77], v[60:61], v[52:59] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v15 offset:1920
	ds_load_u8 v3, v15 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v15 offset:1152
	ds_load_u8 v3, v15 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v15 offset:1408
	ds_load_u8 v4, v15 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[62:63], v[52:59] neg_lo:[1,1,0]
	ds_load_u8 v1, v15 offset:2688
	ds_load_u8 v2, v15 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v15 offset:2944
	ds_load_u8 v3, v15 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v15 offset:2176
	ds_load_u8 v3, v15 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v15 offset:2432
	ds_load_u8 v4, v15 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[64:65], v[52:59] neg_lo:[1,1,0]
	ds_load_u8 v1, v15 offset:3712
	ds_load_u8 v2, v15 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v15 offset:3968
	ds_load_u8 v3, v15 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v15 offset:3200
	ds_load_u8 v3, v15 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v15 offset:3456
	ds_load_u8 v4, v15 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[66:67], v[52:59] neg_lo:[1,1,0]
	ds_load_u8 v1, v15 offset:4736
	ds_load_u8 v2, v15 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v15 offset:4992
	ds_load_u8 v3, v15 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v15 offset:4224
	ds_load_u8 v3, v15 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v15 offset:4480
	ds_load_u8 v4, v15 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[68:69], v[52:59] neg_lo:[1,1,0]
	ds_load_u8 v1, v15 offset:5760
	ds_load_u8 v2, v15 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v15 offset:6016
	ds_load_u8 v3, v15 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v15 offset:5248
	ds_load_u8 v3, v15 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v15 offset:5504
	ds_load_u8 v4, v15 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[70:71], v[52:59] neg_lo:[1,1,0]
	ds_load_u8 v1, v15 offset:6784
	ds_load_u8 v2, v15 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v15 offset:7040
	ds_load_u8 v3, v15 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v15 offset:6272
	ds_load_u8 v3, v15 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v15 offset:6528
	ds_load_u8 v4, v15 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[72:73], v[52:59] neg_lo:[1,1,0]
	ds_load_u8 v1, v15 offset:7808
	ds_load_u8 v2, v15 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v15 offset:8064
	ds_load_u8 v3, v15 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v2, v2, 16, v1
	ds_load_u8 v1, v15 offset:7296
	ds_load_u8 v3, v15 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v3, v1, 0xc0c0004
	ds_load_u8 v3, v15 offset:7552
	ds_load_u8 v4, v15 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v3, 16, v1
	v_wmma_i32_16x16x16_iu4 v[52:59], v[1:2], v[74:75], v[52:59] neg_lo:[1,1,0]
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	buffer_load_u16 v1, v50, s[8:11], 0 offen
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	v_add_nc_u32_e32 v2, v17, v49
	s_clause 0x7
	buffer_load_u16 v3, v2, s[24:27], 0 offen
	buffer_load_u16 v4, v2, s[24:27], 0 offen offset:4
	buffer_load_u16 v5, v2, s[24:27], 0 offen offset:8
	buffer_load_u16 v6, v2, s[24:27], 0 offen offset:12
	buffer_load_u16 v7, v2, s[24:27], 0 offen offset:16
	buffer_load_u16 v60, v2, s[24:27], 0 offen offset:20
	buffer_load_u16 v61, v2, s[24:27], 0 offen offset:24
	buffer_load_u16 v2, v2, s[24:27], 0 offen offset:28
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_add_nc_u32_e32 v49, s43, v49
	v_add_nc_u32_e32 v50, 2, v50
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	v_lshlrev_b32_e32 v1, 16, v1
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v6, 16, v6
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v60, 16, v60
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v53, v53, v1 :: v_dual_lshlrev_b32 v2, 16, v2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v48, v53, v4
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v57, v57, v1
	v_dual_mul_f32 v52, v52, v1 :: v_dual_lshlrev_b32 v3, 16, v3
	v_dual_mul_f32 v54, v54, v1 :: v_dual_lshlrev_b32 v7, 16, v7
	v_mul_f32_e32 v55, v55, v1
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_dual_mul_f32 v56, v56, v1 :: v_dual_fmac_f32 v43, v57, v60
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	v_lshlrev_b32_e32 v61, 16, v61
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_dual_mul_f32 v58, v58, v1 :: v_dual_fmac_f32 v45, v52, v3
	v_mul_f32_e32 v1, v59, v1
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v46, v55, v6 :: v_dual_fmac_f32 v47, v54, v5
	v_fmac_f32_e32 v44, v56, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v42, v58, v61 :: v_dual_fmac_f32 v11, v1, v2
	.loc	1 307 13 is_stmt 1              ; generate_amdgcn.py:307:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge9
	.loc	1 251 1                         ; generate_amdgcn.py:251:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
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
		.amdhsa_next_free_sgpr 50
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
		.amdhsa_inst_pref_size 26
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.num_vgpr, 78
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3284
; TotalNumSgprs: 52
; NumVgprs: 78
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 52
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_none_persistent_bm32_bn128_bk128_gm4_w16_s1_weu2_sk4_evenk.kd
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
