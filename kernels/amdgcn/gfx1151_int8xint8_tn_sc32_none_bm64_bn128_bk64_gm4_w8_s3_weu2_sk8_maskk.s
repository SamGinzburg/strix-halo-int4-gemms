	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 283 0                         ; generate_amdgcn.py:283:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x30
	s_load_b32 s25, s[0:1], 0x38
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:291:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s21, 0x7f
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s20, 63
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s8, s7, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_lshr_b32 s8, s8, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_add_i32 s4, s4, s5
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_add_i32 s7, s7, s8
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:291:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:290:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp10:
	.loc	1 292 24 is_stmt 1              ; generate_amdgcn.py:292:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 293 16                        ; generate_amdgcn.py:293:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s6, s9
	s_abs_i32 s9, s2
	s_add_i32 s6, s6, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s6, s9, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s8
	s_sub_i32 s5, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 294 19                        ; generate_amdgcn.py:294:19
	s_lshl_b32 s6, s5, 2
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_mul_i32 s5, s5, s4
	.loc	1 295 31                        ; generate_amdgcn.py:295:31
	s_sub_i32 s7, s7, s6
	.loc	1 296 29                        ; generate_amdgcn.py:296:29
	s_sub_i32 s5, s2, s5
	.loc	1 295 20                        ; generate_amdgcn.py:295:20
	s_min_i32 s7, s7, 4
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_abs_i32 s4, s5
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_xor_b32 s2, s5, s7
	s_mul_hi_u32 s9, s4, s9
	s_ashr_i32 s2, s2, 31
	s_mul_i32 s10, s9, s8
	s_sub_i32 s4, s4, s10
	s_add_i32 s10, s9, 1
	s_sub_i32 s11, s4, s8
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s9, s10, s9
	s_cselect_b32 s4, s11, s4
	s_add_i32 s10, s9, 1
	s_cmp_ge_u32 s4, s8
	s_cselect_b32 s4, s10, s9
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s13, s25, 0x1ff
.Ltmp12:
	.loc	1 297 13                        ; generate_amdgcn.py:297:13
	s_xor_b32 s12, s4, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s12, s2
	.loc	1 296 28                        ; generate_amdgcn.py:296:28
	s_mul_i32 s7, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s7
	.loc	1 296 13 is_stmt 0              ; generate_amdgcn.py:296:13
	s_add_i32 s5, s5, s6
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cmpk_gt_i32 s13, 0x1ff
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_lshl_b32 s24, s21, 5
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	s_mov_b32 s6, -1
                                        ; implicit-def: $sgpr24
.LBB0_3:                                ; %Flow491
	s_load_b64 s[22:23], s[0:1], 0x20
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v44, 0x80, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v6, 0x60, v0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v10, 0
	s_lshl_b32 s27, s5, 6
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_lshl_b32 s26, s4, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x0
.Ltmp13:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s0, s13, 31
.Ltmp14:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s25, 31
.Ltmp15:
	.loc	1 312 26 is_stmt 1              ; generate_amdgcn.py:312:26
	s_lshl_b32 s28, s3, 6
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_lshr_b32 s0, s0, 23
.Ltmp17:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s3, s1, 31
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_add_i32 s13, s13, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_lshr_b32 s0, s3, 27
.Ltmp20:
	.loc	1 299 32 is_stmt 1              ; generate_amdgcn.py:299:32
	v_lshrrev_b32_e32 v2, 3, v44
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_add_i32 s1, s1, s0
	s_mov_b32 s0, 0
.Ltmp22:
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:307:28 ]
	s_ashr_i32 s29, s13, 9
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:310:26 ]
	s_ashr_i32 s30, s1, 5
