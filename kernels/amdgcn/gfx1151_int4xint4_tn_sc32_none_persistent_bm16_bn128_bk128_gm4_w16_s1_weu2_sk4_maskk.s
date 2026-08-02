	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 251 0                         ; generate_amdgcn.py:251:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:260:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 15
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:261:17 ]
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:260:17 ]
	s_lshr_b32 s6, s6, 28
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
	s_ashr_i32 s33, s4, 4
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:261:17 ]
	s_ashr_i32 s13, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 262 17 is_stmt 1              ; generate_amdgcn.py:262:17
	s_mul_i32 s40, s13, s33
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cmp_ge_i32 s2, s40
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s12, s[0:1], 0x38
	s_load_b64 s[20:21], s[0:1], 0x20
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 276 36 is_stmt 1              ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v5, 4, v0
	v_lshlrev_b32_e32 v10, 4, v0
	.loc	1 263 24                        ; generate_amdgcn.py:263:24
	s_lshl_b32 s41, s13, 2
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_and_b32_e32 v7, 0x1e0, v0
	v_and_b32_e32 v8, 0x180, v0
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshlrev_b32_e32 v13, 1, v5
	v_and_b32_e32 v5, 0x70, v10
	v_lshlrev_b32_e32 v10, 1, v0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_bfe_u32 v3, v0, 4, 4
	v_lshrrev_b32_e32 v8, 5, v8
	v_and_b32_e32 v4, 15, v0
	v_lshrrev_b32_e32 v11, 5, v0
	v_and_b32_e32 v10, 60, v10
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_lshlrev_b32_e32 v15, 2, v0
	v_and_b32_e32 v1, 0x7f, v0
	.loc	1 276 36                        ; generate_amdgcn.py:276:36
	v_lshrrev_b32_e32 v9, 7, v0
	v_bfe_i32 v6, v0, 7, 1
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:301:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s12, 31
.Ltmp12:
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_lshr_b32 s14, s12, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_add_i32 s12, s12, s14
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_lshr_b32 s1, s1, 27
.Ltmp16:
	.loc	1 265 22                        ; generate_amdgcn.py:265:22
	s_ashr_i32 s42, s12, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:301:26 ]
	s_add_i32 s1, s0, s1
	v_lshl_or_b32 v7, v7, 2, v10
	s_ashr_i32 s43, s1, 5
	s_cmp_gt_i32 s0, 31
	v_bfe_i32 v12, v0, 3, 1
	s_cselect_b32 s0, -1, 0
	s_and_b32 s25, s5, 0xffff
	s_abs_i32 s5, s41
	v_or_b32_e32 v18, 0x3f0, v0
	s_cvt_f32_u32 s1, s5
	v_or_b32_e32 v19, 0x7f0, v0
	v_lshlrev_b32_e32 v0, 6, v0
	v_xor_b32_e32 v7, v7, v8
	v_rcp_iflag_f32_e32 v10, s1
	s_mov_b32 s24, s4
	s_sub_i32 s4, 0, s5
