	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s78, s[0:1], 0x54
	s_load_b64 s[34:35], s[0:1], 0x5c
	v_mov_b32_e32 v129, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_and_b32_e32 v69, 0x7f, v129
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s78, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s35, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s7, s8
	s_abs_i32 s8, s2
	s_add_i32 s7, s7, s3
	s_mul_hi_u32 s3, s8, s7
	s_xor_b32 s7, s2, s5
	s_mul_i32 s9, s3, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s12, s8, s9
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s6
	s_cmp_ge_u32 s12, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s6
	s_cselect_b32 s3, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s7
	s_sub_i32 s79, s3, s7
	s_load_b64 s[6:7], s[0:1], 0x38
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s79, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s2, s3
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s8, s4
	s_addc_u32 s3, s9, s5
	s_mov_b32 s8, 0
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s10, s4
	s_addc_u32 s3, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s6, s4
	s_addc_u32 s7, s7, s5
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s34, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v7, 0x7f, v129
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 50 is_stmt 0                ; ragged.py:0:50
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr7
.LBB0_3:                                ; %Flow661
	s_load_b128 s[64:67], s[0:1], 0x40
	s_load_b64 s[74:75], s[2:3], 0x0
	s_load_b64 s[76:77], s[6:7], 0x0
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v112, 0x80, v129
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v111, 15, v129
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v95, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s2, 0, v112
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v247, 0
	v_dual_mov_b32 v248, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v239, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v244, 0 :: v_dual_mov_b32 v245, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v181, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 5, v129
	s_clause 0x2
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b32 s33, s[0:1], 0x58
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v72, 0xf0, v129
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s72, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s73, 0, s0
	v_add_co_u32 v14, s0, s72, v111
	v_add_co_u32 v2, vcc_lo, v0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	v_add_co_u32 v8, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	v_add_co_u32 v10, vcc_lo, v0, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, 0, v1, vcc_lo
	v_add_co_u32 v12, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v15, null, s73, 0, s0
	v_add_co_ci_u32_e64 v13, null, 0, v1, vcc_lo
	v_add_co_u32 v16, vcc_lo, v0, 56
	v_add_co_ci_u32_e64 v17, null, 0, v1, vcc_lo
	v_add_co_u32 v18, vcc_lo, v14, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, 0, v15, vcc_lo
	v_add_co_u32 v20, vcc_lo, v14, 32
	v_add_co_ci_u32_e64 v21, null, 0, v15, vcc_lo
	v_add_co_u32 v22, vcc_lo, v14, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v23, null, 0, v15, vcc_lo
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[0:1]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v0, s72, v111
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_add_u32 s40, s6, s4
	s_addc_u32 s41, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[2:3]
	v_cmp_le_i64_e64 s4, s[74:75], v[8:9]
	v_cmp_le_i64_e64 s5, s[74:75], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[76:77], v[2:3]
	v_cmp_gt_i64_e64 s16, s[76:77], v[8:9]
	v_cmp_gt_i64_e64 s17, s[76:77], v[10:11]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, 16, v0
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v3, 48, v0
	v_mul_lo_u32 v0, v0, s34
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s39, s4, s16
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s4, s[40:41], 0x0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s40, s5, s17
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s5, s79, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[74:75], v[4:5]
	v_or_b32_e32 v75, s5, v129
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[4:5]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s34
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_or_b32_e32 v4, s5, v24
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v73, 5, v129
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v24, s72, v24
	v_mov_b32_e32 v237, 0
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v75, off offset:748
	scratch_store_b32 off, v0, off offset:736
	v_mul_lo_u32 v0, v2, s34
	v_dual_mov_b32 v150, 0 :: v_dual_lshlrev_b32 v75, 2, v72
	v_dual_mov_b32 v148, 0 :: v_dual_and_b32 v73, 32, v73
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v25, 0xe0, v129
	v_cndmask_b32_e64 v68, 0x88, 0, s2
	v_mov_b32_e32 v126, 0
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s34
	v_add3_u32 v73, 0, v75, v73
	v_mul_lo_u32 v75, v24, s33
	v_mov_b32_e32 v113, 0
	v_dual_mov_b32 v146, 0 :: v_dual_add_nc_u32 v77, 16, v24
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v156, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v129
	v_mov_b32_e32 v222, 0
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v78, 48, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[74:75], v[14:15]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v67, 24, v0
	v_dual_mov_b32 v109, 0 :: v_dual_and_b32 v76, 28, v0
	v_add_nc_u32_e32 v0, 8, v24
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[14:15]
	v_lshl_or_b32 v70, v111, 5, v67
	v_xor_b32_e32 v67, v68, v69
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[18:19]
	v_mul_lo_u32 v0, v0, s33
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v75, off offset:16
	scratch_store_b32 off, v70, off offset:4
	scratch_store_b32 off, v129, off offset:728
	v_lshl_or_b32 v74, v25, 4, v70
	scratch_store_b32 off, v67, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v75, 32, v24
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[76:77], v[18:19]
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:20
	scratch_store_b32 off, v74, off offset:12
	v_mul_lo_u32 v0, v77, s33
	scratch_store_b32 off, v111, off offset:1128 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v77, 40, v24
	.loc	1 1046 20 is_stmt 0             ; ragged.py:1046:20
	s_and_b32 s35, vcc_lo, s12
	s_and_b32 vcc_lo, s8, s20
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s20, s78, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s36, s0, s13
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s8, s33, s20
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 24, v24
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v24, 56, v24
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s9, s21
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s21, s34, s4
	v_mul_lo_u32 v0, v0, s33
	scratch_store_b32 off, v112, off offset:1132 ; 4-byte Folded Spill
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s8, s4
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, 0xf8, v4
	v_or_b32_e32 v5, 0xe8, v4
	v_or_b32_e32 v61, 8, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[6:7]
	v_cmp_le_i64_e64 s6, s[74:75], v[12:13]
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v75, s33
	scratch_store_b32 off, v69, off offset:1136 ; 4-byte Folded Spill
	v_cmp_le_i64_e64 s7, s[74:75], v[16:17]
	v_cmp_le_i64_e64 s11, s[74:75], v[22:23]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[76:77], v[6:7]
	v_cmp_gt_i64_e64 s18, s[76:77], v[12:13]
	v_cmp_gt_i64_e64 s19, s[76:77], v[16:17]
	v_cmp_gt_i64_e64 s23, s[76:77], v[22:23]
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v77, s33
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v2, 0xf0, v4
	.loc	1 1175 36                       ; ragged.py:1175:36
	v_add_nc_u32_e32 v3, s78, v1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v6, 0xe0, v4
	v_or_b32_e32 v8, 0xd8, v4
	v_or_b32_e32 v9, 0xd0, v4
	.loc	1 1175 36                       ; ragged.py:1175:36
	v_add_nc_u32_e32 v10, s78, v5
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v12, 0xc8, v4
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v78, s33
	v_mad_u64_u32 v[77:78], null, v4, s33, s[4:5]
	v_or_b32_e32 v15, 0xc0, v4
	v_or_b32_e32 v16, 0xb8, v4
	v_or_b32_e32 v18, 0xb0, v4
	v_or_b32_e32 v19, 0xa8, v4
	v_or_b32_e32 v22, 0xa0, v4
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v24, s33
	v_or_b32_e32 v27, 0x98, v4
	v_or_b32_e32 v28, 0x90, v4
	v_or_b32_e32 v30, 0x88, v4
	v_or_b32_e32 v31, 0x80, v4
	v_or_b32_e32 v34, 0x78, v4
	v_or_b32_e32 v37, 0x70, v4
	v_or_b32_e32 v38, 0x68, v4
	v_or_b32_e32 v40, 0x60, v4
	v_or_b32_e32 v41, 0x58, v4
	v_or_b32_e32 v44, 0x50, v4
	v_or_b32_e32 v47, 0x48, v4
	v_or_b32_e32 v48, 64, v4
	v_or_b32_e32 v50, 56, v4
	v_or_b32_e32 v51, 48, v4
	v_or_b32_e32 v54, 40, v4
	v_or_b32_e32 v57, 32, v4
	v_or_b32_e32 v58, 24, v4
	v_or_b32_e32 v60, 16, v4
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v66, s78, v4
	v_mad_u64_u32 v[4:5], null, s33, v5, s[4:5]
	scratch_store_b64 off, v[77:78], off offset:48 ; 8-byte Folded Spill
	v_mad_u64_u32 v[77:78], null, v61, s33, s[4:5]
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s33, v1, s[4:5]
	scratch_store_b64 off, v[4:5], off offset:816 ; 8-byte Folded Spill
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v65, s78, v61
	v_dual_mov_b32 v235, 0 :: v_dual_add_nc_u32 v64, s78, v60
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v63, s78, v58
	scratch_store_b64 off, v[0:1], off offset:832 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v66, s33, s[4:5]
	v_dual_mov_b32 v239, 0 :: v_dual_add_nc_u32 v62, s78, v57
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v59, s78, v54
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v56, s78, v51
	scratch_store_b64 off, v[0:1], off offset:840 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v65, s33, s[4:5]
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v55, s78, v50
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v53, s78, v48
	v_dual_mov_b32 v243, 0 :: v_dual_add_nc_u32 v52, s78, v47
	scratch_store_b64 off, v[0:1], off offset:848 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v64, s33, s[4:5]
	v_dual_mov_b32 v236, 0 :: v_dual_add_nc_u32 v49, s78, v44
	v_dual_mov_b32 v245, 0 :: v_dual_add_nc_u32 v46, s78, v41
	v_dual_mov_b32 v240, 0 :: v_dual_add_nc_u32 v45, s78, v40
	scratch_store_b64 off, v[0:1], off offset:856 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v63, s33, s[4:5]
	v_mov_b32_e32 v157, 0
	v_xor_b32_e32 v25, 0x110, v67
	v_xor_b32_e32 v67, 8, v70
	v_xor_b32_e32 v68, 16, v70
	v_xor_b32_e32 v69, 24, v70
	v_mov_b32_e32 v149, 0
	scratch_store_b64 off, v[0:1], off offset:864 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v62, s33, s[4:5]
	v_xor_b32_e32 v70, 8, v74
	v_mov_b32_e32 v147, 0
	v_xor_b32_e32 v71, 16, v74
	v_mov_b32_e32 v221, 0
	v_mov_b32_e32 v179, 0
	v_mov_b32_e32 v175, 0
	scratch_store_b64 off, v[0:1], off offset:872 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v59, s33, s[4:5]
	v_xor_b32_e32 v74, 24, v74
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v72, 1, v72
	v_dual_mov_b32 v242, 0 :: v_dual_add_nc_u32 v43, s78, v38
	v_mov_b32_e32 v177, 0
	scratch_store_b64 off, v[0:1], off offset:880 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v56, s33, s[4:5]
	v_dual_mov_b32 v233, 0 :: v_dual_add_nc_u32 v42, s78, v37
	v_mov_b32_e32 v249, 0
	v_dual_mov_b32 v244, 0 :: v_dual_add_nc_u32 v39, s78, v34
	v_dual_mov_b32 v251, 0 :: v_dual_add_nc_u32 v36, s78, v31
	scratch_store_b64 off, v[0:1], off offset:888 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v55, s33, s[4:5]
	v_dual_mov_b32 v250, 0 :: v_dual_add_nc_u32 v35, s78, v30
	v_dual_mov_b32 v254, 0 :: v_dual_add_nc_u32 v33, s78, v28
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v32, s78, v27
	scratch_store_b64 off, v[0:1], off offset:896 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v53, s33, s[4:5]
	.loc	1 1175 36                       ; ragged.py:1175:36
	v_add_nc_u32_e32 v29, s78, v22
	v_add_nc_u32_e32 v26, s78, v19
	v_add_nc_u32_e32 v23, s78, v18
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[74:75], v[20:21]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[20:21]
	v_dual_mov_b32 v246, 0 :: v_dual_add_nc_u32 v21, s78, v16
	scratch_store_b64 off, v[0:1], off offset:904 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v52, s33, s[4:5]
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v20, s78, v15
	v_dual_mov_b32 v248, 0 :: v_dual_add_nc_u32 v17, s78, v12
	.loc	1 1175 36 is_stmt 1             ; ragged.py:1175:36
	v_add_nc_u32_e32 v14, s78, v9
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v252, 0, v25
	scratch_store_b64 off, v[0:1], off offset:912 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v49, s33, s[4:5]
	v_mov_b32_e32 v25, 0
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v13, s78, v8
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v11, s78, v6
	v_add_nc_u32_e32 v7, s78, v2
	scratch_store_b64 off, v[0:1], off offset:920 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v46, s33, s[4:5]
	v_mad_u64_u32 v[60:61], null, v60, s33, s[4:5]
	v_mad_u64_u32 v[4:5], null, s33, v2, s[4:5]
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v231, 0
	scratch_store_b64 off, v[0:1], off offset:928 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, v73, v76
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v229, 0
	scratch_store_b32 off, v0, off offset:936 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v45, s33, s[4:5]
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v163, 0
	scratch_store_b64 off, v[0:1], off offset:940 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v67
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v169, 0
	scratch_store_b32 off, v0, off offset:948 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v68
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v159, 0
	scratch_store_b32 off, v0, off offset:952 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v69
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v145, 0
	scratch_store_b32 off, v0, off offset:956 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v70
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v139, 0
	scratch_store_b32 off, v0, off offset:960 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v71
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v137, 0
	scratch_store_b32 off, v0, off offset:964 ; 4-byte Folded Spill
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v253, off, off offset:948
	scratch_load_b32 v238, off, off offset:952
	scratch_load_b32 v255, off, off offset:956
	scratch_load_b32 v227, off, off offset:960
	scratch_load_b32 v230, off, off offset:964
	v_add_nc_u32_e32 v0, 0, v74
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v153, 0
	scratch_store_b32 off, v0, off offset:968 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v72
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v123, 0
	scratch_store_b32 off, v0, off offset:972 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v43, s33, s[4:5]
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v107, 0
	scratch_store_b64 off, v[0:1], off offset:976 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v42, s33, s[4:5]
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	scratch_store_b64 off, v[0:1], off offset:984 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v39, s33, s[4:5]
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v95, 0
	scratch_store_b64 off, v[0:1], off offset:992 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v36, s33, s[4:5]
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v101, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v96, 0
	v_mov_b32_e32 v102, 0
	scratch_store_b64 off, v[0:1], off offset:1000 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v35, s33, s[4:5]
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v92, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s37, s1, s14
	s_and_b32 s38, s3, s15
	s_and_b32 s6, s6, s18
	s_and_b32 s7, s7, s19
	scratch_store_b64 off, v[0:1], off offset:1008 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v33, s33, s[4:5]
	s_and_b32 s1, s10, s22
	s_and_b32 s3, s11, s23
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s8, s24
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	scratch_store_b64 off, v[0:1], off offset:1016 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v32, s33, s[4:5]
	v_mov_b32_e32 v32, 0
	s_and_b32 s13, s27, 0xffff
	s_mov_b32 s12, s26
	s_mov_b32 s22, 0
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s17, s31, 0xffff
	scratch_store_b64 off, v[0:1], off offset:1024 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v29, s33, s[4:5]
	s_mov_b32 s16, s30
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:824
	scratch_store_b64 off, v[0:1], off offset:1032
	v_mad_u64_u32 v[0:1], null, v26, s33, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1040 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v23, s33, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1048 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v21, s33, s[4:5]
	v_mov_b32_e32 v21, 0
	scratch_store_b64 off, v[0:1], off offset:1056 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v20, s33, s[4:5]
	v_mov_b32_e32 v20, 0
	scratch_store_b64 off, v[0:1], off offset:1064 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v17, s33, s[4:5]
	v_mov_b32_e32 v17, 0
	scratch_store_b64 off, v[0:1], off offset:1072 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v14, s33, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1080 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v13, s33, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1088 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v11, s33, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1096 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v10, s33, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1104 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v7, s33, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1112 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v3, s33, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1120 ; 8-byte Folded Spill
	v_mov_b32_e32 v0, 0
	scratch_store_b64 off, v[60:61], off offset:752 ; 8-byte Folded Spill
	v_mad_u64_u32 v[60:61], null, v58, s33, s[4:5]
	v_mad_u64_u32 v[57:58], null, v57, s33, s[4:5]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[77:78], off offset:56
	scratch_store_b32 off, v0, off offset:220
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[60:61], off offset:64
	scratch_store_b64 off, v[57:58], off offset:72
	v_mad_u64_u32 v[57:58], null, v54, s33, s[4:5]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:216
	scratch_store_b64 off, v[57:58], off offset:80
	v_mad_u64_u32 v[57:58], null, v51, s33, s[4:5]
	v_mad_u64_u32 v[50:51], null, v50, s33, s[4:5]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[57:58], off offset:88
	scratch_store_b64 off, v[50:51], off offset:96
	v_mad_u64_u32 v[50:51], null, s33, v48, s[4:5]
	v_mad_u64_u32 v[47:48], null, s33, v47, s[4:5]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[50:51], off offset:104
	scratch_store_b64 off, v[47:48], off offset:112
	v_mad_u64_u32 v[47:48], null, s33, v44, s[4:5]
	scratch_store_b64 off, v[47:48], off offset:120 ; 8-byte Folded Spill
	v_mad_u64_u32 v[47:48], null, s33, v41, s[4:5]
	v_mad_u64_u32 v[40:41], null, s33, v40, s[4:5]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[47:48], off offset:128
	scratch_store_b64 off, v[40:41], off offset:136
	v_mad_u64_u32 v[40:41], null, s33, v38, s[4:5]
	v_mad_u64_u32 v[37:38], null, s33, v37, s[4:5]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[40:41], off offset:144
	scratch_store_b64 off, v[37:38], off offset:152
	v_mad_u64_u32 v[37:38], null, s33, v34, s[4:5]
	scratch_store_b64 off, v[37:38], off offset:160 ; 8-byte Folded Spill
	v_mad_u64_u32 v[37:38], null, s33, v31, s[4:5]
	v_mad_u64_u32 v[30:31], null, s33, v30, s[4:5]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[37:38], off offset:168
	scratch_store_b64 off, v[30:31], off offset:176
	v_mad_u64_u32 v[30:31], null, s33, v28, s[4:5]
	v_mad_u64_u32 v[27:28], null, s33, v27, s[4:5]
	scratch_store_b64 off, v[30:31], off offset:184 ; 8-byte Folded Spill
	v_mov_b32_e32 v31, 0
	scratch_store_b64 off, v[27:28], off offset:192 ; 8-byte Folded Spill
	v_mad_u64_u32 v[27:28], null, s33, v22, s[4:5]
	v_mov_b32_e32 v22, 0
	scratch_store_b64 off, v[27:28], off offset:200 ; 8-byte Folded Spill
	v_mad_u64_u32 v[27:28], null, s33, v19, s[4:5]
	v_mad_u64_u32 v[18:19], null, s33, v18, s[4:5]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[27:28], off offset:208
	scratch_store_b64 off, v[18:19], off offset:760
	v_mad_u64_u32 v[18:19], null, s33, v16, s[4:5]
	v_mad_u64_u32 v[15:16], null, s33, v15, s[4:5]
	scratch_store_b64 off, v[15:16], off offset:776 ; 8-byte Folded Spill
	v_mad_u64_u32 v[15:16], null, s33, v12, s[4:5]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[18:19], off offset:768
	scratch_store_b64 off, v[15:16], off offset:784
	v_mad_u64_u32 v[15:16], null, s33, v9, s[4:5]
	v_mad_u64_u32 v[8:9], null, s33, v8, s[4:5]
	scratch_store_b64 off, v[15:16], off offset:792 ; 8-byte Folded Spill
	v_mov_b32_e32 v16, 0
	scratch_store_b64 off, v[8:9], off offset:800 ; 8-byte Folded Spill
	v_mad_u64_u32 v[8:9], null, s33, v6, s[4:5]
	scratch_store_b64 off, v[8:9], off offset:808 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[212:213], off, off offset:752
	scratch_load_b64 v[190:191], off, off offset:928
	scratch_load_b64 v[213:214], off, off offset:760
	scratch_load_b64 v[191:192], off, off offset:940
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v32, off offset:724
	scratch_store_b32 off, v17, off offset:720
	scratch_store_b32 off, v87, off offset:716
	scratch_store_b32 off, v16, off offset:712
	scratch_store_b32 off, v88, off offset:708
	scratch_store_b32 off, v22, off offset:704
	scratch_store_b32 off, v21, off offset:700
	scratch_store_b32 off, v20, off offset:696
	scratch_store_b32 off, v25, off offset:692
	scratch_store_b32 off, v89, off offset:688
	scratch_store_b32 off, v90, off offset:684
	scratch_store_b32 off, v24, off offset:680
	scratch_store_b32 off, v31, off offset:676
	scratch_store_b32 off, v254, off offset:672
	scratch_store_b32 off, v251, off offset:668
	scratch_store_b32 off, v250, off offset:664
	scratch_store_b32 off, v249, off offset:660
	scratch_store_b32 off, v248, off offset:656
	scratch_store_b32 off, v247, off offset:652
	scratch_store_b32 off, v246, off offset:648
	scratch_store_b32 off, v245, off offset:644
	scratch_store_b32 off, v244, off offset:640
	scratch_store_b32 off, v243, off offset:636
	scratch_store_b32 off, v242, off offset:632
	scratch_store_b32 off, v241, off offset:628
	scratch_store_b32 off, v240, off offset:624
	scratch_store_b32 off, v239, off offset:620
	scratch_store_b32 off, v237, off offset:616
	scratch_store_b32 off, v236, off offset:612
	scratch_store_b32 off, v235, off offset:608
	scratch_store_b32 off, v234, off offset:604
	scratch_store_b32 off, v233, off offset:600
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v232, off offset:596
	scratch_store_b32 off, v231, off offset:592
	scratch_store_b32 off, v229, off offset:588
	scratch_store_b32 off, v228, off offset:584
	scratch_store_b32 off, v224, off offset:580
	scratch_store_b32 off, v223, off offset:576
	scratch_store_b32 off, v222, off offset:572
	scratch_store_b32 off, v221, off offset:568
	scratch_store_b32 off, v179, off offset:564
	scratch_store_b32 off, v178, off offset:560
	scratch_store_b32 off, v177, off offset:556
	scratch_store_b32 off, v176, off offset:552
	scratch_store_b32 off, v175, off offset:548
	scratch_store_b32 off, v174, off offset:544
	scratch_store_b32 off, v173, off offset:540
	scratch_store_b32 off, v172, off offset:536
	scratch_store_b32 off, v171, off offset:532
	scratch_store_b32 off, v170, off offset:528
	scratch_store_b32 off, v169, off offset:524
	scratch_store_b32 off, v168, off offset:520
	scratch_store_b32 off, v167, off offset:516
	scratch_store_b32 off, v163, off offset:512
	scratch_store_b32 off, v162, off offset:508
	scratch_store_b32 off, v161, off offset:504
	scratch_store_b32 off, v160, off offset:500
	scratch_store_b32 off, v159, off offset:496
	scratch_store_b32 off, v166, off offset:492
	scratch_store_b32 off, v158, off offset:488
	scratch_store_b32 off, v165, off offset:484
	scratch_store_b32 off, v164, off offset:480
	scratch_store_b32 off, v157, off offset:476
	scratch_store_b32 off, v151, off offset:472
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v150, off offset:468
	scratch_store_b32 off, v149, off offset:464
	scratch_store_b32 off, v156, off offset:460
	scratch_store_b32 off, v146, off offset:456
	scratch_store_b32 off, v147, off offset:452
	scratch_store_b32 off, v148, off offset:448
	scratch_store_b32 off, v145, off offset:444
	scratch_store_b32 off, v144, off offset:440
	scratch_store_b32 off, v143, off offset:436
	scratch_store_b32 off, v142, off offset:432
	scratch_store_b32 off, v141, off offset:428
	scratch_store_b32 off, v140, off offset:424
	scratch_store_b32 off, v139, off offset:420
	scratch_store_b32 off, v138, off offset:416
	scratch_store_b32 off, v137, off offset:412
	scratch_store_b32 off, v136, off offset:408
	scratch_store_b32 off, v135, off offset:404
	scratch_store_b32 off, v134, off offset:400
	scratch_store_b32 off, v155, off offset:396
	scratch_store_b32 off, v154, off offset:392
	scratch_store_b32 off, v153, off offset:388
	scratch_store_b32 off, v152, off offset:384
	scratch_store_b32 off, v133, off offset:380
	scratch_store_b32 off, v132, off offset:376
	scratch_store_b32 off, v131, off offset:372
	scratch_store_b32 off, v130, off offset:368
	scratch_store_b32 off, v128, off offset:364
	scratch_store_b32 off, v127, off offset:360
	scratch_store_b32 off, v126, off offset:356
	scratch_store_b32 off, v125, off offset:352
	scratch_store_b32 off, v124, off offset:348
	scratch_store_b32 off, v123, off offset:344
	s_clause 0x1d                           ; 120-byte Folded Spill
	scratch_store_b32 off, v122, off offset:340
	scratch_store_b32 off, v121, off offset:336
	scratch_store_b32 off, v107, off offset:332
	scratch_store_b32 off, v120, off offset:328
	scratch_store_b32 off, v115, off offset:324
	scratch_store_b32 off, v114, off offset:320
	scratch_store_b32 off, v106, off offset:316
	scratch_store_b32 off, v105, off offset:312
	scratch_store_b32 off, v104, off offset:308
	scratch_store_b32 off, v103, off offset:304
	scratch_store_b32 off, v119, off offset:300
	scratch_store_b32 off, v118, off offset:296
	scratch_store_b32 off, v117, off offset:292
	scratch_store_b32 off, v116, off offset:288
	scratch_store_b32 off, v99, off offset:284
	scratch_store_b32 off, v91, off offset:280
	scratch_store_b32 off, v98, off offset:276
	scratch_store_b32 off, v97, off offset:272
	scratch_store_b32 off, v113, off offset:268
	scratch_store_b32 off, v110, off offset:264
	scratch_store_b32 off, v109, off offset:260
	scratch_store_b32 off, v96, off offset:256
	scratch_store_b32 off, v95, off offset:252
	scratch_store_b32 off, v94, off offset:248
	scratch_store_b32 off, v93, off offset:244
	scratch_store_b32 off, v108, off offset:240
	scratch_store_b32 off, v102, off offset:236
	scratch_store_b32 off, v101, off offset:232
	scratch_store_b32 off, v100, off offset:228
	scratch_store_b32 off, v92, off offset:224
	v_dual_mov_b32 v32, v0 :: v_dual_and_b32 v129, 31, v129
	s_clause 0xb                            ; 92-byte Folded Reload
	scratch_load_b64 v[214:215], off, off offset:768
	scratch_load_b32 v192, off, off offset:968
	scratch_load_b64 v[193:194], off, off offset:976
	scratch_load_b64 v[194:195], off, off offset:984
	scratch_load_b64 v[215:216], off, off offset:776
	scratch_load_b64 v[195:196], off, off offset:992
	scratch_load_b64 v[216:217], off, off offset:784
	scratch_load_b64 v[196:197], off, off offset:1000
	scratch_load_b64 v[217:218], off, off offset:792
	scratch_load_b64 v[197:198], off, off offset:1008
	scratch_load_b64 v[218:219], off, off offset:800
	scratch_load_b64 v[198:199], off, off offset:1016
	v_dual_mov_b32 v2, v0 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v3, v0
	v_dual_mov_b32 v4, v0 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v5, v0
	v_dual_mov_b32 v6, v0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v7, v0
	v_dual_mov_b32 v8, v0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v10, v0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v11, v0
	v_dual_mov_b32 v12, v0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v13, v0
	v_dual_mov_b32 v14, v0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v15, v0
	v_dual_mov_b32 v16, v0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v18, v0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v19, v0
	v_dual_mov_b32 v20, v0 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v21, v0
	v_dual_mov_b32 v22, v0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v23, v0
	v_dual_mov_b32 v24, v0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v26, v0 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v27, v0
	v_dual_mov_b32 v28, v0 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v29, v0
	v_dual_mov_b32 v30, v0 :: v_dual_mov_b32 v121, 0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
	v_mov_b32_e32 v64, v0
	v_mov_b32_e32 v66, v0
	v_mov_b32_e32 v67, v0
	v_mov_b32_e32 v68, v0
	v_mov_b32_e32 v69, v0
	v_mov_b32_e32 v70, v0
	v_mov_b32_e32 v71, v0
	v_mov_b32_e32 v72, v0
	v_mov_b32_e32 v74, v0
	v_mov_b32_e32 v75, v0
	v_mov_b32_e32 v76, v0
	v_mov_b32_e32 v77, v0
	v_mov_b32_e32 v78, v0
	v_mov_b32_e32 v79, v0
	v_mov_b32_e32 v80, v0
	v_mov_b32_e32 v82, v0
	v_mov_b32_e32 v83, v0
	v_mov_b32_e32 v84, v0
	v_mov_b32_e32 v85, v0
	v_mov_b32_e32 v86, v0
	v_mov_b32_e32 v87, v0
	v_mov_b32_e32 v88, v0
	v_mov_b32_e32 v90, v0
	v_mov_b32_e32 v91, v0
	v_mov_b32_e32 v92, v0
	v_mov_b32_e32 v93, v0
	v_mov_b32_e32 v94, v0
	v_mov_b32_e32 v95, v0
	v_mov_b32_e32 v96, v0
	v_mov_b32_e32 v98, v0
	v_mov_b32_e32 v99, v0
	v_mov_b32_e32 v100, v0
	v_mov_b32_e32 v101, v0
	v_mov_b32_e32 v102, v0
	v_mov_b32_e32 v103, v0
	v_mov_b32_e32 v104, v0
	v_mov_b32_e32 v106, v0
	v_mov_b32_e32 v107, v0
	v_mov_b32_e32 v108, v0
	v_mov_b32_e32 v109, v0
	v_mov_b32_e32 v110, v0
	v_mov_b32_e32 v111, v0
	v_mov_b32_e32 v112, v0
	v_mov_b32_e32 v114, v0
	v_mov_b32_e32 v115, v0
	v_mov_b32_e32 v116, v0
	v_mov_b32_e32 v117, v0
	v_mov_b32_e32 v118, v0
	v_mov_b32_e32 v119, v0
	v_mov_b32_e32 v120, v0
	v_mov_b32_e32 v122, v0
	v_mov_b32_e32 v123, v0
	v_mov_b32_e32 v124, v0
	v_mov_b32_e32 v125, v0
	v_mov_b32_e32 v126, v0
	v_mov_b32_e32 v127, v0
	v_mov_b32_e32 v128, v0
	v_lshl_or_b32 v0, s22, 7, v129
	s_clause 0xe                            ; 120-byte Folded Reload
	scratch_load_b64 v[219:220], off, off offset:808
	scratch_load_b64 v[225:226], off, off offset:816
	scratch_load_b64 v[129:130], off, off offset:824
	scratch_load_b64 v[220:221], off, off offset:832
	scratch_load_b64 v[199:200], off, off offset:1024
	scratch_load_b64 v[200:201], off, off offset:1032
	scratch_load_b64 v[201:202], off, off offset:1040
	scratch_load_b64 v[202:203], off, off offset:1048
	scratch_load_b64 v[203:204], off, off offset:1056
	scratch_load_b64 v[204:205], off, off offset:1064
	scratch_load_b64 v[205:206], off, off offset:1072
	scratch_load_b64 v[206:207], off, off offset:1080
	scratch_load_b64 v[207:208], off, off offset:1088
	scratch_load_b64 v[208:209], off, off offset:1096
	scratch_load_b64 v[209:210], off, off offset:1104
	s_mov_b32 s18, 0
	scratch_store_b32 off, v0, off          ; 4-byte Folded Spill
	s_waitcnt vmcnt(12)
	v_mov_b32_e32 v226, v129
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[221:222], off, off offset:840
	scratch_load_b64 v[180:181], off, off offset:848
	scratch_load_b64 v[129:130], off, off offset:856
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v181, v129
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[182:183], off, off offset:864
	scratch_load_b64 v[129:130], off, off offset:872
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v183, v129
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[184:185], off, off offset:880
	scratch_load_b64 v[129:130], off, off offset:888
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v185, v129
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[186:187], off, off offset:896
	scratch_load_b64 v[129:130], off, off offset:904
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v187, v129
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[188:189], off, off offset:912
	scratch_load_b64 v[129:130], off, off offset:920
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v189, v129
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[210:211], off, off offset:1112
	scratch_load_b64 v[129:130], off, off offset:1120
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v211, v129
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b32 v0, off, off
	scratch_load_b64 v[129:130], off, off offset:48
	scratch_load_b64 v[130:131], off, off offset:56
	scratch_load_b64 v[132:133], off, off offset:64
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v254, s18, v0
	.loc	1 1155 42                       ; ragged.py:1155:42
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s33, v254
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v129, v129, v254
	v_add_nc_u32_e32 v157, v219, v254
	v_add_nc_u32_e32 v158, v225, v254
	v_add_nc_u32_e32 v159, v226, v254
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s5, s35, s4
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v160, v220, v254
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v130, v130, v254
	v_add_nc_u32_e32 v131, v212, v254
	v_add_nc_u32_e32 v152, v214, v254
	v_add_nc_u32_e32 v153, v215, v254
	v_add_nc_u32_e32 v154, v216, v254
	v_add_nc_u32_e32 v155, v217, v254
	v_add_nc_u32_e32 v156, v218, v254
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v129, 0x80000000, v129, s4
	v_cndmask_b32_e64 v157, 0x80000000, v157, s4
	v_cndmask_b32_e64 v158, 0x80000000, v158, s4
	v_cndmask_b32_e64 v159, 0x80000000, v159, s4
	v_cndmask_b32_e64 v160, 0x80000000, v160, s4
	v_cndmask_b32_e64 v130, 0x80000000, v130, s4
	v_cndmask_b32_e64 v131, 0x80000000, v131, s4
	v_cndmask_b32_e64 v152, 0x80000000, v152, s4
	v_cndmask_b32_e64 v153, 0x80000000, v153, s4
	v_cndmask_b32_e64 v154, 0x80000000, v154, s4
	v_cndmask_b32_e64 v155, 0x80000000, v155, s4
	v_cndmask_b32_e64 v156, 0x80000000, v156, s4
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v224, v0, v254
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:20
	scratch_load_b64 v[133:134], off, off offset:72
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v132, v132, v254
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v224, 0x80000000, v224, s5
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s5, s36, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v132, 0x80000000, v132, s4
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v234, v0, v254
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:24
	scratch_load_b64 v[134:135], off, off offset:80
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v133, v133, v254
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v234, 0x80000000, v234, s5
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s5, s37, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v133, 0x80000000, v133, s4
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v235, v0, v254
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:28
	scratch_load_b64 v[135:136], off, off offset:88
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v134, v134, v254
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v235, 0x80000000, v235, s5
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s5, s38, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v134, 0x80000000, v134, s4
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v236, v0, v254
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:32
	scratch_load_b64 v[136:137], off, off offset:96
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v135, v135, v254
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v236, 0x80000000, v236, s5
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s5, s39, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v135, 0x80000000, v135, s4
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v237, v0, v254
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:36
	scratch_load_b64 v[137:138], off, off offset:104
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v136, v136, v254
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v237, 0x80000000, v237, s5
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s5, s40, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v136, 0x80000000, v136, s4
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v239, v0, v254
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:40
	scratch_load_b64 v[138:139], off, off offset:112
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v137, v137, v254
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v239, 0x80000000, v239, s5
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s5, s6, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v137, 0x80000000, v137, s4
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v240, v0, v254
	s_clause 0xc                            ; 100-byte Folded Reload
	scratch_load_b32 v0, off, off offset:44
	scratch_load_b64 v[139:140], off, off offset:120
	scratch_load_b64 v[140:141], off, off offset:128
	scratch_load_b64 v[141:142], off, off offset:136
	scratch_load_b64 v[142:143], off, off offset:144
	scratch_load_b64 v[143:144], off, off offset:152
	scratch_load_b64 v[144:145], off, off offset:160
	scratch_load_b64 v[145:146], off, off offset:168
	scratch_load_b64 v[146:147], off, off offset:176
	scratch_load_b64 v[147:148], off, off offset:184
	scratch_load_b64 v[148:149], off, off offset:192
	scratch_load_b64 v[149:150], off, off offset:200
	scratch_load_b64 v[150:151], off, off offset:208
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v138, v138, v254
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v151, v213, v254
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v240, 0x80000000, v240, s5
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s5, s7, s4
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v138, 0x80000000, v138, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v151, 0x80000000, v151, s4
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_add_nc_u32_e32 v241, v0, v254
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v139, v139, v254
	v_add_nc_u32_e32 v140, v140, v254
	v_add_nc_u32_e32 v141, v141, v254
	v_add_nc_u32_e32 v142, v142, v254
	v_add_nc_u32_e32 v143, v143, v254
	v_add_nc_u32_e32 v144, v144, v254
	v_add_nc_u32_e32 v145, v145, v254
	v_add_nc_u32_e32 v146, v146, v254
	v_add_nc_u32_e32 v147, v147, v254
	v_add_nc_u32_e32 v148, v148, v254
	v_add_nc_u32_e32 v149, v149, v254
	v_add_nc_u32_e32 v150, v150, v254
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v241, 0x80000000, v241, s5
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v139, 0x80000000, v139, s4
	v_cndmask_b32_e64 v140, 0x80000000, v140, s4
	v_cndmask_b32_e64 v141, 0x80000000, v141, s4
	v_cndmask_b32_e64 v142, 0x80000000, v142, s4
	v_cndmask_b32_e64 v143, 0x80000000, v143, s4
	v_cndmask_b32_e64 v144, 0x80000000, v144, s4
	v_cndmask_b32_e64 v145, 0x80000000, v145, s4
	v_cndmask_b32_e64 v146, 0x80000000, v146, s4
	v_cndmask_b32_e64 v147, 0x80000000, v147, s4
	v_cndmask_b32_e64 v148, 0x80000000, v148, s4
	v_cndmask_b32_e64 v149, 0x80000000, v149, s4
	v_cndmask_b32_e64 v150, 0x80000000, v150, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v224, v224, s[8:11], 0 offen
	buffer_load_u8 v235, v235, s[8:11], 0 offen
	buffer_load_u8 v237, v237, s[8:11], 0 offen
	buffer_load_u8 v240, v240, s[8:11], 0 offen
	buffer_load_u8 v241, v241, s[8:11], 0 offen
	buffer_load_u8 v239, v239, s[8:11], 0 offen
	buffer_load_u8 v236, v236, s[8:11], 0 offen
	buffer_load_u8 v234, v234, s[8:11], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v242, v129, s[12:15], 0 offen
	buffer_load_u8 v243, v131, s[12:15], 0 offen
	buffer_load_u8 v244, v133, s[12:15], 0 offen
	buffer_load_u8 v245, v135, s[12:15], 0 offen
	buffer_load_u8 v246, v137, s[12:15], 0 offen
	buffer_load_u8 v231, v139, s[12:15], 0 offen
	buffer_load_u8 v247, v141, s[12:15], 0 offen
	buffer_load_u8 v0, v143, s[12:15], 0 offen
	buffer_load_u8 v232, v145, s[12:15], 0 offen
	buffer_load_u8 v233, v147, s[12:15], 0 offen
	buffer_load_u8 v228, v149, s[12:15], 0 offen
	buffer_load_u8 v229, v151, s[12:15], 0 offen
	buffer_load_u8 v222, v153, s[12:15], 0 offen
	buffer_load_u8 v223, v155, s[12:15], 0 offen
	buffer_load_u8 v157, v157, s[12:15], 0 offen
	buffer_load_u8 v159, v159, s[12:15], 0 offen
	buffer_load_u8 v161, v136, s[12:15], 0 offen
	buffer_load_u8 v162, v134, s[12:15], 0 offen
	buffer_load_u8 v163, v132, s[12:15], 0 offen
	buffer_load_u8 v164, v130, s[12:15], 0 offen
	buffer_load_u8 v165, v144, s[12:15], 0 offen
	buffer_load_u8 v166, v142, s[12:15], 0 offen
	buffer_load_u8 v167, v140, s[12:15], 0 offen
	buffer_load_u8 v168, v138, s[12:15], 0 offen
	buffer_load_u8 v169, v152, s[12:15], 0 offen
	buffer_load_u8 v170, v150, s[12:15], 0 offen
	buffer_load_u8 v171, v148, s[12:15], 0 offen
	buffer_load_u8 v172, v146, s[12:15], 0 offen
	buffer_load_u8 v160, v160, s[12:15], 0 offen
	buffer_load_u8 v158, v158, s[12:15], 0 offen
	buffer_load_u8 v173, v156, s[12:15], 0 offen
	buffer_load_u8 v174, v154, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v129, off, off offset:8 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v175, 0, v129
	ds_store_b8 v175, v224
	ds_store_b8 v175, v235 offset:512
	ds_store_b8 v175, v237 offset:1024
	ds_store_b8 v175, v240 offset:1536
	ds_store_b8 v252, v234
	ds_store_b8 v252, v236 offset:512
	ds_store_b8 v252, v239 offset:1024
	ds_store_b8 v252, v241 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v129, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v224, v200, v254
	v_add_nc_u32_e32 v234, v206, v254
	v_add_nc_u32_e32 v235, v207, v254
	v_add_nc_u32_e32 v236, v208, v254
	v_add_nc_u32_e32 v237, v209, v254
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v224, 0x80000000, v224, s4
	v_cndmask_b32_e64 v234, 0x80000000, v234, s4
	v_cndmask_b32_e64 v235, 0x80000000, v235, s4
	v_cndmask_b32_e64 v236, 0x80000000, v236, s4
	v_cndmask_b32_e64 v237, 0x80000000, v237, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v129, 0, v129
	ds_load_2addr_stride64_b64 v[248:251], v129 offset1:1
	ds_load_2addr_stride64_b64 v[153:156], v129 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[149:152], v253 offset1:1
	ds_load_2addr_stride64_b64 v[145:148], v253 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[141:144], v238 offset1:1
	ds_load_2addr_stride64_b64 v[137:140], v238 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[133:136], v255 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v255 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v175, v242
	ds_store_b8 v175, v243 offset:512
	ds_store_b8 v175, v244 offset:1024
	ds_store_b8 v175, v245 offset:1536
	ds_store_b8 v175, v246 offset:2048
	ds_store_b8 v175, v231 offset:2560
	ds_store_b8 v175, v247 offset:3072
	ds_store_b8 v175, v0 offset:3584
	ds_store_b8 v175, v232 offset:4096
	ds_store_b8 v175, v233 offset:4608
	ds_store_b8 v175, v228 offset:5120
	ds_store_b8 v175, v229 offset:5632
	ds_store_b8 v175, v222 offset:6144
	ds_store_b8 v175, v223 offset:6656
	ds_store_b8 v175, v157 offset:7168
	ds_store_b8 v175, v159 offset:7680
	ds_store_b8 v252, v164
	ds_store_b8 v252, v163 offset:512
	ds_store_b8 v252, v162 offset:1024
	ds_store_b8 v252, v161 offset:1536
	ds_store_b8 v252, v168 offset:2048
	ds_store_b8 v252, v167 offset:2560
	ds_store_b8 v252, v166 offset:3072
	ds_store_b8 v252, v165 offset:3584
	ds_store_b8 v252, v172 offset:4096
	ds_store_b8 v252, v171 offset:4608
	ds_store_b8 v252, v170 offset:5120
	ds_store_b8 v252, v169 offset:5632
	ds_store_b8 v252, v174 offset:6144
	ds_store_b8 v252, v173 offset:6656
	ds_store_b8 v252, v158 offset:7168
	ds_store_b8 v252, v160 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v157, v221, v254
	v_add_nc_u32_e32 v159, v181, v254
	v_add_nc_u32_e32 v161, v183, v254
	v_add_nc_u32_e32 v163, v185, v254
	v_add_nc_u32_e32 v158, v180, v254
	v_add_nc_u32_e32 v160, v182, v254
	v_add_nc_u32_e32 v162, v184, v254
	v_add_nc_u32_e32 v164, v186, v254
	v_add_nc_u32_e32 v165, v187, v254
	v_add_nc_u32_e32 v166, v188, v254
	v_add_nc_u32_e32 v167, v189, v254
	v_add_nc_u32_e32 v168, v190, v254
	v_add_nc_u32_e32 v169, v191, v254
	v_add_nc_u32_e32 v170, v193, v254
	v_add_nc_u32_e32 v171, v194, v254
	v_add_nc_u32_e32 v172, v195, v254
	v_add_nc_u32_e32 v173, v196, v254
	v_add_nc_u32_e32 v174, v197, v254
	v_add_nc_u32_e32 v222, v198, v254
	v_add_nc_u32_e32 v223, v199, v254
	v_add_nc_u32_e32 v228, v201, v254
	v_add_nc_u32_e32 v229, v202, v254
	v_add_nc_u32_e32 v231, v203, v254
	v_add_nc_u32_e32 v232, v204, v254
	v_add_nc_u32_e32 v233, v205, v254
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v157, 0x80000000, v157, s4
	v_cndmask_b32_e64 v159, 0x80000000, v159, s4
	v_cndmask_b32_e64 v161, 0x80000000, v161, s4
	v_cndmask_b32_e64 v163, 0x80000000, v163, s4
	v_cndmask_b32_e64 v158, 0x80000000, v158, s4
	v_cndmask_b32_e64 v160, 0x80000000, v160, s4
	v_cndmask_b32_e64 v162, 0x80000000, v162, s4
	v_cndmask_b32_e64 v164, 0x80000000, v164, s4
	v_cndmask_b32_e64 v165, 0x80000000, v165, s4
	v_cndmask_b32_e64 v166, 0x80000000, v166, s4
	v_cndmask_b32_e64 v167, 0x80000000, v167, s4
	v_cndmask_b32_e64 v168, 0x80000000, v168, s4
	v_cndmask_b32_e64 v169, 0x80000000, v169, s4
	v_cndmask_b32_e64 v170, 0x80000000, v170, s4
	v_cndmask_b32_e64 v171, 0x80000000, v171, s4
	v_cndmask_b32_e64 v172, 0x80000000, v172, s4
	v_cndmask_b32_e64 v173, 0x80000000, v173, s4
	v_cndmask_b32_e64 v174, 0x80000000, v174, s4
	v_cndmask_b32_e64 v222, 0x80000000, v222, s4
	v_cndmask_b32_e64 v223, 0x80000000, v223, s4
	v_cndmask_b32_e64 v228, 0x80000000, v228, s4
	v_cndmask_b32_e64 v229, 0x80000000, v229, s4
	v_cndmask_b32_e64 v231, 0x80000000, v231, s4
	v_cndmask_b32_e64 v232, 0x80000000, v232, s4
	v_cndmask_b32_e64 v233, 0x80000000, v233, s4
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_2addr_stride64_b64 v[239:242], v0 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[239:240], v[248:249], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[239:240], v[250:251], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[239:240], v[153:154], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[239:240], v[155:156], v[113:120] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v239, v210, v254
	v_add_nc_u32_e32 v240, v211, v254
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[73:80], v[241:242], v[248:249], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[241:242], v[250:251], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[241:242], v[153:154], v[105:112] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v239, 0x80000000, v239, s4
	v_cndmask_b32_e64 v240, 0x80000000, v240, s4
	s_clause 0x1f
	buffer_load_u8 v157, v157, s[12:15], 0 offen
	buffer_load_u8 v159, v159, s[12:15], 0 offen
	buffer_load_u8 v161, v161, s[12:15], 0 offen
	buffer_load_u8 v163, v163, s[12:15], 0 offen
	buffer_load_u8 v165, v165, s[12:15], 0 offen
	buffer_load_u8 v167, v167, s[12:15], 0 offen
	buffer_load_u8 v169, v169, s[12:15], 0 offen
	buffer_load_u8 v171, v171, s[12:15], 0 offen
	buffer_load_u8 v173, v173, s[12:15], 0 offen
	buffer_load_u8 v222, v222, s[12:15], 0 offen
	buffer_load_u8 v224, v224, s[12:15], 0 offen
	buffer_load_u8 v229, v229, s[12:15], 0 offen
	buffer_load_u8 v232, v232, s[12:15], 0 offen
	buffer_load_u8 v247, v234, s[12:15], 0 offen
	buffer_load_u8 v254, v236, s[12:15], 0 offen
	buffer_load_u8 v176, v239, s[12:15], 0 offen
	buffer_load_u8 v164, v164, s[12:15], 0 offen
	buffer_load_u8 v162, v162, s[12:15], 0 offen
	buffer_load_u8 v160, v160, s[12:15], 0 offen
	buffer_load_u8 v158, v158, s[12:15], 0 offen
	buffer_load_u8 v172, v172, s[12:15], 0 offen
	buffer_load_u8 v170, v170, s[12:15], 0 offen
	buffer_load_u8 v168, v168, s[12:15], 0 offen
	buffer_load_u8 v166, v166, s[12:15], 0 offen
	buffer_load_u8 v231, v231, s[12:15], 0 offen
	buffer_load_u8 v228, v228, s[12:15], 0 offen
	buffer_load_u8 v223, v223, s[12:15], 0 offen
	buffer_load_u8 v174, v174, s[12:15], 0 offen
	buffer_load_u8 v177, v240, s[12:15], 0 offen
	buffer_load_u8 v178, v237, s[12:15], 0 offen
	buffer_load_u8 v179, v235, s[12:15], 0 offen
	buffer_load_u8 v233, v233, s[12:15], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[121:128], v[241:242], v[155:156], v[121:128] neg_lo:[1,1,0]
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[239:242], v227 offset1:8
	ds_load_2addr_stride64_b64 v[234:237], v230 offset1:8
	ds_load_2addr_stride64_b64 v[243:246], v192 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s4, s18, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s18, 0x60
	s_mov_b32 s18, s4
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(31)
	ds_store_b8 v175, v157
	s_waitcnt vmcnt(30)
	ds_store_b8 v175, v159 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v175, v161 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v175, v163 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v175, v165 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v175, v167 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v175, v169 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v175, v171 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v175, v173 offset:4096
	s_waitcnt vmcnt(22)
	ds_store_b8 v175, v222 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v175, v224 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v175, v229 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v175, v232 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v175, v247 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v175, v254 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v175, v176 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v252, v158
	ds_store_b8 v252, v160 offset:512
	ds_store_b8 v252, v162 offset:1024
	ds_store_b8 v252, v164 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v252, v166 offset:2048
	ds_store_b8 v252, v168 offset:2560
	ds_store_b8 v252, v170 offset:3072
	ds_store_b8 v252, v172 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v252, v174 offset:4096
	ds_store_b8 v252, v223 offset:4608
	ds_store_b8 v252, v228 offset:5120
	ds_store_b8 v252, v231 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v252, v233 offset:6144
	ds_store_b8 v252, v179 offset:6656
	ds_store_b8 v252, v178 offset:7168
	ds_store_b8 v252, v177 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[157:160], v0 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[239:240], v[145:146], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[241:242], v[145:146], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[239:240], v[147:148], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[241:242], v[147:148], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[239:240], v[149:150], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[234:235], v[137:138], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[236:237], v[137:138], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[234:235], v[139:140], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[236:237], v[139:140], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[241:242], v[149:150], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[239:240], v[151:152], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[241:242], v[151:152], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[234:235], v[141:142], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[243:244], v[129:130], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[236:237], v[141:142], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[234:235], v[143:144], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[236:237], v[143:144], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[243:244], v[133:134], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[245:246], v[129:130], v[105:112] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[157:158], v[153:154], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[159:160], v[153:154], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[157:158], v[155:156], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[159:160], v[155:156], v[57:64] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[153:156], v227 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[157:158], v[248:249], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[248:249], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[157:158], v[250:251], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[159:160], v[250:251], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[73:80], v[245:246], v[133:134], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[243:244], v[135:136], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[245:246], v[135:136], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[243:244], v[131:132], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[245:246], v[131:132], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[153:154], v[145:146], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[155:156], v[145:146], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[153:154], v[147:148], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[155:156], v[147:148], v[57:64] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[145:148], v230 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[153:154], v[149:150], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[155:156], v[149:150], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[153:154], v[151:152], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[155:156], v[151:152], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[145:146], v[137:138], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[147:148], v[137:138], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[145:146], v[139:140], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[147:148], v[139:140], v[57:64] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[137:140], v192 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[145:146], v[141:142], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[147:148], v[141:142], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[145:146], v[143:144], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[147:148], v[143:144], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[135:136], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[129:130], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[139:140], v[129:130], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[137:138], v[131:132], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[139:140], v[131:132], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v73
	v_cvt_f32_i32_e32 v135, v74
	v_cvt_f32_i32_e32 v157, v83
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v22
	v_cvt_f32_i32_e32 v73, v23
	v_cvt_f32_i32_e32 v83, v36
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v36, v55
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v55, off, off offset:748
	scratch_load_b32 v43, off, off offset:732
	scratch_load_b32 v44, off, off offset:736
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v65
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v143, v70
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v70, v6
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v30, v40
	v_cvt_f32_i32_e32 v40, v51
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v69
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v69, v7
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v39, v52
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s4, s22, s21
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v86
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s4, s4, s20
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v154, v68
	v_cvt_f32_i32_e32 v158, v84
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v68, v8
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v38, v53
	v_cvt_f32_i32_e32 v35, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v142, v71
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v57
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v152, v66
	v_cvt_f32_i32_e32 v153, v67
	v_cvt_f32_i32_e32 v141, v72
	v_cvt_f32_i32_e32 v155, v81
	v_cvt_f32_i32_e32 v137, v91
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v91, v1
	v_cvt_f32_i32_e32 v67, v9
	v_cvt_f32_i32_e32 v66, v10
	v_cvt_f32_i32_e32 v65, v11
	v_cvt_f32_i32_e32 v10, v12
	v_cvt_f32_i32_e32 v1, v13
	v_cvt_f32_i32_e32 v81, v18
	v_cvt_f32_i32_e32 v72, v24
	v_cvt_f32_i32_e32 v18, v25
	v_cvt_f32_i32_e32 v25, v41
	v_cvt_f32_i32_e32 v24, v42
	v_cvt_f32_i32_e32 v9, v45
	v_cvt_f32_i32_e32 v11, v46
	v_cvt_f32_i32_e32 v12, v47
	v_cvt_f32_i32_e32 v13, v48
	v_cvt_f32_i32_e32 v42, v49
	v_cvt_f32_i32_e32 v41, v50
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v156, v82
	v_cvt_f32_i32_e32 v145, v88
	v_cvt_f32_i32_e32 v138, v90
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v159, v97
	v_cvt_f32_i32_e32 v161, v99
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v99, v125
	v_cvt_f32_i32_e32 v97, v127
	v_cvt_f32_i32_e32 v162, v100
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v160, v98
	v_cvt_f32_i32_e32 v146, v87
	v_cvt_f32_i32_e32 v139, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v87, v96
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v96, v128
	v_cvt_f32_i32_e32 v148, v85
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v37, v54
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v163, v101
	v_cvt_f32_i32_e32 v151, v102
	v_cvt_f32_i32_e32 v150, v103
	v_cvt_f32_i32_e32 v149, v104
	v_cvt_f32_i32_e32 v134, v75
	v_cvt_f32_i32_e32 v133, v76
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v106, v122
	v_cvt_f32_i32_e32 v105, v123
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v132, v77
	v_cvt_f32_i32_e32 v131, v78
	v_cvt_f32_i32_e32 v130, v79
	v_cvt_f32_i32_e32 v129, v80
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v78, v2
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v2, v14
	v_cvt_f32_i32_e32 v4, v16
	v_cvt_f32_i32_e32 v16, v27
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v27, v59
	v_cvt_f32_i32_e32 v26, v60
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v77, v3
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v19, v62
	v_cvt_f32_i32_e32 v21, v64
	v_cvt_f32_i32_e32 v3, v15
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v15, v61
	v_cvt_f32_i32_e32 v20, v63
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v33, v55, s4, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v43, s22, v43, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s22, v44, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v33, v33, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	s_clause 0x1
	buffer_load_u16 v43, v43, s[28:31], 0 offen
	buffer_load_u16 v51, v44, s[28:31], 0 offen
	scratch_load_b32 v44, off, off offset:740 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s22, v44, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v44, 0x80000000, v44, s1
	buffer_load_u16 v52, v44, s[28:31], 0 offen
	scratch_load_b32 v44, off, off offset:744 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s22, v44, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s22, s22, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s22, s34
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	buffer_load_u16 v53, v44, s[28:31], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v56, off, off offset:936 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xf                            ; 64-byte Folded Reload
	scratch_load_b32 v57, off, off offset:972
	scratch_load_b32 v244, off, off offset:640
	scratch_load_b32 v236, off, off offset:612
	scratch_load_b32 v223, off, off offset:576
	scratch_load_b32 v228, off, off offset:584
	scratch_load_b32 v164, off, off offset:480
	scratch_load_b32 v166, off, off offset:492
	scratch_load_b32 v254, off, off offset:672
	scratch_load_b32 v242, off, off offset:632
	scratch_load_b32 v176, off, off offset:552
	scratch_load_b32 v224, off, off offset:580
	scratch_load_b32 v229, off, off offset:588
	scratch_load_b32 v165, off, off offset:484
	scratch_load_b32 v174, off, off offset:544
	scratch_load_b32 v243, off, off offset:636
	scratch_load_b32 v177, off, off offset:556
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v33, 16, v43
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(15)
	ds_load_b128 v[43:46], v57
	ds_load_b128 v[47:50], v57 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v33, v0
	s_clause 0x10                           ; 68-byte Folded Reload
	scratch_load_b32 v116, off, off offset:288
	scratch_load_b32 v117, off, off offset:292
	scratch_load_b32 v119, off, off offset:300
	scratch_load_b32 v125, off, off offset:352
	scratch_load_b32 v118, off, off offset:296
	scratch_load_b32 v126, off, off offset:356
	scratch_load_b32 v128, off, off offset:364
	scratch_load_b32 v120, off, off offset:328
	scratch_load_b32 v175, off, off offset:548
	scratch_load_b32 v251, off, off offset:668
	scratch_load_b32 v241, off, off offset:628
	scratch_load_b32 v250, off, off offset:664
	scratch_load_b32 v168, off, off offset:520
	scratch_load_b32 v240, off, off offset:624
	scratch_load_b32 v167, off, off offset:516
	scratch_load_b32 v239, off, off offset:620
	scratch_load_b32 v249, off, off offset:660
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(29) lgkmcnt(1)
	v_dual_fmac_f32 v223, v0, v43 :: v_dual_mul_f32 v0, v33, v152
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v152, off, off offset:384
	scratch_load_b32 v245, off, off offset:644
	scratch_load_b32 v237, off, off offset:616
	scratch_load_b32 v169, off, off offset:524
	s_waitcnt vmcnt(26)
	v_fmac_f32_e32 v224, v0, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v33, v153
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v153, off, off offset:388
	scratch_load_b32 v235, off, off offset:608
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(27)
	v_dual_fmac_f32 v229, v0, v45 :: v_dual_mul_f32 v0, v33, v154
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v154, off, off offset:392
	scratch_load_b32 v127, off, off offset:360
	v_fmac_f32_e32 v228, v0, v46
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v0, 16, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v10, v33, v10 :: v_dual_mul_f32 v3, v3, v33
	v_mul_f32_e32 v1, v33, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v2, v2, v33 :: v_dual_mul_f32 v51, v0, v155
	scratch_load_b32 v155, off, off offset:396 ; 4-byte Folded Reload
	v_mul_f32_e32 v4, v4, v33
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v164, v51, v43 :: v_dual_mul_f32 v51, v0, v156
	scratch_load_b32 v156, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(30)
	v_fmac_f32_e32 v165, v51, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v51, v0, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v166, v51, v45 :: v_dual_mul_f32 v51, v0, v158
	scratch_load_b32 v158, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v158, v51, v46 :: v_dual_lshlrev_b32 v51, 16, v52
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v52, v51, v159
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v51, v32
	v_mul_f32_e32 v30, v51, v30
	v_mul_f32_e32 v34, v51, v34
	v_mul_f32_e32 v31, v51, v31
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v152, v52, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v52, v51, v160
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v51, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v153, v52, v44 :: v_dual_mul_f32 v52, v51, v161
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v6, v6, v0
	v_mul_f32_e32 v7, v7, v0
	v_mul_f32_e32 v8, v8, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v155, v52, v45 :: v_dual_mul_f32 v52, v51, v162
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v154, v52, v46
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v52, 16, v53
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v52, v108
	scratch_load_b32 v108, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v40, v52, v40
	v_mul_f32_e32 v42, v52, v42
	v_dual_mul_f32 v41, v52, v41 :: v_dual_fmac_f32 v116, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v109
	scratch_load_b32 v109, off, off offset:260 ; 4-byte Folded Reload
	v_mul_f32_e32 v53, v140, v33
	scratch_load_b32 v140, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v52, v39
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v43, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v110
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v110, off, off offset:264
	scratch_load_b32 v54, off, off offset:220
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v52, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v118, v43, v46 :: v_dual_mul_f32 v43, v33, v144
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v174, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v175, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v142
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v176, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v141
	scratch_load_b32 v141, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v177, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v148
	scratch_load_b32 v148, off, off offset:448 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v148, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v147
	scratch_load_b32 v147, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v147, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v146
	scratch_load_b32 v146, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v146, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v156, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v163
	scratch_load_b32 v163, off, off offset:512 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v126, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v127, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v149
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v128, v43, v50 :: v_dual_mul_f32 v43, v52, v112
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v108, v43, v47 :: v_dual_mul_f32 v43, v52, v113
	scratch_load_b32 v113, off, off offset:268 ; 4-byte Folded Reload
	v_fmac_f32_e32 v109, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v114
	scratch_load_b32 v114, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v43, v49 :: v_dual_mul_f32 v43, v52, v115
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v113, v43, v50
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v57 offset:512
	ds_load_b128 v[47:50], v57 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v54, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v33, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v163, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v33, v134
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v167, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v33, v133
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v168, v53, v46 :: v_dual_mul_f32 v53, v139, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v139, off, off offset:420
	scratch_load_b32 v115, off, off offset:324
	v_dual_fmac_f32 v250, v53, v43 :: v_dual_mul_f32 v53, v0, v138
	scratch_load_b32 v138, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v138, v53, v44 :: v_dual_mul_f32 v53, v0, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v0, v136
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v140, v53, v46 :: v_dual_mul_f32 v53, v103, v51
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v243, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v102
	scratch_load_b32 v102, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v114, v53, v44 :: v_dual_mul_f32 v53, v51, v101
	scratch_load_b32 v101, off, off offset:232 ; 4-byte Folded Reload
	v_fmac_f32_e32 v115, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v100
	scratch_load_b32 v100, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v120, v53, v46 :: v_dual_mul_f32 v53, v107, v52
	scratch_load_b32 v107, off, off offset:332 ; 4-byte Folded Reload
	v_fmac_f32_e32 v239, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v106
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v33, v91
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v43, v44
	scratch_load_b32 v44, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v105
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v102, v43, v45 :: v_dual_mul_f32 v43, v52, v104
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v100, v43, v46 :: v_dual_mul_f32 v43, v33, v132
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v169, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v131, v33
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v44, v43, v48 :: v_dual_mul_f32 v43, v130, v33
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v54, off offset:220
	scratch_store_b32 off, v44, off offset:216
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v254, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v129, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v251, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v90
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v141, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v89, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v249, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v88, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v245, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v87, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v244, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v95
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v107, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v94, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v242, v43, v48 :: v_dual_mul_f32 v43, v93, v51
	v_fmac_f32_e32 v241, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v92, v51
	scratch_load_b32 v92, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v240, v43, v50 :: v_dual_mul_f32 v43, v52, v99
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v92, v43, v47 :: v_dual_mul_f32 v43, v98, v52
	v_fmac_f32_e32 v237, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v97, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v236, v43, v49 :: v_dual_mul_f32 v43, v96, v52
	v_fmac_f32_e32 v235, v43, v50
	v_add_nc_u32_e32 v43, s78, v55
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v43, v43, s4, 1
	buffer_load_u16 v43, v43, s[16:19], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v56, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v106, off, off offset:316
	scratch_load_b32 v103, off, off offset:304
	scratch_load_b32 v104, off, off offset:308
	scratch_load_b32 v124, off, off offset:348
	scratch_load_b32 v123, off, off offset:344
	scratch_load_b32 v121, off, off offset:336
	scratch_load_b32 v122, off, off offset:340
	scratch_load_b32 v105, off, off offset:312
	scratch_load_b32 v234, off, off offset:604
	scratch_load_b32 v233, off, off offset:600
	scratch_load_b32 v232, off, off offset:596
	scratch_load_b32 v231, off, off offset:592
	scratch_load_b32 v222, off, off offset:572
	scratch_load_b32 v221, off, off offset:568
	scratch_load_b32 v179, off, off offset:564
	scratch_load_b32 v178, off, off offset:560
	scratch_load_b32 v137, off, off offset:412
	scratch_load_b32 v136, off, off offset:408
	scratch_load_b32 v135, off, off offset:404
	scratch_load_b32 v134, off, off offset:400
	scratch_load_b32 v133, off, off offset:380
	scratch_load_b32 v132, off, off offset:376
	scratch_load_b32 v131, off, off offset:372
	scratch_load_b32 v130, off, off offset:368
	scratch_load_b32 v157, off, off offset:476
	scratch_load_b32 v151, off, off offset:472
	scratch_load_b32 v149, off, off offset:464
	scratch_load_b32 v150, off, off offset:468
	scratch_load_b32 v145, off, off offset:444
	scratch_load_b32 v144, off, off offset:440
	scratch_load_b32 v143, off, off offset:436
	scratch_load_b32 v142, off, off offset:432
	s_clause 0x11                           ; 72-byte Folded Reload
	scratch_load_b32 v97, off, off offset:272
	scratch_load_b32 v99, off, off offset:284
	scratch_load_b32 v91, off, off offset:280
	scratch_load_b32 v98, off, off offset:276
	scratch_load_b32 v93, off, off offset:244
	scratch_load_b32 v94, off, off offset:248
	scratch_load_b32 v95, off, off offset:252
	scratch_load_b32 v96, off, off offset:256
	scratch_load_b32 v162, off, off offset:508
	scratch_load_b32 v170, off, off offset:528
	scratch_load_b32 v173, off, off offset:540
	scratch_load_b32 v172, off, off offset:536
	scratch_load_b32 v171, off, off offset:532
	scratch_load_b32 v161, off, off offset:504
	scratch_load_b32 v159, off, off offset:496
	scratch_load_b32 v160, off, off offset:500
	scratch_load_b32 v88, off, off offset:708
	scratch_load_b32 v87, off, off offset:716
	ds_load_b128 v[43:46], v57
	ds_load_b128 v[47:50], v57 offset:16
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v129, off, off offset:728
	scratch_load_b32 v89, off, off offset:688
	scratch_load_b32 v90, off, off offset:684
	scratch_load_b32 v247, off, off offset:652
	scratch_load_b32 v246, off, off offset:648
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(53) lgkmcnt(1)
	v_dual_fmac_f32 v106, v42, v43 :: v_dual_fmac_f32 v103, v41, v44
	s_waitcnt vmcnt(47)
	v_dual_fmac_f32 v104, v40, v45 :: v_dual_fmac_f32 v105, v39, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v33, v71
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(46)
	v_fmac_f32_e32 v234, v53, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(42) lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v53, v33, v78 :: v_dual_fmac_f32 v222, v39, v47
	v_mul_f32_e32 v39, v33, v70
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v233, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v33, v77
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(41)
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v221, v39, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v33, v69
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(33)
	v_dual_fmac_f32 v133, v34, v47 :: v_dual_fmac_f32 v132, v32, v48
	s_waitcnt vmcnt(31)
	v_fmac_f32_e32 v130, v30, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v30, v52, v38 :: v_dual_fmac_f32 v179, v39, v49
	v_mul_f32_e32 v39, v33, v68
	scratch_load_b32 v32, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v31, v49
	scratch_load_b32 v31, off, off offset:676 ; 4-byte Folded Reload
	v_dual_fmac_f32 v178, v39, v50 :: v_dual_mul_f32 v39, v0, v75
	s_waitcnt vmcnt(24)
	v_dual_fmac_f32 v97, v30, v47 :: v_dual_mul_f32 v30, v52, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v157, v39, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v0, v74
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(23)
	v_fmac_f32_e32 v99, v30, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v52, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v151, v39, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v0, v73
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(22)
	v_dual_fmac_f32 v91, v30, v49 :: v_dual_mul_f32 v30, v52, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v149, v39, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v39, v0, v72 :: v_dual_fmac_f32 v98, v30, v50
	v_mul_f32_e32 v30, v67, v33
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v150, v39, v50
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[34:37], v57 offset:512
	ds_load_b128 v[38:41], v57 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(15) lgkmcnt(1)
	v_fmac_f32_e32 v170, v10, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(12) lgkmcnt(0)
	v_dual_mul_f32 v10, v18, v0 :: v_dual_fmac_f32 v171, v1, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v87, v3, v40 :: v_dual_fmac_f32 v122, v9, v38
	v_fmac_f32_e32 v96, v15, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v88, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v0, v17
	scratch_load_b32 v17, off, off offset:720 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v145, v10, v35 :: v_dual_mul_f32 v10, v0, v16
	scratch_load_b32 v16, off, off offset:712 ; 4-byte Folded Reload
	v_fmac_f32_e32 v144, v10, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v0, v14
	v_mul_f32_e32 v14, v21, v52
	scratch_load_b32 v21, off, off offset:700 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v143, v10, v37 :: v_dual_mul_f32 v10, v25, v51
	scratch_load_b32 v25, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v246, v14, v41
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v32, v30, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v33, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v173, v30, v35 :: v_dual_mul_f32 v30, v33, v65
	v_fmac_f32_e32 v172, v30, v36
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v17, v2, v39
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v25, v10, v34 :: v_dual_mul_f32 v10, v51, v24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v24, off, off offset:680
	scratch_load_b32 v248, off, off offset:656
	v_fmac_f32_e32 v124, v10, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v123, v10, v36 :: v_dual_mul_f32 v10, v51, v22
	scratch_load_b32 v22, off, off offset:704 ; 4-byte Folded Reload
	v_fmac_f32_e32 v16, v4, v41
	v_dual_fmac_f32 v121, v10, v37 :: v_dual_mul_f32 v10, v29, v52
	v_dual_fmac_f32 v31, v10, v34 :: v_dual_mul_f32 v10, v52, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v10, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v52, v27
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v94, v10, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v52, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v95, v10, v37 :: v_dual_mul_f32 v10, v12, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v12, v19, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v232, v53, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v33, v76
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v90, v10, v40 :: v_dual_fmac_f32 v231, v53, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v0, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v162, v53, v43 :: v_dual_mul_f32 v53, v0, v81
	v_fmac_f32_e32 v161, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v0, v80
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v159, v53, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v0, v79
	v_dual_mul_f32 v0, v0, v5 :: v_dual_mul_f32 v5, v11, v51
	v_mul_f32_e32 v11, v13, v51
	v_mul_f32_e32 v13, v20, v52
	scratch_load_b32 v20, off, off offset:696 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v160, v53, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v51, v86
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v142, v0, v38 :: v_dual_fmac_f32 v89, v5, v39
	v_fmac_f32_e32 v247, v13, v40
	v_fmac_f32_e32 v21, v7, v40
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v24, v11, v41
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v248, v12, v39
	v_fmac_f32_e32 v137, v53, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v51, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v136, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v53, v51, v84 :: v_dual_fmac_f32 v22, v6, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v135, v53, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v51, v83
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v134, v53, v46
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v20, v8, v41
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v7, off, off offset:1136
	scratch_load_b32 v111, off, off offset:1128
	scratch_load_b32 v112, off, off offset:1132
	scratch_load_b32 v180, off, off offset:216
	scratch_load_b32 v181, off, off offset:220