.Ltmp24:
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_lshl_b32 s1, s12, 7
	s_mov_b32 s3, s0
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshrrev_b32_e32 v4, 1, v6
	v_bfe_u32 v3, v0, 4, 1
	v_lshlrev_b32_e32 v7, 3, v0
	.loc	1 302 19                        ; generate_amdgcn.py:302:19
	v_lshrrev_b32_e32 v10, 3, v0
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_mov_b32 s12, s4
	s_mov_b32 s13, s5
	s_mov_b32 s16, s6
	s_mov_b32 s17, s7
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_and_b32_e32 v1, 15, v0
	v_or3_b32 v11, v3, v4, s26
	v_and_b32_e32 v5, 7, v0
	v_dual_mov_b32 v35, 0 :: v_dual_add_nc_u32 v0, 0, v7
	v_mov_b32_e32 v24, 0
	v_or_b32_e32 v2, v2, v1
	v_or_b32_e32 v1, v4, v1
	v_or_b32_e32 v3, 64, v11
	v_or_b32_e32 v4, 0x48, v11
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v20, 0
	v_or_b32_e32 v8, s27, v2
	v_dual_mov_b32 v36, 0 :: v_dual_add_nc_u32 v47, 0, v1
	v_add_nc_u32_e32 v45, 0, v2
	v_or_b32_e32 v2, 8, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v1, v8, s30
	v_or_b32_e32 v9, 32, v8
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_clause 0x4                            ; 20-byte Folded Spill
	scratch_store_b32 off, v3, off offset:72
	scratch_store_b32 off, v44, off offset:144
	scratch_store_b32 off, v2, off offset:56
	scratch_store_b32 off, v4, off offset:88
	scratch_store_b32 off, v0, off offset:28
	v_or_b32_e32 v2, 10, v11
	scratch_store_b32 off, v1, off offset:36 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v9, s30
	v_or_b32_e32 v3, 0x42, v11
	v_or_b32_e32 v8, 0x4a, v11
	scratch_store_b32 off, v2, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 12, v11
	v_mov_b32_e32 v9, 0
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v3, off offset:76
	scratch_store_b32 off, v6, off offset:148
	scratch_store_b32 off, v1, off offset:40
	scratch_store_b32 off, v8, off offset:92
	v_or_b32_e32 v1, 2, v11
	v_or_b32_e32 v3, 0x44, v11
	scratch_store_b32 off, v2, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 14, v11
	v_or_b32_e32 v8, 0x4c, v11
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 4, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v8, off offset:96
	scratch_store_b32 off, v11, off offset:32
	v_or_b32_e32 v8, 0x4e, v11
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 6, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:52
	scratch_store_b32 off, v10, off offset:24
	v_or_b32_e32 v1, s28, v10
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v3, off offset:80
	scratch_store_b32 off, v8, off offset:100
	v_or_b32_e32 v3, 0x46, v11
	scratch_store_b32 off, v2, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 32, v1
	v_mul_lo_u32 v4, s21, v1
	v_mov_b32_e32 v10, 0
	v_add_nc_u32_e32 v0, v0, v7
	scratch_store_b32 off, v3, off offset:84 ; 4-byte Folded Spill
	v_mul_lo_u32 v3, s21, v2
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_lshlrev_b32_e32 v6, 4, v5
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_mul_lo_u32 v2, s20, v2
	v_mul_lo_u32 v1, s20, v1
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v16, 0
	v_add3_u32 v4, v4, s1, v6
	v_add3_u32 v3, v3, s1, v6
	s_lshl_b32 s1, s2, 7
	s_mov_b32 s2, s0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_subrev_nc_u32_e32 v56, s1, v3
	v_subrev_nc_u32_e32 v57, s1, v4
	s_mov_b32 s1, s0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	v_lshlrev_b32_e32 v5, 3, v5
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v38, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add3_u32 v58, v2, s27, v5
	v_add3_u32 v42, v1, s27, v5
	v_dual_mov_b32 v0, s0 :: v_dual_mov_b32 v1, s1
	v_dual_mov_b32 v2, s2 :: v_dual_mov_b32 v3, s3
	v_dual_mov_b32 v4, s4 :: v_dual_mov_b32 v5, s5
	v_mov_b32_e32 v32, 0
	v_dual_mov_b32 v6, s6 :: v_dual_mov_b32 v7, s7
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v21, 0
	v_mov_b32_e32 v17, 0
	v_mov_b32_e32 v11, 0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s24, s21, 5
	s_lshl_b32 s31, s21, 9
	s_lshl_b32 s20, s20, 9
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s6, s14
	s_mov_b32 s7, s15
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s14
	s_mov_b32 s11, s15
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:108
	scratch_store_b128 off, v[4:7], off offset:124
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	s_clause 0x11                           ; 72-byte Folded Reload
	scratch_load_b32 v0, off, off offset:24
	scratch_load_b32 v1, off, off offset:36
	scratch_load_b32 v3, off, off offset:44
	scratch_load_b32 v5, off, off offset:52
	scratch_load_b32 v7, off, off offset:60
	scratch_load_b32 v41, off, off offset:68
	scratch_load_b32 v46, off, off offset:76
	scratch_load_b32 v49, off, off offset:84
	scratch_load_b32 v2, off, off offset:40
	scratch_load_b32 v4, off, off offset:48
	scratch_load_b32 v6, off, off offset:56
	scratch_load_b32 v8, off, off offset:64
	scratch_load_b32 v44, off, off offset:72
	scratch_load_b32 v48, off, off offset:80
	scratch_load_b32 v52, off, off offset:88
	scratch_load_b32 v53, off, off offset:92
	scratch_load_b32 v54, off, off offset:96
	scratch_load_b32 v55, off, off offset:100
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s1, s28, 5
	.loc	1 312 21                        ; generate_amdgcn.py:312:21
	s_add_i32 s0, s28, 32
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s1, s30
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 330 29                        ; generate_amdgcn.py:330:29
	s_ashr_i32 s3, s0, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	s_cmp_lt_i32 s3, s30
	s_cselect_b32 s0, -1, 0
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_add_i32 s29, s29, -1
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v86, s28, v0
	scratch_load_b32 v0, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_waitcnt vmcnt(17)
	v_add_lshl_u32 v87, v1, s1, 1
	v_add_lshl_u32 v98, v1, s3, 1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_addk_i32 s28, 0x200
	s_cmp_lg_u32 s29, 0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e32 v1, 0x80000000, v87, vcc_lo
	s_waitcnt vmcnt(10)
	v_add_lshl_u32 v88, v2, s1, 1
	.loc	1 334 40                        ; generate_amdgcn.py:334:40
	s_mul_i32 s1, s1, s21
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_add_lshl_u32 v99, v2, s3, 1
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v71, v3, s1, 1
	s_waitcnt vmcnt(9)
	v_add_lshl_u32 v72, v4, s1, 1
	v_add_lshl_u32 v73, v5, s1, 1
	s_waitcnt vmcnt(8)
	v_add_lshl_u32 v74, v6, s1, 1
	v_add_lshl_u32 v75, v7, s1, 1
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v76, v8, s1, 1
	v_add_lshl_u32 v77, v41, s1, 1
	s_waitcnt vmcnt(6)
	v_add_lshl_u32 v78, v44, s1, 1
	v_add_lshl_u32 v79, v46, s1, 1
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v80, v48, s1, 1
	v_add_lshl_u32 v81, v49, s1, 1
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v82, v52, s1, 1
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v83, v53, s1, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v84, v54, s1, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v85, v55, s1, 1
	.loc	1 334 40 is_stmt 0              ; generate_amdgcn.py:334:40
	s_mul_i32 s3, s3, s21
	.loc	1 332 22 is_stmt 1              ; generate_amdgcn.py:332:22
	v_dual_cndmask_b32 v2, 0x80000000, v88 :: v_dual_cndmask_b32 v71, 0x80000000, v71
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v103, v3, s3, 1
	v_add_lshl_u32 v104, v4, s3, 1
	v_add_lshl_u32 v105, v5, s3, 1
	v_dual_cndmask_b32 v72, 0x80000000, v72 :: v_dual_cndmask_b32 v75, 0x80000000, v75
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v99, 0x80000000, v99, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_dual_cndmask_b32 v74, 0x80000000, v74 :: v_dual_cndmask_b32 v77, 0x80000000, v77
	v_dual_cndmask_b32 v76, 0x80000000, v76 :: v_dual_cndmask_b32 v79, 0x80000000, v79
	v_dual_cndmask_b32 v78, 0x80000000, v78 :: v_dual_cndmask_b32 v81, 0x80000000, v81
	v_dual_cndmask_b32 v80, 0x80000000, v80 :: v_dual_cndmask_b32 v83, 0x80000000, v83
	v_dual_cndmask_b32 v82, 0x80000000, v82 :: v_dual_cndmask_b32 v85, 0x80000000, v85
	v_cndmask_b32_e32 v84, 0x80000000, v84, vcc_lo
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_cndmask_b32_e64 v98, 0x80000000, v98, s0
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v103, 0x80000000, v103, s0
	v_cndmask_b32_e64 v104, 0x80000000, v104, s0
	v_cndmask_b32_e64 v105, 0x80000000, v105, s0
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v70, v0, s1, 1
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s1, s25, v86
	v_add_nc_u32_e32 v86, 32, v86
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v102, v0, s3, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	v_cndmask_b32_e64 v89, 0x80000000, v42, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 313 27                        ; generate_amdgcn.py:313:27
	v_cmp_gt_i32_e64 s2, s25, v86
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v42, s20, v42
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v86, 0x80000000, v57, s1
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v57, s31, v57
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	buffer_load_b64 v[94:95], v89, s[12:15], 0 offen
	v_cndmask_b32_e64 v90, 0x80000000, v58, s2
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	v_cndmask_b32_e64 v91, 0x80000000, v56, s2
	.loc	1 331 34                        ; generate_amdgcn.py:331:34
	scratch_store_b32 off, v42, off offset:12 ; 4-byte Folded Spill
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[86:89], v86, s[16:19], 0 offen
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b64 v[96:97], v90, s[12:15], 0 offen
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	buffer_load_b128 v[90:93], v91, s[16:19], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:28
	scratch_load_b32 v3, off, off offset:104
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	v_add_nc_u32_e32 v58, s20, v58
	v_add_nc_u32_e32 v56, s31, v56
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v102, 0x80000000, v102, s0
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt vmcnt(1)
	ds_store_b64 v0, v[94:95] offset:8192
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v3, v[86:89]
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v0, v[96:97] offset:10240
	.loc	1 322 26                        ; generate_amdgcn.py:322:26
	ds_store_b128 v3, v[90:93] offset:4096
	.loc	1 316 26                        ; generate_amdgcn.py:316:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	ds_load_u8 v86, v45 offset:8256
	ds_load_u8 v87, v45 offset:8192
	ds_load_u8 v88, v45 offset:8384
	ds_load_u8 v89, v45 offset:8320
	ds_load_u8 v90, v45 offset:8416
	ds_load_u8 v91, v45 offset:8352
	ds_load_u8 v92, v45 offset:8288
	ds_load_u8 v93, v45 offset:8224
	ds_load_u8 v94, v47 offset:1664
	ds_load_u8 v95, v47 offset:1536
	ds_load_u8 v96, v47 offset:1920
	ds_load_u8 v97, v47 offset:1792
	ds_load_u8 v106, v47 offset:1984
	ds_load_u8 v107, v47 offset:1856
	ds_load_u8 v108, v47 offset:1728
	ds_load_u8 v109, v47 offset:1600
	ds_load_u8 v110, v47 offset:1152
	ds_load_u8 v111, v47 offset:1024
	ds_load_u8 v112, v47 offset:1408
	ds_load_u8 v113, v47 offset:1280
	ds_load_u8 v114, v47 offset:1472
	ds_load_u8 v115, v47 offset:1344
	ds_load_u8 v116, v47 offset:1216
	ds_load_u8 v117, v47 offset:1088
	ds_load_u8 v118, v47 offset:640
	ds_load_u8 v119, v47 offset:512
	ds_load_u8 v120, v47 offset:896
	ds_load_u8 v121, v47 offset:768
	ds_load_u8 v122, v47 offset:960
	ds_load_u8 v123, v47 offset:832
	ds_load_u8 v124, v47 offset:704
	ds_load_u8 v125, v47 offset:576
	ds_load_u8 v126, v47 offset:128
	ds_load_u8 v127, v47
	ds_load_u8 v128, v47 offset:384
	ds_load_u8 v129, v47 offset:256
	ds_load_u8 v130, v47 offset:448
	ds_load_u8 v131, v47 offset:320
	ds_load_u8 v132, v47 offset:192
	ds_load_u8 v133, v47 offset:64
	ds_load_u8 v134, v47 offset:3712
	ds_load_u8 v135, v47 offset:3584
	ds_load_u8 v136, v47 offset:3968
	ds_load_u8 v137, v47 offset:3840
	ds_load_u8 v138, v47 offset:4032
	ds_load_u8 v139, v47 offset:3904
	ds_load_u8 v140, v47 offset:3776
	ds_load_u8 v141, v47 offset:3648
	ds_load_u8 v142, v47 offset:3200
	ds_load_u8 v143, v47 offset:3072
	ds_load_u8 v144, v47 offset:3456
	ds_load_u8 v145, v47 offset:3328
	ds_load_u8 v146, v47 offset:3520
	ds_load_u8 v147, v47 offset:3392
	ds_load_u8 v148, v47 offset:3264
	ds_load_u8 v149, v47 offset:3136
	ds_load_u8 v150, v47 offset:2688
	ds_load_u8 v151, v47 offset:2560
	ds_load_u8 v152, v47 offset:2944
	ds_load_u8 v153, v47 offset:2816
	ds_load_u8 v154, v47 offset:3008
	ds_load_u8 v155, v47 offset:2880
	ds_load_u8 v156, v47 offset:2752
	ds_load_u8 v157, v47 offset:2624
	ds_load_u8 v158, v47 offset:2176
	ds_load_u8 v159, v47 offset:2048
	ds_load_u8 v160, v47 offset:2432
	ds_load_u8 v161, v47 offset:2304
	ds_load_u8 v162, v47 offset:2496
	ds_load_u8 v163, v47 offset:2368
	ds_load_u8 v164, v47 offset:2240
	ds_load_u8 v165, v47 offset:2112
	ds_load_u8 v166, v45 offset:9024
	ds_load_u8 v167, v45 offset:8960
	ds_load_u8 v168, v45 offset:9152
	ds_load_u8 v169, v45 offset:9088
	ds_load_u8 v170, v45 offset:9184
	ds_load_u8 v171, v45 offset:9120
	ds_load_u8 v172, v45 offset:9056
	ds_load_u8 v173, v45 offset:8992
	ds_load_u8 v174, v45 offset:8768
	ds_load_u8 v175, v45 offset:8704
	ds_load_u8 v176, v45 offset:8896
	ds_load_u8 v177, v45 offset:8832
	ds_load_u8 v178, v45 offset:8928
	ds_load_u8 v179, v45 offset:8864
	ds_load_u8 v180, v45 offset:8800
	ds_load_u8 v181, v45 offset:8736
	ds_load_u8 v182, v45 offset:8512
	ds_load_u8 v183, v45 offset:8448
	ds_load_u8 v184, v45 offset:8640
	ds_load_u8 v185, v45 offset:8576
	ds_load_u8 v186, v45 offset:8672
	ds_load_u8 v187, v45 offset:8608
	ds_load_u8 v188, v45 offset:8544
	ds_load_u8 v189, v45 offset:8480
	ds_load_u8 v190, v45 offset:10048
	ds_load_u8 v191, v45 offset:9984
	ds_load_u8 v192, v45 offset:10176
	ds_load_u8 v193, v45 offset:10112
	ds_load_u8 v194, v45 offset:10208
	ds_load_u8 v195, v45 offset:10144
	ds_load_u8 v196, v45 offset:10080
	ds_load_u8 v197, v45 offset:10016
	ds_load_u8 v198, v45 offset:9792
	ds_load_u8 v199, v45 offset:9728
	ds_load_u8 v200, v45 offset:9920
	ds_load_u8 v201, v45 offset:9856
	ds_load_u8 v202, v45 offset:9952
	ds_load_u8 v203, v45 offset:9888
	ds_load_u8 v204, v45 offset:9824
	ds_load_u8 v205, v45 offset:9760
	ds_load_u8 v206, v45 offset:9536
	ds_load_u8 v207, v45 offset:9472
	ds_load_u8 v208, v45 offset:9664
	ds_load_u8 v209, v45 offset:9600
	ds_load_u8 v210, v45 offset:9696
	ds_load_u8 v211, v45 offset:9632
	ds_load_u8 v212, v45 offset:9568
	ds_load_u8 v213, v45 offset:9504
	ds_load_u8 v214, v45 offset:9280
	ds_load_u8 v215, v45 offset:9216
	ds_load_u8 v216, v45 offset:9408
	ds_load_u8 v217, v45 offset:9344
	ds_load_u8 v218, v45 offset:9440
	ds_load_u8 v219, v45 offset:9376
	ds_load_u8 v220, v45 offset:9312
	ds_load_u8 v221, v45 offset:9248
	ds_load_u8 v222, v45 offset:11072
	ds_load_u8 v223, v45 offset:11008
	ds_load_u8 v224, v45 offset:11200
	ds_load_u8 v225, v45 offset:11136
	ds_load_u8 v226, v45 offset:10816
	ds_load_u8 v227, v45 offset:10752
	ds_load_u8 v228, v45 offset:10944
	ds_load_u8 v229, v45 offset:10880
	ds_load_u8 v230, v45 offset:10560
	ds_load_u8 v231, v45 offset:10496
	ds_load_u8 v232, v45 offset:10688
	ds_load_u8 v233, v45 offset:10624
	ds_load_u8 v234, v45 offset:10304
	ds_load_u8 v235, v45 offset:10240
	ds_load_u8 v236, v45 offset:10432
	ds_load_u8 v237, v45 offset:10368
	ds_load_u8 v238, v47 offset:5760
	ds_load_u8 v239, v47 offset:5632
	ds_load_u8 v240, v47 offset:6016
	ds_load_u8 v241, v47 offset:5888
	ds_load_u8 v242, v47 offset:5248
	ds_load_u8 v243, v47 offset:5120
	ds_load_u8 v244, v47 offset:5504
	ds_load_u8 v245, v47 offset:5376
	ds_load_u8 v246, v47 offset:4736
	ds_load_u8 v247, v47 offset:4608
	ds_load_u8 v248, v47 offset:4992
	ds_load_u8 v249, v47 offset:4864
	ds_load_u8 v250, v47 offset:4224
	ds_load_u8 v251, v47 offset:4096
	ds_load_u8 v252, v47 offset:4480
	ds_load_u8 v253, v47 offset:4352
	ds_load_u8 v254, v45 offset:12096
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v0, v167, v166, 0xc0c0004
	ds_load_u8 v167, v45 offset:12032
	v_perm_b32 v166, v177, v176, 0xc0c0004
	ds_load_u8 v177, v45 offset:11840
	v_perm_b32 v182, v183, v182, 0xc0c0004
	ds_load_u8 v183, v45 offset:11776
	v_perm_b32 v184, v185, v184, 0xc0c0004
	ds_load_u8 v185, v45 offset:11968
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v45 offset:11904
	v_perm_b32 v255, v89, v88, 0xc0c0004
	ds_load_u8 v88, v45 offset:11584
	ds_load_u8 v89, v45 offset:11520
	v_perm_b32 v94, v95, v94, 0xc0c0004
	v_perm_b32 v95, v97, v96, 0xc0c0004
	ds_load_u8 v96, v45 offset:11712
	ds_load_u8 v97, v45 offset:11648
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_perm_b32 v111, v113, v112, 0xc0c0004
	ds_load_u8 v112, v45 offset:11328
	v_perm_b32 v113, v119, v118, 0xc0c0004
	ds_load_u8 v118, v45 offset:11264
	v_perm_b32 v119, v121, v120, 0xc0c0004
	ds_load_u8 v120, v45 offset:11456
	v_perm_b32 v121, v127, v126, 0xc0c0004
	ds_load_u8 v126, v45 offset:11392
	v_perm_b32 v127, v129, v128, 0xc0c0004
	ds_load_u8 v128, v47 offset:7808
	v_perm_b32 v129, v191, v190, 0xc0c0004
	ds_load_u8 v190, v47 offset:7680
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v191, v193, v192, 0xc0c0004
	ds_load_u8 v192, v47 offset:8064
	v_perm_b32 v193, v199, v198, 0xc0c0004
	ds_load_u8 v198, v47 offset:7936
	v_perm_b32 v199, v201, v200, 0xc0c0004
	ds_load_u8 v200, v47 offset:7296
	v_perm_b32 v201, v207, v206, 0xc0c0004
	ds_load_u8 v206, v47 offset:7168
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v207, v209, v208, 0xc0c0004
	ds_load_u8 v208, v47 offset:7552
	s_waitcnt lgkmcnt(59)
	v_perm_b32 v209, v215, v214, 0xc0c0004
	ds_load_u8 v214, v47 offset:7424
	s_waitcnt lgkmcnt(58)
	v_perm_b32 v215, v217, v216, 0xc0c0004
	ds_load_u8 v216, v47 offset:6784
	v_perm_b32 v217, v135, v134, 0xc0c0004
	ds_load_u8 v134, v47 offset:6656
	v_perm_b32 v101, v137, v136, 0xc0c0004
	ds_load_u8 v135, v47 offset:7040
	ds_load_u8 v136, v47 offset:6912
	.loc	1 307 5                         ; generate_amdgcn.py:307:5
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v57, off offset:4
	scratch_store_b32 off, v0, off offset:16
	scratch_store_b32 off, v58, off offset:8
	scratch_store_b32 off, v56, off
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v0, v169, v168, 0xc0c0004
	ds_load_u8 v169, v45 offset:12224
	v_perm_b32 v168, v175, v174, 0xc0c0004
	ds_load_u8 v175, v45 offset:12160
	v_perm_b32 v142, v143, v142, 0xc0c0004
	v_perm_b32 v143, v145, v144, 0xc0c0004
	v_perm_b32 v144, v151, v150, 0xc0c0004
	ds_load_u8 v145, v47 offset:6144
	v_perm_b32 v150, v153, v152, 0xc0c0004
	v_perm_b32 v152, v159, v158, 0xc0c0004
	ds_load_u8 v153, v47 offset:6080
	ds_load_u8 v159, v47 offset:5952
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v47 offset:5824
	v_perm_b32 v106, v107, v106, 0xc0c0004
	ds_load_u8 v107, v47 offset:5696
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v47 offset:5568
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v47 offset:5440
	ds_load_u8 v137, v47 offset:6272
	ds_load_u8 v151, v47 offset:6528
	v_perm_b32 v158, v161, v160, 0xc0c0004
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v47 offset:5312
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v47 offset:5184
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v47 offset:5056
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v47 offset:4928
	v_perm_b32 v160, v141, v140, 0xc0c0004
	ds_load_u8 v140, v47 offset:4800
	ds_load_u8 v141, v47 offset:4416
	v_perm_b32 v161, v139, v138, 0xc0c0004
	ds_load_u8 v138, v47 offset:4672
	ds_load_u8 v139, v47 offset:4544
	v_perm_b32 v146, v147, v146, 0xc0c0004
	v_perm_b32 v147, v157, v156, 0xc0c0004
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v47 offset:4160
	v_perm_b32 v156, v165, v164, 0xc0c0004
	ds_load_u8 v157, v47 offset:8128
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v47 offset:8000
	ds_load_u8 v165, v47 offset:7872
	v_perm_b32 v164, v173, v172, 0xc0c0004
	v_perm_b32 v170, v171, v170, 0xc0c0004
	ds_load_u8 v171, v47 offset:7744
	v_perm_b32 v172, v181, v180, 0xc0c0004
	ds_load_u8 v173, v47 offset:7616
	v_perm_b32 v100, v179, v178, 0xc0c0004
	ds_load_u8 v179, v47 offset:7488
	ds_load_u8 v181, v47 offset:7360
	v_perm_b32 v180, v189, v188, 0xc0c0004
	v_perm_b32 v186, v187, v186, 0xc0c0004
	ds_load_u8 v187, v47 offset:7232
	v_perm_b32 v188, v197, v196, 0xc0c0004
	v_perm_b32 v196, v205, v204, 0xc0c0004
	v_perm_b32 v204, v213, v212, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v212, v221, v220, 0xc0c0004
	v_perm_b32 v220, v223, v222, 0xc0c0004
	v_perm_b32 v222, v225, v224, 0xc0c0004
	v_perm_b32 v224, v227, v226, 0xc0c0004
	v_perm_b32 v226, v229, v228, 0xc0c0004
	v_perm_b32 v228, v231, v230, 0xc0c0004
	v_perm_b32 v230, v233, v232, 0xc0c0004
	v_perm_b32 v232, v235, v234, 0xc0c0004
	ds_load_u8 v233, v45 offset:12256
	ds_load_u8 v235, v45 offset:12192
	v_perm_b32 v234, v237, v236, 0xc0c0004
	v_perm_b32 v236, v239, v238, 0xc0c0004
	ds_load_u8 v237, v45 offset:12128
	ds_load_u8 v239, v45 offset:12064
	v_perm_b32 v238, v241, v240, 0xc0c0004
	v_perm_b32 v240, v243, v242, 0xc0c0004
	ds_load_u8 v241, v45 offset:12000
	ds_load_u8 v243, v45 offset:11936
	v_perm_b32 v242, v245, v244, 0xc0c0004
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v244, v247, v246, 0xc0c0004
	ds_load_u8 v245, v45 offset:11872
	ds_load_u8 v247, v45 offset:11808
	v_perm_b32 v246, v249, v248, 0xc0c0004
	v_perm_b32 v248, v251, v250, 0xc0c0004
	ds_load_u8 v249, v45 offset:11744
	ds_load_u8 v251, v45 offset:11680
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v250, v253, v252, 0xc0c0004
	v_perm_b32 v167, v167, v254, 0xc0c0004
	ds_load_u8 v252, v45 offset:11616
	s_waitcnt lgkmcnt(37)
	v_perm_b32 v169, v175, v169, 0xc0c0004
	ds_load_u8 v175, v45 offset:11552
	v_perm_b32 v177, v183, v177, 0xc0c0004
	ds_load_u8 v183, v45 offset:11488
	v_perm_b32 v185, v87, v185, 0xc0c0004
	ds_load_u8 v87, v45 offset:11424
	v_perm_b32 v253, v89, v88, 0xc0c0004
	ds_load_u8 v88, v45 offset:11360
	ds_load_u8 v89, v45 offset:11296
	v_perm_b32 v254, v97, v96, 0xc0c0004
	v_perm_b32 v112, v118, v112, 0xc0c0004
	ds_load_u8 v96, v47 offset:7104
	ds_load_u8 v97, v47 offset:6976
	ds_load_u8 v118, v47 offset:6848
	v_perm_b32 v43, v126, v120, 0xc0c0004
	v_perm_b32 v190, v190, v128, 0xc0c0004
	v_perm_b32 v192, v198, v192, 0xc0c0004
	ds_load_u8 v120, v47 offset:6720
	v_perm_b32 v198, v206, v200, 0xc0c0004
	ds_load_u8 v126, v47 offset:6592
	ds_load_u8 v128, v47 offset:6464
	v_perm_b32 v200, v214, v208, 0xc0c0004
	v_perm_b32 v206, v134, v216, 0xc0c0004
	ds_load_u8 v134, v47 offset:6336
	v_perm_b32 v208, v136, v135, 0xc0c0004
	ds_load_u8 v136, v47 offset:6400
	ds_load_u8 v135, v47 offset:6208
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v47 offset:4288
	v_perm_b32 v92, v93, v92, 0xc0c0004
	ds_load_u8 v93, v45 offset:11232
	ds_load_u8 v189, v45 offset:11104
	ds_load_u8 v197, v45 offset:10976
	ds_load_u8 v205, v45 offset:10848
	v_perm_b32 v90, v91, v90, 0xc0c0004
	ds_load_u8 v91, v45 offset:11168
	v_perm_b32 v194, v195, v194, 0xc0c0004
	ds_load_u8 v195, v45 offset:11040
	s_waitcnt lgkmcnt(51)
	v_perm_b32 v115, v115, v117, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v117, v44, s3, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(50)
	v_perm_b32 v214, v145, v137, 0xc0c0004
	v_perm_b32 v42, v107, v109, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v107, v7, s3, 1
	v_add_lshl_u32 v109, v8, s3, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v123, v123, v125, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v216, v136, v151, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v136, v6, s3, 1
	v_add_lshl_u32 v125, v41, s3, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v50, v138, v140, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v137, v46, s3, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v131, v131, v133, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v133, v48, s3, 1
	v_add_lshl_u32 v138, v49, s3, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v51, v141, v139, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_add_lshl_u32 v139, v52, s3, 1
	v_add_lshl_u32 v140, v53, s3, 1
	v_add_lshl_u32 v141, v54, s3, 1
	v_add_lshl_u32 v145, v55, s3, 1
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v117, 0x80000000, v117, s0
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v165, v171, v165, 0xc0c0004
	v_perm_b32 v171, v187, v181, 0xc0c0004
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_cndmask_b32_e64 v136, 0x80000000, v136, s0
	v_cndmask_b32_e64 v107, 0x80000000, v107, s0
	v_cndmask_b32_e64 v109, 0x80000000, v109, s0
	v_cndmask_b32_e64 v125, 0x80000000, v125, s0
	v_cndmask_b32_e64 v137, 0x80000000, v137, s0
	v_cndmask_b32_e64 v133, 0x80000000, v133, s0
	v_cndmask_b32_e64 v138, 0x80000000, v138, s0
	v_cndmask_b32_e64 v139, 0x80000000, v139, s0
	v_cndmask_b32_e64 v140, 0x80000000, v140, s0
	v_cndmask_b32_e64 v141, 0x80000000, v141, s0
	v_cndmask_b32_e64 v145, 0x80000000, v145, s0
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v181, v1, s[4:7], 0 offen
	buffer_load_u16 v187, v2, s[4:7], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0xf
	buffer_load_u16 v52, v70, s[8:11], 0 offen
	buffer_load_u16 v53, v71, s[8:11], 0 offen
	buffer_load_u16 v54, v72, s[8:11], 0 offen
	buffer_load_u16 v55, v73, s[8:11], 0 offen
	buffer_load_u16 v56, v74, s[8:11], 0 offen
	buffer_load_u16 v57, v75, s[8:11], 0 offen
	buffer_load_u16 v58, v76, s[8:11], 0 offen
	buffer_load_u16 v59, v77, s[8:11], 0 offen
	buffer_load_u16 v60, v78, s[8:11], 0 offen
	buffer_load_u16 v61, v79, s[8:11], 0 offen
	buffer_load_u16 v62, v80, s[8:11], 0 offen
	buffer_load_u16 v63, v81, s[8:11], 0 offen
	buffer_load_u16 v64, v82, s[8:11], 0 offen
	buffer_load_u16 v48, v83, s[8:11], 0 offen
	buffer_load_u16 v49, v84, s[8:11], 0 offen
	buffer_load_u16 v44, v85, s[8:11], 0 offen
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	s_clause 0x1
	buffer_load_u16 v69, v98, s[4:7], 0 offen
	buffer_load_u16 v46, v99, s[4:7], 0 offen
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	s_clause 0xf
	buffer_load_u16 v65, v102, s[8:11], 0 offen
	buffer_load_u16 v66, v103, s[8:11], 0 offen
	buffer_load_u16 v67, v104, s[8:11], 0 offen
	buffer_load_u16 v68, v105, s[8:11], 0 offen
	buffer_load_u16 v1, v136, s[8:11], 0 offen
	buffer_load_u16 v2, v107, s[8:11], 0 offen
	buffer_load_u16 v3, v109, s[8:11], 0 offen
	buffer_load_u16 v4, v125, s[8:11], 0 offen
	buffer_load_u16 v5, v117, s[8:11], 0 offen
	buffer_load_u16 v6, v137, s[8:11], 0 offen
	buffer_load_u16 v7, v133, s[8:11], 0 offen
	buffer_load_u16 v8, v138, s[8:11], 0 offen
	buffer_load_u16 v41, v139, s[8:11], 0 offen
	buffer_load_u16 v174, v140, s[8:11], 0 offen
	buffer_load_u16 v176, v141, s[8:11], 0 offen
	buffer_load_u16 v178, v145, s[8:11], 0 offen
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_perm_b32 v99, v89, v88, 0xc0c0004
	v_perm_b32 v117, v87, v183, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v87, off, off offset:16
	scratch_load_b32 v88, off, off offset:20
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v155, v149, 0xc0c0004
	v_perm_b32 v163, v163, v157, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v195, v189, 0xc0c0004
	v_lshl_or_b32 v137, v191, 16, v129
	v_lshl_or_b32 v136, v199, 16, v193
	v_lshl_or_b32 v149, v194, 16, v188
	v_lshl_or_b32 v157, v192, 16, v190
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[188:191], off, off offset:108
	scratch_load_b128 v[192:195], off, off offset:124
	v_perm_b32 v202, v203, v202, 0xc0c0004
	ds_load_u8 v203, v45 offset:10912
	v_perm_b32 v210, v211, v210, 0xc0c0004
	ds_load_u8 v211, v45 offset:10784
	ds_load_u8 v213, v45 offset:10720
	ds_load_u8 v221, v45 offset:10592
	ds_load_u8 v223, v45 offset:10528
	ds_load_u8 v225, v45 offset:10464
	ds_load_u8 v227, v45 offset:10400
	ds_load_u8 v229, v45 offset:10336
	ds_load_u8 v231, v45 offset:10272
	v_perm_b32 v218, v219, v218, 0xc0c0004
	ds_load_u8 v219, v45 offset:10656
	v_perm_b32 v159, v159, v153, 0xc0c0004
	v_perm_b32 v76, v91, v93, 0xc0c0004
	v_perm_b32 v70, v179, v173, 0xc0c0004
	v_perm_b32 v71, v120, v118, 0xc0c0004
	v_perm_b32 v72, v97, v96, 0xc0c0004
	v_perm_b32 v73, v135, v134, 0xc0c0004
	v_perm_b32 v74, v128, v126, 0xc0c0004
	v_perm_b32 v83, v239, v237, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v78, v203, v197, 0xc0c0004
	v_perm_b32 v84, v235, v233, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v77, v211, v205, 0xc0c0004
	v_perm_b32 v85, v247, v245, 0xc0c0004
	v_perm_b32 v91, v243, v241, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v79, v223, v221, 0xc0c0004
	v_perm_b32 v93, v175, v252, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v82, v227, v225, 0xc0c0004
	v_perm_b32 v98, v251, v249, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v81, v231, v229, 0xc0c0004
	v_lshl_or_b32 v86, v255, 16, v86
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v80, v219, v213, 0xc0c0004
	v_lshl_or_b32 v97, v95, 16, v94
	v_lshl_or_b32 v96, v111, 16, v110
	v_lshl_or_b32 v95, v119, 16, v113
	v_lshl_or_b32 v94, v127, 16, v121
	v_lshl_or_b32 v138, v158, 16, v152
	v_lshl_or_b32 v105, v106, 16, v108
	v_lshl_or_b32 v104, v114, 16, v116
	v_lshl_or_b32 v103, v122, 16, v124
	v_lshl_or_b32 v102, v130, 16, v132
	v_lshl_or_b32 v145, v161, 16, v160
	v_lshl_or_b32 v109, v170, 16, v164
	v_lshl_or_b32 v108, v100, 16, v172
	v_lshl_or_b32 v107, v186, 16, v180
	v_lshl_or_b32 v106, v90, 16, v92
	v_lshl_or_b32 v121, v222, 16, v220
	v_lshl_or_b32 v120, v226, 16, v224
	v_lshl_or_b32 v119, v230, 16, v228
	v_lshl_or_b32 v118, v234, 16, v232
	v_lshl_or_b32 v129, v238, 16, v236
	v_lshl_or_b32 v128, v242, 16, v240
	v_lshl_or_b32 v127, v246, 16, v244
	v_lshl_or_b32 v126, v250, 16, v248
	v_lshl_or_b32 v153, v169, 16, v167
	v_lshl_or_b32 v161, v159, 16, v42
	v_lshl_or_b32 v160, v115, 16, v123
	v_lshl_or_b32 v159, v131, 16, v50
	v_lshl_or_b32 v158, v51, 16, v0
	v_lshl_or_b32 v169, v76, 16, v75
	v_lshl_or_b32 v167, v80, 16, v79
	v_lshl_or_b32 v135, v207, 16, v201
	v_lshl_or_b32 v134, v215, 16, v209
	v_lshl_or_b32 v141, v101, 16, v217
	v_lshl_or_b32 v140, v143, 16, v142
	v_lshl_or_b32 v139, v150, 16, v144
	v_lshl_or_b32 v144, v146, 16, v148
	v_lshl_or_b32 v143, v154, 16, v147
	v_lshl_or_b32 v142, v162, 16, v156
	v_lshl_or_b32 v148, v202, 16, v196
	v_lshl_or_b32 v147, v210, 16, v204
	v_lshl_or_b32 v146, v218, 16, v212
	v_lshl_or_b32 v152, v185, 16, v177
	v_lshl_or_b32 v151, v254, 16, v253
	v_lshl_or_b32 v150, v43, 16, v112
	v_lshl_or_b32 v156, v200, 16, v198
	v_lshl_or_b32 v155, v208, 16, v206
	v_lshl_or_b32 v154, v216, 16, v214
	v_lshl_or_b32 v165, v163, 16, v165
	v_lshl_or_b32 v164, v70, 16, v171
	v_lshl_or_b32 v163, v72, 16, v71
	v_lshl_or_b32 v162, v74, 16, v73
	v_lshl_or_b32 v173, v84, 16, v83
	v_lshl_or_b32 v172, v91, 16, v85
	v_lshl_or_b32 v171, v98, 16, v93
	v_lshl_or_b32 v170, v117, 16, v99
	s_waitcnt vmcnt(2)
	v_lshl_or_b32 v89, v88, 16, v87
	v_lshl_or_b32 v88, v166, 16, v168
	v_lshl_or_b32 v87, v184, 16, v182
	v_lshl_or_b32 v168, v78, 16, v77
	v_lshl_or_b32 v166, v82, 16, v81
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu8 v[70:77], v[94:97], v[86:89], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[102:105], v[86:89], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[94:97], v[106:109], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[102:105], v[106:109], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[126:129], v[118:121], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[158:161], v[118:121], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[126:129], v[166:169], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[158:161], v[166:169], v[188:195] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[70:77], v[138:141], v[134:137], v[70:77] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[78:85], v[142:145], v[134:137], v[78:85] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[86:93], v[138:141], v[146:149], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[94:101], v[142:145], v[146:149], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[102:109], v[154:157], v[150:153], v[102:109] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[110:117], v[162:165], v[150:153], v[110:117] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[118:125], v[154:157], v[170:173], v[118:125] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu8 v[126:133], v[162:165], v[170:173], v[126:133] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v70
	v_cvt_f32_i32_e32 v42, v71
	v_cvt_f32_i32_e32 v43, v72
	v_cvt_f32_i32_e32 v51, v74
	v_cvt_f32_i32_e32 v70, v75
	v_cvt_f32_i32_e32 v71, v76
	v_cvt_f32_i32_e32 v72, v77
	v_cvt_f32_i32_e32 v74, v79
	v_cvt_f32_i32_e32 v75, v80
	v_cvt_f32_i32_e32 v76, v81
	v_cvt_f32_i32_e32 v77, v82
	v_cvt_f32_i32_e32 v79, v84
	v_cvt_f32_i32_e32 v80, v85
	v_cvt_f32_i32_e32 v81, v86
	v_cvt_f32_i32_e32 v82, v87
	v_cvt_f32_i32_e32 v84, v89
	v_cvt_f32_i32_e32 v85, v90
	v_cvt_f32_i32_e32 v86, v91
	v_cvt_f32_i32_e32 v87, v92
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v90, v95
	v_cvt_f32_i32_e32 v92, v97
	v_cvt_f32_i32_e32 v94, v99
	v_cvt_f32_i32_e32 v95, v100
	v_cvt_f32_i32_e32 v99, v104
	v_cvt_f32_i32_e32 v100, v105
	v_cvt_f32_i32_e32 v104, v109
	v_cvt_f32_i32_e32 v105, v110
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v119, v124
	v_cvt_f32_i32_e32 v120, v125
	v_cvt_f32_i32_e32 v124, v129
	v_cvt_f32_i32_e32 v125, v130
	.loc	1 332 22                        ; generate_amdgcn.py:332:22
	v_lshlrev_b32_e32 v129, 16, v181
	v_lshlrev_b32_e32 v130, 16, v187
	.loc	1 323 23                        ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v50, v73
	v_cvt_f32_i32_e32 v73, v78
	v_cvt_f32_i32_e32 v78, v83
	v_cvt_f32_i32_e32 v83, v88
	v_cvt_f32_i32_e32 v88, v93
	v_cvt_f32_i32_e32 v91, v96
	v_cvt_f32_i32_e32 v93, v98
	v_cvt_f32_i32_e32 v96, v101
	v_cvt_f32_i32_e32 v97, v102
	v_cvt_f32_i32_e32 v98, v103
	v_cvt_f32_i32_e32 v101, v106
	v_cvt_f32_i32_e32 v102, v107
	v_cvt_f32_i32_e32 v103, v108
	v_cvt_f32_i32_e32 v106, v111
	v_cvt_f32_i32_e32 v107, v112
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v116, v121
	v_cvt_f32_i32_e32 v117, v122
	v_cvt_f32_i32_e32 v118, v123
	v_cvt_f32_i32_e32 v121, v126
	v_cvt_f32_i32_e32 v122, v127
	v_cvt_f32_i32_e32 v123, v128
	v_cvt_f32_i32_e32 v126, v131
	v_cvt_f32_i32_e32 v127, v132
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v77, v77, v129 :: v_dual_lshlrev_b32 v52, 16, v52
	v_dual_mul_f32 v42, v42, v129 :: v_dual_lshlrev_b32 v59, 16, v59
	v_dual_mul_f32 v50, v50, v129 :: v_dual_lshlrev_b32 v63, 16, v63
	v_dual_mul_f32 v70, v70, v129 :: v_dual_lshlrev_b32 v67, 16, v67
	v_dual_mul_f32 v76, v76, v129 :: v_dual_lshlrev_b32 v131, 16, v174
	v_mul_f32_e32 v51, v51, v129
	v_mul_f32_e32 v71, v71, v129
	v_mul_f32_e32 v75, v75, v129
	v_dual_mul_f32 v84, v84, v130 :: v_dual_lshlrev_b32 v53, 16, v53
	v_dual_mul_f32 v81, v81, v130 :: v_dual_lshlrev_b32 v56, 16, v56
	v_dual_mul_f32 v86, v86, v130 :: v_dual_lshlrev_b32 v57, 16, v57
	v_dual_mul_f32 v85, v85, v130 :: v_dual_lshlrev_b32 v64, 16, v64
	v_dual_mul_f32 v87, v87, v130 :: v_dual_lshlrev_b32 v48, 16, v48
	v_dual_mul_f32 v92, v92, v130 :: v_dual_lshlrev_b32 v69, 16, v69
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v58, 16, v58
	v_lshlrev_b32_e32 v62, 16, v62
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v101, v101, v69 :: v_dual_lshlrev_b32 v46, 16, v46
	v_dual_mul_f32 v0, v0, v129 :: v_dual_lshlrev_b32 v55, 16, v55
	v_dual_mul_f32 v103, v103, v69 :: v_dual_lshlrev_b32 v66, 16, v66
	v_dual_mul_f32 v105, v105, v69 :: v_dual_lshlrev_b32 v2, 16, v2
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v107, v107, v69 :: v_dual_lshlrev_b32 v6, 16, v6
	.loc	1 334 22                        ; generate_amdgcn.py:334:22
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v109, v109, v69 :: v_dual_lshlrev_b32 v132, 16, v176
	v_mul_f32_e32 v80, v80, v129
	v_dual_mul_f32 v82, v82, v130 :: v_dual_mul_f32 v97, v97, v69
	v_mul_f32_e32 v98, v98, v69
	v_mul_f32_e32 v99, v99, v69
	v_mul_f32_e32 v100, v100, v69
	v_mul_f32_e32 v102, v102, v69
	v_mul_f32_e32 v104, v104, v69
	v_mul_f32_e32 v106, v106, v69
	v_mul_f32_e32 v108, v108, v69
	v_dual_mul_f32 v110, v110, v69 :: v_dual_fmac_f32 v9, v0, v52
	v_mul_f32_e32 v111, v111, v69
	v_dual_mul_f32 v69, v112, v69 :: v_dual_mul_f32 v112, v113, v46
	v_mul_f32_e32 v113, v114, v46
	v_mul_f32_e32 v114, v115, v46
	v_mul_f32_e32 v115, v116, v46
	v_mul_f32_e32 v116, v117, v46
	v_mul_f32_e32 v117, v118, v46
	v_mul_f32_e32 v118, v119, v46
	v_mul_f32_e32 v119, v120, v46
	v_dual_mul_f32 v120, v121, v46 :: v_dual_fmac_f32 v35, v42, v53
	v_mul_f32_e32 v121, v122, v46
	v_dual_mul_f32 v122, v123, v46 :: v_dual_fmac_f32 v27, v50, v55
	v_mul_f32_e32 v123, v124, v46
	v_dual_mul_f32 v124, v125, v46 :: v_dual_fmac_f32 v23, v51, v56
	v_mul_f32_e32 v125, v126, v46
	v_dual_mul_f32 v126, v127, v46 :: v_dual_fmac_f32 v19, v70, v57
	scratch_load_b32 v42, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v15, v71, v58 :: v_dual_fmac_f32 v36, v82, v53
	v_dual_fmac_f32 v33, v75, v62 :: v_dual_fmac_f32 v24, v85, v56
	v_dual_fmac_f32 v29, v76, v63 :: v_dual_fmac_f32 v20, v86, v57
	v_dual_fmac_f32 v25, v77, v64 :: v_dual_fmac_f32 v16, v87, v58
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v56, off, off
	scratch_load_b32 v57, off, off offset:4
	scratch_load_b32 v58, off, off offset:8
	.loc	1 323 23 is_stmt 1              ; generate_amdgcn.py:323:23
	v_cvt_f32_i32_e32 v128, v133
	.loc	1 336 24                        ; generate_amdgcn.py:336:24
	v_dual_mul_f32 v79, v79, v129 :: v_dual_lshlrev_b32 v54, 16, v54
	v_dual_mul_f32 v83, v83, v130 :: v_dual_lshlrev_b32 v60, 16, v60
	v_dual_mul_f32 v88, v88, v130 :: v_dual_lshlrev_b32 v61, 16, v61
	v_dual_mul_f32 v90, v90, v130 :: v_dual_lshlrev_b32 v49, 16, v49
	v_dual_mul_f32 v89, v89, v130 :: v_dual_lshlrev_b32 v44, 16, v44
	v_dual_mul_f32 v94, v94, v130 :: v_dual_lshlrev_b32 v65, 16, v65
	v_dual_mul_f32 v91, v91, v130 :: v_dual_lshlrev_b32 v68, 16, v68
	v_dual_mul_f32 v96, v96, v130 :: v_dual_lshlrev_b32 v1, 16, v1
	v_dual_mul_f32 v72, v72, v129 :: v_dual_lshlrev_b32 v3, 16, v3
	v_dual_mul_f32 v93, v93, v130 :: v_dual_lshlrev_b32 v4, 16, v4
	v_dual_mul_f32 v74, v74, v129 :: v_dual_lshlrev_b32 v7, 16, v7
	v_dual_mul_f32 v95, v95, v130 :: v_dual_lshlrev_b32 v8, 16, v8
	v_dual_mul_f32 v78, v78, v129 :: v_dual_lshlrev_b32 v133, 16, v178
	v_mul_f32_e32 v43, v43, v129
	v_dual_mul_f32 v73, v73, v129 :: v_dual_mul_f32 v46, v128, v46
	.loc	1 336 17 is_stmt 0              ; generate_amdgcn.py:336:17
	v_dual_fmac_f32 v13, v72, v59 :: v_dual_fmac_f32 v32, v83, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v31, v43, v54 :: v_dual_fmac_f32 v10, v81, v52
	v_fmac_f32_e32 v39, v73, v60
	v_dual_fmac_f32 v37, v74, v61 :: v_dual_fmac_f32 v28, v84, v55
	v_dual_fmac_f32 v21, v78, v48 :: v_dual_fmac_f32 v14, v88, v59
	v_dual_fmac_f32 v17, v79, v49 :: v_dual_fmac_f32 v40, v89, v60
	v_dual_fmac_f32 v11, v80, v44 :: v_dual_fmac_f32 v38, v90, v61
	v_dual_fmac_f32 v34, v91, v62 :: v_dual_fmac_f32 v9, v97, v65
	v_dual_fmac_f32 v30, v92, v63 :: v_dual_fmac_f32 v35, v98, v66
	v_dual_fmac_f32 v26, v93, v64 :: v_dual_fmac_f32 v31, v99, v67
	v_dual_fmac_f32 v22, v94, v48 :: v_dual_fmac_f32 v23, v101, v1
	v_dual_fmac_f32 v18, v95, v49 :: v_dual_fmac_f32 v27, v100, v68
	v_dual_fmac_f32 v12, v96, v44 :: v_dual_fmac_f32 v19, v102, v2
	v_dual_fmac_f32 v15, v103, v3 :: v_dual_fmac_f32 v10, v112, v65
	v_dual_fmac_f32 v13, v104, v4 :: v_dual_fmac_f32 v36, v113, v66
	v_dual_fmac_f32 v39, v105, v5 :: v_dual_fmac_f32 v32, v114, v67
	v_dual_fmac_f32 v37, v106, v6 :: v_dual_fmac_f32 v28, v115, v68
	v_dual_fmac_f32 v33, v107, v7 :: v_dual_fmac_f32 v24, v116, v1
	v_dual_fmac_f32 v29, v108, v8 :: v_dual_fmac_f32 v20, v117, v2
	v_dual_fmac_f32 v25, v109, v41 :: v_dual_fmac_f32 v16, v118, v3
	v_dual_fmac_f32 v21, v110, v131 :: v_dual_fmac_f32 v14, v119, v4
	v_dual_fmac_f32 v17, v111, v132 :: v_dual_fmac_f32 v40, v120, v5
	v_dual_fmac_f32 v11, v69, v133 :: v_dual_fmac_f32 v34, v122, v7
	v_fmac_f32_e32 v38, v121, v6
	v_fmac_f32_e32 v30, v123, v8
	v_fmac_f32_e32 v26, v124, v41
	v_fmac_f32_e32 v22, v125, v131
	v_fmac_f32_e32 v18, v126, v132
	v_fmac_f32_e32 v12, v46, v133
	.loc	1 307 5 is_stmt 1               ; generate_amdgcn.py:307:5
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:140
	scratch_load_b32 v44, off, off offset:144
	scratch_load_b32 v6, off, off offset:148