.Ltmp18:
	.loc	1 277 36                        ; generate_amdgcn.py:277:36
	v_and_b32_e32 v2, 0x7c, v15
	v_and_or_b32 v101, v0, 64, v7
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	v_or_b32_e32 v0, 0xfc, v13
	v_and_b32_e32 v6, 0x88, v6
	v_and_or_b32 v14, 0x88, v12, v5
	v_mad_u64_u32 v[102:103], null, s35, v9, v[1:2]
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s1, v10
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:20
	scratch_store_b32 off, v4, off offset:8
	v_and_b32_e32 v0, 2, v13
	v_xor_b32_e32 v16, v6, v1
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_lshl_or_b32 v100, v4, 9, v2
	v_xor_b32_e32 v17, 8, v14
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	s_cvt_u32_f32 s1, s1
	v_or_b32_e32 v0, 0x7c, v13
	v_xor_b32_e32 v20, 4, v100
	v_xor_b32_e32 v21, 8, v100
	s_mul_i32 s4, s4, s1
	v_xor_b32_e32 v22, 12, v100
	s_mul_hi_u32 s4, s1, s4
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	s_add_i32 s46, s1, s4
	s_lshl_b32 s1, s3, 4
	v_xor_b32_e32 v23, 16, v100
	v_or_b32_e32 v11, s1, v11
	v_or_b32_e32 v12, s1, v4
	v_xor_b32_e32 v24, 20, v100
	v_xor_b32_e32 v25, 24, v100
	v_xor_b32_e32 v26, 28, v100
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_mad_u64_u32 v[0:1], null, s35, v11, v[2:3]
	v_xor_b32_e32 v27, 32, v100
	v_xor_b32_e32 v28, 36, v100
	v_xor_b32_e32 v29, 40, v100
	v_xor_b32_e32 v30, 44, v100
	v_xor_b32_e32 v31, 48, v100
	v_xor_b32_e32 v32, 52, v100
	v_xor_b32_e32 v33, 56, v100
	v_xor_b32_e32 v34, 60, v100
	v_xor_b32_e32 v35, 0x810, v101
	v_xor_b32_e32 v36, 0x1020, v101
	v_xor_b32_e32 v37, 0x1830, v101
	v_cndmask_b32_e64 v13, 0, 1, s0
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	scratch_store_b64 off, v[0:1], off offset:32 ; 8-byte Folded Spill
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_mad_u64_u32 v[0:1], null, s34, v12, v[3:4]
	v_add_nc_u32_e32 v5, 0, v4
	v_cmp_ne_u32_e64 s0, 1, v13
	v_add_nc_u32_e32 v3, 0, v16
	v_add_nc_u32_e32 v13, 0, v14
	v_add_nc_u32_e32 v14, 0, v17
	v_add_nc_u32_e32 v15, 0, v15
	v_add_nc_u32_e32 v16, 0, v18
	v_add_nc_u32_e32 v17, 0, v19
	v_add_nc_u32_e32 v10, 0, v20
	v_add_nc_u32_e32 v18, 0, v21
	v_add_nc_u32_e32 v19, 0, v22
	v_add_nc_u32_e32 v20, 0, v23
	v_add_nc_u32_e32 v21, 0, v24
	v_add_nc_u32_e32 v22, 0, v25
	v_add_nc_u32_e32 v23, 0, v26
	v_add_nc_u32_e32 v25, 0, v27
	v_add_nc_u32_e32 v26, 0, v28
	v_add_nc_u32_e32 v27, 0, v29
	v_add_nc_u32_e32 v28, 0, v30
	v_add_nc_u32_e32 v29, 0, v31
	v_add_nc_u32_e32 v30, 0, v32
	v_add_nc_u32_e32 v31, 0, v33
	v_add_nc_u32_e32 v32, 0, v34
	v_add_nc_u32_e32 v24, 0, v35
	v_add_nc_u32_e32 v33, 0, v36
	v_add_nc_u32_e32 v34, 0, v37
	v_cmp_gt_i32_e64 s1, 16, v12
	v_cmp_gt_i32_e64 s3, 16, v11
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s29, s7, 0xffff
	s_mov_b32 s28, s6
	s_mov_b32 s12, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_lshl_b32 s6, s35, 2
	s_lshl_b32 s7, s35, 3
	s_mul_i32 s44, s35, 12
	s_and_b32 s21, s21, 0xffff
	s_bfe_i32 s45, s13, 0x1001d
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_lshl_b32 s47, s35, 1
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_lshl_b32 s48, s43, 1
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_lshl_b32 s49, s35, 4
	s_lshl_b32 s34, s34, 4
	s_mov_b32 s22, s26
	s_mov_b32 s23, s27
	s_clause 0xc                            ; 56-byte Folded Spill
	scratch_store_b64 off, v[0:1], off offset:40
	scratch_store_b32 off, v100, off offset:12
	scratch_store_b32 off, v101, off offset:16
	scratch_store_b32 off, v10, off offset:48
	scratch_store_b32 off, v18, off offset:52
	scratch_store_b32 off, v19, off offset:56
	scratch_store_b32 off, v20, off offset:60
	scratch_store_b32 off, v21, off offset:64
	scratch_store_b32 off, v22, off offset:68
	scratch_store_b32 off, v23, off offset:72
	scratch_store_b32 off, v24, off offset:76
	scratch_store_b32 off, v33, off offset:80
	scratch_store_b32 off, v34, off offset:84
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v0, 0, v100
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 277 18                        ; generate_amdgcn.py:277:18
	s_lshl_b32 s4, s50, 7
	.loc	1 334 27                        ; generate_amdgcn.py:334:27
	s_mul_i32 s51, s51, s35
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	ds_store_2addr_b32 v0, v90, v99 offset1:32
	ds_store_2addr_b32 v0, v87, v69 offset0:64 offset1:96
	s_waitcnt vmcnt(9)
	ds_store_2addr_b32 v10, v98, v97 offset1:32
	ds_store_2addr_b32 v10, v76, v66 offset0:64 offset1:96
	s_waitcnt vmcnt(8)
	ds_store_2addr_b32 v18, v96, v95 offset1:32
	ds_store_2addr_b32 v18, v67, v63 offset0:64 offset1:96
	s_waitcnt vmcnt(7)
	ds_store_2addr_b32 v19, v94, v93 offset1:32
	ds_store_2addr_b32 v19, v64, v60 offset0:64 offset1:96
	s_waitcnt vmcnt(6)
	ds_store_2addr_b32 v20, v92, v91 offset1:32
	ds_store_2addr_b32 v20, v62, v58 offset0:64 offset1:96
	s_waitcnt vmcnt(5)
	ds_store_2addr_b32 v21, v89, v88 offset1:32
	ds_store_2addr_b32 v21, v59, v56 offset0:64 offset1:96
	s_waitcnt vmcnt(4)
	ds_store_2addr_b32 v22, v86, v85 offset1:32
	ds_store_2addr_b32 v22, v57, v53 offset0:64 offset1:96
	s_waitcnt vmcnt(3)
	ds_store_2addr_b32 v23, v84, v83 offset1:32
	ds_store_2addr_b32 v23, v54, v50 offset0:64 offset1:96
	ds_store_2addr_b32 v25, v82, v81 offset1:32
	ds_store_2addr_b32 v25, v52, v48 offset0:64 offset1:96
	ds_store_2addr_b32 v26, v80, v79 offset1:32
	ds_store_2addr_b32 v26, v51, v46 offset0:64 offset1:96
	ds_store_2addr_b32 v27, v78, v77 offset1:32
	ds_store_2addr_b32 v27, v49, v43 offset0:64 offset1:96
	ds_store_2addr_b32 v28, v75, v74 offset1:32
	ds_store_2addr_b32 v28, v47, v41 offset0:64 offset1:96
	ds_store_2addr_b32 v29, v73, v71 offset1:32
	ds_store_2addr_b32 v29, v45, v40 offset0:64 offset1:96
	ds_store_2addr_b32 v30, v72, v68 offset1:32
	ds_store_2addr_b32 v30, v44, v38 offset0:64 offset1:96
	ds_store_2addr_b32 v31, v70, v65 offset1:32
	ds_store_2addr_b32 v31, v42, v37 offset0:64 offset1:96
	v_add_nc_u32_e32 v0, 0, v101
	ds_store_2addr_b32 v32, v61, v55 offset1:32
	ds_store_2addr_b32 v32, v39, v36 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	s_waitcnt vmcnt(2)
	ds_load_b32 v1, v24
	s_waitcnt vmcnt(1)
	ds_load_b32 v2, v33
	s_waitcnt vmcnt(0)
	ds_load_b32 v4, v34
	v_add3_u32 v6, s51, s4, v102
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_add_i32 s2, s2, 20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s2, s40
	.loc	1 334 13                        ; generate_amdgcn.py:334:13
	v_lshlrev_b32_e32 v7, 2, v6
	v_add_lshl_u32 v8, v6, s6, 2
	v_add_lshl_u32 v9, v6, s7, 2
	v_add_lshl_u32 v6, v6, s44, 2
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v0, v7, s[20:23], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v1, v8, s[20:23], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v2, v9, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v4, v6, s[20:23], 0 offen
	.loc	1 270 5                         ; generate_amdgcn.py:270:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 271 20                        ; generate_amdgcn.py:271:20
	s_abs_i32 s4, s2
	s_ashr_i32 s10, s2, 31
	s_mul_hi_u32 s11, s4, s46
	s_xor_b32 s10, s10, s45
	s_mul_i32 s13, s11, s5
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	s_sub_i32 s4, s4, s13
	s_add_i32 s13, s11, 1
	s_sub_i32 s14, s4, s5
	s_cmp_ge_u32 s4, s5
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v41, 0
	s_cselect_b32 s11, s13, s11
	s_cselect_b32 s4, s14, s4
	s_add_i32 s13, s11, 1
	s_cmp_ge_u32 s4, s5
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v43, 0
	s_cselect_b32 s4, s13, s11
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v53, 0
	s_xor_b32 s4, s4, s10
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v63, 0
	s_sub_i32 s4, s4, s10
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v69, 0
	.loc	1 272 23                        ; generate_amdgcn.py:272:23
	s_lshl_b32 s11, s4, 2
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_mul_i32 s4, s4, s41
	.loc	1 273 35                        ; generate_amdgcn.py:273:35
	s_sub_i32 s10, s33, s11
	.loc	1 274 33                        ; generate_amdgcn.py:274:33
	s_sub_i32 s16, s2, s4
	.loc	1 273 24                        ; generate_amdgcn.py:273:24
	s_min_i32 s13, s10, 4
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v39, 0
	.loc	1 275 17                        ; generate_amdgcn.py:275:17
	s_abs_i32 s14, s13
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v45, 0
	s_cvt_f32_u32 s10, s14
	s_sub_i32 s15, 0, s14
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v47, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v51, s10
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v42, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v67, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s10, v51
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v64, 0
	v_mov_b32_e32 v55, 0
	s_mul_f32 s10, s10, 0x4f7ffffe
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v71, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s10, s10
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v88, 0
	s_mul_i32 s15, s15, s10
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v70, 0
	s_mul_hi_u32 s4, s10, s15
	s_abs_i32 s15, s16
	s_add_i32 s10, s10, s4
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v72, 0
	s_mul_hi_u32 s4, s15, s10
	s_xor_b32 s10, s16, s13
	s_mul_i32 s17, s4, s14
	s_ashr_i32 s10, s10, 31
	s_sub_i32 s15, s15, s17
	s_add_i32 s17, s4, 1
	s_sub_i32 s18, s15, s14
	s_cmp_ge_u32 s15, s14
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v78, 0
	s_cselect_b32 s4, s17, s4
	s_cselect_b32 s15, s18, s15
	s_add_i32 s17, s4, 1
	s_cmp_ge_u32 s15, s14
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v80, 0
	s_cselect_b32 s4, s17, s4
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v82, 0
	s_xor_b32 s4, s4, s10
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v84, 0
	s_sub_i32 s50, s4, s10
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v86, 0
	.loc	1 274 32                        ; generate_amdgcn.py:274:32
	s_mul_i32 s13, s50, s13
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v92, 0
	s_sub_i32 s13, s16, s13
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	s_add_i32 s13, s13, s11
	.loc	1 307 13 is_stmt 1              ; generate_amdgcn.py:307:13
	s_and_b32 vcc_lo, exec_lo, s0
	.loc	1 276 18                        ; generate_amdgcn.py:276:18
	s_lshl_b32 s51, s13, 4
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	scratch_load_b32 v0, off, off offset:8  ; 4-byte Folded Reload
	s_lshl_b32 s11, s10, 8
	scratch_store_b64 off, v[102:103], off  ; 8-byte Folded Spill
	s_lshl_b32 s10, s10, 7
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	s_lshl_b32 s52, s4, 8
	s_mov_b32 s53, 0
	s_mov_b32 s54, s43
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v36, s51, v0
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	v_mul_lo_u32 v103, s48, v36
	v_mov_b32_e32 v36, 0
	s_waitcnt vmcnt(0)
	v_subrev_nc_u32_e32 v100, s11, v0
	scratch_load_b64 v[0:1], off, off offset:32 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_lshl_add_u32 v37, s4, 7, v0
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	v_subrev_nc_u32_e32 v104, s10, v37
	v_mov_b32_e32 v37, 0
	s_waitcnt vmcnt(0)
	v_subrev_nc_u32_e32 v101, s11, v0
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_subrev_nc_u32_e32 v102, s11, v0
	scratch_load_b64 v[0:1], off, off offset:40 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v105, s51, v0
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 313 26                        ; generate_amdgcn.py:313:26
	v_add_nc_u32_e32 v106, s53, v12
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_dual_mov_b32 v164, s19 :: v_dual_add_nc_u32 v107, s53, v11
	v_mov_b32_e32 v163, s18
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	s_mov_b32 s30, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 314 31                        ; generate_amdgcn.py:314:31
	v_cmp_gt_i32_e32 vcc_lo, s42, v106
	v_cmp_gt_i32_e64 s4, s42, v107
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	s_mov_b32 s31, s27
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
	.loc	1 314 30                        ; generate_amdgcn.py:314:30
	s_and_b32 vcc_lo, vcc_lo, s1
	s_and_b32 s4, s4, s3
	.loc	1 318 30                        ; generate_amdgcn.py:318:30
	v_cndmask_b32_e32 v106, 0x80000000, v105, vcc_lo
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	v_cndmask_b32_e64 v107, 0x80000000, v104, s4
	.loc	1 318 30                        ; generate_amdgcn.py:318:30
	buffer_load_u8 v106, v106, s[24:27], 0 offen
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	buffer_load_b32 v108, v107, s[28:31], 0 offen
	.loc	1 318 30                        ; generate_amdgcn.py:318:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_dual_mov_b32 v161, s16 :: v_dual_add_nc_u32 v230, s52, v101
	v_dual_mov_b32 v162, s17 :: v_dual_add_nc_u32 v137, s52, v102
	v_dual_mov_b32 v160, s15 :: v_dual_add_nc_u32 v231, s52, v100
	v_dual_mov_b32 v159, s14 :: v_dual_mov_b32 v158, s13
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_add_i32 s54, s54, -1
	s_add_i32 s53, s53, 16
	s_cmp_lg_u32 s54, 0
	v_add_nc_u32_e32 v100, s47, v100
	v_add_nc_u32_e32 v102, s47, v102
	v_add_nc_u32_e32 v104, s49, v104
	.loc	1 318 30                        ; generate_amdgcn.py:318:30
	s_waitcnt vmcnt(1)
	ds_store_b8 v3, v106
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[106:107], v13
	ds_load_b64 v[221:222], v14
	.loc	1 325 30                        ; generate_amdgcn.py:325:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v15, v108
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	buffer_load_u16 v229, v103, s[8:11], 0 offen
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	ds_load_u8 v108, v5 offset:640
	ds_load_u8 v109, v5 offset:512
	ds_load_u8 v110, v5
	ds_load_u8 v111, v5 offset:128
	ds_load_u8 v112, v5 offset:144
	ds_load_u8 v113, v5 offset:896
	ds_load_u8 v114, v5 offset:912
	ds_load_u8 v115, v5 offset:928
	ds_load_u8 v116, v5 offset:944
	ds_load_u8 v117, v5 offset:960
	ds_load_u8 v118, v5 offset:976
	ds_load_u8 v119, v5 offset:992
	ds_load_u8 v120, v5 offset:768
	ds_load_u8 v121, v5 offset:784
	ds_load_u8 v122, v5 offset:800
	ds_load_u8 v123, v5 offset:816
	ds_load_u8 v124, v5 offset:832
	ds_load_u8 v125, v5 offset:848
	ds_load_u8 v126, v5 offset:864
	ds_load_u8 v127, v5 offset:656
	ds_load_u8 v128, v5 offset:672
	ds_load_u8 v129, v5 offset:688
	ds_load_u8 v130, v5 offset:704
	ds_load_u8 v131, v5 offset:720
	ds_load_u8 v132, v5 offset:736
	ds_load_u8 v133, v5 offset:752
	ds_load_u8 v134, v5 offset:528
	ds_load_u8 v135, v5 offset:544
	ds_load_u8 v136, v5 offset:560
	ds_load_u8 v138, v5 offset:576
	ds_load_u8 v139, v5 offset:592
	ds_load_u8 v140, v5 offset:608
	ds_load_u8 v141, v5 offset:624
	ds_load_u8 v142, v5 offset:880
	ds_load_u8 v143, v5 offset:160
	ds_load_u8 v144, v5 offset:176
	ds_load_u8 v145, v5 offset:192
	ds_load_u8 v146, v5 offset:208
	ds_load_u8 v147, v5 offset:224
	ds_load_u8 v148, v5 offset:240
	ds_load_u8 v149, v5 offset:16
	ds_load_u8 v150, v5 offset:32
	ds_load_u8 v151, v5 offset:48
	ds_load_u8 v152, v5 offset:64
	ds_load_u8 v153, v5 offset:80
	ds_load_u8 v154, v5 offset:96
	ds_load_u8 v155, v5 offset:112
	ds_load_u8 v156, v5 offset:256
	ds_load_u8 v165, v5 offset:384
	ds_load_u8 v166, v5 offset:400
	ds_load_u8 v167, v5 offset:416
	ds_load_u8 v168, v5 offset:432
	ds_load_u8 v169, v5 offset:448
	ds_load_u8 v170, v5 offset:464
	ds_load_u8 v171, v5 offset:480
	ds_load_u8 v172, v5 offset:496
	ds_load_u8 v173, v5 offset:272
	ds_load_u8 v174, v5 offset:288
	ds_load_u8 v175, v5 offset:304
	ds_load_u8 v176, v5 offset:320
	ds_load_u8 v177, v5 offset:336
	ds_load_u8 v178, v5 offset:352
	ds_load_u8 v179, v5 offset:368
	ds_load_u8 v223, v5 offset:1664
	ds_load_u8 v224, v5 offset:1536
	ds_load_u8 v227, v5 offset:1520
	ds_load_u8 v233, v5 offset:1776
	ds_load_u8 v234, v5 offset:1904
	ds_load_u8 v235, v5 offset:1024
	ds_load_u8 v236, v5 offset:1152
	ds_load_u8 v237, v5 offset:1136
	ds_load_u8 v238, v5 offset:1408
	ds_load_u8 v239, v5 offset:1280
	ds_load_u8 v240, v5 offset:1264
	ds_load_u8 v241, v5 offset:1392
	ds_load_u8 v242, v5 offset:1552
	ds_load_u8 v243, v5 offset:1680
	ds_load_u8 v244, v5 offset:1696
	ds_load_u8 v245, v5 offset:1712
	ds_load_u8 v246, v5 offset:1728
	ds_load_u8 v247, v5 offset:1744
	ds_load_u8 v248, v5 offset:1760
	ds_load_u8 v249, v5 offset:1568
	ds_load_u8 v250, v5 offset:1584
	ds_load_u8 v251, v5 offset:1600
	ds_load_u8 v252, v5 offset:1616
	ds_load_u8 v253, v5 offset:1632
	ds_load_u8 v254, v5 offset:1936
	ds_load_u8 v255, v5 offset:1808
	ds_load_u8 v8, v5 offset:1824
	ds_load_u8 v9, v5 offset:1840
	ds_load_u8 v10, v5 offset:1856
	ds_load_u8 v1, v5 offset:1872
	ds_load_u8 v2, v5 offset:1888
	ds_load_u8 v4, v5 offset:1952
	ds_load_u8 v0, v5 offset:1968
	ds_load_u8 v33, v5 offset:1984
	ds_load_u8 v34, v5 offset:2000
	ds_load_u8 v35, v5 offset:2016
	ds_load_u8 v180, v16
	ds_load_u8 v7, v17
	ds_load_u8 v6, v5 offset:1040
	ds_load_u8 v18, v5 offset:1168
	ds_load_u8 v19, v5 offset:1184
	ds_load_u8 v20, v5 offset:1200
	ds_load_u8 v21, v5 offset:1216
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	v_perm_b32 v109, v120, v113, 0xc0c0004
	v_perm_b32 v110, v110, v111, 0xc0c0004
	s_waitcnt lgkmcnt(57)
	v_perm_b32 v111, v156, v165, 0xc0c0004
	v_perm_b32 v113, v134, v127, 0xc0c0004
	v_perm_b32 v114, v121, v114, 0xc0c0004
	v_perm_b32 v112, v149, v112, 0xc0c0004
	v_perm_b32 v121, v135, v128, 0xc0c0004
	v_perm_b32 v115, v122, v115, 0xc0c0004
	s_waitcnt lgkmcnt(49)
	v_perm_b32 v120, v173, v166, 0xc0c0004
	v_perm_b32 v122, v150, v143, 0xc0c0004
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v128, v174, v167, 0xc0c0004
	v_perm_b32 v129, v136, v129, 0xc0c0004
	v_perm_b32 v116, v123, v116, 0xc0c0004
	v_perm_b32 v123, v151, v144, 0xc0c0004
	s_waitcnt lgkmcnt(47)
	v_perm_b32 v135, v175, v168, 0xc0c0004
	v_perm_b32 v130, v138, v130, 0xc0c0004
	v_perm_b32 v117, v124, v117, 0xc0c0004
	v_perm_b32 v124, v152, v145, 0xc0c0004
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v136, v176, v169, 0xc0c0004
	v_perm_b32 v131, v139, v131, 0xc0c0004
	v_perm_b32 v118, v125, v118, 0xc0c0004
	v_perm_b32 v125, v153, v146, 0xc0c0004
	s_waitcnt lgkmcnt(45)
	v_perm_b32 v138, v177, v170, 0xc0c0004
	v_perm_b32 v132, v140, v132, 0xc0c0004
	v_perm_b32 v126, v126, v119, 0xc0c0004
	v_perm_b32 v139, v154, v147, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v140, v178, v171, 0xc0c0004
	v_perm_b32 v143, v155, v148, 0xc0c0004
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v144, v179, v172, 0xc0c0004
	v_perm_b32 v133, v141, v133, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v141, v142, v180, 0xc0c0004
	v_lshl_or_b32 v109, v109, 16, v108
	v_lshl_or_b32 v108, v111, 16, v110
	v_lshl_or_b32 v111, v114, 16, v113
	v_lshl_or_b32 v110, v120, 16, v112
	v_lshl_or_b32 v113, v115, 16, v121
	v_lshl_or_b32 v112, v128, 16, v122
	v_lshl_or_b32 v115, v116, 16, v129
	v_lshl_or_b32 v114, v135, 16, v123
	v_lshl_or_b32 v117, v117, 16, v130
	v_lshl_or_b32 v116, v136, 16, v124
	v_lshl_or_b32 v119, v118, 16, v131
	v_lshl_or_b32 v118, v138, 16, v125
	v_lshl_or_b32 v121, v126, 16, v132
	v_lshl_or_b32 v120, v140, 16, v139
	v_lshl_or_b32 v122, v144, 16, v143
	v_lshl_or_b32 v123, v141, 16, v133
	ds_load_u8 v24, v5 offset:1056
	ds_load_u8 v156, v5 offset:1072
	ds_load_u8 v22, v5 offset:1232
	ds_load_u8 v23, v5 offset:1248
	ds_load_u8 v127, v5 offset:1088
	ds_load_u8 v125, v5 offset:1344
	ds_load_u8 v131, v5 offset:1360
	ds_load_u8 v134, v5 offset:1104
	ds_load_u8 v228, v5 offset:1648
	ds_load_u8 v225, v5 offset:1920
	ds_load_u8 v226, v5 offset:1792
	ds_load_u8 v124, v5 offset:1472
	ds_load_u8 v130, v5 offset:1488
	ds_load_u8 v136, v5 offset:1504
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v6, v6, v18, 0xc0c0004
	v_perm_b32 v4, v8, v4, 0xc0c0004
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	buffer_load_u16 v232, v230, s[36:39], 0 offen
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	ds_load_u8 v18, v5 offset:1376
	v_perm_b32 v0, v9, v0, 0xc0c0004
	v_perm_b32 v1, v1, v34, 0xc0c0004
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x4
	buffer_load_u16 v129, v230, s[36:39], 0 offen offset:96
	buffer_load_u16 v133, v230, s[36:39], 0 offen offset:112
	buffer_load_u16 v140, v230, s[36:39], 0 offen offset:140
	buffer_load_u16 v141, v230, s[36:39], 0 offen offset:144
	buffer_load_u16 v142, v230, s[36:39], 0 offen offset:148
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v8, v24, v19, 0xc0c0004
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x5
	buffer_load_u16 v128, v230, s[36:39], 0 offen offset:92
	buffer_load_u16 v138, v230, s[36:39], 0 offen offset:132
	buffer_load_u16 v139, v230, s[36:39], 0 offen offset:136
	buffer_load_u16 v143, v230, s[36:39], 0 offen offset:152
	buffer_load_u16 v144, v230, s[36:39], 0 offen offset:156
	buffer_load_u16 v145, v230, s[36:39], 0 offen offset:160
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	v_add_nc_u32_e32 v103, 2, v103
	.loc	1 327 22                        ; generate_amdgcn.py:327:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v229, 16, v229
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_mov_b32_e32 v157, s12
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[108:109], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[173:180], v[110:111], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[112:113], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[114:115], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[116:117], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[205:212], v[118:119], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[213:220], v[120:121], v[106:107], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[157:164], v[122:123], v[106:107], v[157:164] neg_lo:[1,1,0]
	ds_load_u8 v135, v5 offset:1120
	ds_load_u8 v106, v5 offset:1296
	ds_load_u8 v107, v5 offset:1424
	ds_load_u8 v112, v5 offset:1440
	ds_load_u8 v113, v5 offset:1312
	ds_load_u8 v119, v5 offset:1328
	ds_load_u8 v118, v5 offset:1456
	v_perm_b32 v108, v224, v223, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v109, v226, v225, 0xc0c0004
	v_perm_b32 v110, v235, v236, 0xc0c0004
	v_perm_b32 v111, v239, v238, 0xc0c0004
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v115, v230, s[36:39], 0 offen offset:40
	buffer_load_u16 v116, v230, s[36:39], 0 offen offset:44
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_lshl_or_b32 v147, v109, 16, v108
	v_perm_b32 v108, v242, v243, 0xc0c0004
	v_perm_b32 v109, v255, v254, 0xc0c0004
	v_lshl_or_b32 v146, v111, 16, v110
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x5
	buffer_load_u16 v110, v230, s[36:39], 0 offen offset:20
	buffer_load_u16 v111, v230, s[36:39], 0 offen offset:24
	buffer_load_u16 v117, v230, s[36:39], 0 offen offset:48
	buffer_load_u16 v121, v230, s[36:39], 0 offen offset:64
	buffer_load_u16 v122, v230, s[36:39], 0 offen offset:68
	buffer_load_u16 v123, v230, s[36:39], 0 offen offset:72
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v107, v106, v107, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v113, v112, 0xc0c0004
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v106, v230, s[36:39], 0 offen offset:4
	buffer_load_u16 v112, v230, s[36:39], 0 offen offset:28
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_lshl_or_b32 v149, v109, 16, v108
	v_lshl_or_b32 v148, v107, 16, v6
	v_perm_b32 v6, v249, v244, 0xc0c0004
	v_lshl_or_b32 v150, v19, 16, v8
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v8, v119, v118, 0xc0c0004
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x2
	buffer_load_u16 v109, v230, s[36:39], 0 offen offset:16
	buffer_load_u16 v107, v230, s[36:39], 0 offen offset:8
	buffer_load_u16 v108, v230, s[36:39], 0 offen offset:12
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_lshl_or_b32 v151, v4, 16, v6
	v_perm_b32 v4, v250, v245, 0xc0c0004
	v_perm_b32 v6, v156, v20, 0xc0c0004
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x4
	buffer_load_u16 v118, v230, s[36:39], 0 offen offset:52
	buffer_load_u16 v113, v230, s[36:39], 0 offen offset:32
	buffer_load_u16 v114, v230, s[36:39], 0 offen offset:36
	buffer_load_u16 v119, v230, s[36:39], 0 offen offset:56
	buffer_load_u16 v120, v230, s[36:39], 0 offen offset:60
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_lshl_or_b32 v153, v0, 16, v4
	v_lshl_or_b32 v152, v8, 16, v6
	v_perm_b32 v0, v251, v246, 0xc0c0004
	v_perm_b32 v4, v10, v33, 0xc0c0004
	v_perm_b32 v6, v127, v21, 0xc0c0004
	v_perm_b32 v8, v125, v124, 0xc0c0004
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v124, v230, s[36:39], 0 offen offset:76
	buffer_load_u16 v127, v230, s[36:39], 0 offen offset:88
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_lshl_or_b32 v155, v4, 16, v0
	v_perm_b32 v0, v252, v247, 0xc0c0004
	v_lshl_or_b32 v154, v8, 16, v6
	v_perm_b32 v6, v131, v130, 0xc0c0004
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	buffer_load_u16 v130, v230, s[36:39], 0 offen offset:100
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_perm_b32 v4, v134, v22, 0xc0c0004
	v_lshl_or_b32 v224, v1, 16, v0
	v_perm_b32 v1, v2, v35, 0xc0c0004
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	buffer_load_u16 v134, v230, s[36:39], 0 offen offset:116
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_perm_b32 v2, v135, v23, 0xc0c0004
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x4
	buffer_load_u16 v135, v230, s[36:39], 0 offen offset:120
	buffer_load_u16 v125, v230, s[36:39], 0 offen offset:80
	buffer_load_u16 v126, v230, s[36:39], 0 offen offset:84
	buffer_load_u16 v131, v230, s[36:39], 0 offen offset:104
	buffer_load_u16 v132, v230, s[36:39], 0 offen offset:108
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_wmma_i32_16x16x16_iu4 v[165:172], v[146:147], v[221:222], v[165:172] neg_lo:[1,1,0]
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_clause 0x1
	buffer_load_u16 v146, v230, s[36:39], 0 offen offset:164
	buffer_load_u16 v147, v230, s[36:39], 0 offen offset:168
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_lshl_or_b32 v223, v6, 16, v4
	v_perm_b32 v0, v253, v248, 0xc0c0004
	v_perm_b32 v4, v18, v136, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[173:180], v[148:149], v[221:222], v[173:180] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[181:188], v[150:151], v[221:222], v[181:188] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[189:196], v[152:153], v[221:222], v[189:196] neg_lo:[1,1,0]
	v_lshl_or_b32 v226, v1, 16, v0
	v_lshl_or_b32 v225, v4, 16, v2
	v_perm_b32 v0, v237, v240, 0xc0c0004
	v_perm_b32 v1, v241, v227, 0xc0c0004
	v_perm_b32 v2, v228, v233, 0xc0c0004
	v_perm_b32 v4, v234, v7, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[197:204], v[154:155], v[221:222], v[197:204] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[205:212], v[223:224], v[221:222], v[205:212] neg_lo:[1,1,0]
	v_lshl_or_b32 v227, v1, 16, v0
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_cvt_f32_i32_e32 v0, v165
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_lshl_or_b32 v228, v4, 16, v2
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_cvt_f32_i32_e32 v1, v166
	v_cvt_f32_i32_e32 v20, v176
	v_cvt_f32_i32_e32 v176, v185
	v_cvt_f32_i32_e32 v185, v194
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_wmma_i32_16x16x16_iu4 v[157:164], v[227:228], v[221:222], v[157:164] neg_lo:[1,1,0]
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_cvt_f32_i32_e32 v194, v203
	v_cvt_f32_i32_e32 v203, v212
	v_mul_f32_e32 v0, v0, v229
	.loc	1 326 31                        ; generate_amdgcn.py:326:31
	v_wmma_i32_16x16x16_iu4 v[213:220], v[225:226], v[221:222], v[213:220] neg_lo:[1,1,0]
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_cvt_f32_i32_e32 v212, v157
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v157, 16, v232
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_cvt_f32_i32_e32 v6, v169
	v_cvt_f32_i32_e32 v7, v170
	v_cvt_f32_i32_e32 v33, v181
	v_cvt_f32_i32_e32 v181, v190
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v90, v0, v157
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v157, v1, v229
	v_cvt_f32_i32_e32 v2, v167
	v_cvt_f32_i32_e32 v8, v171
	v_cvt_f32_i32_e32 v9, v172
	v_cvt_f32_i32_e32 v18, v174
	v_cvt_f32_i32_e32 v19, v175
	v_cvt_f32_i32_e32 v21, v177
	v_cvt_f32_i32_e32 v22, v178
	v_cvt_f32_i32_e32 v23, v179
	v_cvt_f32_i32_e32 v24, v180
	v_cvt_f32_i32_e32 v35, v183
	v_cvt_f32_i32_e32 v175, v184
	v_cvt_f32_i32_e32 v177, v186
	v_cvt_f32_i32_e32 v178, v187
	v_cvt_f32_i32_e32 v179, v188
	v_cvt_f32_i32_e32 v180, v189
	v_cvt_f32_i32_e32 v188, v197
	v_cvt_f32_i32_e32 v189, v198
	v_cvt_f32_i32_e32 v197, v206
	v_cvt_f32_i32_e32 v198, v207
	v_cvt_f32_i32_e32 v206, v215
	v_cvt_f32_i32_e32 v207, v216
	v_cvt_f32_i32_e32 v215, v160
	v_cvt_f32_i32_e32 v216, v161
	v_cvt_f32_i32_e32 v4, v168
	v_cvt_f32_i32_e32 v10, v173
	v_cvt_f32_i32_e32 v34, v182
	v_cvt_f32_i32_e32 v182, v191
	v_cvt_f32_i32_e32 v183, v192
	v_cvt_f32_i32_e32 v184, v193
	v_cvt_f32_i32_e32 v186, v195
	v_cvt_f32_i32_e32 v187, v196
	v_cvt_f32_i32_e32 v190, v199
	v_cvt_f32_i32_e32 v191, v200
	v_cvt_f32_i32_e32 v192, v201
	v_cvt_f32_i32_e32 v193, v202
	v_cvt_f32_i32_e32 v195, v204
	v_cvt_f32_i32_e32 v196, v205
	v_cvt_f32_i32_e32 v199, v208
	v_cvt_f32_i32_e32 v200, v209
	v_cvt_f32_i32_e32 v201, v210
	v_cvt_f32_i32_e32 v202, v211
	v_cvt_f32_i32_e32 v204, v213
	v_cvt_f32_i32_e32 v205, v214
	v_cvt_f32_i32_e32 v208, v217
	v_cvt_f32_i32_e32 v209, v218
	v_cvt_f32_i32_e32 v210, v219
	v_cvt_f32_i32_e32 v211, v220
	v_cvt_f32_i32_e32 v213, v158
	v_cvt_f32_i32_e32 v214, v159
	v_cvt_f32_i32_e32 v217, v162
	v_cvt_f32_i32_e32 v218, v163
	v_cvt_f32_i32_e32 v219, v164
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_clause 0x13
	buffer_load_u16 v136, v230, s[36:39], 0 offen offset:128
	buffer_load_u16 v137, v137, s[36:39], 0 offen
	buffer_load_u16 v148, v230, s[36:39], 0 offen offset:172
	buffer_load_u16 v149, v230, s[36:39], 0 offen offset:176
	buffer_load_u16 v150, v230, s[36:39], 0 offen offset:180
	buffer_load_u16 v151, v230, s[36:39], 0 offen offset:184
	buffer_load_u16 v152, v230, s[36:39], 0 offen offset:188
	buffer_load_u16 v153, v230, s[36:39], 0 offen offset:192
	buffer_load_u16 v154, v230, s[36:39], 0 offen offset:196
	buffer_load_u16 v155, v230, s[36:39], 0 offen offset:200
	buffer_load_u16 v156, v230, s[36:39], 0 offen offset:204
	buffer_load_u16 v220, v230, s[36:39], 0 offen offset:208
	buffer_load_u16 v221, v230, s[36:39], 0 offen offset:212
	buffer_load_u16 v222, v230, s[36:39], 0 offen offset:216
	buffer_load_u16 v223, v230, s[36:39], 0 offen offset:220
	buffer_load_u16 v224, v230, s[36:39], 0 offen offset:224
	buffer_load_u16 v225, v230, s[36:39], 0 offen offset:228
	buffer_load_u16 v226, v230, s[36:39], 0 offen offset:232
	buffer_load_u16 v227, v230, s[36:39], 0 offen offset:236
	buffer_load_u16 v228, v230, s[36:39], 0 offen offset:240
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v0, 16, v106
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_fmac_f32_e32 v98, v157, v0
	.loc	1 329 24 is_stmt 0              ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v160, v6, v229
	v_mul_f32_e32 v161, v7, v229
	v_mul_f32_e32 v176, v176, v229
	v_mul_f32_e32 v181, v181, v229
	v_dual_mul_f32 v158, v2, v229 :: v_dual_lshlrev_b32 v7, 16, v111
	s_waitcnt vmcnt(37)
	v_dual_mul_f32 v162, v8, v229 :: v_dual_lshlrev_b32 v1, 16, v107
	s_waitcnt vmcnt(36)
	v_dual_mul_f32 v163, v9, v229 :: v_dual_lshlrev_b32 v2, 16, v108
	v_dual_mul_f32 v165, v18, v229 :: v_dual_lshlrev_b32 v6, 16, v110
	v_mul_f32_e32 v166, v19, v229
	v_mul_f32_e32 v170, v23, v229
	v_dual_mul_f32 v171, v24, v229 :: v_dual_lshlrev_b32 v18, 16, v115
	v_mul_f32_e32 v174, v35, v229
	v_mul_f32_e32 v175, v175, v229
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v177, v177, v229 :: v_dual_lshlrev_b32 v108, 16, v127
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v178, v178, v229 :: v_dual_lshlrev_b32 v111, 16, v130
	v_dual_mul_f32 v180, v180, v229 :: v_dual_lshlrev_b32 v19, 16, v116
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	v_lshlrev_b32_e32 v35, 16, v124
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v115, 16, v134
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v159, v4, v229 :: v_dual_lshlrev_b32 v116, 16, v135
	.loc	1 329 17 is_stmt 0              ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v79, v181, v111 :: v_dual_lshlrev_b32 v110, 16, v129
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v106, 16, v125
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v164, v10, v229
	v_dual_mul_f32 v167, v20, v229 :: v_dual_lshlrev_b32 v8, 16, v112
	v_mul_f32_e32 v168, v21, v229
	v_dual_mul_f32 v169, v22, v229 :: v_dual_lshlrev_b32 v10, 16, v114
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v172, v33, v229 :: v_dual_lshlrev_b32 v107, 16, v126
	v_dual_mul_f32 v173, v34, v229 :: v_dual_lshlrev_b32 v22, 16, v119
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v179, v179, v229 :: v_dual_lshlrev_b32 v112, 16, v131
	v_dual_mul_f32 v182, v182, v229 :: v_dual_lshlrev_b32 v119, 16, v138
	v_mul_f32_e32 v183, v183, v229
	v_mul_f32_e32 v184, v184, v229
	v_mul_f32_e32 v185, v185, v229
	v_mul_f32_e32 v186, v186, v229
	v_dual_mul_f32 v187, v187, v229 :: v_dual_lshlrev_b32 v124, 16, v143
	v_dual_mul_f32 v188, v188, v229 :: v_dual_lshlrev_b32 v125, 16, v144
	v_mul_f32_e32 v189, v189, v229
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v190, v190, v229 :: v_dual_lshlrev_b32 v127, 16, v146
	v_mul_f32_e32 v191, v191, v229
	v_mul_f32_e32 v192, v192, v229
	v_mul_f32_e32 v193, v193, v229
	v_mul_f32_e32 v194, v194, v229
	v_mul_f32_e32 v195, v195, v229
	v_mul_f32_e32 v196, v196, v229
	v_mul_f32_e32 v197, v197, v229
	v_mul_f32_e32 v198, v198, v229
	v_mul_f32_e32 v199, v199, v229
	v_mul_f32_e32 v200, v200, v229
	v_mul_f32_e32 v201, v201, v229
	v_mul_f32_e32 v202, v202, v229
	v_mul_f32_e32 v203, v203, v229
	v_mul_f32_e32 v204, v204, v229
	v_mul_f32_e32 v205, v205, v229
	v_mul_f32_e32 v206, v206, v229
	v_dual_mul_f32 v208, v208, v229 :: v_dual_fmac_f32 v89, v161, v6
	v_dual_mul_f32 v209, v209, v229 :: v_dual_fmac_f32 v94, v159, v2
	v_dual_mul_f32 v210, v210, v229 :: v_dual_fmac_f32 v75, v167, v19
	v_dual_mul_f32 v211, v211, v229 :: v_dual_fmac_f32 v86, v162, v7
	v_dual_mul_f32 v213, v213, v229 :: v_dual_fmac_f32 v84, v163, v8
	v_dual_mul_f32 v215, v215, v229 :: v_dual_fmac_f32 v80, v165, v10
	v_dual_mul_f32 v219, v219, v229 :: v_dual_fmac_f32 v70, v170, v22
	v_dual_mul_f32 v212, v212, v229 :: v_dual_lshlrev_b32 v23, 16, v120
	v_dual_mul_f32 v217, v217, v229 :: v_dual_fmac_f32 v78, v166, v18
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	v_lshlrev_b32_e32 v33, 16, v122
	v_lshlrev_b32_e32 v34, 16, v123
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v93, v175, v35 :: v_dual_lshlrev_b32 v4, 16, v109
	.loc	1 329 24 is_stmt 0              ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v207, v207, v229
	v_dual_mul_f32 v216, v216, v229 :: v_dual_lshlrev_b32 v109, 16, v128
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	s_waitcnt vmcnt(20)
	v_dual_fmac_f32 v95, v174, v34 :: v_dual_lshlrev_b32 v128, 16, v147
	v_dual_fmac_f32 v76, v189, v119 :: v_dual_lshlrev_b32 v9, 16, v113
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	v_lshlrev_b32_e32 v113, 16, v132
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v85, v178, v108 :: v_dual_lshlrev_b32 v24, 16, v121
	.loc	1 329 24 is_stmt 0              ; generate_amdgcn.py:329:24
	v_dual_mul_f32 v218, v218, v229 :: v_dual_fmac_f32 v81, v180, v110
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v91, v176, v106 :: v_dual_lshlrev_b32 v20, 16, v117
	.loc	1 329 24                        ; generate_amdgcn.py:329:24
	v_mul_f32_e32 v214, v214, v229
	.loc	1 328 22 is_stmt 1              ; generate_amdgcn.py:328:22
	s_clause 0x2
	buffer_load_u16 v229, v230, s[36:39], 0 offen offset:244
	buffer_load_u16 v230, v230, s[36:39], 0 offen offset:248
	buffer_load_u16 v231, v231, s[36:39], 0 offen
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v77, v182, v112 :: v_dual_lshlrev_b32 v114, 16, v133
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	v_lshlrev_b32_e32 v21, 16, v118
	v_lshlrev_b32_e32 v120, 16, v139
	v_lshlrev_b32_e32 v121, 16, v140
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v71, v184, v114 :: v_dual_lshlrev_b32 v122, 16, v141
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v118, 16, v136
	v_lshlrev_b32_e32 v123, 16, v142
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v65, v186, v116 :: v_dual_lshlrev_b32 v126, 16, v145
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v129, 16, v148
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v62, v192, v122 :: v_dual_lshlrev_b32 v117, 16, v137
	s_waitcnt vmcnt(19)
	v_dual_fmac_f32 v87, v188, v118 :: v_dual_lshlrev_b32 v130, 16, v149
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v131, 16, v150
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v132, 16, v151
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v133, 16, v152
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v67, v190, v120 :: v_dual_lshlrev_b32 v134, 16, v153
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v135, 16, v154
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v136, 16, v155
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v137, 16, v156
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v138, 16, v220
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v52, v196, v126 :: v_dual_lshlrev_b32 v139, 16, v221
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v140, 16, v222
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v141, 16, v223
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v142, 16, v224
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v144, 16, v226
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v44, v201, v131 :: v_dual_lshlrev_b32 v143, 16, v225
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v145, 16, v227
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v146, 16, v228
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v88, v177, v107 :: v_dual_add_nc_u32 v101, s47, v101
	v_dual_fmac_f32 v68, v185, v115 :: v_dual_add_nc_u32 v105, s34, v105
	v_dual_fmac_f32 v96, v158, v1 :: v_dual_fmac_f32 v59, v193, v123
	v_fmac_f32_e32 v92, v160, v4
	v_dual_fmac_f32 v82, v164, v9 :: v_dual_fmac_f32 v57, v194, v124
	v_dual_fmac_f32 v73, v168, v20 :: v_dual_fmac_f32 v72, v169, v21
	v_fmac_f32_e32 v49, v198, v128
	v_fmac_f32_e32 v61, v171, v23
	v_fmac_f32_e32 v99, v172, v24
	v_fmac_f32_e32 v97, v173, v33
	v_dual_fmac_f32 v74, v183, v113 :: v_dual_fmac_f32 v51, v197, v127
	v_dual_fmac_f32 v55, v187, v117 :: v_dual_fmac_f32 v58, v208, v138
	v_dual_fmac_f32 v64, v191, v121 :: v_dual_fmac_f32 v45, v200, v130
	v_dual_fmac_f32 v54, v195, v125 :: v_dual_fmac_f32 v69, v204, v134
	v_dual_fmac_f32 v47, v199, v129 :: v_dual_fmac_f32 v56, v209, v139
	v_dual_fmac_f32 v39, v203, v133 :: v_dual_fmac_f32 v48, v212, v142
	v_dual_fmac_f32 v53, v210, v140 :: v_dual_fmac_f32 v50, v211, v141
	v_dual_fmac_f32 v46, v213, v143 :: v_dual_fmac_f32 v43, v214, v144
	v_dual_fmac_f32 v41, v215, v145 :: v_dual_fmac_f32 v40, v216, v146
	v_fmac_f32_e32 v42, v202, v132
	v_fmac_f32_e32 v60, v207, v137
	.loc	1 328 22                        ; generate_amdgcn.py:328:22
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v147, 16, v229
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v148, 16, v230
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v149, 16, v231
	.loc	1 329 17                        ; generate_amdgcn.py:329:17
	v_dual_fmac_f32 v83, v179, v109 :: v_dual_fmac_f32 v66, v205, v135
	v_dual_fmac_f32 v63, v206, v136 :: v_dual_fmac_f32 v38, v217, v147
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v37, v218, v148 :: v_dual_fmac_f32 v36, v219, v149
	.loc	1 307 13                        ; generate_amdgcn.py:307:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_clause 0xc                            ; 56-byte Folded Reload
	scratch_load_b32 v100, off, off offset:12
	scratch_load_b32 v101, off, off offset:16
	scratch_load_b64 v[102:103], off, off
	scratch_load_b32 v10, off, off offset:48
	scratch_load_b32 v18, off, off offset:52
	scratch_load_b32 v19, off, off offset:56
	scratch_load_b32 v20, off, off offset:60
	scratch_load_b32 v21, off, off offset:64
	scratch_load_b32 v22, off, off offset:68
	scratch_load_b32 v23, off, off offset:72
	scratch_load_b32 v24, off, off offset:76
	scratch_load_b32 v33, off, off offset:80
	scratch_load_b32 v34, off, off offset:84
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge9
	.loc	1 251 1 is_stmt 1               ; generate_amdgcn.py:251:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 92
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
		.amdhsa_next_free_sgpr 55
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
		.amdhsa_inst_pref_size 52
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk.numbered_sgpr, 55
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk.private_seg_size, 92
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6648
; TotalNumSgprs: 57
; NumVgprs: 256
; ScratchSize: 92
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 57
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk
    .private_segment_fixed_size: 92
    .sgpr_count:     57
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 22
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