.LBB0_9:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(2)
	v_lshrrev_b32_e32 v9, 7, v112
	v_and_b32_e32 v8, 63, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v12, 0xbfb8aa3b, v233 :: v_dual_mov_b32 v189, v17
	v_dual_mul_f32 v38, 0xbfb8aa3b, v173 :: v_dual_mov_b32 v185, v20
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v9
	v_or_b32_e32 v5, 60, v9
	v_dual_mov_b32 v186, v21 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v34, 0xbfb8aa3b, v159 :: v_dual_mov_b32 v187, v22
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s0, s72, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 58, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s1, s72, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v6, null, s73, 0, s1
	v_add_co_ci_u32_e64 v4, null, s73, 0, s0
	v_add_co_u32 v10, s1, s72, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s72, v8
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[76:77], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 54, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s73, 0, s0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[74:75], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, s73, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[76:77], v[3:4]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s72, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s6
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 52, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s6, s72, v5
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[74:75], v[10:11]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[76:77], v[10:11]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 50, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s10, s72, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s10
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v10, s10, s72, v10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[74:75], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, s73, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[76:77], v[5:6]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 46, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s14, s72, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s14
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 44, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s14, s72, v5
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[74:75], v[10:11]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[76:77], v[10:11]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 42, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[76:77], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s18, s72, v0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v0, 40, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s18
	v_add_co_u32 v10, s18, s72, v10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[74:75], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v11, null, s73, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[76:77], v[5:6]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s22, s72, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v32 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v87
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v29, 0xbfb8aa3b, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[76:77], v[5:6]
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_mul_f32_e32 v6, 0xbfb8aa3b, v17
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, s26
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v41, 0xbfb8aa3b, v222 :: v_dual_mul_f32 v46, 0xbfb8aa3b, v143
	v_mul_f32_e32 v42, 0xbfb8aa3b, v151
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v87
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v32
	v_dual_mul_f32 v64, 0xbfb8aa3b, v145 :: v_dual_mov_b32 v183, v24
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_mov_b32_e32 v188, v16
	v_exp_f32_e32 v14, v14
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v47, 0xbfb8aa3b, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v15, 0xbfb8aa3b, v189 :: v_dual_mul_f32 v16, 0xbfb8aa3b, v188
	v_dual_mov_b32 v184, v25 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v131
	v_dual_mov_b32 v190, v32 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v170
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v0, v14, v0
	v_mul_f32_e32 v14, 0xbfb8aa3b, v88
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v19, 0, 0x42800000, s27
	v_mul_f32_e32 v28, 0xbfb8aa3b, v178
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s27
	v_ldexp_f32 v16, v17, v16
	v_mul_f32_e32 v53, 0xbfb8aa3b, v136
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v188 :: v_dual_mov_b32 v182, v31
	v_mul_f32_e32 v35, 0xbfb8aa3b, v91
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[74:75], v[3:4]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v15, v15, v6
	v_exp_f32_e32 v19, v19
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[76:77], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 38, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[74:75], v[10:11]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v13, 0xbfb8aa3b, v234 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v221
	v_mul_f32_e32 v39, 0xbfb8aa3b, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s22, s72, v3
	v_add_co_ci_u32_e64 v4, null, s73, 0, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v19, v18
	v_mul_f32_e32 v19, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[76:77], v[10:11]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v10, 0xbfb8aa3b, v232 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v231
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v19
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_dual_mul_f32 v30, 0xbfb8aa3b, v171 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v21, 0, 0x42800000, s26
	v_mul_f32_e32 v20, 0xbfb8aa3b, v185
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v88
	v_dual_mul_f32 v50, 0xbfb8aa3b, v162 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v186
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v18, v18
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s26
	v_dual_mul_f32 v36, 0xbfb8aa3b, v150 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v144
	v_cndmask_b32_e64 v23, 0, 0x42800000, s27
	v_mul_f32_e32 v14, 0xbfb8aa3b, v22
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s27
	v_dual_mul_f32 v44, 0xbfb8aa3b, v135 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v137
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v185
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_ldexp_f32 v18, v18, v6
	v_dual_mul_f32 v6, 0xbfb8aa3b, v25 :: v_dual_add_f32 v15, 1.0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v40, 0xbfb8aa3b, v160
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v56, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v122
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v86, null, v18, v18, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	v_dual_mul_f32 v48, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v132
	v_dual_mul_f32 v58, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v67, 0xbfb8aa3b, v124
	v_dual_mul_f32 v66, 0xbfb8aa3b, v123 :: v_dual_mul_f32 v65, 0xbfb8aa3b, v106
	v_dual_mul_f32 v60, 0xbfb8aa3b, v104 :: v_dual_mul_f32 v63, 0xbfb8aa3b, v103
	v_mul_f32_e32 v62, 0xbfb8aa3b, v105
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v14, v19, v14
	v_ldexp_f32 v19, v21, v20
	v_ldexp_f32 v20, v23, v22
	v_mul_f32_e32 v23, 0xbfb8aa3b, v90
	v_mul_f32_e32 v21, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_add_f32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp4:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, s26
	v_mul_f32_e32 v24, 0xbfb8aa3b, v183
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v52, 0xbfb8aa3b, v134
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v90
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v24
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s26
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v27, 0, 0x42800000, s27
	v_exp_f32_e32 v23, v23
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v83, s27, v87, v16, v87
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v183
	v_exp_f32_e32 v22, v22
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp6:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v5, 36, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[74:75], v[3:4]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v27, v27
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v21, v23, v21
	v_ldexp_f32 v23, v25, v24
	v_mul_f32_e32 v25, 0xbfb8aa3b, v248
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1249 38 is_stmt 1             ; ragged.py:1249:38
	s_lshr_b32 s68, s78, 31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v22, v6
	v_mul_f32_e32 v6, 0xbfb8aa3b, v31
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v25
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v27, v26
	v_dual_mul_f32 v26, 0xbfb8aa3b, v247 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v246
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s26
	v_cndmask_b32_e64 v59, 0, 0x42800000, s26
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v23, 1.0, v23 :: v_dual_add_f32 v24, 1.0, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v27
	v_mul_f32_e32 v31, 0xbfb8aa3b, v98
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_cndmask_b32_e64 v27, 0, 0x42800000, s26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s26
	v_dual_mul_f32 v54, 0xbfb8aa3b, v99 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v246
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v248
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v0, v0, v190
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v247
	v_exp_f32_e32 v71, v59
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v93
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v73, v26
	v_exp_f32_e32 v25, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, vcc_lo, v190, v0, v190
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v74, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v16, v16, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v71, v68
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v72, v76, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v73, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v15, v15, v189
	v_fmac_f32_e32 v76, v71, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v75, v25, v6
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v79, v77, v76
	v_fma_f32 v82, -v74, v78, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v59, 0xbfb8aa3b, v97 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v81, -v72, v79, v77
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, null, v17, v17, v188
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v73, v71, 1.0
	v_fmac_f32_e32 v79, v81, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v25, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v84, v82
	v_fmac_f32_e32 v71, v80, v71
	v_div_scale_f32 v80, s26, v189, v15, v189
	v_fma_f32 v72, -v72, v79, v77
	.loc	1 1249 38 is_stmt 1             ; ragged.py:1249:38
	s_add_i32 s68, s78, s68
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	s_mov_b32 s71, 0x31027000
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v72, v72, v76, v79
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v82, v84, 1.0
	v_mul_f32_e32 v81, v80, v71
	v_rcp_f32_e32 v76, v86
	v_mul_f32_e32 v85, v83, v78
	v_div_fixup_f32 v0, v72, v0, v190
	v_fmac_f32_e32 v84, v79, v84
	v_fma_f32 v77, -v73, v81, v80
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v79, s26, v88, v18, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v81, v77, v71 :: v_dual_add_nc_u32 v8, s72, v8
	v_fma_f32 v77, -v74, v85, v83
	v_fma_f32 v72, -v73, v81, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v77, v78
	v_fma_f32 v77, -v86, v76, 1.0
	v_div_scale_f32 v73, s28, v188, v17, v188
	v_div_fmas_f32 v71, v72, v71, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v74, v85, v83
	v_fmac_f32_e32 v76, v77, v76
	v_div_scale_f32 v77, null, v14, v14, v187
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v69 :: v_dual_mul_f32 v74, v73, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v72, v72, v78, v85
	v_rcp_f32_e32 v78, v77
	v_div_scale_f32 v83, null, v19, v19, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v82, v74, v73
	v_div_fixup_f32 v15, v71, v15, v189
	v_div_fixup_f32 v16, v72, v16, v87
	v_rcp_f32_e32 v72, v83
	s_mov_b32 vcc_lo, s28
	v_fmac_f32_e32 v74, v80, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v77, v78, 1.0
	v_mul_f32_e32 v81, v79, v76
	v_fma_f32 v73, -v82, v74, v73
	v_div_scale_f32 v82, null, v20, v20, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v80, v78
	v_fma_f32 v71, -v86, v81, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v83, v72, 1.0
	v_rcp_f32_e32 v80, v82
	v_div_fmas_f32 v73, v73, v84, v74
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v81, v71, v76
	v_div_scale_f32 v71, s27, v187, v14, v187
	v_fmac_f32_e32 v72, v85, v72
	v_div_scale_f32 v84, s28, v186, v19, v186
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v86, v81, v79
	v_mul_f32_e32 v79, v71, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v82, v80, 1.0
	v_div_scale_f32 v86, null, v22, v22, v184
	v_div_fmas_f32 v74, v74, v76, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v77, v79, v71
	v_fmac_f32_e32 v80, v85, v80
	v_mul_f32_e32 v81, v84, v72
	v_rcp_f32_e32 v85, v86
	v_div_scale_f32 v87, s26, v185, v20, v185
	v_fmac_f32_e32 v79, v76, v78
	v_div_scale_f32 v76, null, v21, v21, v89
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v17, v73, v17, v188
	v_fma_f32 v71, -v77, v79, v71
	v_rcp_f32_e32 v77, v76
	v_div_fixup_f32 v18, v74, v18, v88
	v_fma_f32 v73, -v83, v81, v84
	v_mul_f32_e32 v74, v87, v80
	v_div_fmas_f32 v71, v71, v78, v79
	v_fma_f32 v88, -v86, v85, 1.0
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v14, v71, v14, v187
	v_fma_f32 v79, -v76, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v77, v79, v77
	v_fmac_f32_e32 v81, v73, v72
	v_fma_f32 v73, -v82, v74, v87
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s29, v184, v22, v184
	v_fma_f32 v78, -v83, v81, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v73, v80
	v_div_scale_f32 v79, null, v23, v23, v90
	v_div_fmas_f32 v72, v78, v72, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v82, v74, v87
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v82, s27, v89, v21, v89
	v_div_fixup_f32 v71, v72, v19, v186
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v74, v78, v80, v74
	v_rcp_f32_e32 v78, v79
	v_mul_f32_e32 v73, v88, v85
	v_mul_f32_e32 v80, v82, v77
	s_mov_b32 vcc_lo, s29
	v_div_fixup_f32 v72, v74, v20, v185
	v_div_scale_f32 v74, null, v24, v24, v183
	v_fma_f32 v81, -v86, v73, v88
	v_fma_f32 v20, -v76, v80, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v73, v81, v85
	v_fma_f32 v81, -v79, v78, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v20, v77
	v_div_scale_f32 v20, s26, v90, v23, v90
	v_fma_f32 v19, -v86, v73, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v81, v78
	v_div_scale_f32 v81, null, v75, v75, v182
	v_div_fmas_f32 v19, v19, v85, v73
	v_rcp_f32_e32 v73, v74
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v83, v19, v22, v184
	v_fma_f32 v19, -v76, v80, v82
	v_rcp_f32_e32 v82, v81
	v_mul_f32_e32 v22, v20, v78
	v_div_fmas_f32 v19, v19, v77, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v74, v73, 1.0
	v_fma_f32 v77, -v79, v22, v20
	v_div_scale_f32 v80, s27, v183, v24, v183
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v81, v82, 1.0
	v_fmac_f32_e32 v22, v77, v78
	v_div_scale_f32 v77, s28, v182, v75, v182
	v_div_fixup_f32 v85, v19, v21, v89
	v_fmac_f32_e32 v82, v84, v82
	v_fmac_f32_e32 v73, v76, v73
	v_fma_f32 v20, -v79, v22, v20
	v_div_scale_f32 v89, null, v70, v70, v246
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v77, v82
	v_div_scale_f32 v76, null, v68, v68, v248
	v_div_fmas_f32 v20, v20, v78, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v78, v89
	v_fma_f32 v22, -v81, v86, v77
	v_mul_f32_e32 v21, v80, v73
	v_rcp_f32_e32 v19, v76
	v_div_scale_f32 v84, null, v69, v69, v247
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v22, v82
	v_fma_f32 v79, -v74, v21, v80
	v_div_fixup_f32 v90, v20, v23, v90
	s_mov_b32 vcc_lo, s27
	v_rcp_f32_e32 v88, v84
	v_div_scale_f32 v23, s29, v247, v69, v247
	v_fmac_f32_e32 v21, v79, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v76, v19, 1.0
	v_div_scale_f32 v79, s26, v248, v68, v248
	v_fma_f32 v20, -v74, v21, v80
	v_fma_f32 v74, -v89, v78, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v74, v78
	v_div_fmas_f32 v20, v20, v73, v21
	v_fma_f32 v21, -v81, v86, v77
	v_div_scale_f32 v74, s27, v246, v70, v246
	s_mov_b32 vcc_lo, s28
	v_fmac_f32_e32 v19, v87, v19
	v_div_fmas_f32 v21, v21, v82, v86
	v_mul_f32_e32 v80, v74, v78
	v_fma_f32 v87, -v84, v88, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v81, v20, v24, v183
	v_div_fixup_f32 v75, v21, v75, v182
	v_fma_f32 v21, -v89, v80, v74
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v21, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v88, v87, v88 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v77, v23, v88
	v_mul_f32_e32 v22, v79, v19
	v_fma_f32 v73, -v76, v22, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v22, v73, v19
	v_fma_f32 v73, -v84, v77, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v20, -v76, v22, v79
	v_fmac_f32_e32 v77, v73, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v13, v20, v19, v22
	v_fma_f32 v19, -v84, v77, v23
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v23, v180, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v22, -v89, v80, v74
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v19, v19, v88, v77
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, s26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v12, v22, v78, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v68, v13, v68, v248
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v74, 0xbfb8aa3b, v233 :: v_dual_mul_f32 v21, v254, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v70, v12, v70, v246
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v24, v181, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v74
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v0, v22, v20
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v231
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v242, v85
	v_mul_f32_e32 v22, v251, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v0, v11, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v250, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v74, v74, v234
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v18, v245, v71 :: v_dual_mul_f32 v17, v244, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v10, v12
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v16, v243, v83 :: v_dual_fmac_f32 v13, 0xbfb8aa3b, v232
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v71, v71, v233
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v79, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v69, v19, v69, v247
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v249, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v10, -v76, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v77, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v72
	v_div_scale_f32 v80, vcc_lo, v234, v74, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v73, v10, v73 :: v_dual_mul_f32 v12, v239, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v14, v240, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v79, v79, v231
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v13, v241, v90 :: v_dual_mul_f32 v82, v80, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v72, v78, 1.0
	v_rcp_f32_e32 v75, v81
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v11, v77, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v83, s26, v233, v71, v233
	v_fma_f32 v77, -v76, v82, v80
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v236, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v41
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v82, v77, v73
	v_fma_f32 v77, -v81, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v78, v0, v78 :: v_dual_fmac_f32 v75, v77, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v0, v237, v68 :: v_dual_mul_f32 v69, v83, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v68, 1.0, v11 :: v_dual_mul_f32 v11, v235, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v76, v82, v80
	v_div_scale_f32 v80, s27, v231, v79, v231
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v72, v69, v83
	v_div_fmas_f32 v41, v70, v73, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s28
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v76, v78
	v_div_scale_f32 v84, null, v68, v68, v232
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v222
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v72, v69, v83
	v_rcp_f32_e32 v77, v84
	v_div_fixup_f32 v41, v41, v74, v234
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v72, v78, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, s29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s29
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v71, v233
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v82, -v84, v77, 1.0
	v_mul_f32_e32 v76, v80, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v73, v70
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v221
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v82, v77
	v_div_scale_f32 v82, s28, v232, v68, v232
	v_fma_f32 v74, -v81, v76, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v70, 1.0, v70 :: v_dual_mul_f32 v69, v82, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v84, v69, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v74, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_fmac_f32_e32 v69, v29, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v29, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v81, v76, v80
	v_div_scale_f32 v78, null, v70, v70, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v75, v80, v75, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v84, v69, v82
	v_rcp_f32_e32 v76, v78
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v72
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v179
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fmas_f32 v28, v28, v77, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v28, v68, v232
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v74, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v78, v76, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v178
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v69, v69, v221
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v75, v79, v231
	v_fmac_f32_e32 v76, v73, v76
	v_div_scale_f32 v73, vcc_lo, v222, v70, v222
	v_rcp_f32_e32 v81, v74
	v_div_scale_f32 v82, null, v77, v77, v179
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v228, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v83, v73, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v80, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fma_f32 v71, -v78, v83, v73
	v_fma_f32 v75, -v74, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v28, v229, v28 :: v_dual_fmac_f32 v81, v75, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v83, v71, v76
	v_div_scale_f32 v71, s26, v221, v69, v221
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v75, -v82, v68, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v72, v80, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v78, v83, v73
	v_fmac_f32_e32 v68, v75, v68
	v_mul_f32_e32 v78, v71, v81
	v_div_scale_f32 v75, s27, v179, v77, v179
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v74, v78, v71
	v_fmac_f32_e32 v78, v80, v81
	v_div_fmas_f32 v73, v73, v76, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v223, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v83, v75, v68
	v_fma_f32 v71, -v74, v78, v71
	v_div_fixup_f32 v41, v73, v70, v222
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v85, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v224, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v84, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v82, v83, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v173
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v83, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v85
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v82, v83, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v39, v84
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v72, v72, v178
	v_rcp_f32_e32 v76, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v79, v76, 1.0
	v_fmac_f32_e32 v76, v73, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_fmas_f32 v71, v71, v81, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v172
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v33, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v74, s28, v178, v72, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v82, null, v73, v73, v173
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v170
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v75, v68, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v82
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v82, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v75, v70
	v_div_scale_f32 v75, s26, v173, v73, v173
	v_mul_f32_e32 v78, v74, v76
	v_fma_f32 v39, -v79, v78, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v78, v39, v76
	v_div_fixup_f32 v39, v71, v69, v221
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v81
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v68, v77, v179
	v_mul_f32_e32 v77, v75, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v176, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v71, v71, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v79, v78, v74
	v_div_scale_f32 v74, null, v69, v69, v172
	v_fma_f32 v79, -v82, v77, v75
	v_div_scale_f32 v80, null, v71, v71, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v68, v68, v76, v78
	v_rcp_f32_e32 v76, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v79, v70
	v_rcp_f32_e32 v81, v80
	v_div_fixup_f32 v30, v68, v72, v178
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v82, v77, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v78, -v74, v76, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v171
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v177, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, s27, v172, v69, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v79, v78, v76
	v_div_fmas_f32 v70, v75, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, s26, v170, v71, v170
	v_fma_f32 v82, -v74, v79, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v70, v70, v73, v173
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v68, v72, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v175, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v82, v76
	v_fma_f32 v72, -v80, v81, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v77, 0xbfb8aa3b, v162 :: v_dual_add_f32 v68, 1.0, v68
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v74, v79, v78
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v77, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v68, v68, v171
	v_div_fmas_f32 v43, v73, v76, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_cndmask_b32_e64 v76, 0, 0x42800000, s28
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s28
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v43, v69, v172
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v77, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v72, v81
	v_rcp_f32_e32 v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v161
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v78, v50, v81
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v80, v78, v50
	v_fma_f32 v79, -v74, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v41, v174, v41 :: v_dual_fmac_f32 v72, v79, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, s27, v171, v68, v171
	v_fmac_f32_e32 v78, v69, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v73, v76, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v79, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v80, v78, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v80, 1.0, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v74, v69, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v50, v81, v78
	v_div_scale_f32 v76, null, v80, v80, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, s28
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v160
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v40, v72
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v159
	v_exp_f32_e32 v40, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v76
	v_fma_f32 v50, -v74, v69, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s28
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v50, v72, v69
	v_div_scale_f32 v69, vcc_lo, v162, v80, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v40, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v81, -v76, v77, 1.0
	v_div_fixup_f32 v50, v50, v68, v171
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v81, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v40, v34, v71, v170
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v73, 1.0, v73 :: v_dual_mul_f32 v34, v169, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v78, v69, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v81, null, v75, v75, v160
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v168, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v73, v73, v161
	v_fma_f32 v50, -v76, v78, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v68, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v83, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v79, v82
	v_fmac_f32_e32 v78, v50, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v163, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v78, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v70, -v81, v83, 1.0
	v_fma_f32 v72, -v82, v79, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v69, v69, v77, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v72, v79
	v_div_scale_f32 v72, s26, v161, v73, v161
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v71, v72, v79
	v_div_fixup_f32 v69, v69, v80, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v82, v71, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v71, v74, v79
	v_div_scale_f32 v74, null, v68, v68, v159
	v_fma_f32 v72, -v82, v71, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v47, v74
	v_div_fmas_f32 v71, v72, v79, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_exp_f32_e32 v42, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, s26, v159, v68, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v71, v71, v73, v161
	v_fma_f32 v78, -v74, v47, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v78, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_ldexp_f32 v37, v42, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v167, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v42, v79, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v151
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v80, 1.0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v74, v42, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v78, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v149
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v37, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v78, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v83, v70, v83
	v_div_scale_f32 v70, s27, v160, v75, v160
	v_mul_f32_e32 v72, v70, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v81, v72, v70
	v_fmac_f32_e32 v72, v73, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_exp_f32_e32 v36, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v81, v72, v70
	v_div_scale_f32 v81, null, v80, v80, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_rcp_f32_e32 v76, v81
	v_div_fmas_f32 v70, v70, v83, v72
	v_fma_f32 v72, -v74, v42, v79
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v36, v73
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v73, null, v74, v74, v151
	v_div_fmas_f32 v42, v72, v47, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v81, v76, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v73
	v_div_scale_f32 v79, vcc_lo, v157, v80, v157
	v_div_scale_f32 v82, s26, v151, v74, v151
	v_fmac_f32_e32 v76, v37, v76
	v_div_fixup_f32 v37, v70, v75, v160
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v78, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v36, v42, v68, v159
	v_fma_f32 v42, -v73, v72, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v158, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v42, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v165, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v78, v78, v149
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v164, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v84, null, v71, v71, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v75, v68
	v_fma_f32 v83, -v68, v75, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v75, v83, v75
	v_mul_f32_e32 v70, v79, v76
	v_div_scale_f32 v83, s27, v149, v78, v149
	v_fma_f32 v77, -v81, v70, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v70, v77, v76
	v_mul_f32_e32 v77, v82, v72
	v_fma_f32 v69, -v81, v70, v79
	v_rcp_f32_e32 v81, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v79, -v73, v77, v82
	v_div_fmas_f32 v64, v69, v76, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v79, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v83, v75
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v79, -v84, v81, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v166, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v73, v77, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v64, v80, v157
	v_fmac_f32_e32 v81, v79, v81
	v_div_scale_f32 v79, s28, v150, v71, v150
	v_div_fmas_f32 v51, v73, v72, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v68, v76, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v72, v79, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_exp_f32_e32 v70, v70
	v_dual_fmac_f32 v77, 0xbfb8aa3b, v144 :: v_dual_fmac_f32 v76, v80, v75
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v84, v72, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v74, v151
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v68, v76, v83
	v_fmac_f32_e32 v72, v46, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v77
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v143
	v_ldexp_f32 v69, v70, v69
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v147, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v68, v75, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_exp_f32_e32 v75, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v84, v72, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v46, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fmas_f32 v45, v45, v81, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v69, v69, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v75, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v45, v71, v150
	v_div_scale_f32 v75, null, v72, v72, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v76, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v142
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v80, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v81, v75
	v_div_fixup_f32 v46, v68, v78, v149
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v156, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v79, v79
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v77, v76, 1.0
	v_fma_f32 v74, -v75, v81, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v73, v79, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v74, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v70, v76
	v_div_scale_f32 v70, vcc_lo, v145, v69, v145
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v83, v70, v76
	v_div_scale_f32 v78, null, v73, v73, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v77, v83, v70
	v_fmac_f32_e32 v83, v71, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v77, v83, v70
	v_div_fmas_f32 v70, v70, v76, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v148, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v80, v80, v143
	v_rcp_f32_e32 v76, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v85, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v146, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v84, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v70, v69, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v137
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v78, v76, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v82, v68, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v74, v68
	v_div_scale_f32 v74, s27, v143, v80, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v136
	v_ldexp_f32 v53, v53, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v83, v74, v68
	v_div_scale_f32 v71, s26, v144, v72, v144
	v_fma_f32 v69, -v82, v83, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v77, v71, v81
	v_fmac_f32_e32 v83, v69, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v79, -v75, v77, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v77, v79, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v75, v77, v71
	v_div_scale_f32 v75, s28, v142, v73, v142
	v_div_fmas_f32 v71, v71, v81, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_exp_f32_e32 v52, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v70, 1.0, v53 :: v_dual_mul_f32 v77, v75, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v82, v83, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v70, v70, v137
	v_fma_f32 v53, -v78, v77, v75
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v74, v68, v83
	v_fmac_f32_e32 v77, v53, v76
	v_div_fixup_f32 v53, v71, v72, v144
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v52, v68, v80, v143
	v_fma_f32 v68, -v78, v77, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v71, v71, v136
	v_fma_f32 v75, -v82, v69, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v139, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v75, v69
	v_div_fmas_f32 v68, v68, v76, v77
	v_rcp_f32_e32 v76, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, s26, v137, v70, v137
	v_div_fixup_f32 v44, v68, v73, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v72, v72, v79
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v141, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v74, v76, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v82, v77, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, s27, v136, v71, v136
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v79, v69
	v_div_scale_f32 v80, null, v72, v72, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v79, v78, v76
	v_fma_f32 v75, -v82, v77, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v81, v80
	v_fma_f32 v82, -v74, v79, v78
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v73, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v69, v75, v69, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v56, s26, v134, v72, v134
	v_fmac_f32_e32 v79, v82, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v80, v81, 1.0
	v_div_fixup_f32 v69, v69, v70, v137
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v140, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v74, v79, v78
	v_div_scale_f32 v74, null, v68, v68, v135
	v_fmac_f32_e32 v81, v73, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v138, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v55, v70, v76, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v78, v56, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_exp_f32_e32 v77, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v55, v71, v136
	v_fma_f32 v79, -v74, v73, 1.0
	v_fma_f32 v71, -v80, v78, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s28
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v153, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v79, v73
	v_div_scale_f32 v79, s27, v135, v68, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v71, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v77, v75
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v79, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v76, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v80, v78, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v80, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v74, v71, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_fmas_f32 v48, v56, v81, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v71, v49, v73
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v76, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v80, v80, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v74, v71, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, s28
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v56, v56, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v70, v70, v132
	v_div_scale_f32 v71, vcc_lo, v133, v80, v133
	v_div_fixup_f32 v56, v56, v68, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v78
	v_exp_f32_e32 v49, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v76
	v_fma_f32 v73, -v82, v79, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v68, v74
	v_ldexp_f32 v49, v49, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v73, v79
	v_div_scale_f32 v73, s26, v132, v70, v132
	v_fma_f32 v81, -v76, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v49, v48, v72, v134
	v_mul_f32_e32 v72, v73, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v155, v56
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v82, v72, v73
	v_fmac_f32_e32 v77, v81, v77
	v_div_scale_f32 v81, null, v75, v75, v131
	v_fmac_f32_e32 v72, v74, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v78, v71, v77
	v_rcp_f32_e32 v83, v81
	v_div_scale_f32 v74, null, v68, v68, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v82, v72, v73
	v_fma_f32 v56, -v76, v78, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v78, v56, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v152, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v78, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v81, v83, 1.0
	v_div_fmas_f32 v69, v69, v77, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v83, v71, v83
	v_div_scale_f32 v71, s27, v131, v75, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v78, v69, v80, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_fmas_f32 v72, v73, v79, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v74, v67, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, s26, v130, v68, v130
	v_mul_f32_e32 v73, v71, v83
	v_fmac_f32_e32 v67, v69, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v124
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v66, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v77, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v70, v72, v70, v132
	v_fma_f32 v72, -v81, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v123
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v74, v58, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v72, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v80, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v72, v77, v76
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v154, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v72, 1.0, v72 :: v_dual_fmac_f32 v77, 0xbfb8aa3b, v121
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v81, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v79, v69
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v72, v72, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v74, v58, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v80, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v71, v71, v83, v73
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v81, v80, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v79, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v57, v66, v67, v58
	v_div_scale_f32 v76, null, v73, v73, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v69, v80
	v_div_scale_f32 v69, s27, v124, v72, v124
	v_div_fixup_f32 v57, v57, v68, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v74, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v82, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v67, v69, v80
	v_div_fixup_f32 v58, v71, v75, v131
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v81, v67, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v127, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v68, v68, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v67, v74, v80
	v_fma_f32 v75, -v76, v82, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v83, v77
	v_fma_f32 v69, -v81, v67, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v75, v82
	v_div_scale_f32 v74, s26, v123, v73, v123
	v_div_fmas_f32 v67, v69, v80, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v77, v83, 1.0
	v_div_fixup_f32 v67, v67, v72, v124
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v84, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v128, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v83, v65, v83
	v_mul_f32_e32 v81, v74, v82
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v126, v70
	v_mul_f32_e32 v70, v125, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v79, v79, v121
	v_fma_f32 v78, -v76, v81, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v84, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v66
	v_fmac_f32_e32 v81, v78, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, s27, v122, v68, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fma_f32 v74, -v76, v81, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v85, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v75, -v66, v71, 1.0
	v_div_fmas_f32 v74, v74, v82, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v103
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v63, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v73, v74, v73, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v85
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v105
	v_ldexp_f32 v62, v62, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v75, v71
	v_div_scale_f32 v75, s28, v121, v79, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v80, v75, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v82, s26, v103, v62, v103
	v_fma_f32 v72, -v66, v80, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v80, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v80, v75
	v_fma_f32 v75, -v77, v76, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v72, v72, v78
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_fmac_f32_e32 v76, v75, v83
	v_div_fmas_f32 v66, v66, v71, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	v_exp_f32_e32 v60, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v62, v62, v103
	v_fma_f32 v63, -v77, v76, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v63, v83, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v104
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v60, v60, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v80
	v_div_fixup_f32 v66, v66, v79, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v59
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v60, v63, v68, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v85, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v74, v74, v105
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v65, -v80, v78, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v107, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v78, v65, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v65, v120, v66 :: v_dual_mul_f32 v66, v115, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v71, v71, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v63, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v83, v82, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v114, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v68, v79, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v80, v83, v82
	v_fmac_f32_e32 v79, v84, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v84, null, v63, v63, v104
	v_fmac_f32_e32 v83, v67, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v72, v75, 1.0
	v_rcp_f32_e32 v67, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v76, v75
	v_div_scale_f32 v76, vcc_lo, v106, v71, v106
	v_mul_f32_e32 v81, v76, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v72, v81, v76
	v_fmac_f32_e32 v81, v77, v75
	v_div_scale_f32 v77, s27, v105, v74, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v72, -v72, v81, v76
	v_mul_f32_e32 v59, v77, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, s28
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v72, v72, v75, v81
	v_fma_f32 v75, -v80, v83, v82
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v80, -v68, v59, v77
	v_div_fixup_f32 v71, v72, v71, v106
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v75, v75, v78, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v84, v67, 1.0
	v_fmac_f32_e32 v59, v80, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v85, 0xbfb8aa3b, v97
	v_cndmask_b32_e64 v80, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v81, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v54, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, s26, v104, v63, v104
	v_fma_f32 v68, -v68, v59, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v81, 0xbfb8aa3b, v99
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v35, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fmas_f32 v59, v68, v79, v59
	v_fma_f32 v68, -v84, v77, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v59, v59, v74, v105
	v_fmac_f32_e32 v77, v68, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v79, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v84, v77, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v35, v67, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v79, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v35, v63, v104
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v68, v75, v62, v103
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v118, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_mul_f32 v68, v117, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v31, v31, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v63, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v116, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v78, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v82, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v76, v78, v76
	v_exp_f32_e32 v78, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v77, v82, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v76, 1.0, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v82, v75, v82
	v_div_scale_f32 v75, s27, v91, v31, v91
	v_div_scale_f32 v81, null, v76, v76, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v78, v78, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v78, 1.0, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v78, v78, v99
	v_div_scale_f32 v84, s26, v99, v78, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v81, v74, 1.0
	v_rcp_f32_e32 v80, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v74, v79, v74
	v_div_scale_f32 v79, vcc_lo, v97, v76, v97
	v_fma_f32 v67, -v54, v80, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v83, v79, v74
	v_fmac_f32_e32 v80, v67, v80
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v119, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v81, v83, v79
	v_mul_f32_e32 v59, v84, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v35, v74
	v_fma_f32 v35, -v54, v59, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v81, v83, v79
	v_div_fmas_f32 v71, v71, v74, v83
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v71, v71, v76, v97
	v_fmac_f32_e32 v59, v35, v80
	v_mul_f32_e32 v35, v75, v82
	v_fma_f32 v54, -v54, v59, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v74, -v77, v35, v75
	v_div_fmas_f32 v27, v54, v80, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, s28
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v74, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v63, v63, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v93
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v77, v35, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v25, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v27, v27, v78, v99
	v_div_fmas_f32 v6, v75, v82, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v79
	v_cndmask_b32_e64 v79, 0, 0x42800000, s26
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v95
	v_ldexp_f32 v54, v59, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v6, v31, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s26
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v96
	v_exp_f32_e32 v59, v80
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v81, -v26, v25, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v74
	v_exp_f32_e32 v54, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v31, v31, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v81, v25
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v59, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, vcc_lo, v98, v63, v98
	v_div_scale_f32 v79, null, v35, v35, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v54, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v81, v79
	v_mul_f32_e32 v80, v77, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v59, v59, v95
	v_fma_f32 v84, -v26, v80, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v85, null, v54, v54, v96
	v_rcp_f32_e32 v83, v75
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v74, v78, 1.0
	v_fma_f32 v86, -v79, v81, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v87, v85
	v_fmac_f32_e32 v80, v84, v25
	v_fmac_f32_e32 v78, v82, v78
	v_div_scale_f32 v82, s26, v93, v31, v93
	v_fmac_f32_e32 v81, v86, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v84, -v75, v83, 1.0
	v_div_scale_f32 v86, s27, v94, v35, v94
	v_fma_f32 v89, -v85, v87, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v88, v82, v78 :: v_dual_fmac_f32 v83, v84, v83
	v_div_scale_f32 v84, s28, v95, v59, v95
	v_fma_f32 v26, -v26, v80, v77
	v_dual_mul_f32 v90, v86, v81 :: v_dual_fmac_f32 v87, v89, v87
	v_div_scale_f32 v89, s29, v96, v54, v96
	v_fma_f32 v77, -v74, v88, v82
	v_mul_f32_e32 v91, v84, v83
	v_div_fmas_f32 v25, v26, v25, v80
	v_fma_f32 v26, -v79, v90, v86
	v_mul_f32_e32 v80, v89, v87
	v_fmac_f32_e32 v88, v77, v78
	v_fma_f32 v77, -v75, v91, v84
	v_div_fixup_f32 v25, v25, v63, v98
	v_fmac_f32_e32 v90, v26, v81
	v_fma_f32 v26, -v85, v80, v89
	v_fma_f32 v63, -v74, v88, v82
	v_fmac_f32_e32 v91, v77, v83
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v74, -v79, v90, v86
	v_fmac_f32_e32 v80, v26, v87
	v_div_fmas_f32 v63, v63, v78, v88
	v_fma_f32 v26, -v75, v91, v84
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v110, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v78, v74, v81, v90
	v_fma_f32 v74, -v85, v80, v89
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v109, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v83, v91
	s_mov_b32 vcc_lo, s29
	v_div_fixup_f32 v27, v63, v31, v93
	v_div_fmas_f32 v79, v74, v87, v80
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v113, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v26, v59, v95
	v_div_fixup_f32 v26, v78, v35, v94
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v101, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v6, v79, v54, v96
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v50|, |v43|, |v40|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v100, v25
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v29|, |v41|, |v39|
	v_max3_f32 v31, |v34|, |v23|, |v21|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v92, v6
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v6, |v38|, |v32|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v78, v108, v71 :: v_dual_mul_f32 v71, v102, v26
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v33|, |v30|, |v24|
	v_max_f32_e64 v35, |v47|, |v42|
	v_max3_f32 v63, |v37|, |v61|, |v51|
	v_max3_f32 v79, |v64|, |v53|, |v52|
	v_max3_f32 v80, |v44|, |v19|, |v18|
	v_max3_f32 v6, v6, |v28|, v25
	v_max3_f32 v25, v27, v31, |v22|
	v_max3_f32 v27, |v46|, |v45|, |v20|
	v_max3_f32 v31, v35, |v36|, v63
	v_max3_f32 v35, v79, v80, |v17|
	v_max_f32_e64 v63, |v56|, |v55|
	v_max3_f32 v79, |v49|, |v70|, |v69|
	v_max3_f32 v80, |v73|, |v66|, |v65|
	v_max3_f32 v81, |v60|, |v15|, |v13|
	v_max3_f32 v25, v6, v26, v25
	s_mov_b32 s26, 0x76543210
	v_max3_f32 v26, v31, v27, v35
	v_max3_f32 v6, |v58|, |v57|, |v16|
	v_max3_f32 v27, v63, |v48|, v79
	v_max3_f32 v31, v80, v81, |v14|
	v_max_f32_e64 v35, |v72|, |v68|
	v_max3_f32 v63, |v62|, |v78|, |v77|
	v_max3_f32 v79, |v76|, |v71|, |v59|
	v_max3_f32 v80, |v54|, |v0|, |v10|
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v81, v25, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, v27, v6, v31
	v_max3_f32 v35, v35, |v67|, v63
	v_max3_f32 v31, |v75|, |v74|, |v12|
	v_max3_f32 v63, v79, v80, |v11|
	v_max_f32_e32 v79, v81, v81
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v80, v26, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v81, v27, s26, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v85, 8, v129
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v35, v35, v31, v63
	v_max_f32_e32 v79, v25, v79
	v_dual_max_f32 v80, v80, v80 :: v_dual_and_b32 v25, 3, v129
	v_max_f32_e32 v81, v81, v81
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v63, 4, v129
	v_lshlrev_b32_e32 v31, 4, v129
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v82, v25, 9, 0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v80, v26, v80 :: v_dual_lshlrev_b32 v83, 5, v25
	v_max_f32_e32 v81, v27, v81
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v27, v35, s26, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v26, 0x60, v129
	v_lshl_add_u32 v82, v63, 2, v82
	v_and_or_b32 v84, 0x680, v31, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v27, v27, v27 :: v_dual_lshlrev_b32 v86, 1, v112
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v83, v83, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v87, v85, 4, v82
	v_lshrrev_b32_e32 v88, 3, v112
	v_xor_b32_e32 v84, v84, v26
	v_lshl_add_u32 v89, v63, 6, 0
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v35, v27
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v27, v87, v86, v83
.Ltmp25:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v35, 34, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v5, s27, s72, v5
.Ltmp26:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v83, v89, v88, v84
	ds_store_b128 v27, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp27:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s27
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[79:82], v83
.Ltmp29:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s26, s72, v35
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v84, null, s73, 0, s26
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[76:77], v[3:4]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 32, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[76:77], v[5:6]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v5, 30, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[74:75], v[83:84]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s31, s72, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s31
	v_add_co_u32 v5, s31, s72, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v6, null, s73, 0, s31
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[74:75], v[3:4]
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v27, v79
.Ltmp31:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[76:77], v[3:4]
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v3, v80
.Ltmp33:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[74:75], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[76:77], v[5:6]
.Ltmp34:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v27, v27 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v81
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v79, v79 :: v_dual_max_f32 v35, v80, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v27, v27, v27
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
	v_max_f32_e32 v79, v82, v82
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v6, v6, v27 :: v_dual_max_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v27, v35, v3
	v_dual_max_f32 v35, v81, v81 :: v_dual_max_f32 v80, v82, v82