.LBB0_7:                                ; %._crit_edge
	.loc	1 392 9 is_stmt 1               ; generate_amdgcn.py:392:9
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v4, 2, v0
	.loc	1 299 32                        ; generate_amdgcn.py:299:32
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v1, 7, v44
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_bfe_i32 v3, v0, 0, 1
	.loc	1 300 32                        ; generate_amdgcn.py:300:32
	v_and_b32_e32 v2, 0x7f, v0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_mul_i32 s0, s27, s21
	.loc	1 392 9 is_stmt 0               ; generate_amdgcn.py:392:9
	v_and_b32_e32 v5, 0x78, v4
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mul_lo_u32 v1, s21, v1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_and_b32_e32 v4, 14, v0
	v_and_b32_e32 v3, 0x840, v3
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	s_add_i32 s0, s0, s26
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v6, v6, 3, v5
	s_waitcnt lgkmcnt(0)
	v_lshlrev_b32_e32 v5, 11, v4
	s_barrier
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add3_u32 v41, s0, v2, v1
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_xor_b32_e32 v1, v6, v3
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_ashrrev_i32_e32 v42, 31, v41
	v_or3_b32 v43, v1, v5, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b64 v[1:2], 2, v[41:42]
	v_add_nc_u32_e32 v3, 0, v43
	v_xad_u32 v5, v43, 8, 0
	v_xad_u32 v6, v43, 16, 0
	v_xad_u32 v7, v43, 24, 0
	v_xad_u32 v8, v43, 32, 0
	v_xad_u32 v42, v43, 40, 0
	ds_store_2addr_stride64_b64 v3, v[9:10], v[39:40] offset1:2
	ds_store_2addr_stride64_b64 v5, v[35:36], v[37:38] offset1:2
	ds_store_2addr_stride64_b64 v6, v[31:32], v[33:34] offset1:2
	ds_store_2addr_stride64_b64 v7, v[27:28], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v8, v[23:24], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v42, v[19:20], v[21:22] offset1:2
	v_add_co_u32 v32, vcc_lo, s22, v1
	v_xad_u32 v3, v43, 48, 0
	v_add_co_ci_u32_e64 v33, null, s23, v2, vcc_lo
	v_xad_u32 v5, v43, 56, 0
	ds_store_2addr_stride64_b64 v3, v[15:16], v[17:18] offset1:2
	ds_store_2addr_stride64_b64 v5, v[13:14], v[11:12] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	global_load_b32 v35, v[32:33], off
	v_and_b32_e32 v2, 1, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v44
	v_lshlrev_b32_e32 v1, 4, v0
	v_lshlrev_b32_e32 v3, 2, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v0, 6, v2
	v_cndmask_b32_e64 v2, 0x840, 0, vcc_lo
	v_and_b32_e32 v1, 0x700, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor_b32_e32 v0, v2, v0
	v_or3_b32 v0, v1, v3, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v1, 0, v0
	v_xad_u32 v2, 0x1008, v0, 0
	v_xad_u32 v3, 0x2010, v0, 0
	ds_load_2addr_b64 v[28:31], v1 offset1:16
	ds_load_2addr_b64 v[24:27], v2 offset1:16
	ds_load_2addr_b64 v[20:23], v3 offset1:16
	v_xad_u32 v1, 0x3018, v0, 0
	v_xad_u32 v2, 0x4020, v0, 0
	v_xad_u32 v3, 0x5028, v0, 0
	v_xad_u32 v4, 0x6030, v0, 0
	v_xad_u32 v0, 0x7038, v0, 0
	ds_load_2addr_b64 v[16:19], v1 offset1:16
	ds_load_2addr_b64 v[12:15], v2 offset1:16
	ds_load_2addr_b64 v[8:11], v3 offset1:16
	ds_load_2addr_b64 v[4:7], v4 offset1:16
	ds_load_2addr_b64 v[0:3], v0 offset1:16
