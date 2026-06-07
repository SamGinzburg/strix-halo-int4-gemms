	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk    ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk:           ; @amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
	s_cbranch_scc1 .LBB0_6
; %bb.1:                                ; %.lr.ph6
	.loc	1 0 5 is_stmt 0                 ; generate_amdgcn.py:0:5
	s_clause 0x2
	s_load_b32 s5, s[0:1], 0x38
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b64 s[24:25], s[0:1], 0x20
	v_lshlrev_b32_e32 v1, 1, v0
	.loc	1 222 36 is_stmt 1              ; generate_amdgcn.py:222:36
	v_and_b32_e32 v3, 16, v0
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_and_b32_e32 v7, 15, v0
	v_lshrrev_b32_e32 v9, 1, v0
	v_and_b32_e32 v5, 24, v1
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v1, 1, v3
	v_and_b32_e32 v2, 24, v2
	.loc	1 208 24                        ; generate_amdgcn.py:208:24
	s_lshl_b32 s44, s4, 2
	.loc	1 250 28                        ; generate_amdgcn.py:250:28
	v_lshlrev_b32_e32 v4, 3, v0
	v_and_b32_e32 v9, 24, v9
	.loc	1 221 36                        ; generate_amdgcn.py:221:36
	v_lshrrev_b32_e32 v6, 5, v0
	v_xor_b32_e32 v19, v2, v0
	v_mad_u64_u32 v[1:2], null, s35, v7, v[1:2]
	v_mov_b32_e32 v2, 0x5410
	v_xor_b32_e32 v24, v4, v9
.Ltmp11:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:246:26 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s0, s5, 63
.Ltmp12:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_lshr_b32 s1, s5, 31
.Ltmp13:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_ashr_i32 s6, s0, 31
.Ltmp14:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_add_i32 s5, s5, s1
.Ltmp15:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_lshr_b32 s6, s6, 26
.Ltmp16:
	.loc	1 210 22                        ; generate_amdgcn.py:210:22
	s_ashr_i32 s45, s5, 1
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:246:26 ]
	s_add_i32 s1, s0, s6
	s_mov_b32 s36, s10
	s_ashr_i32 s46, s1, 6
	s_cmp_gt_i32 s0, 63
	v_cmp_eq_u32_e64 s0, 0, v3
	s_cselect_b32 s5, -1, 0
	s_abs_i32 s10, s44
	v_mov_b32_e32 v9, 0x7632
	s_cvt_f32_u32 s1, s10
	v_cndmask_b32_e64 v2, 0x1054, v2, s0
	v_lshl_or_b32 v5, v7, 5, v5