.Ltmp40:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 28, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v81, v6 :: v_dual_mov_b32 v82, v27
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v35, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v35, v79, v80
.Ltmp43:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s36, s72, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s73, 0, s36
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v79, v5 :: v_dual_mov_b32 v80, v35
.Ltmp45:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[74:75], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[76:77], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v81, v81 :: v_dual_max_f32 v4, v82, v82
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v81, 26, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v6, v3 :: v_dual_max_f32 v4, v27, v4
	v_dual_max_f32 v6, v79, v79 :: v_dual_max_f32 v27, v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp50:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s38, s72, v81
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v81, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v5, v5, v6 :: v_dual_max_f32 v6, v35, v27
.Ltmp53:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[76:77], v[83:84]
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v82, v4
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v27, v5
	v_mov_b32_e32 v35, v6
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v83, 24, v9
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v84, v81, v81
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v27, v27 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s39, s72, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v86, v82, v82 :: v_dual_max_f32 v27, v27, v27
	v_max_f32_e32 v83, v35, v35
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v35, 4, v25
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v84
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v84, 1, v26
	v_lshlrev_b32_e32 v25, 3, v85
	v_add_nc_u32_e32 v85, 0, v112
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v27
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v27, 5, v63
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v86 :: v_dual_add_nc_u32 v63, 0, v35
	v_max_f32_e32 v6, v6, v83
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v83, v85, v84, v25
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v25, v63, v27, v25
	s_barrier