.LBB0_8:                                ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v34, v35, v28
	global_atomic_cmpswap_b32 v34, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v34, v35
	v_mov_b32_e32 v35, v34
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end181
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v32, s21, 1, v41
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_10:                               ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v34, v35, v24
	global_atomic_cmpswap_b32 v28, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v28, v35
	v_mov_b32_e32 v35, v28
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v32, s21, 2, v41
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_12:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v34, v35, v20
	global_atomic_cmpswap_b32 v24, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v24, v35
	v_mov_b32_e32 v35, v24
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 6, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_14:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v34, v35, v16
	global_atomic_cmpswap_b32 v20, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v20, v35
	v_mov_b32_e32 v35, v20
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v32, s21, 3, v41
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_16:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v34, v35, v12
	global_atomic_cmpswap_b32 v16, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v16, v35
	v_mov_b32_e32 v35, v16
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 10, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_18:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v34, v35, v8
	global_atomic_cmpswap_b32 v12, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v12, v35
	v_mov_b32_e32 v35, v12
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 12, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_20:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v34, v35, v4
	global_atomic_cmpswap_b32 v8, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v8, v35
	v_mov_b32_e32 v35, v8
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 14, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_22:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v34, v35, v0
	global_atomic_cmpswap_b32 v4, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v4, v35
	v_mov_b32_e32 v35, v4
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_lshl_add_u32 v32, s21, 4, v41
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_24:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v30
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 18, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_26:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v26
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 20, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_28:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v22
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 22, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_30:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v18
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 24, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_32:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v14
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 26, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_34:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v10
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 28, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_36:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v6
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[32:33], null, s21, 30, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s22, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_38:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v2
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_add_nc_u32_e32 v32, s24, v41
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v33, 31, v32
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v32, vcc_lo, s22, v32
	v_add_co_ci_u32_e64 v33, null, s23, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_40:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v29
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[28:29], null, s21, 34, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s22, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s23, v29, vcc_lo
	global_load_b32 v33, v[28:29], off