.Ltmp18:
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s3, s3, 5
	v_rcp_iflag_f32_e32 v14, s1
	v_cndmask_b32_e64 v11, 0x3276, v9, s0
	v_lshl_or_b32 v2, v2, 8, v2
	.loc	1 222 36                        ; generate_amdgcn.py:222:36
	v_lshrrev_b32_e32 v8, 2, v0
	v_xor_b32_e32 v21, 8, v5
	v_xor_b32_e32 v22, 16, v5
	v_lshl_or_b32 v15, v11, 8, v11
	v_and_b32_e32 v2, 0x540054, v2
	v_xor_b32_e32 v23, 24, v5
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	v_lshrrev_b32_e32 v18, 3, v3
	v_readfirstlane_b32 s1, v14
	v_and_b32_e32 v16, 0x760076, v15
	v_lshl_or_b32 v2, v2, 4, v2
	v_cndmask_b32_e64 v3, 0, 1, s5
	s_and_b32 s37, s11, 0xffff
	s_mul_f32 s1, s1, 0x4f7ffffe
	v_lshl_or_b32 v17, v16, 4, v16
	v_and_b32_e32 v16, 0x5040504, v2
	v_and_b32_e32 v2, 0x1e0, v0
	s_cvt_u32_f32 s6, s1
	s_sub_i32 s1, 0, s10
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_and_or_b32 v0, v0, 31, s3
	v_add_nc_u32_e32 v9, 16, v1
	s_mul_i32 s7, s1, s6
	v_cmp_eq_u32_e64 s1, 0, v2
	v_and_or_b32 v2, v4, 24, s3
	v_add_nc_u32_e32 v10, 32, v1
	v_add_nc_u32_e32 v11, 48, v1
	v_add_nc_u32_e32 v12, 64, v1
	v_add_nc_u32_e32 v13, 0x50, v1
	v_add_nc_u32_e32 v14, 0x60, v1
	v_add_nc_u32_e32 v15, 0x70, v1
	v_and_b32_e32 v17, 0x7060706, v17
	s_bfe_i32 s11, s4, 0x1001d
	v_cmp_ne_u32_e64 s3, 1, v3
	v_cmp_gt_i32_e64 s4, 32, v2
	v_cmp_gt_i32_e64 s5, 32, v0
	v_add_nc_u32_e32 v19, 0, v19
	v_add_nc_u32_e32 v20, 0, v5
	v_add_nc_u32_e32 v21, 0, v21
	v_add_nc_u32_e32 v22, 0, v22
	v_add_nc_u32_e32 v23, 0, v23
	v_add_nc_u32_e32 v24, 0, v24
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_mul_hi_u32 s7, s6, s7
	s_mov_b32 s28, s8
	s_and_b32 s29, s9, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_mov_b32 s16, 0
	s_and_b32 s25, s25, 0xffff
	s_add_i32 s47, s6, s7
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_lshl_b32 s48, s35, 1
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_lshl_b32 s49, s46, 1
	s_mov_b32 s50, 0x76543210
	s_mov_b32 s26, s30
	s_mov_b32 s27, s31
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_mov_b16_e32 v3.h, 0
	v_mov_b16_e32 v3.l, v87.h
	v_mov_b16_e32 v4.l, v86.h
	v_mov_b16_e32 v89.l, v84.h
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	v_mov_b16_e32 v4.h, v3.h
	v_and_b32_e32 v88, 1, v3
	v_mov_b16_e32 v3.l, v85.h
	v_mov_b16_e32 v89.h, v3.h
	.loc	1 222 18                        ; generate_amdgcn.py:222:18
	s_lshl_b32 s6, s7, 7
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v4, 1, v4
	v_add3_u32 v88, v87, v88, 0x7fff
	.loc	1 277 22 is_stmt 0              ; generate_amdgcn.py:277:22
	s_mul_i32 s14, s8, s35
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_and_b32_e32 v87, 1, v89
	v_and_b32_e32 v89, 1, v3
	v_mov_b16_e32 v3.l, v83.h
	.loc	1 277 22                        ; generate_amdgcn.py:277:22
	s_add_i32 s14, s14, s6
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	v_add3_u32 v90, v86, v4, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v88.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v86, v86
	v_add3_u32 v86, v84, v87, 0x7fff
	v_add3_u32 v87, v85, v89, 0x7fff
	v_cmp_o_f32_e64 s6, v85, v85
	v_cmp_o_f32_e64 s7, v84, v84
	v_mov_b16_e32 v85.l, v82.h
	v_mov_b16_e32 v85.h, v3.h
	v_and_b32_e32 v88, 1, v3
	v_cndmask_b16 v4.l, 0x7fff, v90.h, vcc_lo
	v_cndmask_b16 v84.h, 0x7fff, v87.h, s6
	v_cndmask_b16 v84.l, 0x7fff, v86.h, s7
	v_and_b32_e32 v85, 1, v85
	v_add3_u32 v86, v83, v88, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_mov_b16_e32 v3.l, v81.h
	v_mov_b16_e32 v87.l, v80.h
	v_mov_b16_e32 v87.h, v3.h
	v_add3_u32 v85, v82, v85, 0x7fff
	v_cndmask_b16 v83.h, 0x7fff, v86.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v82, v82
	v_and_b32_e32 v82, 1, v3
	v_and_b32_e32 v86, 1, v87
	v_mov_b16_e32 v87.l, v78.h
	v_mov_b16_e32 v3.l, v79.h
	v_cmp_o_f32_e64 s6, v81, v81
	v_add3_u32 v82, v81, v82, 0x7fff
	v_cndmask_b16 v83.l, 0x7fff, v85.h, vcc_lo
	v_and_b32_e32 v85, 1, v87
	v_and_b32_e32 v87, 1, v3
	v_mov_b16_e32 v3.l, v77.h
	v_add3_u32 v86, v80, v86, 0x7fff
	v_cndmask_b16 v81.h, 0x7fff, v82.h, s6
	v_cmp_o_f32_e32 vcc_lo, v80, v80
	v_add3_u32 v80, v78, v85, 0x7fff
	v_add3_u32 v82, v79, v87, 0x7fff
	v_cmp_o_f32_e64 s6, v79, v79
	v_cmp_o_f32_e64 s7, v78, v78
	v_mov_b16_e32 v79.l, v76.h
	v_mov_b16_e32 v79.h, v3.h
	v_and_b32_e32 v85, 1, v3
	v_cndmask_b16 v81.l, 0x7fff, v86.h, vcc_lo
	v_cndmask_b16 v78.h, 0x7fff, v82.h, s6
	v_cndmask_b16 v78.l, 0x7fff, v80.h, s7
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v80, v77, v85, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_mov_b16_e32 v3.l, v75.h
	v_mov_b16_e32 v82.l, v74.h
	v_mov_b16_e32 v82.h, v3.h
	v_add3_u32 v79, v76, v79, 0x7fff
	v_cndmask_b16 v77.h, 0x7fff, v80.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_and_b32_e32 v76, 1, v3
	v_and_b32_e32 v80, 1, v82
	v_mov_b16_e32 v82.l, v72.h
	v_mov_b16_e32 v3.l, v73.h
	v_cmp_o_f32_e64 s6, v75, v75
	v_add3_u32 v76, v75, v76, 0x7fff
	v_cndmask_b16 v77.l, 0x7fff, v79.h, vcc_lo
	v_and_b32_e32 v79, 1, v82
	v_and_b32_e32 v82, 1, v3
	v_mov_b16_e32 v3.l, v71.h
	v_add3_u32 v80, v74, v80, 0x7fff
	v_cndmask_b16 v75.h, 0x7fff, v76.h, s6
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_add3_u32 v74, v72, v79, 0x7fff
	v_add3_u32 v76, v73, v82, 0x7fff
	v_cmp_o_f32_e64 s6, v73, v73
	v_cmp_o_f32_e64 s7, v72, v72
	v_mov_b16_e32 v73.l, v70.h
	v_mov_b16_e32 v73.h, v3.h
	v_and_b32_e32 v79, 1, v3
	v_cndmask_b16 v75.l, 0x7fff, v80.h, vcc_lo
	v_cndmask_b16 v72.l, 0x7fff, v74.h, s7
	v_cmp_o_f32_e32 vcc_lo, v71, v71
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v74, v71, v79, 0x7fff
	v_mov_b16_e32 v3.l, v69.h
	v_cndmask_b16 v72.h, 0x7fff, v76.h, s6
	v_mov_b16_e32 v71.l, v68.h
	v_mov_b16_e32 v71.h, v3.h
	v_add3_u32 v73, v70, v73, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v74.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	v_and_b32_e32 v70, 1, v3
	v_mov_b16_e32 v76.l, v66.h
	v_mov_b16_e32 v76.h, v3.h
	v_mov_b16_e32 v3.l, v67.h
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v70, v69, v70, 0x7fff
	v_cmp_o_f32_e64 s6, v69, v69
	v_cndmask_b16 v74.l, 0x7fff, v73.h, vcc_lo
	v_and_b32_e32 v69, 1, v76
	v_and_b32_e32 v73, 1, v3
	v_mov_b16_e32 v3.l, v65.h
	v_add3_u32 v71, v68, v71, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v70.h, s6
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_add3_u32 v68, v66, v69, 0x7fff
	v_add3_u32 v69, v67, v73, 0x7fff
	v_cmp_o_f32_e64 s6, v67, v67
	v_cmp_o_f32_e64 s7, v66, v66
	v_mov_b16_e32 v66.l, v64.h
	v_mov_b16_e32 v66.h, v3.h
	v_and_b32_e32 v67, 1, v3
	v_cndmask_b16 v70.l, 0x7fff, v71.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v65, v65
	v_mov_b16_e32 v3.l, v63.h
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v67, v65, v67, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s7
	v_mov_b16_e32 v65.l, v62.h
	v_mov_b16_e32 v65.h, v3.h
	v_add3_u32 v66, v64, v66, 0x7fff
	v_cndmask_b16 v67.h, 0x7fff, v67.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v64, v64
	v_and_b32_e32 v64, 1, v3
	v_mov_b16_e32 v68.l, v61.h
	v_mov_b16_e32 v68.h, v3.h
	v_mov_b16_e32 v3.l, v60.h
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s6
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v64, v63, v64, 0x7fff
	v_cmp_o_f32_e64 s6, v63, v63
	v_cndmask_b16 v67.l, 0x7fff, v66.h, vcc_lo
	v_and_b32_e32 v63, 1, v68
	v_and_b32_e32 v66, 1, v3
	v_mov_b16_e32 v3.l, v59.h
	v_add3_u32 v65, v62, v65, 0x7fff
	v_cndmask_b16 v64.h, 0x7fff, v64.h, s6
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_add3_u32 v62, v61, v63, 0x7fff
	v_add3_u32 v63, v60, v66, 0x7fff
	v_cmp_o_f32_e64 s6, v60, v60
	v_cmp_o_f32_e64 s7, v61, v61
	v_mov_b16_e32 v60.l, v58.h
	v_mov_b16_e32 v60.h, v3.h
	v_and_b32_e32 v61, 1, v3
	v_cndmask_b16 v64.l, 0x7fff, v65.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	v_mov_b16_e32 v3.l, v57.h
	v_and_b32_e32 v60, 1, v60
	v_add3_u32 v61, v59, v61, 0x7fff
	v_cndmask_b16 v63.l, 0x7fff, v62.h, s7
	v_mov_b16_e32 v59.l, v56.h
	v_mov_b16_e32 v59.h, v3.h
	v_add3_u32 v60, v58, v60, 0x7fff
	v_cndmask_b16 v61.h, 0x7fff, v61.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v58, v58
	v_and_b32_e32 v58, 1, v3
	v_mov_b16_e32 v62.l, v55.h
	v_mov_b16_e32 v62.h, v3.h
	v_mov_b16_e32 v3.l, v54.h
	v_cndmask_b16 v63.h, 0x7fff, v63.h, s6
	v_and_b32_e32 v59, 1, v59
	v_add3_u32 v58, v57, v58, 0x7fff
	v_cmp_o_f32_e64 s6, v57, v57
	v_cndmask_b16 v61.l, 0x7fff, v60.h, vcc_lo
	v_and_b32_e32 v57, 1, v62
	v_and_b32_e32 v60, 1, v3
	v_mov_b16_e32 v3.l, v53.h
	v_add3_u32 v59, v56, v59, 0x7fff
	v_cndmask_b16 v58.h, 0x7fff, v58.h, s6
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_add3_u32 v56, v55, v57, 0x7fff
	v_add3_u32 v57, v54, v60, 0x7fff
	v_cmp_o_f32_e64 s6, v54, v54
	v_cmp_o_f32_e64 s7, v55, v55
	v_mov_b16_e32 v54.l, v52.h
	v_mov_b16_e32 v54.h, v3.h
	v_and_b32_e32 v55, 1, v3
	v_cndmask_b16 v58.l, 0x7fff, v59.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_mov_b16_e32 v3.l, v51.h
	v_and_b32_e32 v54, 1, v54
	v_add3_u32 v55, v53, v55, 0x7fff
	v_cndmask_b16 v57.l, 0x7fff, v56.h, s7
	v_mov_b16_e32 v53.l, v50.h
	v_mov_b16_e32 v53.h, v3.h
	v_add3_u32 v54, v52, v54, 0x7fff
	v_cndmask_b16 v55.h, 0x7fff, v55.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	v_and_b32_e32 v52, 1, v3
	v_mov_b16_e32 v56.l, v48.h
	v_mov_b16_e32 v56.h, v3.h
	v_mov_b16_e32 v3.l, v49.h
	v_cndmask_b16 v57.h, 0x7fff, v57.h, s6
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v52, v51, v52, 0x7fff
	v_cmp_o_f32_e64 s6, v51, v51
	v_cndmask_b16 v55.l, 0x7fff, v54.h, vcc_lo
	v_and_b32_e32 v51, 1, v56
	v_and_b32_e32 v54, 1, v3
	v_mov_b16_e32 v3.l, v47.h
	v_add3_u32 v53, v50, v53, 0x7fff
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s6
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_add3_u32 v50, v48, v51, 0x7fff
	v_add3_u32 v51, v49, v54, 0x7fff
	v_cmp_o_f32_e64 s6, v49, v49
	v_cmp_o_f32_e64 s7, v48, v48
	v_mov_b16_e32 v48.l, v46.h
	v_mov_b16_e32 v48.h, v3.h
	v_and_b32_e32 v49, 1, v3
	v_cndmask_b16 v52.l, 0x7fff, v53.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_mov_b16_e32 v3.l, v45.h
	v_and_b32_e32 v48, 1, v48
	v_add3_u32 v49, v47, v49, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v50.h, s7
	v_mov_b16_e32 v47.l, v44.h
	v_mov_b16_e32 v47.h, v3.h
	v_add3_u32 v48, v46, v48, 0x7fff
	v_cndmask_b16 v49.h, 0x7fff, v49.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_and_b32_e32 v46, 1, v3
	v_mov_b16_e32 v50.l, v42.h
	v_mov_b16_e32 v50.h, v3.h
	v_mov_b16_e32 v3.l, v43.h
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s6
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v46, v45, v46, 0x7fff
	v_cmp_o_f32_e64 s6, v45, v45
	v_cndmask_b16 v49.l, 0x7fff, v48.h, vcc_lo
	v_and_b32_e32 v45, 1, v50
	v_and_b32_e32 v48, 1, v3
	v_mov_b16_e32 v3.l, v41.h
	v_add3_u32 v47, v44, v47, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s6
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_add3_u32 v44, v42, v45, 0x7fff
	v_add3_u32 v45, v43, v48, 0x7fff
	v_cmp_o_f32_e64 s6, v43, v43
	v_cmp_o_f32_e64 s7, v42, v42
	v_mov_b16_e32 v42.l, v40.h
	v_mov_b16_e32 v42.h, v3.h
	v_and_b32_e32 v43, 1, v3
	v_cndmask_b16 v46.l, 0x7fff, v47.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_mov_b16_e32 v3.l, v39.h
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v43, v41, v43, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v44.h, s7
	v_mov_b16_e32 v41.l, v38.h
	v_mov_b16_e32 v41.h, v3.h
	v_add3_u32 v42, v40, v42, 0x7fff
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v40, v40
	v_and_b32_e32 v40, 1, v3
	v_mov_b16_e32 v44.l, v36.h
	v_mov_b16_e32 v44.h, v3.h
	v_mov_b16_e32 v3.l, v37.h
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s6
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v40, v39, v40, 0x7fff
	v_cmp_o_f32_e64 s6, v39, v39
	v_cndmask_b16 v43.l, 0x7fff, v42.h, vcc_lo
	v_and_b32_e32 v39, 1, v44
	v_and_b32_e32 v42, 1, v3
	v_mov_b16_e32 v3.l, v35.h
	v_add3_u32 v41, v38, v41, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s6
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_add3_u32 v38, v36, v39, 0x7fff
	v_add3_u32 v39, v37, v42, 0x7fff
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v36, v36
	v_mov_b16_e32 v36.l, v34.h
	v_mov_b16_e32 v36.h, v3.h
	v_and_b32_e32 v37, 1, v3
	v_cndmask_b16 v40.l, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_mov_b16_e32 v3.l, v33.h
	v_and_b32_e32 v36, 1, v36
	v_add3_u32 v37, v35, v37, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v38.h, s7
	v_mov_b16_e32 v35.l, v32.h
	v_mov_b16_e32 v35.h, v3.h
	v_add3_u32 v36, v34, v36, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_and_b32_e32 v34, 1, v3
	v_mov_b16_e32 v38.l, v30.h
	v_mov_b16_e32 v38.h, v3.h
	v_mov_b16_e32 v3.l, v31.h
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s6
	v_and_b32_e32 v35, 1, v35
	v_add3_u32 v34, v33, v34, 0x7fff
	v_cmp_o_f32_e64 s6, v33, v33
	v_cndmask_b16 v37.l, 0x7fff, v36.h, vcc_lo
	v_and_b32_e32 v33, 1, v38
	v_and_b32_e32 v36, 1, v3
	v_add3_u32 v35, v32, v35, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s6
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	v_add3_u32 v32, v30, v33, 0x7fff
	v_add3_u32 v33, v31, v36, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_cmp_o_f32_e64 s7, v30, v30
	v_mov_b16_e32 v3.l, v29.h
	v_mov_b16_e32 v30.l, v28.h
	v_mov_b16_e32 v30.h, v3.h
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s6
	v_cndmask_b16 v31.l, 0x7fff, v32.h, s7
	v_and_b32_e32 v32, 1, v3
	v_mov_b16_e32 v33.l, v27.h
	v_mov_b16_e32 v33.h, v3.h
	v_mov_b16_e32 v3.l, v26.h
	v_cndmask_b16 v34.l, 0x7fff, v35.h, vcc_lo
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v32, v29, v32, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_and_b32_e32 v33, 1, v33
	v_mov_b16_e32 v35.l, v25.h
	v_mov_b16_e32 v35.h, v3.h
	v_and_b32_e32 v29, 1, v3
	v_mov_b16_e32 v3.l, v5.h
	v_add3_u32 v30, v28, v30, 0x7fff
	v_cndmask_b16 v32.h, 0x7fff, v32.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_add3_u32 v28, v27, v33, 0x7fff
	v_and_b32_e32 v33, 1, v35
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v29, v26, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v26, v26
	v_cmp_o_f32_e64 s7, v27, v27
	v_add3_u32 v26, v25, v33, 0x7fff
	v_cmp_o_f32_e64 s9, v25, v25
	v_add3_u32 v3, v5, v3, 0x7fff
	v_cmp_o_f32_e64 s8, v5, v5
	v_cndmask_b16 v5.h, 0x7fff, v29.h, s6
	v_cndmask_b16 v5.l, 0x7fff, v28.h, s7
	v_cndmask_b16 v3.l, 0x7fff, v26.h, s9
	v_cndmask_b32_e64 v26, v83, v4, s0
	v_cndmask_b32_e64 v4, v4, v83, s0
	v_cndmask_b16 v32.l, 0x7fff, v30.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s8
	v_cndmask_b32_e64 v25, v84, v81, s0
	v_cndmask_b32_e64 v27, v78, v75, s0
	v_cndmask_b32_e64 v29, v77, v72, s0
	v_cndmask_b32_e64 v36, v74, v69, s0
	v_cndmask_b32_e64 v41, v70, v67, s0
	v_cndmask_b32_e64 v44, v64, v61, s0
	v_cndmask_b32_e64 v48, v63, v58, s0
	v_cndmask_b32_e64 v50, v52, v57, s0
	v_cndmask_b32_e64 v52, v57, v52, s0
	v_cndmask_b32_e64 v53, v51, v55, s0
	v_cndmask_b32_e64 v51, v55, v51, s0
	v_cndmask_b32_e64 v54, v45, v49, s0
	v_cndmask_b32_e64 v45, v49, v45, s0
	v_cndmask_b32_e64 v57, v5, v31, s0
	v_cndmask_b32_e64 v5, v31, v5, s0
	v_permlanex16_b32 v4, v4, s50, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v28, v81, v84, s0
	v_cndmask_b32_e64 v30, v75, v78, s0
	v_cndmask_b32_e64 v33, v72, v77, s0
	v_cndmask_b32_e64 v35, v69, v74, s0
	v_cndmask_b32_e64 v38, v67, v70, s0
	v_cndmask_b32_e64 v42, v61, v64, s0
	v_cndmask_b32_e64 v47, v58, v63, s0
	v_cndmask_b32_e64 v49, v43, v46, s0
	v_cndmask_b32_e64 v43, v46, v43, s0
	v_cndmask_b32_e64 v55, v37, v40, s0
	v_cndmask_b32_e64 v37, v40, v37, s0
	v_cndmask_b32_e64 v56, v34, v39, s0
	v_cndmask_b32_e64 v34, v39, v34, s0
	v_cndmask_b32_e64 v58, v3, v32, s0
	v_cndmask_b32_e64 v3, v32, v3, s0
	v_permlanex16_b32 v31, v25, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v27, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v29, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v36, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v41, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v41, v44, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v44, v48, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v52, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v51, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v51, v45, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v25, v4, v26, v16
	v_perm_b32 v26, v4, v26, v17
	v_add_lshl_u32 v4, s14, v1, 1
	v_permlanex16_b32 v52, v43, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v59, v37, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v60, v34, s50, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v27, v31, v28, v16
	v_perm_b32 v28, v31, v28, v17
	v_perm_b32 v29, v32, v30, v16
	v_perm_b32 v30, v32, v30, v17
	v_perm_b32 v31, v39, v33, v16
	v_perm_b32 v32, v39, v33, v17
	v_perm_b32 v33, v36, v35, v16
	v_perm_b32 v34, v36, v35, v17
	v_perm_b32 v35, v40, v38, v16
	v_perm_b32 v36, v40, v38, v17
	v_perm_b32 v37, v41, v42, v16
	v_perm_b32 v38, v41, v42, v17
	v_perm_b32 v39, v44, v47, v16
	v_perm_b32 v40, v44, v47, v17
	v_perm_b32 v41, v46, v50, v16
	v_perm_b32 v42, v46, v50, v17
	v_perm_b32 v43, v48, v53, v16
	v_perm_b32 v44, v48, v53, v17
	v_perm_b32 v45, v51, v54, v16
	v_perm_b32 v46, v51, v54, v17
	v_perm_b32 v53, v5, v57, v16
	v_perm_b32 v54, v5, v57, v17
	v_add_lshl_u32 v5, v9, s14, 1
	v_add_lshl_u32 v57, v10, s14, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	v_perm_b32 v47, v52, v49, v16
	v_perm_b32 v48, v52, v49, v17
	v_perm_b32 v49, v59, v55, v16
	v_perm_b32 v50, v59, v55, v17
	v_perm_b32 v51, v60, v56, v16
	v_perm_b32 v52, v60, v56, v17
	v_perm_b32 v55, v3, v58, v16
	v_perm_b32 v56, v3, v58, v17
	v_cndmask_b32_e64 v3, 0x80000000, v5, s1
	v_cndmask_b32_e64 v5, 0x80000000, v57, s1
	v_add_lshl_u32 v57, v11, s14, 1
	buffer_store_b128 v[25:28], v4, s[24:27], 0 offen
	v_add_lshl_u32 v4, v12, s14, 1
	s_clause 0x1
	buffer_store_b128 v[29:32], v3, s[24:27], 0 offen
	buffer_store_b128 v[33:36], v5, s[24:27], 0 offen
	v_add_lshl_u32 v5, v13, s14, 1
	v_cndmask_b32_e64 v3, 0x80000000, v57, s1
	v_add_lshl_u32 v25, v14, s14, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s1
	v_add_lshl_u32 v26, v15, s14, 1
	.loc	1 215 5 is_stmt 1               ; generate_amdgcn.py:215:5
	s_add_i32 s2, s2, 20
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	buffer_store_b128 v[37:40], v3, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v5, s1
	buffer_store_b128 v[41:44], v4, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v25, s1
	v_cndmask_b32_e64 v5, 0x80000000, v26, s1
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cmp_lt_i32 s2, s34
	.loc	1 277 13                        ; generate_amdgcn.py:277:13
	s_clause 0x2
	buffer_store_b128 v[45:48], v3, s[24:27], 0 offen
	buffer_store_b128 v[49:52], v4, s[24:27], 0 offen
	buffer_store_b128 v[53:56], v5, s[24:27], 0 offen
	.loc	1 215 5                         ; generate_amdgcn.py:215:5
	s_cbranch_scc0 .LBB0_6
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 216 20                        ; generate_amdgcn.py:216:20
	s_abs_i32 s6, s2
	s_ashr_i32 s7, s2, 31
	s_mul_hi_u32 s8, s6, s47
	s_xor_b32 s7, s7, s11
	s_mul_i32 s9, s8, s10
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v28, 0
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s8, 1
	s_sub_i32 s14, s6, s10
	s_cmp_ge_u32 s6, s10
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	s_cselect_b32 s8, s9, s8
	s_cselect_b32 s6, s14, s6
	s_add_i32 s9, s8, 1
	s_cmp_ge_u32 s6, s10
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	s_cselect_b32 s6, s9, s8
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v32, 0
	s_xor_b32 s6, s6, s7
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v36, 0
	s_sub_i32 s6, s6, s7
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
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
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	.loc	1 220 17                        ; generate_amdgcn.py:220:17
	s_abs_i32 s7, s14
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	s_cvt_f32_u32 s9, s7
	s_sub_i32 s15, 0, s7
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v44, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v3, s9
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s9, v3
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v56, 0
	s_mul_f32 s9, s9, 0x4f7ffffe
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_cvt_u32_f32 s9, s9
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v64, 0
	s_mul_i32 s15, s15, s9
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	s_mul_hi_u32 s6, s9, s15
	s_abs_i32 s15, s17
	s_add_i32 s9, s9, s6
	s_xor_b32 s6, s17, s14
	s_mul_hi_u32 s9, s15, s9
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s18, s9, s7
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	s_sub_i32 s15, s15, s18
	s_add_i32 s18, s9, 1
	s_sub_i32 s19, s15, s7
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	s_cselect_b32 s9, s18, s9
	s_cselect_b32 s15, s19, s15
	s_add_i32 s18, s9, 1
	s_cmp_ge_u32 s15, s7
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v72, 0
	s_cselect_b32 s7, s18, s9
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	s_xor_b32 s9, s7, s6
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	s_sub_i32 s7, s9, s6
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	.loc	1 219 32                        ; generate_amdgcn.py:219:32
	s_mul_i32 s14, s7, s14
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v80, 0
	s_sub_i32 s14, s17, s14
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v87, 0
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
	v_lshl_or_b32 v3, s9, 7, v8
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v4, s8, v7
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v5, s8, v6
	s_lshl_b32 s14, s9, 8
	s_lshl_b32 s9, s6, 7
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v88, s49, v4
	v_subrev_nc_u32_e32 v25, s9, v3
	v_mad_u64_u32 v[3:4], null, s45, v5, v[0:1]
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[4:5], null, s45, v25, v[2:3]
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v5, 0
	s_lshl_b32 s6, s6, 8
	s_mov_b32 s51, 0
	s_sub_i32 s9, s14, s6
	s_mov_b32 s52, s46
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_add_nc_u32_e32 v91, s51, v0
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v151, s23 :: v_dual_add_nc_u32 v90, s51, v2
	v_mov_b32_e32 v150, s22
	v_dual_mov_b32 v149, s21 :: v_dual_add_nc_u32 v92, s51, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 259 31                        ; generate_amdgcn.py:259:31
	v_cmp_gt_i32_e32 vcc_lo, s45, v91
	v_cmp_gt_i32_e64 s6, s45, v90
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v148, s20 :: v_dual_add_nc_u32 v93, s51, v4
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_mov_b32 s38, s30
	.loc	1 259 30                        ; generate_amdgcn.py:259:30
	s_and_b32 vcc_lo, vcc_lo, s5
	s_and_b32 s6, s6, s4
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	v_cndmask_b32_e32 v90, 0x80000000, v92, vcc_lo
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	v_cndmask_b32_e64 v91, 0x80000000, v93, s6
	s_mov_b32 s39, s31
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	buffer_load_u8 v92, v90, s[28:31], 0 offen
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	buffer_load_b64 v[90:91], v91, s[36:39], 0 offen
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v146, s18 :: v_dual_add_nc_u32 v89, s9, v18
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_dual_mov_b32 v147, s19 :: v_dual_mov_b32 v144, s16
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_add_i32 s52, s52, -1
	s_add_i32 s9, s9, s48
	s_add_i32 s51, s51, 32
	s_cmp_lg_u32 s52, 0
	.loc	1 265 30                        ; generate_amdgcn.py:265:30
	s_waitcnt vmcnt(1)
	ds_store_b8 v19, v92
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[132:133], v20
	ds_load_b64 v[134:135], v21
	ds_load_b64 v[136:137], v22
	ds_load_b64 v[138:139], v23
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v24, v[90:91]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[104:107], v20 offset1:1
	ds_load_2addr_stride64_b64 v[120:123], v20 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[124:127], v20 offset0:4 offset1:5
	ds_load_2addr_stride64_b64 v[128:131], v20 offset0:6 offset1:7
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	buffer_load_u16 v176, v88, s[12:15], 0 offen
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	buffer_load_u16 v177, v89, s[40:43], 0 offen
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_mov_b32_e32 v145, s17
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x2
	buffer_load_u16 v178, v89, s[40:43], 0 offen offset:4
	buffer_load_u16 v179, v89, s[40:43], 0 offen offset:8
	buffer_load_u16 v180, v89, s[40:43], 0 offen offset:12
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	v_add_nc_u32_e32 v88, 2, v88
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[104:105], v[132:133], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[106:107], v[132:133], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[120:121], v[132:133], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[122:123], v[132:133], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[152:159], v[124:125], v[132:133], v[144:151] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[122:125], v21 offset1:1
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	v_wmma_i32_16x16x16_iu4 v[160:167], v[126:127], v[132:133], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[128:129], v[132:133], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[130:131], v[132:133], v[144:151] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[122:123], v[134:135], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[124:125], v[134:135], v[98:105] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[122:125], v21 offset0:2 offset1:3
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[122:123], v[134:135], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[124:125], v[134:135], v[114:121] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[122:125], v21 offset0:4 offset1:5
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[152:159], v[122:123], v[134:135], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[124:125], v[134:135], v[160:167] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[122:125], v21 offset0:6 offset1:7
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[122:123], v[134:135], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[124:125], v[134:135], v[144:151] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[122:125], v22 offset1:1
	ds_load_2addr_stride64_b64 v[126:129], v22 offset0:2 offset1:3
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[122:123], v[136:137], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[124:125], v[136:137], v[98:105] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[122:125], v22 offset0:4 offset1:5
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[126:127], v[136:137], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[128:129], v[136:137], v[114:121] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[126:129], v22 offset0:6 offset1:7
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[152:159], v[122:123], v[136:137], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[124:125], v[136:137], v[160:167] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[122:125], v23 offset1:1
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[126:127], v[136:137], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[144:151], v[128:129], v[136:137], v[144:151] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[126:129], v23 offset0:2 offset1:3
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[122:123], v[138:139], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[124:125], v[138:139], v[98:105] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[122:125], v23 offset0:4 offset1:5
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[106:113], v[126:127], v[138:139], v[106:113] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[114:121], v[128:129], v[138:139], v[114:121] neg_lo:[1,1,0]
	.loc	1 268 30                        ; generate_amdgcn.py:268:30
	ds_load_2addr_stride64_b64 v[126:129], v23 offset0:6 offset1:7
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v185, v94
	v_cvt_f32_i32_e32 v186, v95
	v_cvt_f32_i32_e32 v181, v90
	v_cvt_f32_i32_e32 v94, v120
	v_cvt_f32_i32_e32 v95, v121
	v_cvt_f32_i32_e32 v182, v91
	v_cvt_f32_i32_e32 v183, v92
	v_cvt_f32_i32_e32 v184, v93
	v_cvt_f32_i32_e32 v141, v103
	v_cvt_f32_i32_e32 v187, v96
	v_cvt_f32_i32_e32 v189, v98
	v_cvt_f32_i32_e32 v190, v99
	v_cvt_f32_i32_e32 v191, v100
	v_cvt_f32_i32_e32 v142, v102
	v_cvt_f32_i32_e32 v140, v104
	v_cvt_f32_i32_e32 v188, v97
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[152:159], v[122:123], v[138:139], v[152:159] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[160:167], v[124:125], v[138:139], v[160:167] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v143, v101
	.loc	1 271 31                        ; generate_amdgcn.py:271:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[144:151], v[128:129], v[138:139], v[144:151] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[126:127], v[138:139], v[168:175] neg_lo:[1,1,0]
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v103, v159
	v_cvt_f32_i32_e32 v96, v152
	v_cvt_f32_i32_e32 v98, v154
	v_cvt_f32_i32_e32 v123, v144
	v_cvt_f32_i32_e32 v124, v145
	v_cvt_f32_i32_e32 v120, v146
	v_cvt_f32_i32_e32 v125, v147
	v_cvt_f32_i32_e32 v121, v148
	v_cvt_f32_i32_e32 v126, v149
	v_cvt_f32_i32_e32 v122, v150
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x6
	buffer_load_u16 v144, v89, s[40:43], 0 offen offset:16
	buffer_load_u16 v145, v89, s[40:43], 0 offen offset:20
	buffer_load_u16 v146, v89, s[40:43], 0 offen offset:24
	buffer_load_u16 v147, v89, s[40:43], 0 offen offset:28
	buffer_load_u16 v148, v89, s[40:43], 0 offen offset:32
	buffer_load_u16 v149, v89, s[40:43], 0 offen offset:36
	buffer_load_u16 v150, v89, s[40:43], 0 offen offset:40
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_cvt_f32_i32_e32 v127, v151
	v_cvt_f32_i32_e32 v99, v155
	v_cvt_f32_i32_e32 v100, v156
	v_cvt_f32_i32_e32 v102, v158
	v_cvt_f32_i32_e32 v104, v160
	v_cvt_f32_i32_e32 v97, v153
	v_cvt_f32_i32_e32 v101, v157
	v_cvt_f32_i32_e32 v139, v105
	v_cvt_f32_i32_e32 v105, v161
	v_cvt_f32_i32_e32 v138, v106
	v_cvt_f32_i32_e32 v106, v162
	v_cvt_f32_i32_e32 v136, v108
	v_cvt_f32_i32_e32 v135, v109
	v_cvt_f32_i32_e32 v134, v110
	v_cvt_f32_i32_e32 v109, v165
	v_cvt_f32_i32_e32 v133, v111
	v_cvt_f32_i32_e32 v108, v164
	v_cvt_f32_i32_e32 v137, v107
	v_cvt_f32_i32_e32 v132, v112
	v_cvt_f32_i32_e32 v131, v113
	v_cvt_f32_i32_e32 v130, v114
	v_cvt_f32_i32_e32 v129, v115
	v_cvt_f32_i32_e32 v107, v163
	v_cvt_f32_i32_e32 v90, v116
	v_cvt_f32_i32_e32 v91, v117
	v_cvt_f32_i32_e32 v92, v118
	v_cvt_f32_i32_e32 v93, v119
	v_cvt_f32_i32_e32 v110, v166
	v_cvt_f32_i32_e32 v111, v167
	v_cvt_f32_i32_e32 v112, v168
	v_cvt_f32_i32_e32 v113, v169
	v_cvt_f32_i32_e32 v114, v170
	v_cvt_f32_i32_e32 v115, v171
	v_cvt_f32_i32_e32 v116, v172
	v_cvt_f32_i32_e32 v117, v173
	v_cvt_f32_i32_e32 v118, v174
	v_cvt_f32_i32_e32 v119, v175
	.loc	1 272 22                        ; generate_amdgcn.py:272:22
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v128, 16, v176
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v151, 16, v177
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v155, 16, v179
	v_lshlrev_b32_e32 v153, 16, v178
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v156, v128, v183 :: v_dual_lshlrev_b32 v157, 16, v180
	v_mul_f32_e32 v152, v128, v181
	v_mul_f32_e32 v154, v128, v182
	v_mul_f32_e32 v158, v128, v184
	v_mul_f32_e32 v160, v128, v186
	v_mul_f32_e32 v162, v128, v188
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v86, v152, v151 :: v_dual_fmac_f32 v87, v154, v153
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_clause 0x3
	buffer_load_u16 v151, v89, s[40:43], 0 offen offset:44
	buffer_load_u16 v152, v89, s[40:43], 0 offen offset:48
	buffer_load_u16 v153, v89, s[40:43], 0 offen offset:52
	buffer_load_u16 v154, v89, s[40:43], 0 offen offset:56
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v164, v128, v190
	v_mul_f32_e32 v142, v128, v142
	v_mul_f32_e32 v129, v128, v129
	v_mul_f32_e32 v159, v128, v185
	v_mul_f32_e32 v161, v128, v187
	v_mul_f32_e32 v163, v128, v189
	v_mul_f32_e32 v165, v128, v191
	v_mul_f32_e32 v143, v128, v143
	v_mul_f32_e32 v141, v128, v141
	v_mul_f32_e32 v135, v128, v135
	v_mul_f32_e32 v137, v128, v137
	v_mul_f32_e32 v131, v128, v131
	v_mul_f32_e32 v91, v128, v91
	v_mul_f32_e32 v133, v128, v133
	v_mul_f32_e32 v97, v128, v97
	v_mul_f32_e32 v94, v128, v94
	v_mul_f32_e32 v92, v128, v92
	v_mul_f32_e32 v93, v128, v93
	v_mul_f32_e32 v90, v128, v90
	v_mul_f32_e32 v95, v128, v95
	v_mul_f32_e32 v96, v128, v96
	v_mul_f32_e32 v98, v128, v98
	v_mul_f32_e32 v99, v128, v99
	v_mul_f32_e32 v101, v128, v101
	v_mul_f32_e32 v100, v128, v100
	v_mul_f32_e32 v102, v128, v102
	v_mul_f32_e32 v103, v128, v103
	v_mul_f32_e32 v105, v128, v105
	v_mul_f32_e32 v104, v128, v104
	v_mul_f32_e32 v106, v128, v106
	v_mul_f32_e32 v107, v128, v107
	v_mul_f32_e32 v109, v128, v109
	v_mul_f32_e32 v117, v128, v117
	v_mul_f32_e32 v108, v128, v108
	v_mul_f32_e32 v114, v128, v114
	v_mul_f32_e32 v124, v128, v124
	v_mul_f32_e32 v110, v128, v110
	v_mul_f32_e32 v125, v128, v125
	v_mul_f32_e32 v116, v128, v116
	v_mul_f32_e32 v111, v128, v111
	v_mul_f32_e32 v112, v128, v112
	v_mul_f32_e32 v118, v128, v118
	v_mul_f32_e32 v113, v128, v113
	v_mul_f32_e32 v115, v128, v115
	v_mul_f32_e32 v119, v128, v119
	v_mul_f32_e32 v123, v128, v123
	v_mul_f32_e32 v126, v128, v126
	v_mul_f32_e32 v121, v128, v121
	v_mul_f32_e32 v122, v128, v122
	v_mul_f32_e32 v120, v128, v120
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v144, 16, v144
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v84, v156, v155 :: v_dual_lshlrev_b32 v145, 16, v145
	v_fmac_f32_e32 v85, v158, v157
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v82, v159, v144 :: v_dual_lshlrev_b32 v147, 16, v147
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v83, v160, v145
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x5
	buffer_load_u16 v144, v89, s[40:43], 0 offen offset:76
	buffer_load_u16 v159, v89, s[40:43], 0 offen offset:80
	buffer_load_u16 v155, v89, s[40:43], 0 offen offset:60
	buffer_load_u16 v156, v89, s[40:43], 0 offen offset:64
	buffer_load_u16 v145, v89, s[40:43], 0 offen offset:84
	buffer_load_u16 v160, v89, s[40:43], 0 offen offset:88
	v_lshlrev_b32_e32 v146, 16, v146
	s_clause 0x1
	buffer_load_u16 v157, v89, s[40:43], 0 offen offset:68
	buffer_load_u16 v158, v89, s[40:43], 0 offen offset:72
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v149, 16, v149
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v81, v162, v147
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v147, v89, s[40:43], 0 offen offset:100
	buffer_load_u16 v162, v89, s[40:43], 0 offen offset:104
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v80, v161, v146
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v146, v89, s[40:43], 0 offen offset:92
	buffer_load_u16 v161, v89, s[40:43], 0 offen offset:96
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v150, 16, v150
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v136, v128, v136
	v_mul_f32_e32 v134, v128, v134
	v_mul_f32_e32 v139, v128, v139
	v_mul_f32_e32 v138, v128, v138
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v76, v165, v150
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_mul_f32_e32 v140, v128, v140
	v_mul_f32_e32 v130, v128, v130
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x1
	buffer_load_u16 v150, v89, s[40:43], 0 offen offset:124
	buffer_load_u16 v165, v89, s[40:43], 0 offen offset:128
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v153, 16, v153
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v78, v163, v148 :: v_dual_fmac_f32 v79, v164, v149
	v_dual_fmac_f32 v77, v143, v151 :: v_dual_fmac_f32 v74, v142, v152
	v_fmac_f32_e32 v75, v141, v153
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x9
	buffer_load_u16 v148, v89, s[40:43], 0 offen offset:108
	buffer_load_u16 v163, v89, s[40:43], 0 offen offset:112
	buffer_load_u16 v149, v89, s[40:43], 0 offen offset:116
	buffer_load_u16 v164, v89, s[40:43], 0 offen offset:120
	buffer_load_u16 v143, v89, s[40:43], 0 offen offset:132
	buffer_load_u16 v151, v89, s[40:43], 0 offen offset:136
	buffer_load_u16 v142, v89, s[40:43], 0 offen offset:140
	buffer_load_u16 v152, v89, s[40:43], 0 offen offset:144
	buffer_load_u16 v141, v89, s[40:43], 0 offen offset:148
	buffer_load_u16 v153, v89, s[40:43], 0 offen offset:152
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v157, 16, v157
	v_lshlrev_b32_e32 v160, 16, v160
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_fmac_f32_e32 v66, v134, v159
	v_dual_fmac_f32 v70, v138, v156 :: v_dual_fmac_f32 v67, v133, v145
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v146, 16, v146
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v132, v128, v132 :: v_dual_lshlrev_b32 v155, 16, v155
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v71, v137, v157 :: v_dual_lshlrev_b32 v158, 16, v158
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v65, v131, v146 :: v_dual_fmac_f32 v64, v132, v160
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v72, v140, v154 :: v_dual_lshlrev_b32 v147, 16, v147
	v_fmac_f32_e32 v73, v139, v155
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x7
	buffer_load_u16 v140, v89, s[40:43], 0 offen offset:156
	buffer_load_u16 v154, v89, s[40:43], 0 offen offset:160
	buffer_load_u16 v139, v89, s[40:43], 0 offen offset:164
	buffer_load_u16 v155, v89, s[40:43], 0 offen offset:168
	buffer_load_u16 v138, v89, s[40:43], 0 offen offset:172
	buffer_load_u16 v156, v89, s[40:43], 0 offen offset:176
	buffer_load_u16 v137, v89, s[40:43], 0 offen offset:180
	buffer_load_u16 v157, v89, s[40:43], 0 offen offset:184
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v68, v136, v158 :: v_dual_fmac_f32 v69, v135, v144
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0xb
	buffer_load_u16 v136, v89, s[40:43], 0 offen offset:188
	buffer_load_u16 v158, v89, s[40:43], 0 offen offset:192
	buffer_load_u16 v135, v89, s[40:43], 0 offen offset:196
	buffer_load_u16 v144, v89, s[40:43], 0 offen offset:200
	buffer_load_u16 v134, v89, s[40:43], 0 offen offset:204
	buffer_load_u16 v159, v89, s[40:43], 0 offen offset:208
	buffer_load_u16 v133, v89, s[40:43], 0 offen offset:212
	buffer_load_u16 v145, v89, s[40:43], 0 offen offset:216
	buffer_load_u16 v132, v89, s[40:43], 0 offen offset:220
	buffer_load_u16 v160, v89, s[40:43], 0 offen offset:224
	buffer_load_u16 v131, v89, s[40:43], 0 offen offset:228
	buffer_load_u16 v146, v89, s[40:43], 0 offen offset:236
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v62, v130, v161 :: v_dual_fmac_f32 v63, v129, v147
	.loc	1 273 22                        ; generate_amdgcn.py:273:22
	s_clause 0x4
	buffer_load_u16 v130, v89, s[40:43], 0 offen offset:232
	buffer_load_u16 v161, v89, s[40:43], 0 offen offset:244
	buffer_load_u16 v129, v89, s[40:43], 0 offen offset:240
	buffer_load_u16 v147, v89, s[40:43], 0 offen offset:252
	buffer_load_u16 v89, v89, s[40:43], 0 offen offset:248
	v_lshlrev_b32_e32 v162, 16, v162
	s_waitcnt vmcnt(36)
	v_lshlrev_b32_e32 v150, 16, v150
	s_waitcnt vmcnt(35)
	v_lshlrev_b32_e32 v165, 16, v165
	s_waitcnt vmcnt(34)
	v_lshlrev_b32_e32 v148, 16, v148
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v163, 16, v163
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v149, 16, v149
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v164, 16, v164
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v143, 16, v143
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v142, 16, v142
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v152, 16, v152
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v141, 16, v141
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v153, 16, v153
	.loc	1 274 24                        ; generate_amdgcn.py:274:24
	v_dual_mul_f32 v127, v128, v127 :: v_dual_fmac_f32 v56, v94, v164
	.loc	1 274 17 is_stmt 0              ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v61, v90, v162 :: v_dual_fmac_f32 v58, v92, v163
	v_dual_fmac_f32 v60, v91, v148 :: v_dual_fmac_f32 v59, v93, v149
	v_dual_fmac_f32 v52, v98, v151 :: v_dual_fmac_f32 v57, v95, v150
	v_dual_fmac_f32 v54, v97, v143 :: v_dual_fmac_f32 v53, v99, v142
	v_fmac_f32_e32 v50, v100, v152
	.loc	1 273 22 is_stmt 1              ; generate_amdgcn.py:273:22
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v140, 16, v140
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v154, 16, v154
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v139, 16, v139
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v155, 16, v155
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v138, 16, v138
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v156, 16, v156
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v137, 16, v137
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v136, 16, v136
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v158, 16, v158
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v135, 16, v135
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v134, 16, v134
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v159, 16, v159
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v133, 16, v133
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v132, 16, v132
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v160, 16, v160
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v131, 16, v131
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v146, 16, v146
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v130, 16, v130
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v129, 16, v129
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v147, 16, v147
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v89, 16, v89
	.loc	1 274 17                        ; generate_amdgcn.py:274:17
	v_dual_fmac_f32 v55, v96, v165 :: v_dual_fmac_f32 v44, v106, v155
	v_dual_fmac_f32 v51, v101, v141 :: v_dual_fmac_f32 v46, v104, v154
	v_dual_fmac_f32 v48, v102, v153 :: v_dual_fmac_f32 v49, v103, v140
	v_dual_fmac_f32 v47, v105, v139 :: v_dual_fmac_f32 v42, v108, v156
	v_dual_fmac_f32 v45, v107, v138 :: v_dual_fmac_f32 v40, v110, v157
	v_dual_fmac_f32 v43, v109, v137 :: v_dual_fmac_f32 v38, v112, v158
	v_dual_fmac_f32 v41, v111, v136 :: v_dual_fmac_f32 v34, v116, v159
	v_dual_fmac_f32 v39, v113, v135 :: v_dual_fmac_f32 v36, v114, v144
	v_dual_fmac_f32 v37, v115, v134 :: v_dual_fmac_f32 v32, v118, v145
	v_dual_fmac_f32 v35, v117, v133 :: v_dual_fmac_f32 v30, v123, v160
	v_dual_fmac_f32 v33, v119, v132 :: v_dual_fmac_f32 v28, v120, v130
	v_dual_fmac_f32 v31, v124, v131 :: v_dual_fmac_f32 v26, v126, v161
	v_fmac_f32_e32 v29, v125, v146
	v_fmac_f32_e32 v27, v121, v129
	v_fmac_f32_e32 v25, v122, v89
	v_fmac_f32_e32 v5, v127, v147
	.loc	1 252 13                        ; generate_amdgcn.py:252:13
	s_cbranch_scc1 .LBB0_5
	s_branch .LBB0_2
.LBB0_6:                                ; %._crit_edge7
	.loc	1 196 1                         ; generate_amdgcn.py:196:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp19:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 192
		.amdhsa_next_free_sgpr 53
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
		.amdhsa_inst_pref_size 59
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_vgpr, 192
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7544
; TotalNumSgprs: 55
; NumVgprs: 192
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 192
; Occupancy: 8
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk"  ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc64_none_persistent_bm16_bn128_bk128_gm4_w16_s1_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     192
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