.Ltmp68:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v84, 22, v9
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v83, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v25
.Ltmp70:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v80, null, s73, 0, s38
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v25, 20, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s73, 0, s39
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v27, 18, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v83, s39, s72, v84
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[74:75], v[79:80]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s73, 0, s39
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[76:77], v[79:80]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s44, s72, v25
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[74:75], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[76:77], v[81:82]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v80, null, s73, 0, s44
	v_add_co_u32 v81, s44, s72, v27
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v3, v3, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v25, 16, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s73, 0, s44
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[74:75], v[79:80]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v27, 0x2b8cbccc, v3
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 14, v9
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[76:77], v[79:80]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s48, s72, v25
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v63, null, 0x40e00000, 0x40e00000, v27
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[74:75], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[76:77], v[81:82]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v80, null, s73, 0, s48
	v_add_co_u32 v81, s48, s72, v3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v3, v63
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v25, 12, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s73, 0, s48
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[76:77], v[83:84]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v83, s48, s72, v25
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v25, 10, v9
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v84, null, s73, 0, s48
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[74:75], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[76:77], v[81:82]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v5, v5, v5
	v_fma_f32 v81, -v63, v3, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[74:75], v[79:80]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[76:77], v[79:80]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v79, s54, s72, v25
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v25, 8, v9
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[74:75], v[83:84]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[76:77], v[83:84]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v5, 0x2b8cbccc, v5
	v_fmac_f32_e32 v3, v81, v3
	v_div_scale_f32 v83, vcc_lo, v27, 0x40e00000, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v80, null, s73, 0, s54
	v_add_co_u32 v81, s54, s72, v25
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v5
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s73, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v25, v83, v3 :: v_dual_max_f32 v4, v4, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[74:75], v[79:80]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v85, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[76:77], v[79:80]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[74:75], v[81:82]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v79, -v63, v25, v83
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[76:77], v[81:82]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v81, 0x2b8cbccc, v4
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v80, 6, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v25, v79, v3
	v_div_scale_f32 v82, s60, v5, 0x40e00000, v5
	v_max_f32_e32 v79, 0x2b8cbccc, v6
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v81
	v_fma_f32 v4, -v84, v85, 1.0
	v_fma_f32 v63, -v63, v25, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v79
	v_rcp_f32_e32 v83, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v4, v85
	v_div_fmas_f32 v25, v63, v3, v25
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s58, s72, v80
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v87, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v63, v82, v85
	v_div_fixup_f32 v25, v25, 0x40e00000, v27
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v88.h, 0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s73, 0, s58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v80, -v6, v83, 1.0
	v_fma_f32 v27, -v84, v63, v82
	s_mov_b32 vcc_lo, s60
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[74:75], v[3:4]
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v90, -v86, v87, 1.0
	v_fmac_f32_e32 v83, v80, v83
	v_div_scale_f32 v80, s61, v81, 0x40e00000, v81
	v_fmac_f32_e32 v63, v27, v85
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v27.l, v25.h
	v_mov_b16_e32 v27.h, v88.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v89, v80, v83
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[76:77], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v84, v63, v82
	v_fmac_f32_e32 v87, v90, v87
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v27
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v27, -v6, v89, v80
	v_div_scale_f32 v82, s62, v79, 0x40e00000, v79
	v_div_fmas_f32 v3, v3, v85, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v25, v25, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v89, v27, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v27, v82, v87
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v3, v3, 0x40e00000, v5
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v25
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v5, -v6, v89, v80
	v_fma_f32 v6, -v86, v27, v82
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 4, v9
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v88.l, v3.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, null, v84, v84, v28
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v63, v5, v83, v89
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v84, v84, v38
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v27, v6, v87
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v5, s60, s72, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v85, v83
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v4, -v86, v27, v82
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v84, v84, v32
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v80, v63, 0x40e00000, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v91, null, v84, v84, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v4, v4, v87, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v63, -v83, v85, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v27, 1, v88
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v87, vcc_lo, v38, v84, v38
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v79
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v79.l, v80.h
	v_mov_b16_e32 v79.h, v88.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v63, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v3, v27, 0x7fff
	v_mov_b16_e32 v88.l, v4.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v6, null, s73, 0, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v27, 1, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v89, v87, v85
	v_fma_f32 v79, -v82, v86, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v81, 1, v88
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v88, v90
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v27, v80, v27, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v83, v89, v87
	v_fmac_f32_e32 v86, v79, v86
	v_div_scale_f32 v92, s60, v32, v84, v32
	v_rcp_f32_e32 v93, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v80, v85
	v_div_scale_f32 v97, null, v84, v84, v41
	v_mul_f32_e32 v94, v92, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v90, v88, 1.0
	v_fma_f32 v83, -v83, v89, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v4, v81, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v81, 0xffff0000, v27
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v87, -v82, v94, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v91, v93, 1.0
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s61, v28, v84, v28
	v_dual_fmac_f32 v94, v87, v86 :: v_dual_fmac_f32 v93, v96, v93
	v_rcp_f32_e32 v87, v97
	v_div_scale_f32 v96, null, v84, v84, v39
	v_div_fmas_f32 v83, v83, v85, v89
	v_mul_f32_e32 v85, v95, v88
	v_div_scale_f32 v89, s62, v29, v84, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v98, v96
	v_div_fixup_f32 v38, v83, v84, v38
	v_fma_f32 v82, -v82, v94, v92
	v_fma_f32 v83, -v90, v85, v95
	v_mul_f32_e32 v92, v89, v93
	v_fma_f32 v99, -v97, v87, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v86, v94
	v_fmac_f32_e32 v85, v83, v88
	v_fma_f32 v83, -v91, v92, v89
	v_fmac_f32_e32 v87, v99, v87
	v_div_scale_f32 v86, s60, v41, v84, v41
	v_fma_f32 v94, -v96, v98, 1.0
	v_div_fixup_f32 v32, v82, v84, v32
	v_fma_f32 v82, -v90, v85, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v92, v83, v93 :: v_dual_mul_f32 v83, v86, v87
	v_fmac_f32_e32 v98, v94, v98
	v_div_scale_f32 v94, null, v84, v84, v33
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v90, s63, v39, v84, v39
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v91, v92, v89
	v_fma_f32 v88, -v97, v83, v86
	v_rcp_f32_e32 v89, v94
	v_div_scale_f32 v95, null, v84, v84, v30
	v_mul_f32_e32 v91, v90, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v88, v87
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v88, v95
	v_div_fmas_f32 v85, v85, v93, v92
	v_fma_f32 v92, -v96, v91, v90
	v_div_fixup_f32 v28, v82, v84, v28
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v94, v89, 1.0
	v_fma_f32 v82, -v97, v83, v86
	v_div_fixup_f32 v29, v85, v84, v29
	v_fmac_f32_e32 v91, v92, v98
	v_div_scale_f32 v85, s61, v33, v84, v33
	v_fmac_f32_e32 v89, v93, v89
	v_fma_f32 v86, -v95, v88, 1.0
	v_div_scale_f32 v92, null, v84, v84, v24
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v93, null, v84, v84, v50
	v_div_fmas_f32 v82, v82, v87, v83
	v_fma_f32 v83, -v96, v91, v90
	v_dual_mul_f32 v87, v85, v89 :: v_dual_fmac_f32 v88, v86, v88
	v_rcp_f32_e32 v86, v92
	v_div_scale_f32 v90, s60, v30, v84, v30
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v41, v82, v84, v41
	v_div_fmas_f32 v83, v83, v98, v91
	v_fma_f32 v91, -v94, v87, v85
	v_mul_f32_e32 v96, v90, v88
	v_rcp_f32_e32 v98, v93
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v92, v86, 1.0
	v_fmac_f32_e32 v87, v91, v89
	v_fma_f32 v82, -v95, v96, v90
	v_div_scale_f32 v91, null, v84, v84, v43
	v_div_fixup_f32 v39, v83, v84, v39
	v_fmac_f32_e32 v86, v97, v86
	v_div_scale_f32 v83, s62, v24, v84, v24
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v93, v98, 1.0
	v_fma_f32 v85, -v94, v87, v85
	v_fmac_f32_e32 v96, v82, v88
	v_rcp_f32_e32 v94, v91
	v_mul_f32_e32 v82, v83, v86
	v_fmac_f32_e32 v98, v97, v98
	v_div_scale_f32 v97, s63, v50, v84, v50
	v_div_fmas_f32 v85, v85, v89, v87
	v_fma_f32 v87, -v95, v96, v90
	v_div_scale_f32 v99, null, v84, v84, v40
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v89, -v92, v82, v83
	v_mul_f32_e32 v90, v97, v98
	v_fma_f32 v95, -v91, v94, 1.0
	v_div_fmas_f32 v87, v87, v88, v96
	v_rcp_f32_e32 v88, v99
	v_fmac_f32_e32 v82, v89, v86
	v_fma_f32 v89, -v93, v90, v97
	v_fmac_f32_e32 v94, v95, v94
	v_div_scale_f32 v95, s60, v43, v84, v43
	v_div_fixup_f32 v33, v85, v84, v33
	v_div_fixup_f32 v30, v87, v84, v30
	v_fma_f32 v83, -v92, v82, v83
	v_fmac_f32_e32 v90, v89, v98
	v_mul_f32_e32 v85, v95, v94
	v_fma_f32 v87, -v99, v88, 1.0
	v_div_scale_f32 v89, null, v84, v84, v34
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, s61, v40, v84, v40
	v_div_fmas_f32 v82, v83, v86, v82
	v_fma_f32 v83, -v93, v90, v97
	v_fma_f32 v86, -v91, v85, v95
	v_fmac_f32_e32 v88, v87, v88
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v93, null, v84, v84, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v86, v94
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v24, v82, v84, v24
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v83, v83, v98, v90
	v_mul_f32_e32 v90, v92, v88
	v_fma_f32 v82, -v91, v85, v95
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v89, v87, 1.0
	v_div_scale_f32 v91, s62, v34, v84, v34
	v_div_fixup_f32 v50, v83, v84, v50
	v_fma_f32 v83, -v99, v90, v92
	v_fmac_f32_e32 v87, v96, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v86, 1.0
	v_div_scale_f32 v96, null, v84, v84, v21
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v90, v83, v88
	v_div_fmas_f32 v82, v82, v94, v85
	v_mul_f32_e32 v83, v91, v87
	v_fmac_f32_e32 v86, v95, v86
	v_rcp_f32_e32 v85, v96
	v_div_scale_f32 v94, s60, v23, v84, v23
	v_div_scale_f32 v95, null, v84, v84, v22
	v_div_fixup_f32 v43, v82, v84, v43
	v_fma_f32 v82, -v99, v90, v92
	v_fma_f32 v92, -v89, v83, v91
	v_mul_f32_e32 v97, v94, v86
	v_rcp_f32_e32 v98, v95
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v99, -v96, v85, 1.0
	v_div_fmas_f32 v82, v82, v88, v90
	v_fmac_f32_e32 v83, v92, v87
	v_fma_f32 v88, -v93, v97, v94
	v_div_scale_f32 v90, s61, v21, v84, v21
	v_fmac_f32_e32 v85, v99, v85
	v_div_fixup_f32 v40, v82, v84, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v95, v98, 1.0
	v_fma_f32 v82, -v89, v83, v91
	v_fmac_f32_e32 v97, v88, v86
	v_div_scale_f32 v91, null, v81, v81, v47
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v88, v90, v85
	v_fmac_f32_e32 v98, v92, v98
	v_div_scale_f32 v89, s63, v22, v84, v22
	v_div_fmas_f32 v82, v82, v87, v83
	v_fma_f32 v83, -v93, v97, v94
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v94, null, v81, v81, v42
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v87, -v96, v88, v90
	v_mul_f32_e32 v93, v89, v98
	v_div_fmas_f32 v83, v83, v86, v97
	v_rcp_f32_e32 v86, v94
	v_div_fixup_f32 v34, v82, v84, v34
	v_fmac_f32_e32 v88, v87, v85
	v_fma_f32 v87, -v95, v93, v89
	v_fma_f32 v97, -v91, v92, 1.0
	v_div_fixup_f32 v23, v83, v84, v23
	v_div_scale_f32 v83, s60, v47, v81, v47
	v_fma_f32 v82, -v96, v88, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v93, v87, v98 :: v_dual_fmac_f32 v92, v97, v92
	v_fma_f32 v87, -v94, v86, 1.0
	v_div_scale_f32 v90, null, v81, v81, v36
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v85, v88
	v_fma_f32 v85, -v95, v93, v89
	v_mul_f32_e32 v88, v83, v92
	v_fmac_f32_e32 v86, v87, v86
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v89, s61, v42, v81, v42
	v_div_scale_f32 v95, null, v81, v81, v37
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v96, v89, v86
	v_div_fmas_f32 v85, v85, v98, v93
	v_fma_f32 v93, -v91, v88, v83
	v_rcp_f32_e32 v98, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v90, v87, 1.0
	v_div_fixup_f32 v21, v82, v84, v21
	v_fma_f32 v82, -v94, v96, v89
	v_fmac_f32_e32 v88, v93, v92
	v_div_fixup_f32 v22, v85, v84, v22
	v_fmac_f32_e32 v87, v97, v87
	v_div_scale_f32 v84, s62, v36, v81, v36
	v_div_scale_f32 v85, null, v81, v81, v61
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v95, v98, 1.0
	v_fma_f32 v83, -v91, v88, v83
	v_fmac_f32_e32 v96, v82, v86
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v82, v84, v87
	v_rcp_f32_e32 v91, v85
	v_fmac_f32_e32 v98, v93, v98
	v_div_scale_f32 v93, s63, v37, v81, v37
	v_div_fmas_f32 v83, v83, v92, v88
	v_fma_f32 v88, -v94, v96, v89
	v_div_scale_f32 v97, null, v81, v81, v51
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v89, -v90, v82, v84
	v_mul_f32_e32 v92, v93, v98
	v_div_fmas_f32 v86, v88, v86, v96
	v_rcp_f32_e32 v88, v97
	v_fma_f32 v94, -v85, v91, 1.0
	v_fmac_f32_e32 v82, v89, v87
	v_fma_f32 v89, -v95, v92, v93
	v_div_fixup_f32 v42, v86, v81, v42
	v_div_fixup_f32 v47, v83, v81, v47
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s60, v61, v81, v61
	v_fmac_f32_e32 v92, v89, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v97, v88, 1.0
	v_div_scale_f32 v89, null, v81, v81, v46
	v_fma_f32 v83, -v90, v82, v84
	v_mul_f32_e32 v84, v94, v91
	v_fmac_f32_e32 v88, v86, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v90, s61, v51, v81, v51
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v95, v92, v93
	v_fma_f32 v87, -v85, v84, v94
	v_div_scale_f32 v93, null, v81, v81, v45
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v89, v86, 1.0
	v_fmac_f32_e32 v84, v87, v91
	v_rcp_f32_e32 v87, v93
	v_div_fmas_f32 v83, v83, v98, v92
	v_mul_f32_e32 v92, v90, v88
	v_div_fixup_f32 v36, v82, v81, v36
	v_fma_f32 v82, -v85, v84, v94
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v95, null, v81, v81, v20
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v37, v83, v81, v37
	v_fma_f32 v83, -v97, v92, v90
	v_div_scale_f32 v85, s62, v46, v81, v46
	v_fma_f32 v94, -v93, v87, 1.0
	v_div_fmas_f32 v82, v82, v91, v84
	v_rcp_f32_e32 v84, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v83, v88 :: v_dual_mul_f32 v83, v85, v86
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v91, s60, v45, v81, v45
	v_div_scale_f32 v94, null, v81, v81, v64
	v_div_fixup_f32 v61, v82, v81, v61
	v_fma_f32 v82, -v97, v92, v90
	v_fma_f32 v90, -v89, v83, v85
	v_mul_f32_e32 v96, v91, v87
	v_rcp_f32_e32 v97, v94
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v83, v90, v86
	v_div_fmas_f32 v82, v82, v88, v92
	v_fma_f32 v88, -v93, v96, v91
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s61, v20, v81, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v51, v82, v81, v51
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v82, -v89, v83, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v96, v88, v87 :: v_dual_mul_f32 v85, v90, v84
	v_div_scale_f32 v89, null, v81, v81, v53
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v88, s63, v64, v81, v64
	v_div_fmas_f32 v82, v82, v86, v83
	v_fma_f32 v83, -v93, v96, v91
	v_fma_f32 v86, -v95, v85, v90
	v_rcp_f32_e32 v91, v89
	v_div_scale_f32 v93, null, v81, v81, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v92, v88, v97 :: v_dual_fmac_f32 v85, v86, v84
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v83, v83, v87, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v94, v92, v88
	v_div_fixup_f32 v46, v82, v81, v46
	v_fma_f32 v96, -v89, v91, 1.0
	v_fma_f32 v82, -v95, v85, v90
	v_div_fixup_f32 v45, v83, v81, v45
	v_fmac_f32_e32 v92, v87, v97
	v_div_scale_f32 v83, s60, v53, v81, v53
	v_fmac_f32_e32 v91, v96, v91
	v_fma_f32 v87, -v93, v86, 1.0
	v_div_scale_f32 v90, null, v81, v81, v44
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v98, null, v81, v81, v17
	v_div_fmas_f32 v82, v82, v84, v85
	v_fma_f32 v84, -v94, v92, v88
	v_mul_f32_e32 v85, v83, v91
	v_fmac_f32_e32 v86, v87, v86
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v88, s61, v52, v81, v52
	v_div_scale_f32 v94, null, v81, v81, v19
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v95, v88, v86
	v_div_fmas_f32 v84, v84, v97, v92
	v_fma_f32 v92, -v89, v85, v83
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v90, v87, 1.0
	v_div_fixup_f32 v20, v82, v81, v20
	v_fma_f32 v82, -v93, v95, v88
	v_fmac_f32_e32 v85, v92, v91
	v_div_fixup_f32 v64, v84, v81, v64
	v_fmac_f32_e32 v87, v96, v87
	v_div_scale_f32 v84, s62, v44, v81, v44
	v_div_scale_f32 v92, null, v81, v81, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v83, -v89, v85, v83
	v_fmac_f32_e32 v95, v82, v86
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v82, v84, v87
	v_rcp_f32_e32 v89, v92
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s63, v19, v81, v19
	v_div_fmas_f32 v83, v83, v91, v85
	v_fma_f32 v85, -v93, v95, v88
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v88, -v90, v82, v84
	v_mul_f32_e32 v91, v96, v97
	v_div_fixup_f32 v53, v83, v81, v53
	v_div_fmas_f32 v85, v85, v86, v95
	v_rcp_f32_e32 v86, v98
	v_fma_f32 v93, -v92, v89, 1.0
	v_fmac_f32_e32 v82, v88, v87
	v_fma_f32 v88, -v94, v91, v96
	v_div_fixup_f32 v52, v85, v81, v52
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s60, v18, v81, v18
	v_fmac_f32_e32 v91, v88, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v98, v86, 1.0
	v_div_scale_f32 v88, null, v80, v80, v56
	v_fma_f32 v83, -v90, v82, v84
	v_mul_f32_e32 v84, v93, v89
	v_fmac_f32_e32 v86, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v90, s61, v17, v81, v17
	v_div_fmas_f32 v82, v83, v87, v82
	v_fma_f32 v83, -v94, v91, v96
	v_fma_f32 v87, -v92, v84, v93
	v_div_scale_f32 v94, null, v80, v80, v55
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v44, v82, v81, v44
	v_fmac_f32_e32 v84, v87, v89
	v_rcp_f32_e32 v87, v94
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fmas_f32 v83, v83, v97, v91
	v_mul_f32_e32 v91, v90, v86
	v_fma_f32 v82, -v92, v84, v93
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v80, v80, v48
	v_div_fixup_f32 v19, v83, v81, v19
	v_fma_f32 v83, -v98, v91, v90
	v_div_scale_f32 v92, s62, v56, v80, v56
	v_fma_f32 v93, -v94, v87, 1.0
	v_div_fmas_f32 v82, v82, v89, v84
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v91, v83, v86
	v_mul_f32_e32 v83, v92, v85
	v_fmac_f32_e32 v87, v93, v87
	v_div_scale_f32 v89, s60, v55, v80, v55
	v_div_scale_f32 v93, null, v80, v80, v49
	v_div_fixup_f32 v18, v82, v81, v18
	v_fma_f32 v82, -v98, v91, v90
	v_fma_f32 v90, -v88, v83, v92
	v_mul_f32_e32 v96, v89, v87
	v_rcp_f32_e32 v97, v93
	v_fma_f32 v98, -v95, v84, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v83, v90, v85
	v_div_fmas_f32 v82, v82, v86, v91
	v_fma_f32 v86, -v94, v96, v89
	v_fmac_f32_e32 v84, v98, v84
	v_div_scale_f32 v90, s61, v48, v80, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v17, v82, v81, v17
	v_fma_f32 v91, -v93, v97, 1.0
	v_fma_f32 v81, -v88, v83, v92
	v_fmac_f32_e32 v96, v86, v87
	v_mul_f32_e32 v82, v90, v84
	v_div_scale_f32 v88, null, v80, v80, v70
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v86, s63, v49, v80, v49
	v_div_fmas_f32 v81, v81, v85, v83
	v_fma_f32 v83, -v94, v96, v89
	v_fma_f32 v85, -v95, v82, v90
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v92, null, v80, v80, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v86, v97 :: v_dual_fmac_f32 v82, v85, v84
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v83, v83, v87, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v87, -v93, v91, v86
	v_div_fixup_f32 v56, v81, v80, v56
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v81, -v95, v82, v90
	v_div_fixup_f32 v55, v83, v80, v55
	v_fmac_f32_e32 v91, v87, v97
	v_div_scale_f32 v83, s60, v70, v80, v70
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v87, -v92, v85, 1.0
	v_div_scale_f32 v90, null, v80, v80, v58
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v93, v91, v86
	v_mul_f32_e32 v84, v83, v89
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v86, v90
	v_div_scale_f32 v87, s61, v69, v80, v69
	v_div_scale_f32 v93, null, v80, v80, v57
	s_mov_b32 vcc_lo, s63
	v_dual_mul_f32 v94, v87, v85 :: v_dual_and_b32 v79, 0xffff0000, v4
	v_div_fmas_f32 v82, v82, v97, v91
	v_fma_f32 v91, -v88, v84, v83
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v86, 1.0
	v_div_fixup_f32 v48, v81, v80, v48
	v_fma_f32 v81, -v92, v94, v87
	v_fmac_f32_e32 v84, v91, v89
	v_div_scale_f32 v91, null, v80, v80, v16
	v_div_fixup_f32 v49, v82, v80, v49
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v82, s62, v58, v80, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v83, -v88, v84, v83
	v_fmac_f32_e32 v94, v81, v85
	v_rcp_f32_e32 v88, v91
	s_mov_b32 vcc_lo, s60
	v_dual_mul_f32 v81, v82, v86 :: v_dual_fmac_f32 v96, v95, v96
	v_div_scale_f32 v95, s63, v57, v80, v57
	v_div_fmas_f32 v83, v83, v89, v84
	v_fma_f32 v84, -v92, v94, v87
	v_div_scale_f32 v97, null, v80, v80, v73
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v87, -v90, v81, v82
	v_mul_f32_e32 v89, v95, v96
	v_fma_f32 v92, -v91, v88, 1.0
	v_div_fmas_f32 v84, v84, v85, v94
	v_rcp_f32_e32 v85, v97
	v_fmac_f32_e32 v81, v87, v86
	v_fma_f32 v87, -v93, v89, v95
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s60, v16, v80, v16
	v_div_fixup_f32 v70, v83, v80, v70
	v_div_fixup_f32 v69, v84, v80, v69
	v_fma_f32 v82, -v90, v81, v82
	v_fmac_f32_e32 v89, v87, v96
	v_mul_f32_e32 v83, v92, v88
	v_fma_f32 v84, -v97, v85, 1.0
	v_div_scale_f32 v87, null, v80, v80, v66
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v90, s61, v73, v80, v73
	v_div_fmas_f32 v81, v82, v86, v81
	v_fma_f32 v82, -v93, v89, v95
	v_fma_f32 v86, -v91, v83, v92
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v93, null, v80, v80, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v86, v88
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v58, v81, v80, v58
	v_rcp_f32_e32 v86, v93
	v_div_fmas_f32 v82, v82, v96, v89
	v_mul_f32_e32 v89, v90, v85
	v_fma_f32 v81, -v91, v83, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v57, v82, v80, v57
	v_fma_f32 v82, -v97, v89, v90
	v_div_scale_f32 v91, s62, v66, v80, v66
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v92, -v93, v86, 1.0
	v_div_scale_f32 v94, null, v80, v80, v60
	v_div_fmas_f32 v81, v81, v88, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v89, v82, v85 :: v_dual_fmac_f32 v86, v92, v86
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v92, null, v80, v80, v15
	v_mul_f32_e32 v82, v91, v84
	v_div_scale_f32 v88, s60, v65, v80, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v92
	v_div_fixup_f32 v16, v81, v80, v16
	v_fma_f32 v81, -v97, v89, v90
	v_fma_f32 v90, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v86
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v89
	v_fmac_f32_e32 v82, v90, v84
	v_fma_f32 v85, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s61, v60, v80, v60
	v_fma_f32 v90, -v92, v96, 1.0
	v_div_fixup_f32 v73, v81, v80, v73
	v_fma_f32 v81, -v87, v82, v91
	v_fmac_f32_e32 v95, v85, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v85, v89, v83 :: v_dual_fmac_f32 v96, v90, v96
	v_div_scale_f32 v90, null, v80, v80, v13
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v87, s63, v15, v80, v15
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v85, v89
	v_rcp_f32_e32 v88, v90
	v_div_scale_f32 v93, null, v80, v80, v14
	v_mul_f32_e32 v91, v87, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v84, v83
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v84, v93
	v_div_fmas_f32 v82, v82, v86, v95
	v_fma_f32 v86, -v92, v91, v87
	v_div_fixup_f32 v66, v81, v80, v66
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v90, v88, 1.0
	v_fma_f32 v81, -v94, v85, v89
	v_div_fixup_f32 v65, v82, v80, v65
	v_fmac_f32_e32 v91, v86, v96
	v_div_scale_f32 v82, s60, v13, v80, v13
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v86, -v93, v84, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v94, null, v79, v79, v68
	v_div_fmas_f32 v81, v81, v83, v85
	v_fma_f32 v83, -v92, v91, v87
	v_mul_f32_e32 v85, v82, v88
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, null, v79, v79, v72
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v87, s61, v14, v80, v14
	v_div_fmas_f32 v83, v83, v96, v91
	v_rcp_f32_e32 v89, v86
	v_fma_f32 v91, -v90, v85, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v92, v87, v84
	v_div_fixup_f32 v60, v81, v80, v60
	v_div_fixup_f32 v15, v83, v80, v15
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v85, v91, v88
	v_fma_f32 v81, -v93, v92, v87
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v96, null, v79, v79, v62
	v_fma_f32 v91, -v86, v89, 1.0
	v_fma_f32 v82, -v90, v85, v82
	v_div_scale_f32 v90, null, v79, v79, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v81, v84 :: v_dual_fmac_f32 v89, v91, v89
	v_div_scale_f32 v81, s62, v72, v79, v72
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v95, -v94, v83, 1.0
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v85, -v93, v92, v87
	v_mul_f32_e32 v87, v81, v89
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v88, s60, v68, v79, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v86, v87, v81
	v_fma_f32 v93, -v90, v91, 1.0
	v_rcp_f32_e32 v98, v96
	v_div_fmas_f32 v84, v85, v84, v92
	v_mul_f32_e32 v97, v88, v83
	v_fmac_f32_e32 v87, v95, v89
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s63, v67, v79, v67
	v_div_fixup_f32 v13, v82, v80, v13
	v_div_fixup_f32 v14, v84, v80, v14
	v_fma_f32 v80, -v86, v87, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v92, v93, v91
	v_div_scale_f32 v84, null, v79, v79, v78
	v_fma_f32 v85, -v94, v97, v88
	v_fma_f32 v82, -v96, v98, 1.0
	v_fma_f32 v81, -v90, v92, v93
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v97, v85, v83 :: v_dual_fmac_f32 v98, v82, v98
	v_fmac_f32_e32 v92, v81, v91
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v82, s61, v62, v79, v62
	v_div_fmas_f32 v80, v80, v89, v87
	v_fma_f32 v85, -v94, v97, v88
	v_div_scale_f32 v87, null, v79, v79, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v86, v82, v98
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v72, v80, v79, v72
	v_fma_f32 v88, -v84, v81, 1.0
	v_div_fmas_f32 v83, v85, v83, v97
	v_fma_f32 v85, -v90, v92, v93
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v96, v86, v82
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v88, s60, v78, v79, v78
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v86, v90, v98
	v_div_fmas_f32 v85, v85, v91, v92
	v_mul_f32_e32 v80, v88, v81
	v_div_fixup_f32 v68, v83, v79, v68
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v87, v89, 1.0
	v_fma_f32 v82, -v96, v86, v82
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v90, -v84, v80, v88
	v_div_fixup_f32 v67, v85, v79, v67
	v_div_scale_f32 v85, null, v79, v79, v75
	v_fmac_f32_e32 v89, v83, v89
	v_div_scale_f32 v83, s62, v77, v79, v77
	v_div_fmas_f32 v82, v82, v98, v86
	v_fmac_f32_e32 v80, v90, v81
	v_rcp_f32_e32 v91, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v83, v89
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v62, v82, v79, v62
	v_fma_f32 v82, -v84, v80, v88
	v_div_scale_f32 v90, null, v79, v79, v74
	v_fma_f32 v84, -v87, v86, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v82, v81, v80
	v_div_scale_f32 v81, null, v79, v79, v12
	v_fma_f32 v88, -v85, v91, 1.0
	v_rcp_f32_e32 v92, v90
	v_fmac_f32_e32 v86, v84, v89
	v_rcp_f32_e32 v84, v81
	v_div_scale_f32 v82, s60, v75, v79, v75
	v_fmac_f32_e32 v91, v88, v91
	v_div_scale_f32 v88, null, v79, v79, v76
	v_div_fixup_f32 v78, v80, v79, v78
	v_fma_f32 v83, -v87, v86, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v90, v92, 1.0
	v_rcp_f32_e32 v94, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v81, v84, 1.0
	v_mul_f32_e32 v87, v82, v91
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v92, v80, v92
	v_div_scale_f32 v80, s61, v74, v79, v74
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, null, v79, v79, v71
	v_div_fmas_f32 v83, v83, v89, v86
	v_fma_f32 v86, -v85, v87, v82
	v_mul_f32_e32 v89, v80, v92
	v_div_scale_f32 v95, s62, v12, v79, v12
	v_fma_f32 v96, -v88, v94, 1.0
	v_rcp_f32_e32 v97, v93
	v_fmac_f32_e32 v87, v86, v91
	v_fma_f32 v86, -v90, v89, v80
	v_mul_f32_e32 v98, v95, v84
	v_fmac_f32_e32 v94, v96, v94
	v_div_scale_f32 v96, s63, v76, v79, v76
	v_div_fixup_f32 v77, v83, v79, v77
	v_fma_f32 v82, -v85, v87, v82
	v_fmac_f32_e32 v89, v86, v92
	v_fma_f32 v83, -v81, v98, v95
	v_mul_f32_e32 v85, v96, v94
	v_fma_f32 v86, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v80, -v90, v89, v80
	v_fmac_f32_e32 v98, v83, v84
	v_fma_f32 v83, -v88, v85, v96
	v_fmac_f32_e32 v97, v86, v97
	v_div_scale_f32 v86, s60, v71, v79, v71
	v_div_fmas_f32 v82, v82, v91, v87
	v_div_scale_f32 v87, null, v79, v79, v59
	v_fma_f32 v81, -v81, v98, v95
	v_fmac_f32_e32 v85, v83, v94
	v_mul_f32_e32 v83, v86, v97
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v75, v82, v79, v75
	v_div_fmas_f32 v80, v80, v92, v89
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v89, v87
	v_div_fmas_f32 v81, v81, v84, v98
	v_fma_f32 v84, -v88, v85, v96
	v_fma_f32 v88, -v93, v83, v86
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v74, v80, v79, v74
	v_div_fixup_f32 v12, v81, v79, v12
	v_div_fmas_f32 v84, v84, v94, v85
	v_fmac_f32_e32 v83, v88, v97
	v_div_scale_f32 v81, null, v79, v79, v54
	v_fma_f32 v82, -v87, v89, 1.0
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v80, -v93, v83, v86
	v_div_fixup_f32 v76, v84, v79, v76
	v_div_scale_f32 v84, null, v79, v79, v10
	v_fmac_f32_e32 v89, v82, v89
	v_div_scale_f32 v82, null, v79, v79, v0
	v_div_fmas_f32 v80, v80, v97, v83
	v_rcp_f32_e32 v83, v81
	v_rcp_f32_e32 v88, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v86, v82
	v_div_scale_f32 v91, null, v79, v79, v11
	v_div_scale_f32 v85, vcc_lo, v59, v79, v59
	v_div_fixup_f32 v71, v80, v79, v71
	v_rcp_f32_e32 v93, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v81, v83, 1.0
	v_mul_f32_e32 v90, v85, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v82, v86, 1.0
	v_fma_f32 v95, -v84, v88, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v80, v83
	v_div_scale_f32 v80, s60, v54, v79, v54
	v_fma_f32 v94, -v87, v90, v85
	v_fmac_f32_e32 v86, v92, v86
	v_div_scale_f32 v92, s61, v0, v79, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v96, v80, v83
	v_fmac_f32_e32 v88, v95, v88
	v_div_scale_f32 v95, s62, v10, v79, v10
	v_fma_f32 v97, -v91, v93, 1.0
	v_fmac_f32_e32 v90, v94, v89
	v_mul_f32_e32 v98, v92, v86
	v_fma_f32 v94, -v81, v96, v80
	v_mul_f32_e32 v99, v95, v88
	v_fmac_f32_e32 v93, v97, v93
	v_div_scale_f32 v97, s63, v11, v79, v11
	v_fma_f32 v85, -v87, v90, v85
	v_fma_f32 v87, -v82, v98, v92
	v_fmac_f32_e32 v96, v94, v83
	v_fma_f32 v94, -v84, v99, v95
	v_mul_f32_e32 v100, v97, v93
	v_div_fmas_f32 v85, v85, v89, v90
	v_fmac_f32_e32 v98, v87, v86
	v_fma_f32 v80, -v81, v96, v80
	v_fmac_f32_e32 v99, v94, v88
	v_fma_f32 v81, -v91, v100, v97
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v82, -v82, v98, v92
	s_mov_b32 s60, 0xc1000000
	v_div_fmas_f32 v80, v80, v83, v96
	v_fmac_f32_e32 v100, v81, v93
	v_fma_f32 v81, -v84, v99, v95
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v19, v19, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v86, v98
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v83, -v91, v100, v97
	v_div_fmas_f32 v81, v81, v88, v99
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v76, v76
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v32, v32, s60, 0x40e00000
	v_med3_f32 v24, v24, s60, 0x40e00000
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v77, v77, s60, 0x40e00000
	v_cvt_i32_f32_e32 v88, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v0, v82, v79, v0
	v_div_fmas_f32 v83, v83, v93, v100
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v103, v77
	v_and_b32_e32 v77, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v88, 16, v129
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v54, v80, v79, v54
	v_div_fixup_f32 v10, v81, v79, v10
	v_div_fixup_f32 v11, v83, v79, v11
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v86, v52
	v_cvt_i32_f32_e32 v99, v14
	v_cvt_i32_f32_e32 v106, v76
	v_and_b32_e32 v14, 15, v32
	v_and_b32_e32 v52, 15, v24
	v_and_b32_e32 v76, 15, v23
	v_and_b32_e32 v84, 15, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v22, 13, v129
	v_and_b32_e32 v23, 0x2f0, v31
	v_lshlrev_b32_e32 v24, 8, v88
	v_and_b32_e32 v32, 64, v129
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v78, v78
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	v_med3_f32 v0, v0, s60, 0x40e00000
	v_cvt_i32_f32_e32 v87, v44
	v_and_b32_e32 v44, 15, v33
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v33, 3, v112
	v_and_or_b32 v22, 0xe000, v22, v24
	v_xor_b32_e32 v23, v23, v32
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v74, v74
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v30, v30, s60, 0x40e00000
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v78, v78, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v59, v85, v79, v59
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v79, v40
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v82, v45
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v90, v56
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v95, v16
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v100, v72
	v_cvt_i32_f32_e32 v105, v12
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v22, v22, v33, v23
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v102, v78
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v108, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v58, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v85, v53
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v92, v49
	v_cvt_i32_f32_e32 v101, v68
	v_cvt_i32_f32_e32 v109, v10
	v_cvt_i32_f32_e32 v110, v11
	v_and_b32_e32 v10, 15, v38
	v_and_b32_e32 v68, 15, v79
	v_and_b32_e32 v11, 15, v47
	v_and_b32_e32 v49, 15, v82
	v_and_b32_e32 v53, 15, v20
	v_and_b32_e32 v12, 15, v90
	v_and_b32_e32 v16, 15, v55
	v_and_b32_e32 v54, 15, v95
	v_and_b32_e32 v82, 15, v13
	v_and_b32_e32 v13, 15, v100
	v_and_b32_e32 v55, 15, v105
	v_and_b32_e32 v79, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v0, 0, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v81, v36
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v89, v18
	v_cvt_i32_f32_e32 v91, v48
	v_cvt_i32_f32_e32 v93, v69
	v_cvt_i32_f32_e32 v96, v73
	v_cvt_i32_f32_e32 v104, v74
	v_and_b32_e32 v18, 15, v28
	v_and_b32_e32 v36, 15, v29
	v_and_b32_e32 v28, 15, v41
	v_and_b32_e32 v48, 15, v30
	v_and_b32_e32 v72, 15, v34
	v_and_b32_e32 v29, 15, v61
	v_and_b32_e32 v73, 15, v87
	v_and_b32_e32 v30, 15, v70
	v_and_b32_e32 v74, 15, v60
	v_and_b32_e32 v31, 15, v102
	v_and_b32_e32 v47, 15, v75
	v_and_b32_e32 v75, 15, v108
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v59, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_cvt_i32_f32_e32 v97, v65
	v_cvt_i32_f32_e32 v98, v15
	v_and_b32_e32 v15, 15, v42
	v_and_b32_e32 v65, 15, v85
	v_and_b32_e32 v85, 15, v17
	v_and_b32_e32 v17, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[10:13]
	ds_store_b128 v0, v[28:31] offset:256
	v_xad_u32 v10, v22, 16, 0
	ds_store_b128 v0, v[52:55] offset:2048
	ds_store_b128 v0, v[72:75] offset:2304
	v_lshlrev_b32_e32 v0, 6, v129
	v_lshlrev_b32_e32 v11, 5, v26
	v_cndmask_b32_e64 v12, 0x2010, 0, s2
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v64
	v_and_b32_e32 v40, 15, v39
	v_and_b32_e32 v64, 15, v43
	v_and_b32_e32 v41, 15, v51
	v_and_b32_e32 v42, 15, v93
	v_and_b32_e32 v43, 15, v103
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v62, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v58, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v10, v[14:17]
	ds_store_b128 v10, v[40:43] offset:256
	v_lshlrev_b32_e32 v14, 2, v88
	v_and_or_b32 v0, 0x300, v0, v11
	v_xor_b32_e32 v11, v12, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v94, v57
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v107, v59
	v_and_b32_e32 v56, 15, v50
	v_and_b32_e32 v45, 15, v46
	v_and_b32_e32 v57, 15, v83
	v_and_b32_e32 v46, 15, v58
	v_and_b32_e32 v58, 15, v96
	v_and_b32_e32 v59, 15, v106
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v11, v0, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v98
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v62, v62
	v_and_b32_e32 v80, 15, v21
	v_and_b32_e32 v19, 15, v81
	v_and_b32_e32 v69, 15, v86
	v_and_b32_e32 v20, 15, v91
	v_and_b32_e32 v66, 15, v66
	v_and_b32_e32 v70, 15, v97
	v_and_b32_e32 v21, 15, v67
	v_and_b32_e32 v67, 15, v71
	v_and_b32_e32 v71, 15, v107
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v13, v22, 32, 0
	ds_store_b128 v10, v[56:59] offset:2048
	ds_store_b128 v10, v[76:79] offset:2304
	v_xad_u32 v10, v22, 48, 0
	v_add_nc_u32_e32 v22, 0, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v81, 15, v89
	v_and_b32_e32 v86, 15, v99
	v_and_b32_e32 v83, 15, v109
	v_and_b32_e32 v87, 15, v110
	v_and_b32_e32 v37, 15, v37
	v_and_b32_e32 v38, 15, v92
	v_and_b32_e32 v39, 15, v62
	v_and_b32_e32 v50, 15, v94
	v_and_b32_e32 v51, 15, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v13, v[18:21]
	ds_store_b128 v13, v[44:47] offset:256
	ds_store_b128 v13, v[64:67] offset:2048
	ds_store_b128 v13, v[80:83] offset:2304
	ds_store_b128 v10, v[36:39]
	ds_store_b128 v10, v[48:51] offset:256
	ds_store_b128 v10, v[68:71] offset:2048
	ds_store_b128 v10, v[84:87] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v22
	ds_load_b128 v[14:17], v22 offset:128
	ds_load_b128 v[18:21], v22 offset:4096
	ds_load_b128 v[28:31], v22 offset:4224
	v_xad_u32 v22, 0x8040, v0, 0
	v_xad_u32 v23, 0x4020, v0, 0
	v_xad_u32 v0, 0xc060, v0, 0
	ds_load_b128 v[48:51], v22
	ds_load_b128 v[52:55], v22 offset:128
	ds_load_b128 v[56:59], v22 offset:4096
	ds_load_b128 v[64:67], v22 offset:4224
	ds_load_b128 v[68:71], v0 offset:4096
	ds_load_b128 v[72:75], v0
	ds_load_b128 v[76:79], v0 offset:128
	ds_load_b128 v[80:83], v0 offset:4224
	ds_load_b128 v[32:35], v23
	ds_load_b128 v[36:39], v23 offset:128
	ds_load_b128 v[40:43], v23 offset:4096
	ds_load_b128 v[44:47], v23 offset:4224
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v63, 2, v9
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[5:6]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s79, 7, v7
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v4.l, v27.h
	v_mov_b16_e32 v3.l, v25.h
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v22, s2, s72, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v23, null, s73, 0, s2
	v_add_co_u32 v60, s2, s72, v9
	v_add_co_ci_u32_e64 v61, null, s73, 0, s2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[76:77], v[5:6]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, s72, v9
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(9)
	v_lshl_or_b32 v50, v58, 4, v50
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[74:75], v[60:61]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[76:77], v[60:61]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v61, v28, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v28, 34, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v58, v70, 4, v74
	v_lshl_or_b32 v70, v30, 4, v16
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v30, 36, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v51, v59, 4, v51
	v_lshl_or_b32 v59, v71, 4, v75
	v_lshl_or_b32 v71, v31, 4, v17
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, 38, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(1)
	v_lshl_or_b32 v60, v40, 4, v32
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s73, s68, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 40, v5
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v52, v64, 4, v52
	v_lshl_or_b32 v64, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v33, 42, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v68, 4, v72
	v_lshl_or_b32 v68, v29, 4, v15
	v_lshl_or_b32 v72, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v34, 44, v5
	v_mad_u64_u32 v[28:29], null, v28, s73, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v43, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v35, 46, v5
	v_mad_u64_u32 v[29:30], null, v30, s73, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v44, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v36, 48, v5
	v_mad_u64_u32 v[30:31], null, v31, s73, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v26, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 2, v5
	v_add_nc_u32_e32 v10, 4, v5
	v_mad_u64_u32 v[31:32], null, v32, s73, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 6, v5
	v_mad_u64_u32 v[32:33], null, v33, s73, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	v_lshl_or_b32 v57, v69, 4, v73
	v_lshl_or_b32 v69, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 8, v5
	v_mad_u64_u32 v[33:34], null, v34, s73, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v73, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 10, v5
	v_mad_u64_u32 v[34:35], null, v35, s73, v[0:1]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[74:75], v[22:23]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[76:77], v[22:23]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v45, v45, 4, v37
	v_lshl_or_b32 v46, v46, 4, v38
	v_lshl_or_b32 v47, v47, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 12, v5
	v_add_nc_u32_e32 v15, 14, v5
	v_add_nc_u32_e32 v16, 16, v5
	v_add_nc_u32_e32 v17, 18, v5
	v_add_nc_u32_e32 v18, 20, v5
	v_add_nc_u32_e32 v19, 22, v5
	v_add_nc_u32_e32 v20, 24, v5
	v_add_nc_u32_e32 v21, 26, v5
	v_add_nc_u32_e32 v22, 28, v5
	v_add_nc_u32_e32 v23, 30, v5
	v_add_nc_u32_e32 v24, 32, v5
	v_add_nc_u32_e32 v37, 50, v5
	v_add_nc_u32_e32 v38, 52, v5
	v_add_nc_u32_e32 v39, 54, v5
	v_add_nc_u32_e32 v40, 56, v5
	v_add_nc_u32_e32 v41, 58, v5
	v_add_nc_u32_e32 v42, 60, v5
	v_mad_u64_u32 v[35:36], null, v36, s73, v[0:1]
	v_add_nc_u32_e32 v74, 62, v5
	v_mad_u64_u32 v[5:6], null, v5, s73, v[0:1]
	v_mad_u64_u32 v[6:7], null, v9, s73, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s73, v[0:1]
	v_mad_u64_u32 v[10:11], null, v11, s73, v[0:1]
	v_mad_u64_u32 v[11:12], null, v12, s73, v[0:1]
	v_mad_u64_u32 v[12:13], null, v13, s73, v[0:1]
	v_mad_u64_u32 v[13:14], null, v14, s73, v[0:1]
	v_mad_u64_u32 v[14:15], null, v15, s73, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s73, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s73, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s73, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s73, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s73, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s73, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s73, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s73, v[0:1]
	v_mad_u64_u32 v[21:22], null, v22, s73, v[0:1]
	v_mad_u64_u32 v[38:39], null, v39, s73, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[22:23], null, v23, s73, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s73, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[23:24], null, v24, s73, v[0:1]
	v_mad_u64_u32 v[40:41], null, v41, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v7, 0x80000000, v5, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[41:42], null, v42, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v24, 0x80000000, v6, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[5:6], null, v74, s73, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	v_cndmask_b32_e32 v6, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v26, v7, s[68:71], 0 offen
	buffer_store_b8 v60, v24, s[68:71], 0 offen
	v_cndmask_b32_e32 v7, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v80, 4, v76
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v53, v65, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v48, v0, s[68:71], 0 offen
	buffer_store_b8 v56, v6, s[68:71], 0 offen
	buffer_store_b8 v61, v7, s[68:71], 0 offen
	buffer_store_b8 v44, v9, s[68:71], 0 offen
	buffer_store_b8 v52, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v81, 4, v77
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v54, v66, 4, v54
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v66, v82, 4, v78
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v55, v67, 4, v55
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v62, v0, s[68:71], 0 offen
	buffer_store_b8 v63, v6, s[68:71], 0 offen
	buffer_store_b8 v64, v7, s[68:71], 0 offen
	buffer_store_b8 v49, v9, s[68:71], 0 offen
	buffer_store_b8 v57, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v67, v83, 4, v79
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s78, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s2, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s78, s78, s2
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v23, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v68, v0, s[68:71], 0 offen
	buffer_store_b8 v45, v6, s[68:71], 0 offen
	buffer_store_b8 v53, v7, s[68:71], 0 offen
	buffer_store_b8 v65, v9, s[68:71], 0 offen
	buffer_store_b8 v69, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v72, v0, s[68:71], 0 offen
	buffer_store_b8 v50, v6, s[68:71], 0 offen
	buffer_store_b8 v58, v7, s[68:71], 0 offen
	buffer_store_b8 v70, v9, s[68:71], 0 offen
	buffer_store_b8 v46, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v10, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v54, v0, s[68:71], 0 offen
	buffer_store_b8 v66, v6, s[68:71], 0 offen
	buffer_store_b8 v73, v7, s[68:71], 0 offen
	buffer_store_b8 v43, v9, s[68:71], 0 offen
	buffer_store_b8 v51, v10, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v39, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v40, vcc_lo
	s_clause 0x2
	buffer_store_b8 v59, v0, s[68:71], 0 offen
	buffer_store_b8 v71, v6, s[68:71], 0 offen
	buffer_store_b8 v47, v7, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v129
	v_lshrrev_b32_e32 v7, 2, v88
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v9, 0x80000000, v41, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v5 :: v_dual_lshlrev_b32 v5, 3, v111
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v55, v9, s[68:71], 0 offen
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s78, 8
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v67, v0, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v5
	v_add3_u32 v5, v7, v6, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[74:75], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v8, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v129
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[76:77], v[1:2]
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s79, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp71:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1144
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 80
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 1144
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 34660
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 1144
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 82
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
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
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 1144
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 287
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