.LBB0_42:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v32, v33, v25
	global_atomic_cmpswap_b32 v0, v[28:29], v[32:33], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v33
	v_mov_b32_e32 v33, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[24:25], null, s21, 36, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s22, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s23, v25, vcc_lo
	global_load_b32 v29, v[24:25], off
.LBB0_44:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v21
	global_atomic_cmpswap_b32 v0, v[24:25], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[20:21], null, s21, 38, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s22, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s23, v21, vcc_lo
	global_load_b32 v25, v[20:21], off
.LBB0_46:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v17
	global_atomic_cmpswap_b32 v0, v[20:21], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[16:17], null, s21, 40, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s22, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s23, v17, vcc_lo
	global_load_b32 v21, v[16:17], off
.LBB0_48:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v13
	global_atomic_cmpswap_b32 v0, v[16:17], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[12:13], null, s21, 42, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s22, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s23, v13, vcc_lo
	global_load_b32 v17, v[12:13], off
.LBB0_50:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v9
	global_atomic_cmpswap_b32 v0, v[12:13], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[8:9], null, s21, 44, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s22, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s23, v9, vcc_lo
	global_load_b32 v13, v[8:9], off
.LBB0_52:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v5
	global_atomic_cmpswap_b32 v0, v[8:9], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[4:5], null, s21, 46, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v5, 31, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_co_u32 v4, vcc_lo, s22, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s23, v5, vcc_lo
	global_load_b32 v9, v[4:5], off
.LBB0_54:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v1
	global_atomic_cmpswap_b32 v0, v[4:5], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 48, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_56:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v31
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 50, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_58:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v27
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 52, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_60:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v23
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 54, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_62:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v19
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 56, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_64:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v15
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 58, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_66:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v11
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 60, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_68:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v7
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 392 23                        ; generate_amdgcn.py:392:23
	v_mad_u64_u32 v[0:1], null, s21, 62, v[41:42]
	s_mov_b32 s0, 0
	.loc	1 392 9                         ; generate_amdgcn.py:392:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_70:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_70
; %bb.71:                               ; %atomicrmw.end
	.loc	1 283 1 is_stmt 1               ; generate_amdgcn.py:283:1
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 156
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 32
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
	.size	amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.private_seg_size, 156
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12024
; TotalNumSgprs: 34
; NumVgprs: 256
; ScratchSize: 156
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	1                               ; Abbrev [1] 0xb:0x6c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x46 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	291                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	290                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x5b:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	307                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	310                             ; DW_AT_call_line
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk
    .private_segment_fixed_size: 156
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int8xint8_tn_sc32_none_bm64_bn128_bk64_gm4_w8_s3_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 38
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
