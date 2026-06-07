	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 196 0                         ; generate_amdgcn.py:196:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 prologue_end            ; standard.py:43:13 @[ generate_amdgcn.py:205:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 15
.Ltmp1:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:206:17 ]
	s_add_i32 s5, s35, 0x7f
.Ltmp2:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_ashr_i32 s6, s4, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s7, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:205:17 ]
	s_lshr_b32 s6, s6, 28
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
	s_ashr_i32 s33, s4, 4
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:206:17 ]
	s_ashr_i32 s4, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp10:
	.loc	1 207 17 is_stmt 1              ; generate_amdgcn.py:207:17
	s_mul_i32 s34, s4, s33
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_ge_i32 s2, s34
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.lr.ph8
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s5, s[0:1], 0x38
	s_load_b64 s[24:25], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 221 36 is_stmt 1              ; generate_amdgcn.py:221:36
	v_bfe_u32 v1, v0, 4, 4
	v_and_b32_e32 v14, 15, v0
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s44, s4, 2
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v4, 16, v0
	v_bfe_i32 v8, v0, 3, 1
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	scratch_store_b32 off, v1, off offset:40 ; 4-byte Folded Spill
	v_dual_mov_b32 v10, 0x7632 :: v_dual_lshlrev_b32 v1, 4, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshlrev_b32_e32 v5, 2, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v3, 5, v0
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v2, 1, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v9, 0x70, v1
	v_bfe_i32 v7, v0, 7, 1
	v_and_b32_e32 v6, 0x7f, v0
	v_or_b32_e32 v13, 0x3f0, v0
	v_mad_u64_u32 v[96:97], null, s35, v14, v[2:3]
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s5, 31
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s6, s5, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s1, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s5, s5, s6
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s1, s1, 27
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s45, s5, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s1
	s_mov_b32 s36, s10
	s_ashr_i32 s46, s1, 5
	s_cmp_gt_i32 s0, 31
	v_and_or_b32 v12, 0x88, v8, v9
	s_cselect_b32 s5, -1, 0
	s_abs_i32 s10, s44
	v_mov_b32_e32 v8, 0x5410
	s_cvt_f32_u32 s1, s10
	v_cmp_eq_u32_e64 s0, 0, v4
	v_and_b32_e32 v7, 0x88, v7
	v_or_b32_e32 v31, 0x7f0, v0
	v_rcp_iflag_f32_e32 v9, s1
	v_and_b32_e32 v0, 0x1e0, v0
	v_cndmask_b32_e64 v11, 0x1054, v8, s0
	v_cndmask_b32_e64 v2, 0x3276, v10, s0
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 4
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_and_b32_e32 v1, 0x7c, v5
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_or_b32_e32 v25, s3, v3
	v_lshl_or_b32 v10, v11, 8, v11
	v_lshl_or_b32 v2, v2, 8, v2
	v_xor_b32_e32 v6, v7, v6
	v_readfirstlane_b32 s1, v9
	v_xor_b32_e32 v7, 8, v12
	v_and_b32_e32 v10, 0x540054, v10
	v_and_b32_e32 v2, 0x760076, v2
	s_and_b32 s37, s11, 0xffff
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_add_nc_u32_e32 v16, 0, v14
	v_lshl_or_b32 v9, v10, 4, v10
	v_lshl_or_b32 v2, v2, 4, v2
	s_cvt_u32_f32 s6, s1
	s_sub_i32 s1, 0, s10
	v_add_nc_u32_e32 v97, 48, v96
	v_and_b32_e32 v102, 0x5040504, v9
	s_mul_i32 s7, s1, s6
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cndmask_b32_e64 v0, 0, 1, s5
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_or_b32_e32 v9, s3, v14
	v_and_b32_e32 v103, 0x7060706, v2
	v_mad_u64_u32 v[1:2], null, s35, v25, v[1:2]
	v_add_nc_u32_e32 v98, 64, v96
	v_add_nc_u32_e32 v99, 0x50, v96
	v_add_nc_u32_e32 v100, 0x60, v96
	v_add_nc_u32_e32 v101, 0x70, v96
	s_bfe_i32 s11, s4, 0x1001d
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_lshrrev_b32_e32 v104, 3, v4
	v_cmp_ne_u32_e64 s3, 1, v0
	v_cmp_gt_i32_e64 s4, 16, v25
	v_cmp_gt_i32_e64 s5, 16, v9
	v_add_nc_u32_e32 v105, 0, v6
	v_add_nc_u32_e32 v106, 0, v12
	v_add_nc_u32_e32 v107, 0, v7
	v_add_nc_u32_e32 v108, 0, v5
	v_add_nc_u32_e32 v165, 0, v13
	v_add_nc_u32_e32 v166, 0, v31
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mul_hi_u32 s7, s6, s7
	s_mov_b32 s28, s8
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s16, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_and_b32 s25, s25, 0xffff
	s_add_i32 s47, s6, s7
	s_lshl_b32 s48, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s49, s46, 1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s50, s35, 4
	s_mov_b32 s51, 0x76543210
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	s_clause 0xd                            ; 64-byte Folded Spill
	scratch_store_b32 off, v14, off offset:44
	scratch_store_b64 off, v[1:2], off offset:76
	scratch_store_b32 off, v97, off offset:48
	scratch_store_b32 off, v98, off offset:52
	scratch_store_b32 off, v99, off offset:56
	scratch_store_b32 off, v100, off offset:60
	scratch_store_b32 off, v101, off offset:64
	scratch_store_b32 off, v102, off offset:68
	scratch_store_b32 off, v103, off offset:72
	scratch_store_b64 off, v[9:10], off offset:8
	scratch_store_b32 off, v25, off offset:16
	scratch_store_b32 off, v108, off offset:20
	scratch_store_b32 off, v106, off offset:24
	scratch_store_b32 off, v107, off offset:28
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v0.h, 0
	v_mov_b16_e32 v0.l, v95.h
	v_mov_b16_e32 v1.l, v94.h
	v_mov_b16_e32 v3.l, v92.h
	v_cmp_o_f32_e32 vcc_lo, v95, v95
	v_mov_b16_e32 v1.h, v0.h
	v_and_b32_e32 v2, 1, v0
	v_mov_b16_e32 v0.l, v93.h
	v_mov_b16_e32 v3.h, v0.h
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s6, s7, 7
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v1, 1, v1
	v_add3_u32 v2, v95, v2, 0x7fff
	v_and_b32_e32 v4, 1, v0
	v_and_b32_e32 v3, 1, v3
	v_mov_b16_e32 v0.l, v91.h
	v_add3_u32 v5, v94, v1, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v94, v94
	v_add3_u32 v3, v92, v3, 0x7fff
	v_add3_u32 v2, v93, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v92, v92
	v_mov_b16_e32 v4.l, v90.h
	v_mov_b16_e32 v4.h, v0.h
	v_and_b32_e32 v6, 1, v0
	v_cndmask_b16 v1.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v2.l, 0x7fff, v3.h, s7
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_and_b32_e32 v3, 1, v4
	v_add3_u32 v4, v91, v6, 0x7fff
	v_mov_b16_e32 v0.l, v89.h
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	s_mul_i32 s14, s8, s35
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v5.l, v88.h
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s14, s14, s6
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_cmp_o_f32_e64 s6, v93, v93
	v_mov_b16_e32 v5.h, v0.h
	v_add3_u32 v6, v90, v3, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v4.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_and_b32_e32 v4, 1, v0
	v_mov_b16_e32 v7.l, v86.h
	v_mov_b16_e32 v7.h, v0.h
	v_mov_b16_e32 v0.l, v87.h
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_and_b32_e32 v5, 1, v5
	v_add3_u32 v4, v89, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v89, v89
	v_cndmask_b16 v3.l, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e32 v0.l, v85.h
	v_add3_u32 v5, v88, v5, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s6
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	v_add3_u32 v6, v86, v6, 0x7fff
	v_add3_u32 v7, v87, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v87, v87
	v_cmp_o_f32_e64 s7, v86, v86
	v_mov_b16_e32 v8.l, v84.h
	v_mov_b16_e32 v8.h, v0.h
	s_waitcnt vmcnt(9)
	v_and_b32_e32 v10, 1, v0
	v_cndmask_b16 v4.l, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s7
	v_and_b32_e32 v6, 1, v8
	v_add3_u32 v7, v85, v10, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_mov_b16_e32 v0.l, v83.h
	v_mov_b16_e32 v8.l, v82.h
	v_add3_u32 v10, v84, v6, 0x7fff
	v_mov_b16_e32 v11.l, v80.h
	v_cndmask_b16 v6.h, 0x7fff, v7.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v84, v84
	v_and_b32_e32 v7, 1, v0
	v_mov_b16_e32 v11.h, v0.h
	v_mov_b16_e32 v0.l, v81.h
	v_and_b32_e32 v8, 1, v8
	v_cndmask_b16 v6.l, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_and_b32_e32 v10, 1, v11
	v_and_b32_e32 v11, 1, v0
	v_mov_b16_e32 v0.l, v79.h
	v_add3_u32 v8, v82, v8, 0x7fff
	v_cmp_o_f32_e64 s7, v80, v80
	v_add3_u32 v10, v80, v10, 0x7fff
	v_mov_b16_e32 v12.l, v78.h
	v_mov_b16_e32 v12.h, v0.h
	v_and_b32_e32 v13, 1, v0
	v_add3_u32 v7, v83, v7, 0x7fff
	v_add3_u32 v11, v81, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v83, v83
	v_cndmask_b16 v7.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v11.l, 0x7fff, v10.h, s7
	v_and_b32_e32 v8, 1, v12
	v_add3_u32 v10, v79, v13, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_mov_b16_e32 v0.l, v77.h
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s6
	v_cmp_o_f32_e64 s6, v81, v81
	v_mov_b16_e32 v12.l, v76.h
	v_add3_u32 v8, v78, v8, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_and_b32_e32 v13, 1, v0
	v_mov_b16_e32 v14.l, v74.h
	v_mov_b16_e32 v14.h, v0.h
	v_mov_b16_e32 v0.l, v75.h
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s6
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v13, v77, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v77, v77
	v_cndmask_b16 v10.l, 0x7fff, v8.h, vcc_lo
	v_and_b32_e32 v8, 1, v14
	v_and_b32_e32 v14, 1, v0
	v_mov_b16_e32 v0.l, v73.h
	v_add3_u32 v12, v76, v12, 0x7fff
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s6
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_add3_u32 v8, v74, v8, 0x7fff
	v_add3_u32 v14, v75, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v75, v75
	v_cmp_o_f32_e64 s7, v74, v74
	v_mov_b16_e32 v15.l, v72.h
	v_mov_b16_e32 v15.h, v0.h
	v_and_b32_e32 v17, 1, v0
	v_cndmask_b16 v13.l, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s6
	v_cndmask_b16 v12.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v15
	v_add3_u32 v14, v73, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_mov_b16_e32 v0.l, v71.h
	v_mov_b16_e32 v15.l, v70.h
	v_add3_u32 v8, v72, v8, 0x7fff
	v_mov_b16_e32 v18.l, v69.h
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v72, v72
	v_and_b32_e32 v17, 1, v0
	v_mov_b16_e32 v18.h, v0.h
	v_mov_b16_e32 v0.l, v68.h
	v_and_b32_e32 v15, 1, v15
	v_cmp_o_f32_e64 s6, v71, v71
	v_add3_u32 v17, v71, v17, 0x7fff
	v_cndmask_b16 v14.l, 0x7fff, v8.h, vcc_lo
	v_and_b32_e32 v8, 1, v18
	v_and_b32_e32 v18, 1, v0
	v_mov_b16_e32 v0.l, v67.h
	v_add3_u32 v15, v70, v15, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_add3_u32 v8, v69, v8, 0x7fff
	v_add3_u32 v18, v68, v18, 0x7fff
	v_cmp_o_f32_e64 s6, v68, v68
	v_cmp_o_f32_e64 s7, v69, v69
	v_mov_b16_e32 v19.l, v66.h
	v_mov_b16_e32 v19.h, v0.h
	v_and_b32_e32 v20, 1, v0
	v_cndmask_b16 v17.l, 0x7fff, v15.h, vcc_lo
	v_cndmask_b16 v15.h, 0x7fff, v18.h, s6
	v_cndmask_b16 v15.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v19
	v_add3_u32 v18, v67, v20, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_mov_b16_e32 v0.l, v65.h
	v_mov_b16_e32 v19.l, v64.h
	v_add3_u32 v8, v66, v8, 0x7fff
	v_mov_b16_e32 v21.l, v63.h
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_and_b32_e32 v20, 1, v0
	v_mov_b16_e32 v21.h, v0.h
	v_mov_b16_e32 v0.l, v62.h
	v_and_b32_e32 v19, 1, v19
	v_cmp_o_f32_e64 s6, v65, v65
	v_add3_u32 v20, v65, v20, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v8.h, vcc_lo
	v_and_b32_e32 v8, 1, v21
	v_and_b32_e32 v21, 1, v0
	v_mov_b16_e32 v0.l, v61.h
	v_add3_u32 v19, v64, v19, 0x7fff
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s6
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	v_add3_u32 v8, v63, v8, 0x7fff
	v_add3_u32 v21, v62, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v62, v62
	v_cmp_o_f32_e64 s7, v63, v63
	v_mov_b16_e32 v22.l, v60.h
	v_mov_b16_e32 v22.h, v0.h
	v_and_b32_e32 v23, 1, v0
	v_cndmask_b16 v20.l, 0x7fff, v19.h, vcc_lo
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s6
	v_cndmask_b16 v19.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v22
	v_add3_u32 v21, v61, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_mov_b16_e32 v0.l, v59.h
	v_mov_b16_e32 v22.l, v58.h
	v_add3_u32 v8, v60, v8, 0x7fff
	v_mov_b16_e32 v24.l, v56.h
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_and_b32_e32 v23, 1, v0
	v_mov_b16_e32 v24.h, v0.h
	v_mov_b16_e32 v0.l, v57.h
	v_and_b32_e32 v22, 1, v22
	v_cmp_o_f32_e64 s6, v59, v59
	v_add3_u32 v23, v59, v23, 0x7fff
	v_cndmask_b16 v21.l, 0x7fff, v8.h, vcc_lo
	v_and_b32_e32 v8, 1, v24
	v_and_b32_e32 v24, 1, v0
	v_mov_b16_e32 v0.l, v55.h
	v_add3_u32 v22, v58, v22, 0x7fff
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s6
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_add3_u32 v8, v56, v8, 0x7fff
	v_add3_u32 v24, v57, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v57, v57
	v_cmp_o_f32_e64 s7, v56, v56
	v_mov_b16_e32 v26.l, v54.h
	v_mov_b16_e32 v26.h, v0.h
	v_and_b32_e32 v27, 1, v0
	v_cndmask_b16 v23.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s6
	v_cndmask_b16 v22.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v26
	v_add3_u32 v24, v55, v27, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_mov_b16_e32 v0.l, v53.h
	v_mov_b16_e32 v26.l, v52.h
	v_add3_u32 v8, v54, v8, 0x7fff
	v_mov_b16_e32 v28.l, v50.h
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v54, v54
	v_and_b32_e32 v27, 1, v0
	v_mov_b16_e32 v28.h, v0.h
	v_mov_b16_e32 v0.l, v51.h
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s6, v53, v53
	v_add3_u32 v27, v53, v27, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v8.h, vcc_lo
	v_and_b32_e32 v8, 1, v28
	v_and_b32_e32 v28, 1, v0
	v_mov_b16_e32 v0.l, v49.h
	v_add3_u32 v26, v52, v26, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s6
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_add3_u32 v8, v50, v8, 0x7fff
	v_add3_u32 v28, v51, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v51, v51
	v_cmp_o_f32_e64 s7, v50, v50
	v_mov_b16_e32 v29.l, v48.h
	v_mov_b16_e32 v29.h, v0.h
	v_and_b32_e32 v30, 1, v0
	v_cndmask_b16 v27.l, 0x7fff, v26.h, vcc_lo
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s6
	v_cndmask_b16 v26.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v29
	v_add3_u32 v28, v49, v30, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_mov_b16_e32 v0.l, v47.h
	v_mov_b16_e32 v29.l, v46.h
	v_add3_u32 v8, v48, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v47, v47
	v_cndmask_b16 v28.h, 0x7fff, v28.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_and_b32_e32 v30, 1, v0
	v_mov_b16_e32 v48.l, v44.h
	v_mov_b16_e32 v48.h, v0.h
	v_mov_b16_e32 v0.l, v45.h
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v30, v47, v30, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v8.h, vcc_lo
	v_and_b32_e32 v8, 1, v48
	v_and_b32_e32 v47, 1, v0
	v_mov_b16_e32 v0.l, v43.h
	v_add3_u32 v29, v46, v29, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s6
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_add3_u32 v8, v44, v8, 0x7fff
	v_add3_u32 v46, v45, v47, 0x7fff
	v_cmp_o_f32_e64 s6, v45, v45
	v_cmp_o_f32_e64 s7, v44, v44
	v_mov_b16_e32 v44.l, v42.h
	v_mov_b16_e32 v44.h, v0.h
	v_and_b32_e32 v45, 1, v0
	v_cndmask_b16 v30.l, 0x7fff, v29.h, vcc_lo
	v_cndmask_b16 v29.l, 0x7fff, v8.h, s7
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	v_and_b32_e32 v8, 1, v44
	v_add3_u32 v44, v43, v45, 0x7fff
	v_mov_b16_e32 v0.l, v41.h
	v_mov_b16_e32 v43.l, v40.h
	v_mov_b16_e32 v43.h, v0.h
	v_add3_u32 v8, v42, v8, 0x7fff
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_and_b32_e32 v42, 1, v0
	v_mov_b16_e32 v45.l, v38.h
	v_mov_b16_e32 v45.h, v0.h
	v_mov_b16_e32 v0.l, v39.h
	v_cndmask_b16 v29.h, 0x7fff, v46.h, s6
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v42, v41, v42, 0x7fff
	v_cmp_o_f32_e64 s6, v41, v41
	v_cndmask_b16 v44.l, 0x7fff, v8.h, vcc_lo
	v_and_b32_e32 v8, 1, v45
	v_and_b32_e32 v41, 1, v0
	v_add3_u32 v43, v40, v43, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s6
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_add3_u32 v8, v38, v8, 0x7fff
	v_add3_u32 v40, v39, v41, 0x7fff
	v_cmp_o_f32_e64 s6, v39, v39
	v_cmp_o_f32_e64 s7, v38, v38
	v_mov_b16_e32 v38.l, v36.h
	v_mov_b16_e32 v38.h, v0.h
	v_mov_b16_e32 v0.l, v37.h
	v_cndmask_b16 v39.h, 0x7fff, v40.h, s6
	v_cndmask_b16 v39.l, 0x7fff, v8.h, s7
	v_mov_b16_e32 v40.l, v35.h
	v_and_b32_e32 v8, 1, v38
	v_and_b32_e32 v38, 1, v0
	v_mov_b16_e32 v0.l, v34.h
	v_mov_b16_e32 v40.h, v0.h
	v_cndmask_b16 v42.l, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_add3_u32 v38, v37, v38, 0x7fff
	v_and_b32_e32 v37, 1, v0
	v_and_b32_e32 v40, 1, v40
	v_mov_b16_e32 v41.l, v33.h
	v_mov_b16_e32 v41.h, v0.h
	v_mov_b16_e32 v0.l, v32.h
	v_add3_u32 v8, v36, v8, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v36, v36
	v_add3_u32 v36, v35, v40, 0x7fff
	v_and_b32_e32 v40, 1, v41
	v_and_b32_e32 v0, 1, v0
	v_add3_u32 v37, v34, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v34, v34
	v_cmp_o_f32_e64 s7, v35, v35
	v_add3_u32 v34, v33, v40, 0x7fff
	v_add3_u32 v0, v32, v0, 0x7fff
	v_cmp_o_f32_e64 s8, v32, v32
	v_cmp_o_f32_e64 s9, v33, v33
	v_cndmask_b16 v38.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v37.h, s6
	v_cndmask_b16 v8.l, 0x7fff, v36.h, s7
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s8
	v_cndmask_b16 v0.l, 0x7fff, v34.h, s9
	v_cndmask_b32_e64 v32, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v3, v4, v2, s0
	v_cndmask_b32_e64 v2, v2, v4, s0
	v_cndmask_b32_e64 v33, v7, v5, s0
	v_cndmask_b32_e64 v4, v5, v7, s0
	v_cndmask_b32_e64 v7, v11, v6, s0
	v_cndmask_b32_e64 v5, v6, v11, s0
	v_cndmask_b32_e64 v11, v12, v10, s0
	v_cndmask_b32_e64 v6, v10, v12, s0
	v_cndmask_b32_e64 v12, v13, v14, s0
	v_cndmask_b32_e64 v10, v14, v13, s0
	v_cndmask_b32_e64 v53, v8, v39, s0
	v_cndmask_b32_e64 v8, v39, v8, s0
	v_cndmask_b32_e64 v55, v0, v38, s0
	v_cndmask_b32_e64 v0, v38, v0, s0
	v_permlanex16_b32 v1, v1, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v2, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v4, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v6, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v12, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v5, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v56, v0, s51, 0xfedcba98 op_sel:[1,0]
	s_waitcnt vmcnt(1)
	v_perm_b32 v0, v1, v32, v102
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v1, v32, v103
	v_perm_b32 v2, v34, v3, v102
	v_perm_b32 v3, v34, v3, v103
	v_perm_b32 v4, v35, v33, v102
	v_perm_b32 v5, v35, v33, v103
	v_perm_b32 v32, v37, v11, v102
	v_perm_b32 v33, v37, v11, v103
	v_perm_b32 v34, v12, v10, v102
	v_perm_b32 v35, v12, v10, v103
	v_add_nc_u32_e32 v10, 16, v96
	v_add_nc_u32_e32 v11, 32, v96
	v_add_lshl_u32 v12, s14, v96, 1
	v_cndmask_b32_e64 v13, v18, v17, s0
	v_cndmask_b32_e64 v14, v17, v18, s0
	v_cndmask_b32_e64 v17, v20, v15, s0
	v_cndmask_b32_e64 v15, v15, v20, s0
	v_cndmask_b32_e64 v18, v23, v19, s0
	v_cndmask_b32_e64 v19, v19, v23, s0
	v_cndmask_b32_e64 v20, v22, v21, s0
	v_cndmask_b32_e64 v21, v21, v22, s0
	v_perm_b32 v52, v8, v53, v102
	v_perm_b32 v53, v8, v53, v103
	v_add_lshl_u32 v8, v10, s14, 1
	v_add_lshl_u32 v10, v11, s14, 1
	v_cndmask_b32_e64 v11, 0x80000000, v12, s1
	v_cndmask_b32_e64 v22, v26, v24, s0
	v_cndmask_b32_e64 v23, v24, v26, s0
	v_cndmask_b32_e64 v24, v28, v27, s0
	v_cndmask_b32_e64 v26, v27, v28, s0
	v_cndmask_b32_e64 v27, v44, v30, s0
	v_cndmask_b32_e64 v28, v30, v44, s0
	v_cndmask_b32_e64 v30, v42, v29, s0
	v_cndmask_b32_e64 v29, v29, v42, s0
	v_permlanex16_b32 v14, v14, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v15, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v19, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s51, 0xfedcba98 op_sel:[1,0]
	v_add_lshl_u32 v12, v97, s14, 1
	buffer_store_b128 v[0:3], v11, s[24:27], 0 offen
	v_add_lshl_u32 v0, v98, s14, 1
	v_perm_b32 v6, v36, v7, v102
	v_perm_b32 v7, v36, v7, v103
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s1
	v_permlanex16_b32 v23, v23, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v29, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v14, v13, v102
	v_perm_b32 v37, v14, v13, v103
	v_perm_b32 v38, v15, v17, v102
	v_perm_b32 v39, v15, v17, v103
	v_perm_b32 v40, v19, v18, v102
	v_perm_b32 v41, v19, v18, v103
	v_perm_b32 v42, v21, v20, v102
	v_perm_b32 v43, v21, v20, v103
	v_cndmask_b32_e64 v1, 0x80000000, v12, s1
	v_add_lshl_u32 v2, v99, s14, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	v_add_lshl_u32 v3, v100, s14, 1
	s_clause 0x1
	buffer_store_b128 v[4:7], v8, s[24:27], 0 offen
	buffer_store_b128 v[32:35], v10, s[24:27], 0 offen
	v_add_lshl_u32 v4, v101, s14, 1
	v_perm_b32 v44, v23, v22, v102
	v_perm_b32 v45, v23, v22, v103
	v_perm_b32 v46, v26, v24, v102
	v_perm_b32 v47, v26, v24, v103
	v_perm_b32 v48, v28, v27, v102
	v_perm_b32 v49, v28, v27, v103
	v_perm_b32 v50, v29, v30, v102
	v_perm_b32 v51, v29, v30, v103
	buffer_store_b128 v[36:39], v1, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v2, s1
	buffer_store_b128 v[40:43], v0, s[24:27], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v3, s1
	v_perm_b32 v54, v56, v55, v102
	v_perm_b32 v55, v56, v55, v103
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	buffer_store_b128 v[44:47], v1, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s34
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x1
	buffer_store_b128 v[48:51], v0, s[24:27], 0 offen
	buffer_store_b128 v[52:55], v2, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s6, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s8, s6, s47
	s_xor_b32 s7, s7, s11
	s_mul_i32 s9, s8, s10
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s8, 1
	s_sub_i32 s14, s6, s10
	s_cmp_ge_u32 s6, s10
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	s_cselect_b32 s8, s9, s8
	s_cselect_b32 s6, s14, s6
	s_add_i32 s9, s8, 1
	s_cmp_ge_u32 s6, s10
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	s_cselect_b32 s6, s9, s8
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	s_xor_b32 s6, s6, s7
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	s_sub_i32 s6, s6, s7
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	.loc	1 217 23                        ; generate_amdgcn.py:217:23
	s_lshl_b32 s8, s6, 2
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_mul_i32 s6, s6, s44
	.loc	1 218 35                        ; generate_amdgcn.py:218:35
	s_sub_i32 s7, s33, s8
	.loc	1 219 33                        ; generate_amdgcn.py:219:33
	s_sub_i32 s17, s2, s6
	.loc	1 218 24                        ; generate_amdgcn.py:218:24
	s_min_i32 s14, s7, 4
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s14
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	s_cvt_f32_u32 s9, s7
	s_sub_i32 s15, 0, s7
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v0, s9
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s9, v0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	s_mul_f32 s9, s9, 0x4f7ffffe
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s9, s9
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v70, 0
	s_mul_i32 s15, s15, s9
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v72, 0
	s_mul_hi_u32 s6, s9, s15
	s_abs_i32 s15, s17
	s_add_i32 s9, s9, s6
	s_xor_b32 s6, s17, s14
	s_mul_hi_u32 s9, s15, s9
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s18, s9, s7
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v76, 0
	s_sub_i32 s15, s15, s18
	s_add_i32 s18, s9, 1
	s_sub_i32 s19, s15, s7
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v74, 0
	s_cselect_b32 s9, s18, s9
	s_cselect_b32 s15, s19, s15
	s_add_i32 s18, s9, 1
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v78, 0
	s_cselect_b32 s7, s18, s9
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v80, 0
	s_xor_b32 s9, s7, s6
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v84, 0
	s_sub_i32 s7, s9, s6
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s14, s7, s14
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	s_sub_i32 s14, s17, s14
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v94, 0
	.loc	1 219 17 is_stmt 0              ; generate_amdgcn.py:219:17
	s_add_i32 s14, s14, s8
	.loc	1 252 13 is_stmt 1              ; generate_amdgcn.py:252:13
	s_and_b32 vcc_lo, exec_lo, s3
	.loc	1 221 18                        ; generate_amdgcn.py:221:18
	s_lshl_b32 s8, s14, 4
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:44
	scratch_load_b64 v[2:3], off, off offset:76
	scratch_load_b32 v1, off, off offset:40
	scratch_store_b64 off, v[96:97], off offset:32 ; 8-byte Folded Spill
	s_lshl_b32 s15, s6, 8
	s_lshl_b32 s6, s6, 7
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	s_lshl_b32 s14, s9, 8
	s_mov_b32 s52, 0
	s_mov_b32 s53, s46
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v0, s8, v0
	s_waitcnt vmcnt(1)
	v_lshl_add_u32 v2, s9, 7, v2
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, s8, v1
	s_sub_i32 s9, s14, s15
	v_mul_lo_u32 v96, s49, v0
	v_subrev_nc_u32_e32 v97, s6, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[0:1], null, s45, v1, v[9:10]
	scratch_store_b64 off, v[0:1], off      ; 8-byte Folded Spill
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	scratch_load_b64 v[0:1], off, off       ; 8-byte Folded Reload
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v13, s52, v9
	.loc	1 258 26                        ; generate_amdgcn.py:258:26
	v_add_nc_u32_e32 v12, s52, v25
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_add_nc_u32_e32 v217, s9, v104
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	v_mov_b32_e32 v25, v104
	v_mov_b32_e32 v11, v166
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s53, s53, -1
	s_add_i32 s9, s9, s48
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v98, s52, v0
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v0, s16
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s45, v13
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v1, s17
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e64 s6, s45, v12
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v3, s19 :: v_dual_mov_b32 v2, s18
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s5
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v4, s20 :: v_dual_mov_b32 v5, s21
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v12, 0x80000000, v98, vcc_lo
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, s6, s4
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v6, s22 :: v_dual_mov_b32 v7, s23
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	v_cndmask_b32_e32 v13, 0x80000000, v97, vcc_lo
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_u8 v12, v12, s[28:31], 0 offen
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	buffer_load_b32 v98, v13, s[36:39], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s52, s52, 16
	s_cmp_lg_u32 s53, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(1)
	ds_store_b8 v105, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[100:101], v106
	ds_load_b64 v[12:13], v107
	.loc	1 270 30                        ; generate_amdgcn.py:270:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b32 v108, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v102, v16 offset:640
	ds_load_u8 v103, v16 offset:656
	ds_load_u8 v104, v16 offset:672
	ds_load_u8 v28, v16 offset:1440
	ds_load_u8 v29, v16 offset:1504
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v98, v96, s[12:15], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v99, v217, s[40:43], 0 offen
	v_mov_b32_e32 v31, v105
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	ds_load_u8 v105, v16 offset:688
	ds_load_u8 v106, v16 offset:704
	ds_load_u8 v107, v16 offset:720
	ds_load_u8 v108, v16 offset:736
	ds_load_u8 v109, v16 offset:752
	ds_load_u8 v110, v16 offset:512
	ds_load_u8 v111, v16 offset:528
	ds_load_u8 v112, v16 offset:544
	ds_load_u8 v113, v16 offset:560
	ds_load_u8 v114, v16 offset:576
	ds_load_u8 v115, v16 offset:592
	ds_load_u8 v116, v16 offset:608
	ds_load_u8 v117, v16 offset:624
	ds_load_u8 v118, v16 offset:768
	ds_load_u8 v119, v16 offset:784
	ds_load_u8 v120, v16 offset:800
	ds_load_u8 v121, v16 offset:816
	ds_load_u8 v122, v16 offset:832
	ds_load_u8 v123, v16 offset:848
	ds_load_u8 v124, v16 offset:864
	ds_load_u8 v125, v16 offset:880
	ds_load_u8 v126, v16 offset:128
	ds_load_u8 v127, v16 offset:144
	ds_load_u8 v128, v16 offset:160
	ds_load_u8 v129, v16 offset:176
	ds_load_u8 v130, v16 offset:192
	ds_load_u8 v131, v16 offset:208
	ds_load_u8 v132, v16 offset:224
	ds_load_u8 v133, v16 offset:240
	ds_load_u8 v134, v16
	ds_load_u8 v135, v16 offset:16
	ds_load_u8 v136, v16 offset:32
	ds_load_u8 v137, v16 offset:48
	ds_load_u8 v138, v16 offset:64
	ds_load_u8 v139, v16 offset:80
	ds_load_u8 v140, v16 offset:96
	ds_load_u8 v141, v16 offset:112
	ds_load_u8 v142, v16 offset:384
	ds_load_u8 v143, v16 offset:400
	ds_load_u8 v144, v16 offset:416
	ds_load_u8 v145, v16 offset:432
	ds_load_u8 v146, v16 offset:448
	ds_load_u8 v147, v16 offset:464
	ds_load_u8 v148, v16 offset:480
	ds_load_u8 v149, v16 offset:496
	ds_load_u8 v150, v16 offset:256
	ds_load_u8 v151, v16 offset:272
	ds_load_u8 v152, v16 offset:288
	ds_load_u8 v153, v16 offset:304
	ds_load_u8 v154, v16 offset:320
	ds_load_u8 v155, v16 offset:336
	ds_load_u8 v156, v16 offset:352
	ds_load_u8 v157, v16 offset:368
	v_mov_b32_e32 v9, v165
	ds_load_u8 v165, v165
	ds_load_u8 v247, v166
	ds_load_u8 v248, v16 offset:1280
	ds_load_u8 v249, v16 offset:1264
	ds_load_u8 v250, v16 offset:1168
	ds_load_u8 v251, v16 offset:1184
	ds_load_u8 v252, v16 offset:1200
	ds_load_u8 v253, v16 offset:1216
	ds_load_u8 v254, v16 offset:1232
	ds_load_u8 v255, v16 offset:1248
	ds_load_u8 v17, v16 offset:1152
	ds_load_u8 v18, v16 offset:1136
	ds_load_u8 v19, v16 offset:1040
	ds_load_u8 v20, v16 offset:1056
	ds_load_u8 v21, v16 offset:1072
	ds_load_u8 v14, v16 offset:1088
	ds_load_u8 v10, v16 offset:1104
	ds_load_u8 v15, v16 offset:1120
	ds_load_u8 v8, v16 offset:1408
	ds_load_u8 v22, v16 offset:1392
	ds_load_u8 v23, v16 offset:1296
	ds_load_u8 v24, v16 offset:1536
	ds_load_u8 v26, v16 offset:1520
	ds_load_u8 v27, v16 offset:1424
	ds_load_u8 v158, v16 offset:896
	ds_load_u8 v159, v16 offset:912
	ds_load_u8 v160, v16 offset:928
	ds_load_u8 v161, v16 offset:944
	ds_load_u8 v162, v16 offset:960
	ds_load_u8 v163, v16 offset:976
	ds_load_u8 v164, v16 offset:992
	ds_load_u8 v215, v16 offset:1024
	ds_load_u8 v216, v16 offset:1792
	ds_load_u8 v220, v16 offset:1776
	ds_load_u8 v218, v16 offset:1680
	ds_load_u8 v219, v16 offset:1696
	ds_load_u8 v221, v16 offset:1712
	ds_load_u8 v222, v16 offset:1728
	ds_load_u8 v223, v16 offset:1744
	ds_load_u8 v224, v16 offset:1760
	ds_load_u8 v225, v16 offset:1664
	ds_load_u8 v226, v16 offset:1648
	ds_load_u8 v227, v16 offset:1552
	ds_load_u8 v228, v16 offset:1568
	ds_load_u8 v229, v16 offset:1584
	ds_load_u8 v230, v16 offset:1600
	ds_load_u8 v231, v16 offset:1616
	ds_load_u8 v232, v16 offset:1632
	ds_load_u8 v233, v16 offset:1920
	ds_load_u8 v234, v16 offset:1904
	ds_load_u8 v235, v16 offset:1808
	ds_load_u8 v236, v16 offset:1824
	ds_load_u8 v237, v16 offset:1840
	ds_load_u8 v238, v16 offset:1856
	ds_load_u8 v239, v16 offset:1872
	ds_load_u8 v240, v16 offset:1888
	ds_load_u8 v241, v16 offset:1936
	ds_load_u8 v242, v16 offset:1952
	ds_load_u8 v243, v16 offset:1968
	ds_load_u8 v244, v16 offset:1984
	ds_load_u8 v245, v16 offset:2000
	ds_load_u8 v246, v16 offset:2016
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v127, v135, v127, 0xc0c0004
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v120, v120, v160, 0xc0c0004
	v_perm_b32 v113, v113, v105, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v121, v121, v161, 0xc0c0004
	v_perm_b32 v115, v115, v107, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v123, v123, v163, 0xc0c0004
	v_perm_b32 v131, v139, v131, 0xc0c0004
	v_perm_b32 v116, v116, v108, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v124, v124, v164, 0xc0c0004
	v_perm_b32 v102, v110, v102, 0xc0c0004
	v_perm_b32 v110, v118, v158, 0xc0c0004
	ds_load_u8 v158, v16 offset:1456
	v_perm_b32 v118, v134, v126, 0xc0c0004
	ds_load_u8 v134, v16 offset:1472
	v_perm_b32 v126, v150, v142, 0xc0c0004
	ds_load_u8 v142, v16 offset:1488
	ds_load_u8 v30, v16 offset:1312
	v_perm_b32 v135, v151, v143, 0xc0c0004
	v_perm_b32 v112, v112, v104, 0xc0c0004
	v_perm_b32 v139, v155, v147, 0xc0c0004
	v_perm_b32 v133, v141, v133, 0xc0c0004
	v_perm_b32 v141, v157, v149, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v17, v215, v17, 0xc0c0004
	v_perm_b32 v8, v248, v8, 0xc0c0004
	v_perm_b32 v117, v117, v109, 0xc0c0004
	v_lshl_or_b32 v104, v135, 16, v127
	v_lshl_or_b32 v107, v120, 16, v112
	v_lshl_or_b32 v109, v121, 16, v113
	v_lshl_or_b32 v113, v123, 16, v115
	v_lshl_or_b32 v112, v139, 16, v131
	v_lshl_or_b32 v115, v124, 16, v116
	v_lshl_or_b32 v116, v141, 16, v133
	ds_load_u8 v121, v16 offset:1328
	ds_load_u8 v127, v16 offset:1344
	ds_load_u8 v133, v16 offset:1360
	ds_load_u8 v139, v16 offset:1376
	v_perm_b32 v111, v111, v103, 0xc0c0004
	v_perm_b32 v119, v119, v159, 0xc0c0004
	v_perm_b32 v132, v140, v132, 0xc0c0004
	v_perm_b32 v140, v156, v148, 0xc0c0004
	v_lshl_or_b32 v148, v8, 16, v17
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v8, v227, v218, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v17, v235, v241, 0xc0c0004
	v_perm_b32 v128, v136, v128, 0xc0c0004
	v_perm_b32 v136, v152, v144, 0xc0c0004
	v_lshl_or_b32 v105, v119, 16, v111
	v_perm_b32 v19, v19, v250, 0xc0c0004
	v_perm_b32 v23, v23, v27, 0xc0c0004
	v_lshl_or_b32 v151, v17, 16, v8
	v_perm_b32 v8, v228, v219, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v17, v236, v242, 0xc0c0004
	v_perm_b32 v129, v137, v129, 0xc0c0004
	v_perm_b32 v137, v153, v145, 0xc0c0004
	v_perm_b32 v114, v114, v106, 0xc0c0004
	v_perm_b32 v122, v122, v162, 0xc0c0004
	v_perm_b32 v130, v138, v130, 0xc0c0004
	v_perm_b32 v138, v154, v146, 0xc0c0004
	v_perm_b32 v125, v125, v165, 0xc0c0004
	v_lshl_or_b32 v103, v110, 16, v102
	v_lshl_or_b32 v102, v126, 16, v118
	v_lshl_or_b32 v106, v136, 16, v128
	v_wmma_i32_16x16x16_iu4 v[167:174], v[104:105], v[100:101], v[0:7] neg_lo:[1,1,0]
	v_perm_b32 v24, v24, v225, 0xc0c0004
	v_perm_b32 v104, v216, v233, 0xc0c0004
	v_lshl_or_b32 v150, v23, 16, v19
	v_perm_b32 v19, v20, v251, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v30, v28, 0xc0c0004
	v_lshl_or_b32 v153, v17, 16, v8
	v_perm_b32 v8, v229, v221, 0xc0c0004
	v_perm_b32 v17, v237, v243, 0xc0c0004
	v_lshl_or_b32 v108, v137, 16, v129
	v_lshl_or_b32 v111, v122, 16, v114
	v_lshl_or_b32 v110, v138, 16, v130
	v_lshl_or_b32 v114, v140, 16, v132
	v_lshl_or_b32 v117, v125, 16, v117
	v_wmma_i32_16x16x16_iu4 v[159:166], v[102:103], v[100:101], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[175:182], v[106:107], v[100:101], v[0:7] neg_lo:[1,1,0]
	v_lshl_or_b32 v149, v104, 16, v24
	v_lshl_or_b32 v152, v20, 16, v19
	v_perm_b32 v19, v21, v252, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v20, v121, v158, 0xc0c0004
	v_lshl_or_b32 v155, v17, 16, v8
	v_perm_b32 v8, v230, v222, 0xc0c0004
	v_perm_b32 v17, v238, v244, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[183:190], v[108:109], v[100:101], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[191:198], v[110:111], v[100:101], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[199:206], v[112:113], v[100:101], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[207:214], v[114:115], v[100:101], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[0:7], v[116:117], v[100:101], v[0:7] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x13
	buffer_load_u16 v100, v217, s[40:43], 0 offen offset:4
	buffer_load_u16 v101, v217, s[40:43], 0 offen offset:8
	buffer_load_u16 v102, v217, s[40:43], 0 offen offset:12
	buffer_load_u16 v103, v217, s[40:43], 0 offen offset:16
	buffer_load_u16 v106, v217, s[40:43], 0 offen offset:28
	buffer_load_u16 v107, v217, s[40:43], 0 offen offset:32
	buffer_load_u16 v108, v217, s[40:43], 0 offen offset:36
	buffer_load_u16 v109, v217, s[40:43], 0 offen offset:40
	buffer_load_u16 v104, v217, s[40:43], 0 offen offset:20
	buffer_load_u16 v105, v217, s[40:43], 0 offen offset:24
	buffer_load_u16 v112, v217, s[40:43], 0 offen offset:52
	buffer_load_u16 v113, v217, s[40:43], 0 offen offset:56
	buffer_load_u16 v114, v217, s[40:43], 0 offen offset:60
	buffer_load_u16 v115, v217, s[40:43], 0 offen offset:64
	buffer_load_u16 v118, v217, s[40:43], 0 offen offset:76
	buffer_load_u16 v119, v217, s[40:43], 0 offen offset:80
	buffer_load_u16 v120, v217, s[40:43], 0 offen offset:84
	buffer_load_u16 v121, v217, s[40:43], 0 offen offset:88
	buffer_load_u16 v116, v217, s[40:43], 0 offen offset:68
	buffer_load_u16 v117, v217, s[40:43], 0 offen offset:72
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v154, v20, 16, v19
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v122, v217, s[40:43], 0 offen offset:92
	buffer_load_u16 v123, v217, s[40:43], 0 offen offset:96
	buffer_load_u16 v124, v217, s[40:43], 0 offen offset:100
	buffer_load_u16 v125, v217, s[40:43], 0 offen offset:104
	buffer_load_u16 v126, v217, s[40:43], 0 offen offset:108
	buffer_load_u16 v130, v217, s[40:43], 0 offen offset:124
	buffer_load_u16 v131, v217, s[40:43], 0 offen offset:128
	buffer_load_u16 v132, v217, s[40:43], 0 offen offset:132
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v19, v127, v134, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v127, v217, s[40:43], 0 offen offset:112
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v157, v17, 16, v8
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v17, v133, v142, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x9
	buffer_load_u16 v133, v217, s[40:43], 0 offen offset:136
	buffer_load_u16 v134, v217, s[40:43], 0 offen offset:140
	buffer_load_u16 v135, v217, s[40:43], 0 offen offset:144
	buffer_load_u16 v136, v217, s[40:43], 0 offen offset:148
	buffer_load_u16 v137, v217, s[40:43], 0 offen offset:152
	buffer_load_u16 v138, v217, s[40:43], 0 offen offset:156
	buffer_load_u16 v142, v217, s[40:43], 0 offen offset:172
	buffer_load_u16 v143, v217, s[40:43], 0 offen offset:176
	buffer_load_u16 v144, v217, s[40:43], 0 offen offset:180
	buffer_load_u16 v145, v217, s[40:43], 0 offen offset:184
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[159:166], v[148:149], v[12:13], v[159:166] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v148, v217, s[40:43], 0 offen offset:196
	buffer_load_u16 v149, v217, s[40:43], 0 offen offset:200
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[167:174], v[150:151], v[12:13], v[167:174] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v150, v217, s[40:43], 0 offen offset:204
	buffer_load_u16 v151, v217, s[40:43], 0 offen offset:208
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[175:182], v[152:153], v[12:13], v[175:182] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x5
	buffer_load_u16 v152, v217, s[40:43], 0 offen offset:212
	buffer_load_u16 v153, v217, s[40:43], 0 offen offset:216
	buffer_load_u16 v110, v217, s[40:43], 0 offen offset:44
	buffer_load_u16 v111, v217, s[40:43], 0 offen offset:48
	buffer_load_u16 v146, v217, s[40:43], 0 offen offset:188
	buffer_load_u16 v147, v217, s[40:43], 0 offen offset:192
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[183:190], v[154:155], v[12:13], v[183:190] neg_lo:[1,1,0]
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v154, v217, s[40:43], 0 offen offset:220
	buffer_load_u16 v155, v217, s[40:43], 0 offen offset:224
	buffer_load_u16 v128, v217, s[40:43], 0 offen offset:116
	buffer_load_u16 v129, v217, s[40:43], 0 offen offset:120
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_perm_b32 v14, v14, v253, 0xc0c0004
	v_perm_b32 v8, v231, v223, 0xc0c0004
	v_perm_b32 v10, v10, v254, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v140, v217, s[40:43], 0 offen offset:164
	buffer_load_u16 v141, v217, s[40:43], 0 offen offset:168
	buffer_load_u16 v158, v217, s[40:43], 0 offen offset:248
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_lshl_or_b32 v156, v19, 16, v14
	v_perm_b32 v14, v239, v245, 0xc0c0004
	v_lshl_or_b32 v215, v17, 16, v10
	v_perm_b32 v10, v240, v246, 0xc0c0004
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v96, 2, v96
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[191:198], v[156:157], v[12:13], v[191:198] neg_lo:[1,1,0]
	v_lshl_or_b32 v216, v14, 16, v8
	v_perm_b32 v8, v232, v224, 0xc0c0004
	v_perm_b32 v14, v15, v255, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v15, v139, v29, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v139, v217, s[40:43], 0 offen offset:160
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[199:206], v[215:216], v[12:13], v[199:206] neg_lo:[1,1,0]
	v_lshl_or_b32 v219, v10, 16, v8
	v_perm_b32 v8, v18, v249, 0xc0c0004
	v_lshl_or_b32 v218, v15, 16, v14
	v_perm_b32 v10, v22, v26, 0xc0c0004
	v_perm_b32 v14, v226, v220, 0xc0c0004
	v_perm_b32 v15, v234, v247, 0xc0c0004
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v156, v217, s[40:43], 0 offen offset:228
	buffer_load_u16 v157, v217, s[40:43], 0 offen offset:236
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[207:214], v[218:219], v[12:13], v[207:214] neg_lo:[1,1,0]
	v_lshl_or_b32 v220, v10, 16, v8
	v_lshl_or_b32 v221, v15, 16, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[220:221], v[12:13], v[0:7] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v12, v159
	v_cvt_f32_i32_e32 v13, v160
	v_cvt_f32_i32_e32 v159, v161
	v_cvt_f32_i32_e32 v160, v162
	v_cvt_f32_i32_e32 v161, v163
	v_cvt_f32_i32_e32 v162, v164
	v_cvt_f32_i32_e32 v163, v165
	v_cvt_f32_i32_e32 v164, v166
	v_cvt_f32_i32_e32 v165, v167
	v_cvt_f32_i32_e32 v166, v168
	v_cvt_f32_i32_e32 v167, v169
	v_cvt_f32_i32_e32 v168, v170
	v_cvt_f32_i32_e32 v169, v171
	v_cvt_f32_i32_e32 v170, v172
	v_cvt_f32_i32_e32 v171, v173
	v_cvt_f32_i32_e32 v172, v174
	v_cvt_f32_i32_e32 v173, v175
	v_cvt_f32_i32_e32 v174, v176
	v_cvt_f32_i32_e32 v175, v177
	v_cvt_f32_i32_e32 v176, v178
	v_cvt_f32_i32_e32 v177, v179
	v_cvt_f32_i32_e32 v178, v180
	v_cvt_f32_i32_e32 v179, v181
	v_cvt_f32_i32_e32 v180, v182
	v_cvt_f32_i32_e32 v181, v183
	v_cvt_f32_i32_e32 v182, v184
	v_cvt_f32_i32_e32 v183, v185
	v_cvt_f32_i32_e32 v184, v186
	v_cvt_f32_i32_e32 v185, v187
	v_cvt_f32_i32_e32 v186, v188
	v_cvt_f32_i32_e32 v187, v189
	v_cvt_f32_i32_e32 v188, v190
	v_cvt_f32_i32_e32 v189, v191
	v_cvt_f32_i32_e32 v190, v192
	v_cvt_f32_i32_e32 v191, v193
	v_cvt_f32_i32_e32 v192, v194
	v_cvt_f32_i32_e32 v193, v195
	v_cvt_f32_i32_e32 v194, v196
	v_cvt_f32_i32_e32 v195, v197
	v_cvt_f32_i32_e32 v196, v198
	v_cvt_f32_i32_e32 v197, v199
	v_cvt_f32_i32_e32 v198, v200
	v_cvt_f32_i32_e32 v199, v201
	v_cvt_f32_i32_e32 v200, v202
	v_cvt_f32_i32_e32 v201, v203
	v_cvt_f32_i32_e32 v202, v204
	v_cvt_f32_i32_e32 v203, v205
	v_cvt_f32_i32_e32 v204, v206
	v_cvt_f32_i32_e32 v205, v207
	v_cvt_f32_i32_e32 v206, v208
	v_cvt_f32_i32_e32 v207, v209
	v_cvt_f32_i32_e32 v208, v210
	v_cvt_f32_i32_e32 v209, v211
	v_cvt_f32_i32_e32 v210, v212
	v_cvt_f32_i32_e32 v211, v213
	v_cvt_f32_i32_e32 v212, v214
	v_cvt_f32_i32_e32 v213, v0
	v_cvt_f32_i32_e32 v214, v1
	v_cvt_f32_i32_e32 v0, v2
	v_cvt_f32_i32_e32 v1, v4
	v_cvt_f32_i32_e32 v4, v5
	v_cvt_f32_i32_e32 v2, v6
	v_cvt_f32_i32_e32 v5, v7
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v6, v217, s[40:43], 0 offen offset:240
	buffer_load_u16 v215, v217, s[40:43], 0 offen offset:232
	buffer_load_u16 v216, v217, s[40:43], 0 offen offset:244
	buffer_load_u16 v7, v217, s[40:43], 0 offen offset:252
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v8, 16, v98
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v97, s50, v97
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v10, 16, v99
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v12, v8, v12
	v_mul_f32_e32 v13, v8, v13
	v_mul_f32_e32 v1, v8, v1
	v_mul_f32_e32 v0, v8, v0
	v_mul_f32_e32 v3, v8, v3
	v_mul_f32_e32 v4, v8, v4
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v14, 16, v100
	s_waitcnt vmcnt(61)
	v_lshlrev_b32_e32 v15, 16, v101
	s_waitcnt vmcnt(60)
	v_lshlrev_b32_e32 v17, 16, v102
	s_waitcnt vmcnt(59)
	v_lshlrev_b32_e32 v18, 16, v103
	s_waitcnt vmcnt(58)
	v_lshlrev_b32_e32 v21, 16, v106
	s_waitcnt vmcnt(57)
	v_lshlrev_b32_e32 v22, 16, v107
	s_waitcnt vmcnt(56)
	v_lshlrev_b32_e32 v23, 16, v108
	s_waitcnt vmcnt(54)
	v_lshlrev_b32_e32 v19, 16, v104
	s_waitcnt vmcnt(53)
	v_lshlrev_b32_e32 v20, 16, v105
	v_lshlrev_b32_e32 v24, 16, v109
	s_waitcnt vmcnt(52)
	v_lshlrev_b32_e32 v28, 16, v112
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v30, 16, v114
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v98, 16, v115
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v101, 16, v118
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v102, 16, v119
	s_waitcnt vmcnt(46)
	v_lshlrev_b32_e32 v103, 16, v120
	s_waitcnt vmcnt(44)
	v_lshlrev_b32_e32 v99, 16, v116
	s_waitcnt vmcnt(43)
	v_lshlrev_b32_e32 v100, 16, v117
	v_lshlrev_b32_e32 v104, 16, v121
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v105, 16, v122
	s_waitcnt vmcnt(41)
	v_lshlrev_b32_e32 v106, 16, v123
	s_waitcnt vmcnt(40)
	v_lshlrev_b32_e32 v107, 16, v124
	s_waitcnt vmcnt(39)
	v_lshlrev_b32_e32 v108, 16, v125
	s_waitcnt vmcnt(38)
	v_lshlrev_b32_e32 v109, 16, v126
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v114, 16, v131
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v115, 16, v132
	v_lshlrev_b32_e32 v29, 16, v113
	v_lshlrev_b32_e32 v113, 16, v130
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v116, 16, v133
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v117, 16, v134
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v118, 16, v135
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v119, 16, v136
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v120, 16, v137
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v121, 16, v138
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v125, 16, v142
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v126, 16, v143
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v131, 16, v148
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v132, 16, v149
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v133, 16, v150
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v134, 16, v151
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v135, 16, v152
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v26, 16, v110
	v_lshlrev_b32_e32 v136, 16, v153
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v148, v8, v163
	v_mul_f32_e32 v149, v8, v164
	v_mul_f32_e32 v150, v8, v165
	v_mul_f32_e32 v151, v8, v166
	v_mul_f32_e32 v152, v8, v167
	v_mul_f32_e32 v153, v8, v168
	v_mul_f32_e32 v163, v8, v178
	v_mul_f32_e32 v164, v8, v179
	v_mul_f32_e32 v165, v8, v180
	v_mul_f32_e32 v166, v8, v181
	v_mul_f32_e32 v167, v8, v182
	v_mul_f32_e32 v168, v8, v183
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v27, 16, v111
	v_lshlrev_b32_e32 v110, 16, v127
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v111, 16, v128
	v_lshlrev_b32_e32 v130, 16, v147
	v_lshlrev_b32_e32 v137, 16, v154
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v147, v8, v162 :: v_dual_lshlrev_b32 v138, 16, v155
	v_mul_f32_e32 v154, v8, v169
	v_mul_f32_e32 v155, v8, v170
	v_mul_f32_e32 v162, v8, v177
	v_mul_f32_e32 v169, v8, v184
	v_mul_f32_e32 v170, v8, v185
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v94, v12, v10 :: v_dual_fmac_f32 v91, v147, v19
	v_dual_fmac_f32 v75, v163, v103 :: v_dual_fmac_f32 v72, v164, v104
	v_mov_b32_e32 v104, v25
	scratch_load_b32 v25, off, off offset:16 ; 4-byte Folded Reload
	v_dual_fmac_f32 v73, v165, v105 :: v_dual_fmac_f32 v70, v166, v106
	v_dual_mov_b32 v165, v9 :: v_dual_mov_b32 v166, v11
	scratch_load_b32 v106, off, off offset:24 ; 4-byte Folded Reload
	v_dual_fmac_f32 v71, v167, v107 :: v_dual_fmac_f32 v68, v169, v109
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v107, off, off offset:28
	scratch_load_b64 v[9:10], off, off offset:8
	v_dual_fmac_f32 v69, v168, v108 :: v_dual_fmac_f32 v66, v170, v110
	scratch_load_b32 v108, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v112, 16, v129
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v181, v8, v196 :: v_dual_lshlrev_b32 v122, 16, v139
	v_dual_mul_f32 v182, v8, v197 :: v_dual_lshlrev_b32 v123, 16, v140
	v_dual_mul_f32 v183, v8, v198 :: v_dual_lshlrev_b32 v124, 16, v141
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v127, 16, v144
	v_lshlrev_b32_e32 v128, 16, v145
	v_lshlrev_b32_e32 v129, 16, v146
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v198, v8, v213 :: v_dual_lshlrev_b32 v139, 16, v156
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v140, 16, v157
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v144, v8, v159 :: v_dual_lshlrev_b32 v143, 16, v158
	v_mul_f32_e32 v145, v8, v160
	v_mul_f32_e32 v146, v8, v161
	v_mul_f32_e32 v156, v8, v171
	v_mul_f32_e32 v157, v8, v172
	v_mul_f32_e32 v158, v8, v173
	v_mul_f32_e32 v159, v8, v174
	v_mul_f32_e32 v160, v8, v175
	v_mul_f32_e32 v161, v8, v176
	v_mul_f32_e32 v171, v8, v186
	v_mul_f32_e32 v172, v8, v187
	v_mul_f32_e32 v173, v8, v188
	v_mul_f32_e32 v174, v8, v189
	v_mul_f32_e32 v175, v8, v190
	v_mul_f32_e32 v176, v8, v191
	v_mul_f32_e32 v177, v8, v192
	v_mul_f32_e32 v178, v8, v193
	v_mul_f32_e32 v179, v8, v194
	v_mul_f32_e32 v180, v8, v195
	v_mul_f32_e32 v184, v8, v199
	v_mul_f32_e32 v185, v8, v200
	v_mul_f32_e32 v186, v8, v201
	v_mul_f32_e32 v187, v8, v202
	v_mul_f32_e32 v188, v8, v203
	v_mul_f32_e32 v189, v8, v204
	v_mul_f32_e32 v190, v8, v205
	v_mul_f32_e32 v191, v8, v206
	v_mul_f32_e32 v192, v8, v207
	v_mul_f32_e32 v193, v8, v208
	v_mul_f32_e32 v194, v8, v209
	v_mul_f32_e32 v195, v8, v210
	v_mul_f32_e32 v196, v8, v211
	v_mul_f32_e32 v197, v8, v212
	v_mul_f32_e32 v199, v8, v214
	v_dual_mul_f32 v5, v8, v5 :: v_dual_fmac_f32 v90, v146, v18
	v_dual_mul_f32 v2, v8, v2 :: v_dual_fmac_f32 v93, v145, v17
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v95, v13, v14 :: v_dual_fmac_f32 v88, v148, v20
	v_dual_fmac_f32 v92, v144, v15 :: v_dual_fmac_f32 v89, v149, v21
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v86, v150, v22 :: v_dual_lshlrev_b32 v141, 16, v215
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v142, 16, v216
	v_lshlrev_b32_e32 v6, 16, v6
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v87, v151, v23 :: v_dual_fmac_f32 v84, v152, v24
	v_dual_fmac_f32 v85, v153, v26 :: v_dual_fmac_f32 v82, v154, v27
	v_dual_fmac_f32 v83, v155, v28 :: v_dual_fmac_f32 v80, v156, v29
	v_dual_fmac_f32 v81, v157, v30 :: v_dual_fmac_f32 v76, v160, v100
	v_dual_fmac_f32 v78, v158, v98 :: v_dual_fmac_f32 v79, v159, v99
	v_dual_fmac_f32 v77, v161, v101 :: v_dual_fmac_f32 v74, v162, v102
	v_mov_b32_e32 v105, v31
	v_dual_fmac_f32 v67, v171, v111 :: v_dual_fmac_f32 v64, v172, v112
	v_dual_fmac_f32 v65, v173, v113 :: v_dual_fmac_f32 v62, v175, v115
	v_dual_fmac_f32 v63, v174, v114 :: v_dual_fmac_f32 v60, v176, v116
	v_dual_fmac_f32 v61, v177, v117 :: v_dual_fmac_f32 v58, v178, v118
	v_dual_fmac_f32 v59, v179, v119 :: v_dual_fmac_f32 v56, v180, v120
	v_dual_fmac_f32 v57, v181, v121 :: v_dual_fmac_f32 v54, v182, v122
	v_dual_fmac_f32 v55, v183, v123 :: v_dual_fmac_f32 v52, v184, v124
	v_dual_fmac_f32 v53, v185, v125 :: v_dual_fmac_f32 v50, v186, v126
	v_dual_fmac_f32 v51, v187, v127 :: v_dual_fmac_f32 v48, v188, v128
	v_dual_fmac_f32 v49, v189, v129 :: v_dual_fmac_f32 v46, v190, v130
	v_dual_fmac_f32 v47, v191, v131 :: v_dual_fmac_f32 v44, v192, v132
	v_dual_fmac_f32 v45, v193, v133 :: v_dual_fmac_f32 v42, v194, v134
	v_dual_fmac_f32 v43, v195, v135 :: v_dual_fmac_f32 v40, v196, v136
	v_dual_fmac_f32 v41, v197, v137 :: v_dual_fmac_f32 v38, v198, v138
	v_dual_fmac_f32 v39, v199, v139 :: v_dual_fmac_f32 v36, v0, v141
	v_dual_fmac_f32 v37, v3, v140 :: v_dual_fmac_f32 v34, v4, v142
	v_fmac_f32_e32 v35, v1, v6
	v_fmac_f32_e32 v33, v2, v143
	v_fmac_f32_e32 v32, v5, v7
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 13 is_stmt 0                ; generate_amdgcn.py:0:13
	s_clause 0x7                            ; 36-byte Folded Reload
	scratch_load_b64 v[96:97], off, off offset:32
	scratch_load_b32 v97, off, off offset:48
	scratch_load_b32 v98, off, off offset:52
	scratch_load_b32 v99, off, off offset:56
	scratch_load_b32 v100, off, off offset:60
	scratch_load_b32 v101, off, off offset:64
	scratch_load_b32 v102, off, off offset:68
	scratch_load_b32 v103, off, off offset:72
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge9
	.loc	1 196 1 is_stmt 1               ; generate_amdgcn.py:196:1
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 88
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
		.amdhsa_next_free_sgpr 54
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.private_seg_size, 88
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9616
; TotalNumSgprs: 56
; NumVgprs: 256
; ScratchSize: 88
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 56
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 88
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 21
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
