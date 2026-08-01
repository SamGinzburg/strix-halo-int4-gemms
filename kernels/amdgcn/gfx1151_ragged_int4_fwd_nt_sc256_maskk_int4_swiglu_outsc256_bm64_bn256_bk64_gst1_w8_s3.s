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
	s_load_b32 s23, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
	v_mov_b32_e32 v129, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s23, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s45, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s9, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s10, s9
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s4
	v_readfirstlane_b32 s4, v0
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s9
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s11, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s11
	s_sub_i32 s33, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s33, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s6, s2
	s_addc_u32 s5, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v129
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow661
	s_load_b128 s[36:39], s[0:1], 0x40
	s_load_b64 s[40:41], s[4:5], 0x0
	s_load_b64 s[42:43], s[6:7], 0x0
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v104, 15, v129
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v105, 0xf0, v129
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v253, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v224, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v225, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v235, 0 :: v_dual_mov_b32 v244, 0
	v_dual_mov_b32 v237, 0 :: v_dual_mov_b32 v246, 0
	v_mov_b32_e32 v239, 0
	v_mov_b32_e32 v245, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 5, v129
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b32 s45, s[0:1], 0x58
	v_bfe_i32 v65, v129, 7, 1
	v_and_b32_e32 v25, 0xe0, v129
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s34, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_add_co_u32 v14, s0, s34, v104
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
	v_add_co_ci_u32_e64 v15, null, s35, 0, s0
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
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[42:43], v[0:1]
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v0, s34, v104
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[40:41], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[42:43], v[2:3]
	v_mov_b32_e32 v80, 0
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s52, s4, s2
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, 16, v0
	v_add_nc_u32_e32 v2, 32, v0
	v_add_nc_u32_e32 v3, 48, v0
	v_mul_lo_u32 v0, v0, s44
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[40:41], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[42:43], v[6:7]
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_addc_u32 s53, s5, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[40:41], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[42:43], v[4:5]
	v_mov_b32_e32 v231, 0
	v_mov_b32_e32 v89, 0
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v1, s44
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s49, s2, s14
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s14, s33, 8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[40:41], v[8:9]
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_or_b32_e32 v4, s14, v24
	v_add_nc_u32_e32 v24, s34, v24
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[42:43], v[8:9]
	v_dual_mov_b32 v225, 0 :: v_dual_and_b32 v68, 0x7f, v129
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s44
	v_dual_mov_b32 v148, 0 :: v_dual_and_b32 v65, 0x88, v65
	v_mov_b32_e32 v122, 0
	v_mul_lo_u32 v77, v24, s45
	v_mov_b32_e32 v109, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s50, s3, s15
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s3, s[52:53], 0x0
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s44
	v_xor_b32_e32 v65, v65, v68
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v76, 16, v24
	v_or_b32_e32 v74, s14, v129
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[40:41], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[42:43], v[14:15]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[40:41], v[10:11]
	.loc	1 1149 29 is_stmt 1             ; ragged.py:1149:29
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v129
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[42:43], v[10:11]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[40:41], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[42:43], v[12:13]
	v_mov_b32_e32 v115, 0
	v_and_b32_e32 v69, 24, v0
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v75, 28, v0
	v_add_nc_u32_e32 v0, 8, v24
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s46, vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v69, v104, 5, v69
	s_and_b32 vcc_lo, s7, s19
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s7, s23, 1
	v_mul_lo_u32 v0, v0, s45
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v77, off offset:16
	scratch_store_b32 off, v69, off offset:4
	scratch_store_b32 off, v129, off offset:728
	v_lshl_or_b32 v72, v25, 4, v69
	scratch_store_b32 off, v65, off offset:8 ; 4-byte Folded Spill
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v77, 32, v24
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:20
	scratch_store_b32 off, v72, off offset:12
	v_mul_lo_u32 v0, v76, s45
	v_add_nc_u32_e32 v76, 24, v24
	scratch_store_b32 off, v74, off offset:748 ; 4-byte Folded Spill
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s51, s4, s16
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s45, s7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, s5, s17
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s4, s3
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xe8, v4
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v76, s45
	scratch_store_b32 off, v104, off offset:1128 ; 4-byte Folded Spill
	v_or_b32_e32 v62, 8, v4
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v78, 40, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[40:41], v[16:17]
	v_cmp_le_i64_e64 s9, s[40:41], v[20:21]
	v_cmp_le_i64_e64 s10, s[40:41], v[22:23]
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v77, s45
	v_mad_u64_u32 v[76:77], null, v4, s45, s[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[42:43], v[16:17]
	v_cmp_gt_i64_e64 s21, s[42:43], v[20:21]
	v_cmp_gt_i64_e64 s22, s[42:43], v[22:23]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v1, 0xf8, v4
	v_or_b32_e32 v2, 0xf0, v4
	v_or_b32_e32 v6, 0xe0, v4
	v_or_b32_e32 v7, 0xd8, v4
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v9, s23, v3
	v_or_b32_e32 v10, 0xd0, v4
	v_or_b32_e32 v13, 0xc8, v4
	v_or_b32_e32 v14, 0xc0, v4
	v_or_b32_e32 v16, 0xb8, v4
	v_or_b32_e32 v17, 0xb0, v4
	v_or_b32_e32 v20, 0xa8, v4
	v_or_b32_e32 v23, 0xa0, v4
	v_or_b32_e32 v26, 0x98, v4
	v_or_b32_e32 v28, 0x90, v4
	v_or_b32_e32 v29, 0x88, v4
	v_or_b32_e32 v32, 0x80, v4
	v_or_b32_e32 v35, 0x78, v4
	v_or_b32_e32 v36, 0x70, v4
	v_or_b32_e32 v38, 0x68, v4
	v_or_b32_e32 v39, 0x60, v4
	v_or_b32_e32 v42, 0x58, v4
	v_or_b32_e32 v45, 0x50, v4
	v_or_b32_e32 v46, 0x48, v4
	v_or_b32_e32 v48, 64, v4
	v_or_b32_e32 v49, 56, v4
	v_or_b32_e32 v52, 48, v4
	v_or_b32_e32 v55, 40, v4
	v_or_b32_e32 v56, 32, v4
	v_or_b32_e32 v58, 24, v4
	v_or_b32_e32 v59, 16, v4
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v67, s23, v4
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v78, s45
	v_mad_u64_u32 v[3:4], null, s45, v3, s[4:5]
	scratch_store_b64 off, v[76:77], off offset:48 ; 8-byte Folded Spill
	v_mad_u64_u32 v[76:77], null, v62, s45, s[4:5]
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v79, 48, v24
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v8, s23, v2
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v63, s23, v58
	v_dual_mov_b32 v233, 0 :: v_dual_add_nc_u32 v64, s23, v59
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v79, s45
	scratch_store_b64 off, v[3:4], off offset:816 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s45, v2, s[4:5]
	scratch_store_b64 off, v[76:77], off offset:56 ; 8-byte Folded Spill
	v_mad_u64_u32 v[76:77], null, v59, s45, s[4:5]
	v_mad_u64_u32 v[58:59], null, v58, s45, s[4:5]
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v24, 56, v24
	v_dual_mov_b32 v249, 0 :: v_dual_add_nc_u32 v30, s23, v23
	v_dual_mov_b32 v235, 0 :: v_dual_add_nc_u32 v60, s23, v55
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v61, s23, v56
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v24, s45
	v_mad_u64_u32 v[23:24], null, s45, v23, s[4:5]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[58:59], off offset:64
	scratch_store_b32 off, v105, off offset:1132
	v_mad_u64_u32 v[58:59], null, v56, s45, s[4:5]
	v_mad_u64_u32 v[55:56], null, v55, s45, s[4:5]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v0, off offset:44
	scratch_store_b64 off, v[23:24], off offset:200
	v_mad_u64_u32 v[23:24], null, s45, v20, s[4:5]
	scratch_store_b64 off, v[58:59], off offset:72 ; 8-byte Folded Spill
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v53, s23, v48
	scratch_store_b64 off, v[55:56], off offset:80 ; 8-byte Folded Spill
	v_mad_u64_u32 v[55:56], null, v52, s45, s[4:5]
	v_dual_mov_b32 v237, 0 :: v_dual_add_nc_u32 v54, s23, v49
	scratch_store_b64 off, v[76:77], off offset:752 ; 8-byte Folded Spill
	v_dual_mov_b32 v239, 0 :: v_dual_add_nc_u32 v50, s23, v45
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v51, s23, v46
	scratch_store_b64 off, v[55:56], off offset:88 ; 8-byte Folded Spill
	v_mad_u64_u32 v[55:56], null, v49, s45, s[4:5]
	v_mad_u64_u32 v[48:49], null, s45, v48, s[4:5]
	scratch_store_b64 off, v[23:24], off offset:208 ; 8-byte Folded Spill
	v_mad_u64_u32 v[23:24], null, s45, v17, s[4:5]
	v_dual_mov_b32 v244, 0 :: v_dual_add_nc_u32 v21, s23, v16
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[55:56], off offset:96
	scratch_store_b64 off, v[48:49], off offset:104
	v_mad_u64_u32 v[48:49], null, s45, v46, s[4:5]
	v_mad_u64_u32 v[45:46], null, s45, v45, s[4:5]
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v22, s23, v17
	v_mad_u64_u32 v[16:17], null, s45, v16, s[4:5]
	scratch_store_b64 off, v[48:49], off offset:112 ; 8-byte Folded Spill
	v_dual_mov_b32 v224, 0 :: v_dual_add_nc_u32 v43, s23, v38
	scratch_store_b64 off, v[45:46], off offset:120 ; 8-byte Folded Spill
	v_mad_u64_u32 v[45:46], null, s45, v42, s[4:5]
	v_dual_mov_b32 v245, 0 :: v_dual_add_nc_u32 v44, s23, v39
	scratch_store_b64 off, v[16:17], off offset:768 ; 8-byte Folded Spill
	v_mad_u64_u32 v[16:17], null, s45, v14, s[4:5]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[40:41], v[18:19]
	scratch_store_b64 off, v[45:46], off offset:128 ; 8-byte Folded Spill
	v_mad_u64_u32 v[45:46], null, s45, v39, s[4:5]
	v_mad_u64_u32 v[38:39], null, s45, v38, s[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[42:43], v[18:19]
	v_dual_mov_b32 v253, 0 :: v_dual_add_nc_u32 v18, s23, v13
	v_dual_mov_b32 v246, 0 :: v_dual_add_nc_u32 v19, s23, v14
	v_dual_mov_b32 v241, 0 :: v_dual_add_nc_u32 v40, s23, v35
	v_dual_mov_b32 v230, 0 :: v_dual_add_nc_u32 v41, s23, v36
	scratch_store_b64 off, v[45:46], off offset:136 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s45, v13, s[4:5]
	scratch_store_b64 off, v[38:39], off offset:144 ; 8-byte Folded Spill
	v_mad_u64_u32 v[38:39], null, s45, v36, s[4:5]
	v_mad_u64_u32 v[35:36], null, s45, v35, s[4:5]
	v_dual_mov_b32 v234, 0 :: v_dual_add_nc_u32 v33, s23, v28
	scratch_store_b64 off, v[13:14], off offset:784 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s45, v10, s[4:5]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[38:39], off offset:152
	scratch_store_b64 off, v[35:36], off offset:160
	v_mad_u64_u32 v[35:36], null, s45, v32, s[4:5]
	v_dual_mov_b32 v243, 0 :: v_dual_add_nc_u32 v34, s23, v29
	scratch_store_b64 off, v[13:14], off offset:792 ; 8-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, s45, v7, s[4:5]
	v_dual_mov_b32 v250, 0 :: v_dual_add_nc_u32 v5, s23, v1
	scratch_store_b64 off, v[35:36], off offset:168 ; 8-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s45, v29, s[4:5]
	v_mad_u64_u32 v[28:29], null, s45, v28, s[4:5]
	v_dual_mov_b32 v248, 0 :: v_dual_add_nc_u32 v11, s23, v6
	v_dual_mov_b32 v255, 0 :: v_dual_add_nc_u32 v12, s23, v7
	scratch_store_b64 off, v[35:36], off offset:176 ; 8-byte Folded Spill
	v_mad_u64_u32 v[6:7], null, s45, v6, s[4:5]
	scratch_store_b64 off, v[28:29], off offset:184 ; 8-byte Folded Spill
	v_mad_u64_u32 v[28:29], null, s45, v26, s[4:5]
	v_mad_u64_u32 v[0:1], null, s45, v1, s[4:5]
	v_dual_mov_b32 v227, 0 :: v_dual_add_nc_u32 v66, s23, v62
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v57, s23, v52
	scratch_store_b64 off, v[28:29], off offset:192 ; 8-byte Folded Spill
	v_dual_mov_b32 v146, 0 :: v_dual_lshlrev_b32 v73, 5, v129
	scratch_store_b64 off, v[0:1], off offset:832 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v67, s45, s[4:5]
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v47, s23, v42
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v74, 2, v105
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v73, 32, v73
	scratch_store_b64 off, v[0:1], off offset:840 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v66, s45, s[4:5]
	scratch_store_b64 off, v[23:24], off offset:760 ; 8-byte Folded Spill
	v_add3_u32 v73, 0, v74, v73
	v_mov_b32_e32 v149, 0
	v_xor_b32_e32 v25, 0x110, v65
	v_xor_b32_e32 v65, 8, v69
	v_xor_b32_e32 v68, 16, v69
	scratch_store_b64 off, v[0:1], off offset:848 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v64, s45, s[4:5]
	scratch_store_b64 off, v[16:17], off offset:776 ; 8-byte Folded Spill
	v_xor_b32_e32 v69, 24, v69
	v_mov_b32_e32 v143, 0
	v_xor_b32_e32 v70, 8, v72
	v_mov_b32_e32 v145, 0
	v_xor_b32_e32 v71, 16, v72
	scratch_store_b64 off, v[0:1], off offset:856 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v63, s45, s[4:5]
	scratch_store_b64 off, v[13:14], off offset:800 ; 8-byte Folded Spill
	v_mov_b32_e32 v173, 0
	v_xor_b32_e32 v72, 24, v72
	v_mov_b32_e32 v171, 0
	v_mov_b32_e32 v167, 0
	v_mov_b32_e32 v169, 0
	scratch_store_b64 off, v[0:1], off offset:864 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v61, s45, s[4:5]
	scratch_store_b64 off, v[6:7], off offset:808 ; 8-byte Folded Spill
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v74, 1, v105
	v_mov_b32_e32 v223, 0
	v_dual_mov_b32 v232, 0 :: v_dual_add_nc_u32 v37, s23, v32
	scratch_store_b64 off, v[0:1], off offset:872 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v60, s45, s[4:5]
	scratch_store_b64 off, v[2:3], off offset:824 ; 8-byte Folded Spill
	v_dual_mov_b32 v236, 0 :: v_dual_add_nc_u32 v31, s23, v26
	v_dual_mov_b32 v240, 0 :: v_dual_add_nc_u32 v27, s23, v20
	v_dual_mov_b32 v238, 0 :: v_dual_add_nc_u32 v15, s23, v10
	scratch_store_b64 off, v[0:1], off offset:880 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v57, s45, s[4:5]
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v254, 0, v25
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_mov_b32_e32 v16, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v179, 0
	scratch_store_b64 off, v[0:1], off offset:888 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v54, s45, s[4:5]
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	scratch_store_b64 off, v[0:1], off offset:896 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v53, s45, s[4:5]
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v159, 0
	scratch_store_b64 off, v[0:1], off offset:904 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v51, s45, s[4:5]
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v151, 0
	scratch_store_b64 off, v[0:1], off offset:912 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v50, s45, s[4:5]
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v141, 0
	scratch_store_b64 off, v[0:1], off offset:920 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v47, s45, s[4:5]
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	scratch_store_b64 off, v[0:1], off offset:928 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, v73, v75
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v131, 0
	scratch_store_b32 off, v0, off offset:936 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v44, s45, s[4:5]
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v99, 0
	scratch_store_b64 off, v[0:1], off offset:940 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v65
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v103, 0
	scratch_store_b32 off, v0, off offset:948 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v68
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v95, 0
	scratch_store_b32 off, v0, off offset:952 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v69
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v117, 0
	scratch_store_b32 off, v0, off offset:956 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v70
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v85, 0
	scratch_store_b32 off, v0, off offset:960 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v71
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	scratch_store_b32 off, v0, off offset:964 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v72
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v102, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s47, s0, s12
	scratch_store_b32 off, v0, off offset:968 ; 4-byte Folded Spill
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v247, off, off offset:948
	scratch_load_b32 v242, off, off offset:952
	scratch_load_b32 v226, off, off offset:956
	scratch_load_b32 v190, off, off offset:960
	scratch_load_b32 v191, off, off offset:964
	scratch_load_b32 v192, off, off offset:968
	v_add_nc_u32_e32 v0, 0, v74
	s_and_b32 s48, s1, s13
	s_and_b32 s6, s6, s18
	s_and_b32 s0, s8, s20
	s_and_b32 s1, s9, s21
	scratch_store_b32 off, v0, off offset:972 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v43, s45, s[4:5]
	s_and_b32 s2, s10, s22
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_mul_i32 s20, s44, s3
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s8, s24
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	scratch_store_b64 off, v[0:1], off offset:976 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v41, s45, s[4:5]
	s_and_b32 s13, s27, 0xffff
	s_mov_b32 s12, s26
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s17, s31, 0xffff
	s_mov_b32 s16, s30
	s_mov_b32 s21, 0
	scratch_store_b64 off, v[0:1], off offset:984 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v40, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:992 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v37, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1000 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v34, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1008 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v33, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1016 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v31, s45, s[4:5]
	v_mov_b32_e32 v31, 0
	scratch_store_b64 off, v[0:1], off offset:1024 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v30, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1032 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v27, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1040 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v22, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1048 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v21, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1056 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v19, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1064 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v18, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1072 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v15, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1080 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v12, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1088 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v11, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1096 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v9, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1104 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v8, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1112 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v5, s45, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:1120 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	s_clause 0x9                            ; 80-byte Folded Reload
	scratch_load_b64 v[212:213], off, off offset:752
	scratch_load_b64 v[193:194], off, off offset:976
	scratch_load_b64 v[213:214], off, off offset:760
	scratch_load_b64 v[194:195], off, off offset:984
	scratch_load_b64 v[214:215], off, off offset:768
	scratch_load_b64 v[195:196], off, off offset:992
	scratch_load_b64 v[215:216], off, off offset:776
	scratch_load_b64 v[196:197], off, off offset:1000
	scratch_load_b64 v[216:217], off, off offset:784
	scratch_load_b64 v[197:198], off, off offset:1008
	v_dual_mov_b32 v32, v0 :: v_dual_and_b32 v129, 31, v129
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b64 v[217:218], off, off offset:792
	scratch_load_b64 v[198:199], off, off offset:1016
	scratch_load_b64 v[218:219], off, off offset:800
	scratch_load_b64 v[199:200], off, off offset:1024
	scratch_load_b64 v[219:220], off, off offset:808
	scratch_load_b64 v[251:252], off, off offset:816
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v31, off offset:724
	scratch_store_b32 off, v2, off offset:720
	scratch_store_b32 off, v80, off offset:716
	scratch_store_b32 off, v3, off offset:712
	scratch_store_b32 off, v81, off offset:708
	scratch_store_b32 off, v16, off offset:704
	scratch_store_b32 off, v255, off offset:700
	scratch_store_b32 off, v253, off offset:696
	scratch_store_b32 off, v250, off offset:692
	scratch_store_b32 off, v82, off offset:688
	scratch_store_b32 off, v83, off offset:684
	scratch_store_b32 off, v249, off offset:680
	scratch_store_b32 off, v248, off offset:676
	scratch_store_b32 off, v246, off offset:672
	scratch_store_b32 off, v245, off offset:668
	scratch_store_b32 off, v244, off offset:664
	scratch_store_b32 off, v243, off offset:660
	scratch_store_b32 off, v241, off offset:656
	scratch_store_b32 off, v240, off offset:652
	scratch_store_b32 off, v239, off offset:648
	scratch_store_b32 off, v238, off offset:644
	scratch_store_b32 off, v237, off offset:640
	scratch_store_b32 off, v236, off offset:636
	scratch_store_b32 off, v235, off offset:632
	scratch_store_b32 off, v234, off offset:628
	scratch_store_b32 off, v233, off offset:624
	scratch_store_b32 off, v232, off offset:620
	scratch_store_b32 off, v231, off offset:616
	scratch_store_b32 off, v230, off offset:612
	scratch_store_b32 off, v227, off offset:608
	scratch_store_b32 off, v225, off offset:604
	scratch_store_b32 off, v224, off offset:600
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v223, off offset:596
	scratch_store_b32 off, v222, off offset:592
	scratch_store_b32 off, v221, off offset:588
	scratch_store_b32 off, v179, off offset:584
	scratch_store_b32 off, v178, off offset:580
	scratch_store_b32 off, v177, off offset:576
	scratch_store_b32 off, v176, off offset:572
	scratch_store_b32 off, v175, off offset:568
	scratch_store_b32 off, v174, off offset:564
	scratch_store_b32 off, v173, off offset:560
	scratch_store_b32 off, v172, off offset:556
	scratch_store_b32 off, v171, off offset:552
	scratch_store_b32 off, v170, off offset:548
	scratch_store_b32 off, v169, off offset:544
	scratch_store_b32 off, v168, off offset:540
	scratch_store_b32 off, v167, off offset:536
	scratch_store_b32 off, v166, off offset:532
	scratch_store_b32 off, v165, off offset:528
	scratch_store_b32 off, v164, off offset:524
	scratch_store_b32 off, v163, off offset:520
	scratch_store_b32 off, v162, off offset:516
	scratch_store_b32 off, v161, off offset:512
	scratch_store_b32 off, v160, off offset:508
	scratch_store_b32 off, v159, off offset:504
	scratch_store_b32 off, v158, off offset:500
	scratch_store_b32 off, v157, off offset:496
	scratch_store_b32 off, v151, off offset:492
	scratch_store_b32 off, v150, off offset:488
	scratch_store_b32 off, v156, off offset:484
	scratch_store_b32 off, v155, off offset:480
	scratch_store_b32 off, v154, off offset:476
	scratch_store_b32 off, v153, off offset:472
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v149, off offset:468
	scratch_store_b32 off, v148, off offset:464
	scratch_store_b32 off, v147, off offset:460
	scratch_store_b32 off, v146, off offset:456
	scratch_store_b32 off, v145, off offset:452
	scratch_store_b32 off, v144, off offset:448
	scratch_store_b32 off, v143, off offset:444
	scratch_store_b32 off, v142, off offset:440
	scratch_store_b32 off, v141, off offset:436
	scratch_store_b32 off, v140, off offset:432
	scratch_store_b32 off, v139, off offset:428
	scratch_store_b32 off, v138, off offset:424
	scratch_store_b32 off, v137, off offset:420
	scratch_store_b32 off, v136, off offset:416
	scratch_store_b32 off, v135, off offset:412
	scratch_store_b32 off, v134, off offset:408
	scratch_store_b32 off, v133, off offset:404
	scratch_store_b32 off, v132, off offset:400
	scratch_store_b32 off, v131, off offset:396
	scratch_store_b32 off, v130, off offset:392
	scratch_store_b32 off, v152, off offset:388
	scratch_store_b32 off, v128, off offset:384
	scratch_store_b32 off, v127, off offset:380
	scratch_store_b32 off, v126, off offset:376
	scratch_store_b32 off, v125, off offset:372
	scratch_store_b32 off, v124, off offset:368
	scratch_store_b32 off, v115, off offset:364
	scratch_store_b32 off, v114, off offset:360
	scratch_store_b32 off, v123, off offset:356
	scratch_store_b32 off, v122, off offset:352
	scratch_store_b32 off, v121, off offset:348
	scratch_store_b32 off, v120, off offset:344
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v107, off offset:340
	scratch_store_b32 off, v99, off offset:336
	scratch_store_b32 off, v98, off offset:332
	scratch_store_b32 off, v97, off offset:328
	scratch_store_b32 off, v106, off offset:324
	scratch_store_b32 off, v113, off offset:320
	scratch_store_b32 off, v112, off offset:316
	scratch_store_b32 off, v103, off offset:312
	scratch_store_b32 off, v96, off offset:308
	scratch_store_b32 off, v95, off offset:304
	scratch_store_b32 off, v94, off offset:300
	scratch_store_b32 off, v93, off offset:296
	scratch_store_b32 off, v119, off offset:292
	scratch_store_b32 off, v118, off offset:288
	scratch_store_b32 off, v117, off offset:284
	scratch_store_b32 off, v116, off offset:280
	scratch_store_b32 off, v92, off offset:276
	scratch_store_b32 off, v91, off offset:272
	scratch_store_b32 off, v90, off offset:268
	scratch_store_b32 off, v89, off offset:264
	scratch_store_b32 off, v111, off offset:260
	scratch_store_b32 off, v110, off offset:256
	scratch_store_b32 off, v109, off offset:252
	scratch_store_b32 off, v108, off offset:248
	scratch_store_b32 off, v88, off offset:244
	scratch_store_b32 off, v86, off offset:240
	scratch_store_b32 off, v85, off offset:236
	scratch_store_b32 off, v84, off offset:232
	scratch_store_b32 off, v102, off offset:228
	scratch_store_b32 off, v87, off offset:224
	scratch_store_b32 off, v101, off offset:220
	scratch_store_b32 off, v100, off offset:216
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[252:253], off, off offset:824
	scratch_load_b64 v[228:229], off, off offset:832
	scratch_load_b64 v[229:230], off, off offset:840
	scratch_load_b64 v[220:221], off, off offset:848
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
	v_lshl_or_b32 v0, s21, 7, v129
	s_clause 0xc                            ; 104-byte Folded Reload
	scratch_load_b64 v[221:222], off, off offset:856
	scratch_load_b64 v[180:181], off, off offset:864
	scratch_load_b64 v[129:130], off, off offset:872
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
	s_waitcnt vmcnt(10)
	v_mov_b32_e32 v181, v129
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[182:183], off, off offset:880
	scratch_load_b64 v[129:130], off, off offset:888
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v183, v129
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[184:185], off, off offset:896
	scratch_load_b64 v[129:130], off, off offset:904
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v185, v129
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[186:187], off, off offset:912
	scratch_load_b64 v[129:130], off, off offset:920
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v187, v129
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[188:189], off, off offset:928
	scratch_load_b64 v[129:130], off, off offset:940
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
	v_or_b32_e32 v253, s18, v0
	.loc	1 1155 42                       ; ragged.py:1155:42
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s3, s45, v253
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v129, v129, v253
	v_add_nc_u32_e32 v157, v219, v253
	v_add_nc_u32_e32 v158, v251, v253
	v_add_nc_u32_e32 v159, v252, v253
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s4, s46, s3
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v160, v228, v253
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v130, v130, v253
	v_add_nc_u32_e32 v131, v212, v253
	v_add_nc_u32_e32 v152, v214, v253
	v_add_nc_u32_e32 v153, v215, v253
	v_add_nc_u32_e32 v154, v216, v253
	v_add_nc_u32_e32 v155, v217, v253
	v_add_nc_u32_e32 v156, v218, v253
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v129, 0x80000000, v129, s3
	v_cndmask_b32_e64 v157, 0x80000000, v157, s3
	v_cndmask_b32_e64 v158, 0x80000000, v158, s3
	v_cndmask_b32_e64 v159, 0x80000000, v159, s3
	v_cndmask_b32_e64 v160, 0x80000000, v160, s3
	v_cndmask_b32_e64 v130, 0x80000000, v130, s3
	v_cndmask_b32_e64 v131, 0x80000000, v131, s3
	v_cndmask_b32_e64 v152, 0x80000000, v152, s3
	v_cndmask_b32_e64 v153, 0x80000000, v153, s3
	v_cndmask_b32_e64 v154, 0x80000000, v154, s3
	v_cndmask_b32_e64 v155, 0x80000000, v155, s3
	v_cndmask_b32_e64 v156, 0x80000000, v156, s3
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v222, v0, v253
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:20
	scratch_load_b64 v[133:134], off, off offset:72
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v132, v132, v253
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v222, 0x80000000, v222, s4
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s4, s47, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v132, 0x80000000, v132, s3
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v223, v0, v253
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:24
	scratch_load_b64 v[134:135], off, off offset:80
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v133, v133, v253
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v223, 0x80000000, v223, s4
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s4, s48, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v133, 0x80000000, v133, s3
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v224, v0, v253
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:28
	scratch_load_b64 v[135:136], off, off offset:88
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v134, v134, v253
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v224, 0x80000000, v224, s4
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s4, s49, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v134, 0x80000000, v134, s3
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v225, v0, v253
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:32
	scratch_load_b64 v[136:137], off, off offset:96
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v135, v135, v253
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v225, 0x80000000, v225, s4
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s4, s50, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v135, 0x80000000, v135, s3
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v230, v0, v253
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:36
	scratch_load_b64 v[137:138], off, off offset:104
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v136, v136, v253
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v230, 0x80000000, v230, s4
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s4, s51, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v136, 0x80000000, v136, s3
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v231, v0, v253
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:40
	scratch_load_b64 v[138:139], off, off offset:112
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v137, v137, v253
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v231, 0x80000000, v231, s4
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s4, s5, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v137, 0x80000000, v137, s3
	.loc	1 1155 42                       ; ragged.py:1155:42
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v232, v0, v253
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
	v_add_nc_u32_e32 v138, v138, v253
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v151, v213, v253
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v232, 0x80000000, v232, s4
	.loc	1 1155 66 is_stmt 0             ; ragged.py:1155:66
	s_and_b32 s4, s6, s3
	.loc	1 1156 34 is_stmt 1             ; ragged.py:1156:34
	v_cndmask_b32_e64 v138, 0x80000000, v138, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v151, 0x80000000, v151, s3
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_add_nc_u32_e32 v233, v0, v253
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v139, v139, v253
	v_add_nc_u32_e32 v140, v140, v253
	v_add_nc_u32_e32 v141, v141, v253
	v_add_nc_u32_e32 v142, v142, v253
	v_add_nc_u32_e32 v143, v143, v253
	v_add_nc_u32_e32 v144, v144, v253
	v_add_nc_u32_e32 v145, v145, v253
	v_add_nc_u32_e32 v146, v146, v253
	v_add_nc_u32_e32 v147, v147, v253
	v_add_nc_u32_e32 v148, v148, v253
	v_add_nc_u32_e32 v149, v149, v253
	v_add_nc_u32_e32 v150, v150, v253
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v233, 0x80000000, v233, s4
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v139, 0x80000000, v139, s3
	v_cndmask_b32_e64 v140, 0x80000000, v140, s3
	v_cndmask_b32_e64 v141, 0x80000000, v141, s3
	v_cndmask_b32_e64 v142, 0x80000000, v142, s3
	v_cndmask_b32_e64 v143, 0x80000000, v143, s3
	v_cndmask_b32_e64 v144, 0x80000000, v144, s3
	v_cndmask_b32_e64 v145, 0x80000000, v145, s3
	v_cndmask_b32_e64 v146, 0x80000000, v146, s3
	v_cndmask_b32_e64 v147, 0x80000000, v147, s3
	v_cndmask_b32_e64 v148, 0x80000000, v148, s3
	v_cndmask_b32_e64 v149, 0x80000000, v149, s3
	v_cndmask_b32_e64 v150, 0x80000000, v150, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v222, v222, s[8:11], 0 offen
	buffer_load_u8 v224, v224, s[8:11], 0 offen
	buffer_load_u8 v230, v230, s[8:11], 0 offen
	buffer_load_u8 v232, v232, s[8:11], 0 offen
	buffer_load_u8 v233, v233, s[8:11], 0 offen
	buffer_load_u8 v231, v231, s[8:11], 0 offen
	buffer_load_u8 v225, v225, s[8:11], 0 offen
	buffer_load_u8 v223, v223, s[8:11], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v243, v129, s[12:15], 0 offen
	buffer_load_u8 v244, v131, s[12:15], 0 offen
	buffer_load_u8 v245, v133, s[12:15], 0 offen
	buffer_load_u8 v246, v135, s[12:15], 0 offen
	buffer_load_u8 v241, v137, s[12:15], 0 offen
	buffer_load_u8 v0, v139, s[12:15], 0 offen
	buffer_load_u8 v255, v141, s[12:15], 0 offen
	buffer_load_u8 v227, v143, s[12:15], 0 offen
	buffer_load_u8 v234, v145, s[12:15], 0 offen
	buffer_load_u8 v248, v147, s[12:15], 0 offen
	buffer_load_u8 v235, v149, s[12:15], 0 offen
	buffer_load_u8 v236, v151, s[12:15], 0 offen
	buffer_load_u8 v249, v153, s[12:15], 0 offen
	buffer_load_u8 v250, v155, s[12:15], 0 offen
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
	ds_store_b8 v175, v222
	ds_store_b8 v175, v224 offset:512
	ds_store_b8 v175, v230 offset:1024
	ds_store_b8 v175, v232 offset:1536
	ds_store_b8 v254, v223
	ds_store_b8 v254, v225 offset:512
	ds_store_b8 v254, v231 offset:1024
	ds_store_b8 v254, v233 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v129, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v230, v203, v253
	v_add_nc_u32_e32 v231, v204, v253
	v_add_nc_u32_e32 v232, v205, v253
	v_add_nc_u32_e32 v233, v206, v253
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v230, 0x80000000, v230, s3
	v_cndmask_b32_e64 v231, 0x80000000, v231, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v232, 0x80000000, v232, s3
	v_cndmask_b32_e64 v233, 0x80000000, v233, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v129, 0, v129
	ds_load_2addr_stride64_b64 v[237:240], v129 offset1:1
	ds_load_2addr_stride64_b64 v[153:156], v129 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[149:152], v247 offset1:1
	ds_load_2addr_stride64_b64 v[145:148], v247 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[141:144], v242 offset1:1
	ds_load_2addr_stride64_b64 v[137:140], v242 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[133:136], v226 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v226 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v175, v243
	ds_store_b8 v175, v244 offset:512
	ds_store_b8 v175, v245 offset:1024
	ds_store_b8 v175, v246 offset:1536
	ds_store_b8 v175, v241 offset:2048
	ds_store_b8 v175, v0 offset:2560
	ds_store_b8 v175, v255 offset:3072
	ds_store_b8 v175, v227 offset:3584
	ds_store_b8 v175, v234 offset:4096
	ds_store_b8 v175, v248 offset:4608
	ds_store_b8 v175, v235 offset:5120
	ds_store_b8 v175, v236 offset:5632
	ds_store_b8 v175, v249 offset:6144
	ds_store_b8 v175, v250 offset:6656
	ds_store_b8 v175, v157 offset:7168
	ds_store_b8 v175, v159 offset:7680
	ds_store_b8 v254, v164
	ds_store_b8 v254, v163 offset:512
	ds_store_b8 v254, v162 offset:1024
	ds_store_b8 v254, v161 offset:1536
	ds_store_b8 v254, v168 offset:2048
	ds_store_b8 v254, v167 offset:2560
	ds_store_b8 v254, v166 offset:3072
	ds_store_b8 v254, v165 offset:3584
	ds_store_b8 v254, v172 offset:4096
	ds_store_b8 v254, v171 offset:4608
	ds_store_b8 v254, v170 offset:5120
	ds_store_b8 v254, v169 offset:5632
	ds_store_b8 v254, v174 offset:6144
	ds_store_b8 v254, v173 offset:6656
	ds_store_b8 v254, v158 offset:7168
	ds_store_b8 v254, v160 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v157, v229, v253
	v_add_nc_u32_e32 v159, v221, v253
	v_add_nc_u32_e32 v161, v181, v253
	v_add_nc_u32_e32 v163, v183, v253
	v_add_nc_u32_e32 v158, v220, v253
	v_add_nc_u32_e32 v160, v180, v253
	v_add_nc_u32_e32 v162, v182, v253
	v_add_nc_u32_e32 v164, v184, v253
	v_add_nc_u32_e32 v165, v185, v253
	v_add_nc_u32_e32 v166, v186, v253
	v_add_nc_u32_e32 v167, v187, v253
	v_add_nc_u32_e32 v168, v188, v253
	v_add_nc_u32_e32 v169, v189, v253
	v_add_nc_u32_e32 v170, v193, v253
	v_add_nc_u32_e32 v171, v194, v253
	v_add_nc_u32_e32 v172, v195, v253
	v_add_nc_u32_e32 v173, v196, v253
	v_add_nc_u32_e32 v174, v197, v253
	v_add_nc_u32_e32 v227, v202, v253
	v_add_nc_u32_e32 v234, v207, v253
	v_add_nc_u32_e32 v235, v208, v253
	v_add_nc_u32_e32 v236, v209, v253
	v_add_nc_u32_e32 v241, v210, v253
	v_add_nc_u32_e32 v243, v211, v253
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v157, 0x80000000, v157, s3
	v_cndmask_b32_e64 v159, 0x80000000, v159, s3
	v_cndmask_b32_e64 v161, 0x80000000, v161, s3
	v_cndmask_b32_e64 v163, 0x80000000, v163, s3
	v_cndmask_b32_e64 v158, 0x80000000, v158, s3
	v_cndmask_b32_e64 v160, 0x80000000, v160, s3
	v_cndmask_b32_e64 v162, 0x80000000, v162, s3
	v_cndmask_b32_e64 v164, 0x80000000, v164, s3
	v_cndmask_b32_e64 v165, 0x80000000, v165, s3
	v_cndmask_b32_e64 v166, 0x80000000, v166, s3
	v_cndmask_b32_e64 v167, 0x80000000, v167, s3
	v_cndmask_b32_e64 v168, 0x80000000, v168, s3
	v_cndmask_b32_e64 v169, 0x80000000, v169, s3
	v_cndmask_b32_e64 v170, 0x80000000, v170, s3
	v_cndmask_b32_e64 v171, 0x80000000, v171, s3
	v_cndmask_b32_e64 v172, 0x80000000, v172, s3
	v_cndmask_b32_e64 v173, 0x80000000, v173, s3
	v_cndmask_b32_e64 v174, 0x80000000, v174, s3
	v_cndmask_b32_e64 v227, 0x80000000, v227, s3
	v_cndmask_b32_e64 v234, 0x80000000, v234, s3
	v_cndmask_b32_e64 v235, 0x80000000, v235, s3
	v_cndmask_b32_e64 v236, 0x80000000, v236, s3
	v_cndmask_b32_e64 v241, 0x80000000, v241, s3
	v_cndmask_b32_e64 v243, 0x80000000, v243, s3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_2addr_stride64_b64 v[222:225], v0 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[222:223], v[237:238], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[224:225], v[237:238], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[222:223], v[239:240], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[224:225], v[239:240], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[222:223], v[153:154], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[224:225], v[153:154], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[222:223], v[155:156], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[224:225], v[155:156], v[121:128] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v222, v198, v253
	v_add_nc_u32_e32 v223, v199, v253
	v_add_nc_u32_e32 v224, v200, v253
	v_add_nc_u32_e32 v225, v201, v253
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v222, 0x80000000, v222, s3
	v_cndmask_b32_e64 v223, 0x80000000, v223, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v224, 0x80000000, v224, s3
	v_cndmask_b32_e64 v225, 0x80000000, v225, s3
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
	buffer_load_u8 v248, v222, s[12:15], 0 offen
	buffer_load_u8 v249, v224, s[12:15], 0 offen
	buffer_load_u8 v227, v227, s[12:15], 0 offen
	buffer_load_u8 v250, v231, s[12:15], 0 offen
	buffer_load_u8 v253, v233, s[12:15], 0 offen
	buffer_load_u8 v235, v235, s[12:15], 0 offen
	buffer_load_u8 v241, v241, s[12:15], 0 offen
	buffer_load_u8 v164, v164, s[12:15], 0 offen
	buffer_load_u8 v162, v162, s[12:15], 0 offen
	buffer_load_u8 v160, v160, s[12:15], 0 offen
	buffer_load_u8 v158, v158, s[12:15], 0 offen
	buffer_load_u8 v172, v172, s[12:15], 0 offen
	buffer_load_u8 v170, v170, s[12:15], 0 offen
	buffer_load_u8 v168, v168, s[12:15], 0 offen
	buffer_load_u8 v166, v166, s[12:15], 0 offen
	buffer_load_u8 v255, v230, s[12:15], 0 offen
	buffer_load_u8 v176, v225, s[12:15], 0 offen
	buffer_load_u8 v177, v223, s[12:15], 0 offen
	buffer_load_u8 v174, v174, s[12:15], 0 offen
	buffer_load_u8 v178, v243, s[12:15], 0 offen
	buffer_load_u8 v236, v236, s[12:15], 0 offen
	buffer_load_u8 v234, v234, s[12:15], 0 offen
	buffer_load_u8 v179, v232, s[12:15], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[222:225], v190 offset1:8
	ds_load_2addr_stride64_b64 v[243:246], v191 offset1:8
	ds_load_2addr_stride64_b64 v[230:233], v192 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s3, s18, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s18, 0x60
	s_mov_b32 s18, s3
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
	ds_store_b8 v175, v248 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v175, v249 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v175, v227 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v175, v250 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v175, v253 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v175, v235 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v175, v241 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v254, v158
	ds_store_b8 v254, v160 offset:512
	ds_store_b8 v254, v162 offset:1024
	ds_store_b8 v254, v164 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v254, v166 offset:2048
	ds_store_b8 v254, v168 offset:2560
	ds_store_b8 v254, v170 offset:3072
	ds_store_b8 v254, v172 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v254, v174 offset:4096
	ds_store_b8 v254, v177 offset:4608
	ds_store_b8 v254, v176 offset:5120
	ds_store_b8 v254, v255 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v254, v179 offset:6144
	ds_store_b8 v254, v234 offset:6656
	ds_store_b8 v254, v236 offset:7168
	ds_store_b8 v254, v178 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[157:160], v0 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[222:223], v[145:146], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[224:225], v[145:146], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[222:223], v[147:148], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[224:225], v[147:148], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[222:223], v[149:150], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[243:244], v[137:138], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[245:246], v[137:138], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[243:244], v[139:140], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[245:246], v[139:140], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[224:225], v[149:150], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[222:223], v[151:152], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[224:225], v[151:152], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[243:244], v[141:142], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[230:231], v[129:130], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[245:246], v[141:142], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[243:244], v[143:144], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[245:246], v[143:144], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[230:231], v[133:134], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[232:233], v[129:130], v[105:112] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[157:158], v[153:154], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[159:160], v[153:154], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[157:158], v[155:156], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[159:160], v[155:156], v[57:64] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[153:156], v190 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[157:158], v[237:238], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[237:238], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[157:158], v[239:240], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[159:160], v[239:240], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[73:80], v[232:233], v[133:134], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[230:231], v[135:136], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[232:233], v[135:136], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[230:231], v[131:132], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[232:233], v[131:132], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[153:154], v[145:146], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[155:156], v[145:146], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[153:154], v[147:148], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[155:156], v[147:148], v[57:64] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[145:148], v191 offset1:8
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
	v_cvt_f32_i32_e32 v148, v85
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v22
	v_cvt_f32_i32_e32 v73, v23
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v37, v54
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v54, off, off offset:748
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
	s_add_i32 s3, s21, s20
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v147, v86
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s7
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v154, v68
	v_cvt_f32_i32_e32 v157, v83
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v68, v8
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v83, v36
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v38, v53
	v_cvt_f32_i32_e32 v36, v55
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v158, v84
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v35, v56
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
	v_cvt_f32_i32_e32 v146, v87
	v_cvt_f32_i32_e32 v145, v88
	v_cvt_f32_i32_e32 v138, v90
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v87, v96
	v_cvt_f32_i32_e32 v159, v97
	v_cvt_f32_i32_e32 v163, v101
	v_cvt_f32_i32_e32 v150, v103
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v105, v123
	v_cvt_f32_i32_e32 v97, v127
	v_cvt_f32_i32_e32 v96, v128
	v_cvt_f32_i32_e32 v160, v98
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v162, v100
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v139, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v151, v102
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v106, v122
	v_cvt_f32_i32_e32 v161, v99
	v_cvt_f32_i32_e32 v142, v71
	v_cvt_f32_i32_e32 v149, v104
	v_cvt_f32_i32_e32 v134, v75
	v_cvt_f32_i32_e32 v133, v76
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v132, v77
	v_cvt_f32_i32_e32 v131, v78
	v_cvt_f32_i32_e32 v130, v79
	v_cvt_f32_i32_e32 v129, v80
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v78, v2
	v_cvt_f32_i32_e32 v2, v14
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v4, v16
	v_cvt_f32_i32_e32 v16, v27
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v99, v125
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v57
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v27, v59
	v_cvt_f32_i32_e32 v26, v60
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v77, v3
	v_cvt_f32_i32_e32 v3, v15
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v19, v62
	v_cvt_f32_i32_e32 v21, v64
	v_cvt_f32_i32_e32 v15, v61
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v20, v63
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v33, v54, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v43, s21, v43, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s21, v44, 1
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
	v_add_lshl_u32 v44, s21, v44, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v44, 0x80000000, v44, s1
	buffer_load_u16 v52, v44, s[28:31], 0 offen
	scratch_load_b32 v44, off, off offset:744 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s21, v44, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s21, s21, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s21, s44
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	buffer_load_u16 v53, v44, s[28:31], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v55, off, off offset:936 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v55, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v56, off, off offset:972
	scratch_load_b32 v236, off, off offset:636
	scratch_load_b32 v227, off, off offset:608
	scratch_load_b32 v175, off, off offset:568
	scratch_load_b32 v176, off, off offset:572
	scratch_load_b32 v177, off, off offset:576
	scratch_load_b32 v169, off, off offset:544
	scratch_load_b32 v178, off, off offset:580
	scratch_load_b32 v244, off, off offset:664
	scratch_load_b32 v233, off, off offset:624
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v33, 16, v43
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(9)
	ds_load_b128 v[43:46], v56
	ds_load_b128 v[47:50], v56 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v33, v0
	s_clause 0x10                           ; 68-byte Folded Reload
	scratch_load_b32 v127, off, off offset:380
	scratch_load_b32 v128, off, off offset:384
	scratch_load_b32 v116, off, off offset:280
	scratch_load_b32 v117, off, off offset:284
	scratch_load_b32 v119, off, off offset:292
	scratch_load_b32 v121, off, off offset:348
	scratch_load_b32 v123, off, off offset:356
	scratch_load_b32 v167, off, off offset:536
	scratch_load_b32 v239, off, off offset:648
	scratch_load_b32 v231, off, off offset:616
	scratch_load_b32 v126, off, off offset:376
	scratch_load_b32 v118, off, off offset:288
	scratch_load_b32 v120, off, off offset:344
	scratch_load_b32 v122, off, off offset:352
	scratch_load_b32 v168, off, off offset:540
	scratch_load_b32 v240, off, off offset:652
	scratch_load_b32 v232, off, off offset:620
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(23) lgkmcnt(1)
	v_dual_fmac_f32 v175, v0, v43 :: v_dual_mul_f32 v0, v33, v152
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v152, off, off offset:388
	scratch_load_b32 v170, off, off offset:548
	scratch_load_b32 v246, off, off offset:672
	scratch_load_b32 v235, off, off offset:632
	scratch_load_b32 v225, off, off offset:604
	s_waitcnt vmcnt(27)
	v_fmac_f32_e32 v176, v0, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v33, v153
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v153, off, off offset:472
	scratch_load_b32 v234, off, off offset:628
	scratch_load_b32 v245, off, off offset:668
	scratch_load_b32 v224, off, off offset:600
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(28)
	v_fmac_f32_e32 v178, v0, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v33, v154
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v154, off, off offset:476
	scratch_load_b32 v230, off, off offset:612
	scratch_load_b32 v237, off, off offset:640
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v3, v3, v33
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v177, v0, v46 :: v_dual_lshlrev_b32 v0, 16, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v33, v1
	v_mul_f32_e32 v10, v33, v10
	v_mul_f32_e32 v2, v2, v33
	v_mul_f32_e32 v4, v4, v33
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v51, v0, v155
	scratch_load_b32 v155, off, off offset:480 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v6, v6, v0
	v_mul_f32_e32 v7, v7, v0
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v8, v8, v0 :: v_dual_fmac_f32 v153, v51, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v51, v0, v156
	scratch_load_b32 v156, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v154, v51, v44 :: v_dual_mul_f32 v51, v0, v157
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v156, v51, v45 :: v_dual_mul_f32 v51, v0, v158
	v_fmac_f32_e32 v155, v51, v46
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v51, 16, v52
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v52, v51, v159
	scratch_load_b32 v159, off, off offset:504 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v51, v32
	v_mul_f32_e32 v31, v51, v31
	v_mul_f32_e32 v34, v51, v34
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v126, v52, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v52, v51, v160
	scratch_load_b32 v160, off, off offset:508 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v51, v30
	v_mul_f32_e32 v9, v51, v9
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v127, v52, v44 :: v_dual_mul_f32 v52, v51, v161
	scratch_load_b32 v161, off, off offset:512 ; 4-byte Folded Reload
	v_fmac_f32_e32 v152, v52, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v52, v51, v162
	scratch_load_b32 v162, off, off offset:516 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v128, v52, v46
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v52, 16, v53
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v52, v108
	scratch_load_b32 v108, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v40, v52, v40
	v_mul_f32_e32 v42, v52, v42
	v_dual_mul_f32 v41, v52, v41 :: v_dual_fmac_f32 v116, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v109
	scratch_load_b32 v109, off, off offset:252 ; 4-byte Folded Reload
	v_mul_f32_e32 v53, v140, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v52, v39
	v_mul_f32_e32 v15, v52, v15
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v43, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v110
	scratch_load_b32 v110, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v119, v43, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v111
	scratch_load_b32 v111, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v118, v43, v46 :: v_dual_mul_f32 v43, v33, v144
	scratch_load_b32 v144, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v167, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v143
	scratch_load_b32 v143, off, off offset:444 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v168, v43, v48 :: v_dual_mul_f32 v43, v33, v142
	scratch_load_b32 v142, off, off offset:440 ; 4-byte Folded Reload
	v_fmac_f32_e32 v169, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v170, v43, v50 :: v_dual_mul_f32 v43, v0, v148
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v142, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v143, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v146
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v144, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v145
	scratch_load_b32 v145, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v145, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v163
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v120, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v121, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v122, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v149
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v123, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v108, v43, v47 :: v_dual_mul_f32 v43, v52, v113
	scratch_load_b32 v113, off, off offset:320 ; 4-byte Folded Reload
	v_fmac_f32_e32 v109, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v114
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v110, v43, v49 :: v_dual_mul_f32 v43, v52, v115
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v111, v43, v50
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v56 offset:512
	ds_load_b128 v[47:50], v56 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v246, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v33, v135
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:412
	scratch_load_b32 v112, off, off offset:316
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v159, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v33, v134
	scratch_load_b32 v134, off, off offset:408 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v160, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v33, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v161, v53, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v139, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v239, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v0, v138
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v134, v53, v44 :: v_dual_mul_f32 v53, v0, v137
	scratch_load_b32 v137, off, off offset:420 ; 4-byte Folded Reload
	v_fmac_f32_e32 v135, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v0, v136
	scratch_load_b32 v136, off, off offset:416 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v136, v53, v46 :: v_dual_mul_f32 v53, v103, v51
	scratch_load_b32 v103, off, off offset:312 ; 4-byte Folded Reload
	v_dual_fmac_f32 v234, v53, v43 :: v_dual_mul_f32 v53, v51, v102
	scratch_load_b32 v102, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v103, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v101
	scratch_load_b32 v101, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v112, v53, v45 :: v_dual_mul_f32 v53, v51, v100
	scratch_load_b32 v100, off, off offset:216 ; 4-byte Folded Reload
	v_fmac_f32_e32 v113, v53, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v107, v52
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v230, v53, v43 :: v_dual_mul_f32 v43, v52, v106
	scratch_load_b32 v106, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v33, v91
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v101, v43, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v105
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v100, v43, v45 :: v_dual_mul_f32 v43, v52, v104
	v_dual_fmac_f32 v102, v43, v46 :: v_dual_mul_f32 v43, v33, v132
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v162, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v131, v33
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v245, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v130, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v244, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v129, v33
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v240, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v0, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v137, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v89, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v237, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v88, v0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v236, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v87, v0
	scratch_load_b32 v87, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v235, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v95
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v106, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v94, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v233, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v93, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v232, v43, v49 :: v_dual_mul_f32 v43, v92, v51
	v_fmac_f32_e32 v231, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v99
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v98, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v227, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v97, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v225, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v96, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v224, v43, v50
	v_add_nc_u32_e32 v43, s23, v54
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v43, v43, s3, 1
	buffer_load_u16 v43, v43, s[16:19], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v55, v43
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v96, off, off offset:308
	scratch_load_b32 v94, off, off offset:300
	scratch_load_b32 v93, off, off offset:296
	scratch_load_b32 v107, off, off offset:340
	scratch_load_b32 v99, off, off offset:336
	scratch_load_b32 v98, off, off offset:332
	scratch_load_b32 v97, off, off offset:328
	scratch_load_b32 v95, off, off offset:304
	scratch_load_b32 v223, off, off offset:596
	scratch_load_b32 v222, off, off offset:592
	scratch_load_b32 v179, off, off offset:584
	scratch_load_b32 v221, off, off offset:588
	scratch_load_b32 v174, off, off offset:564
	scratch_load_b32 v173, off, off offset:560
	scratch_load_b32 v171, off, off offset:552
	scratch_load_b32 v172, off, off offset:556
	scratch_load_b32 v133, off, off offset:404
	scratch_load_b32 v132, off, off offset:400
	scratch_load_b32 v130, off, off offset:392
	scratch_load_b32 v131, off, off offset:396
	scratch_load_b32 v125, off, off offset:372
	scratch_load_b32 v124, off, off offset:368
	scratch_load_b32 v114, off, off offset:360
	scratch_load_b32 v115, off, off offset:364
	scratch_load_b32 v149, off, off offset:468
	scratch_load_b32 v148, off, off offset:464
	scratch_load_b32 v147, off, off offset:460
	scratch_load_b32 v146, off, off offset:456
	scratch_load_b32 v141, off, off offset:436
	scratch_load_b32 v140, off, off offset:432
	scratch_load_b32 v138, off, off offset:424
	scratch_load_b32 v139, off, off offset:428
	s_clause 0xc                            ; 52-byte Folded Reload
	scratch_load_b32 v92, off, off offset:276
	scratch_load_b32 v91, off, off offset:272
	scratch_load_b32 v90, off, off offset:268
	scratch_load_b32 v89, off, off offset:264
	scratch_load_b32 v88, off, off offset:244
	scratch_load_b32 v158, off, off offset:500
	scratch_load_b32 v166, off, off offset:532
	scratch_load_b32 v165, off, off offset:528
	scratch_load_b32 v164, off, off offset:524
	scratch_load_b32 v163, off, off offset:520
	scratch_load_b32 v157, off, off offset:496
	scratch_load_b32 v151, off, off offset:492
	scratch_load_b32 v150, off, off offset:488
	ds_load_b128 v[43:46], v56
	ds_load_b128 v[47:50], v56 offset:16
	s_clause 0x8                            ; 36-byte Folded Reload
	scratch_load_b32 v250, off, off offset:692
	scratch_load_b32 v248, off, off offset:676
	scratch_load_b32 v249, off, off offset:680
	scratch_load_b32 v243, off, off offset:660
	scratch_load_b32 v241, off, off offset:656
	scratch_load_b32 v238, off, off offset:644
	scratch_load_b32 v255, off, off offset:700
	scratch_load_b32 v253, off, off offset:696
	scratch_load_b32 v129, off, off offset:728
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(53) lgkmcnt(1)
	v_fmac_f32_e32 v96, v42, v43
	s_waitcnt vmcnt(51)
	v_dual_fmac_f32 v94, v40, v45 :: v_dual_fmac_f32 v93, v39, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v33, v71
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(46)
	v_fmac_f32_e32 v95, v41, v44
	s_waitcnt vmcnt(45)
	v_fmac_f32_e32 v223, v53, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(41) lgkmcnt(0)
	v_dual_mul_f32 v53, v33, v78 :: v_dual_fmac_f32 v174, v39, v47
	v_mul_f32_e32 v39, v33, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v222, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v33, v77
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(40)
	v_fmac_f32_e32 v173, v39, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v39, v33, v69
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v179, v53, v45
	s_waitcnt vmcnt(31)
	v_dual_fmac_f32 v125, v34, v47 :: v_dual_fmac_f32 v114, v31, v49
	s_waitcnt vmcnt(30)
	v_fmac_f32_e32 v115, v30, v50
	v_fmac_f32_e32 v171, v39, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v39, v33, v68 :: v_dual_mul_f32 v30, v52, v38
	scratch_load_b32 v31, off, off offset:724 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v124, v32, v48
	v_dual_fmac_f32 v172, v39, v50 :: v_dual_mul_f32 v39, v0, v75
	s_waitcnt vmcnt(22)
	v_fmac_f32_e32 v92, v30, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v30, v52, v37 :: v_dual_fmac_f32 v149, v39, v47
	v_mul_f32_e32 v39, v0, v74
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(21)
	v_fmac_f32_e32 v91, v30, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v52, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v148, v39, v48 :: v_dual_mul_f32 v39, v0, v73
	s_waitcnt vmcnt(20)
	v_fmac_f32_e32 v90, v30, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v30, v52, v35 :: v_dual_fmac_f32 v147, v39, v49
	v_mul_f32_e32 v39, v0, v72
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(19)
	v_dual_fmac_f32 v89, v30, v50 :: v_dual_mul_f32 v30, v67, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v146, v39, v50
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[34:37], v56 offset:512
	ds_load_b128 v[38:41], v56 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v33, v76
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v221, v53, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v0, v82
	scratch_load_b32 v82, off, off offset:688 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(18)
	v_dual_fmac_f32 v158, v53, v43 :: v_dual_mul_f32 v53, v0, v81
	scratch_load_b32 v81, off, off offset:708 ; 4-byte Folded Reload
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v157, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v0, v80
	scratch_load_b32 v80, off, off offset:716 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v164, v10, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v10, v18, v0 :: v_dual_fmac_f32 v163, v1, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v151, v53, v45
	scratch_load_b32 v1, off, off offset:720 ; 4-byte Folded Reload
	v_fmac_f32_e32 v97, v9, v38
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v255, v7, v40
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v253, v8, v41
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v31, v30, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v33, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v166, v30, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v33, v65
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v165, v30, v36
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v81, v10, v34 :: v_dual_mul_f32 v10, v0, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v141, v10, v35 :: v_dual_mul_f32 v10, v0, v16
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v80, v3, v40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:712
	scratch_load_b32 v16, off, off offset:704
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v1, v2, v39
	v_fmac_f32_e32 v140, v10, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v0, v14
	v_dual_mul_f32 v14, v21, v52 :: v_dual_mul_f32 v53, v0, v79
	v_dual_mul_f32 v0, v0, v5 :: v_dual_mul_f32 v5, v11, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v138, v10, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v25, v51
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v150, v53, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v51, v86
	scratch_load_b32 v86, off, off offset:240 ; 4-byte Folded Reload
	v_dual_mul_f32 v11, v13, v51 :: v_dual_fmac_f32 v250, v10, v34
	v_dual_mul_f32 v10, v51, v24 :: v_dual_fmac_f32 v133, v53, v43
	v_mul_f32_e32 v53, v51, v85
	scratch_load_b32 v85, off, off offset:236 ; 4-byte Folded Reload
	v_mul_f32_e32 v13, v20, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v107, v10, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v51, v23
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v132, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v51, v84
	scratch_load_b32 v84, off, off offset:232 ; 4-byte Folded Reload
	v_dual_mov_b32 v2, v1 :: v_dual_fmac_f32 v99, v10, v36
	v_mul_f32_e32 v10, v51, v22
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v130, v53, v45 :: v_dual_mul_f32 v53, v51, v83
	scratch_load_b32 v83, off, off offset:684 ; 4-byte Folded Reload
	v_dual_fmac_f32 v139, v0, v38 :: v_dual_fmac_f32 v98, v10, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v29, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v131, v53, v46
	v_dual_fmac_f32 v82, v5, v39 :: v_dual_fmac_f32 v249, v11, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v241, v13, v40 :: v_dual_fmac_f32 v248, v10, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v52, v28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v238, v14, v41
	v_fmac_f32_e32 v88, v10, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v52, v27
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v3, v4, v41 :: v_dual_fmac_f32 v16, v6, v39
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v86, v10, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v52, v26
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v85, v10, v37 :: v_dual_mul_f32 v10, v12, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v12, v19, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v84, v15, v38 :: v_dual_fmac_f32 v243, v12, v39
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v83, v10, v40
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v104, off, off offset:1128
	scratch_load_b32 v105, off, off offset:1132
	v_and_b32_e32 v1, 0x80, v129
.LBB0_9:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v31 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v221
	v_dual_mul_f32 v9, 0xbfb8aa3b, v223 :: v_dual_mov_b32 v182, v2
	v_mov_b32_e32 v181, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v80
	v_dual_mul_f32 v30, 0xbfb8aa3b, v163 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v181
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v3
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v31 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v173
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v12, 0, 0x42800000, s1
	v_exp_f32_e32 v13, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v37, 0xbfb8aa3b, v166 :: v_dual_fmac_f32 v10, 0xbfb8aa3b, v80
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v182 :: v_dual_mov_b32 v183, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v181 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v164
	v_exp_f32_e32 v10, v10
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v2, v2
	v_exp_f32_e32 v12, v12
	v_mul_f32_e32 v6, 0xbfb8aa3b, v174
	v_ldexp_f32 v4, v13, v4
	v_mul_f32_e32 v13, 0xbfb8aa3b, v81
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	v_mul_f32_e32 v36, 0xbfb8aa3b, v165
	v_ldexp_f32 v10, v10, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_mul_f32_e32 v3, 0xbfb8aa3b, v16
	v_dual_mul_f32 v13, 0xbfb8aa3b, v255 :: v_dual_mul_f32 v14, 0xbfb8aa3b, v253
	v_mul_f32_e32 v41, 0xbfb8aa3b, v148
	v_ldexp_f32 v0, v2, v0
	v_ldexp_f32 v11, v12, v11
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	v_dual_mov_b32 v180, v16 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v149
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v139
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	v_mul_f32_e32 v32, 0xbfb8aa3b, v151
	v_mul_f32_e32 v38, 0xbfb8aa3b, v150
	v_mul_f32_e32 v48, 0xbfb8aa3b, v158
	v_exp_f32_e32 v12, v12
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v180
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v255
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v253
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_ldexp_f32 v12, v12, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v250
	v_dual_mul_f32 v50, 0xbfb8aa3b, v132 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v179
	v_mul_f32_e32 v8, 0xbfb8aa3b, v222
	v_dual_mul_f32 v22, 0xbfb8aa3b, v172 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v171
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v13, v13, v3
	v_ldexp_f32 v14, v15, v14
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v15, v17, v16
	v_mul_f32_e32 v3, 0xbfb8aa3b, v82
	v_mul_f32_e32 v17, 0xbfb8aa3b, v83
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_add_f32 v13, 1.0, v13
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_add_f32 v15, 1.0, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_mul_f32_e32 v44, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v12, v12, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v18, 0xbfb8aa3b, v249
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v250
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v82
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v83
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	v_dual_mul_f32 v27, 0xbfb8aa3b, v238 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v157
	v_mul_f32_e32 v35, 0xbfb8aa3b, v147
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v249
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v16, v16, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v248
	v_ldexp_f32 v17, v17, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v243
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v18, v19, v18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_add_f32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_dual_mul_f32 v34, 0xbfb8aa3b, v146 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v140
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v19, v21, v20
	v_mul_f32_e32 v20, 0xbfb8aa3b, v241
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v61, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	v_dual_mul_f32 v24, 0xbfb8aa3b, v91 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v248
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v243 :: v_dual_fmac_f32 v64, 0xbfb8aa3b, v238
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v65, v65, v183
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v241
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v67, v20
	v_exp_f32_e32 v3, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, vcc_lo, v183, v65, v183
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v20, 0xbfb8aa3b, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_add_f32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v61, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v46, 0xbfb8aa3b, v141 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v130
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v61, v67, v62
	v_ldexp_f32 v62, v64, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v66, v69, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, null, v0, v0, v182
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v3, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v63, v69
	v_div_scale_f32 v67, null, v10, v10, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v63, v64
	v_div_scale_f32 v76, s1, v80, v10, v80
	v_rcp_f32_e32 v71, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	v_dual_add_f32 v33, 1.0, v33 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v49, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v133
	v_mul_f32_e32 v45, 0xbfb8aa3b, v114
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v64, v63, 1.0
	v_mul_f32_e32 v72, v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v56, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v67, v71, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v73, v63
	v_fma_f32 v74, -v66, v72, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s0, v182, v0, v182
	v_fmac_f32_e32 v71, v75, v71
	v_div_scale_f32 v75, null, v11, v11, v181
	v_fmac_f32_e32 v72, v74, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v74, v73, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v52, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v66, v72, v70
	v_fma_f32 v70, -v64, v74, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v59, 0xbfb8aa3b, v107 :: v_dual_mul_f32 v26, 0xbfb8aa3b, v94
	v_dual_mul_f32 v58, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v69, v72
	v_rcp_f32_e32 v69, v79
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v72, -v75, v77, 1.0
	v_fmac_f32_e32 v74, v70, v63
	v_div_fixup_f32 v65, v66, v65, v183
	v_div_scale_f32 v66, s2, v181, v11, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v77, v72, v77
	v_mul_f32_e32 v78, v76, v71
	v_fma_f32 v64, -v64, v74, v73
	v_div_scale_f32 v72, s0, v81, v12, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v54, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v67, v78, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v63, v64, v63, v74
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v28, 0xbfb8aa3b, v93 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v70, v71
	v_fma_f32 v70, -v79, v69, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v63, v0, v182
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v27, 0xbfb8aa3b, v92 :: v_dual_mul_f32 v4, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v67, v78, v76
	v_mul_f32_e32 v67, v66, v77
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, null, v13, v13, v180
	v_div_scale_f32 v76, null, v14, v14, v255
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v75, v67, v66
	v_mul_f32_e32 v74, v72, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v2, 0xbfb8aa3b, v84 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v85
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v73, v77
	v_div_fmas_f32 v64, v64, v71, v78
	v_rcp_f32_e32 v71, v70
	v_fma_f32 v63, -v79, v74, v72
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v66, -v75, v67, v66
	v_div_fixup_f32 v10, v64, v10, v80
	v_rcp_f32_e32 v64, v76
	v_div_scale_f32 v75, null, v15, v15, v253
	v_fmac_f32_e32 v74, v63, v69
	v_div_scale_f32 v63, s1, v180, v13, v180
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v70, v71, 1.0
	v_div_fmas_f32 v66, v66, v77, v67
	v_fma_f32 v67, -v79, v74, v72
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v76, v64, 1.0
	v_fmac_f32_e32 v71, v73, v71
	v_rcp_f32_e32 v73, v75
	v_div_scale_f32 v80, s0, v253, v15, v253
	v_fmac_f32_e32 v64, v78, v64
	v_div_scale_f32 v77, s2, v255, v14, v255
	v_div_fmas_f32 v67, v67, v69, v74
	v_div_scale_f32 v79, null, v16, v16, v250
	v_div_fixup_f32 v11, v66, v11, v181
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v75, v73, 1.0
	v_mul_f32_e32 v72, v63, v71
	v_div_fixup_f32 v12, v67, v12, v81
	s_mov_b32 vcc_lo, s1
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v78, v73
	v_fma_f32 v69, -v70, v72, v63
	v_rcp_f32_e32 v78, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v67, v80, v73 :: v_dual_mul_f32 v74, v77, v64
	v_fmac_f32_e32 v72, v69, v71
	v_div_scale_f32 v69, null, v17, v17, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v76, v74, v77
	v_fma_f32 v63, -v70, v72, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v70, v69
	v_fma_f32 v81, -v79, v78, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v66, v64
	v_fma_f32 v66, -v75, v67, v80
	v_div_fmas_f32 v63, v63, v71, v72
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v71, -v76, v74, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v67, v66, v73
	v_fma_f32 v72, -v69, v70, 1.0
	v_div_fixup_f32 v13, v63, v13, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v64, v71, v64, v74
	v_fma_f32 v71, -v75, v67, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v70, v72, v70
	v_div_scale_f32 v72, null, v18, v18, v83
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v75, s1, v82, v17, v82
	v_div_fmas_f32 v67, v71, v73, v67
	v_rcp_f32_e32 v71, v72
	v_fmac_f32_e32 v78, v81, v78
	v_div_scale_f32 v81, s3, v250, v16, v250
	v_mul_f32_e32 v73, v75, v70
	v_div_fixup_f32 v63, v64, v14, v255
	v_div_fixup_f32 v64, v67, v15, v253
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v66, v81, v78
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v15, -v69, v73, v75
	v_div_scale_f32 v67, null, v19, v19, v249
	v_fma_f32 v74, -v79, v66, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v15, v70
	v_div_scale_f32 v15, s0, v83, v18, v83
	v_fmac_f32_e32 v66, v74, v78
	v_fma_f32 v74, -v72, v71, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v14, -v79, v66, v81
	v_fmac_f32_e32 v71, v74, v71
	v_div_scale_f32 v74, null, v68, v68, v248
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v14, v14, v78, v66
	v_rcp_f32_e32 v66, v67
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v76, v14, v16, v250
	v_fma_f32 v14, -v69, v73, v75
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v69, -v67, v66, 1.0
	v_div_fmas_f32 v14, v14, v70, v73
	v_div_scale_f32 v73, s1, v249, v19, v249
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v74, v75, 1.0
	v_div_fixup_f32 v78, v14, v17, v82
	v_div_scale_f32 v82, null, v62, v62, v238
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, null, v61, v61, v241
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v81, v77
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, null, v33, v33, v243
	v_rcp_f32_e32 v14, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v69, v14, 1.0
	v_fmac_f32_e32 v14, v80, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v77, v81, 1.0
	v_fmac_f32_e32 v81, v80, v81
	v_dual_mul_f32 v17, v73, v66 :: v_dual_mul_f32 v16, v15, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v72, v16, v15
	v_fmac_f32_e32 v16, v70, v71
	v_div_scale_f32 v70, s2, v248, v68, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v15, -v72, v16, v15
	v_fma_f32 v72, -v67, v17, v73
	v_mul_f32_e32 v79, v70, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v15, v15, v71, v16
	v_rcp_f32_e32 v71, v82
	v_fmac_f32_e32 v17, v72, v66
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v16, -v74, v79, v70
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v83, v15, v18, v83
	v_div_scale_f32 v18, s3, v241, v61, v241
	v_fma_f32 v15, -v67, v17, v73
	v_fmac_f32_e32 v79, v16, v75
	v_div_scale_f32 v72, s0, v243, v33, v243
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v82, v71, 1.0
	v_div_fmas_f32 v15, v15, v66, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v17, -v74, v79, v70
	v_mul_f32_e32 v70, v18, v81
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v71, v67, v71
	v_div_scale_f32 v67, s1, v238, v62, v238
	v_div_fixup_f32 v73, v15, v19, v249
	v_fma_f32 v15, -v77, v70, v18
	v_div_fmas_f32 v17, v17, v75, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v19, v67, v71
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v15, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v82, v19, v67
	v_dual_mul_f32 v16, v72, v14 :: v_dual_fmac_f32 v19, v15, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v69, v16, v72
	v_fma_f32 v15, -v82, v19, v67
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v16, v66, v14
	v_div_fixup_f32 v66, v17, v68, v248
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v9, -v69, v16, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v223
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v9, v14, v16
	v_fma_f32 v14, -v77, v70, v18
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v245, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v9, v33, v243
	v_div_fmas_f32 v14, v14, v81, v70
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v15, v71, v19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v246, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v61, v14, v61, v241
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v239, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v8, v62, v238
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v222
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v7, v16, v17
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_exp_f32_e32 v0, v14
	v_dual_fmac_f32 v65, 0xbfb8aa3b, v221 :: v_dual_mul_f32 v16, v244, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v240, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v234, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v223
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v0, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v14, v237, v13 :: v_dual_mul_f32 v13, v236, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v7, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, vcc_lo, v223, v67, v223
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v232, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v0 :: v_dual_mul_f32 v10, v233, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v68, v65, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v0, v227, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v69, v69, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v7, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v235, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, null, v63, v63, v222
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v230, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v70, v65
	v_div_scale_f32 v66, s0, v222, v63, v222
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v71, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v72, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v68, v75, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v225, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v76, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v77, -v64, v71, 1.0
	v_fma_f32 v61, -v68, v75, v70
	v_div_scale_f32 v70, s1, v221, v69, v221
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v71, v77, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v231, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v74
	v_div_fmas_f32 v61, v61, v65, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v224, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v61, v61, v67, v223
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v74, v73, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v78, 0xbfb8aa3b, v174 :: v_dual_fmac_f32 v73, v72, v73
	v_exp_f32_e32 v29, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v70, v73
	v_mul_f32_e32 v68, v66, v71
	v_fma_f32 v62, -v74, v76, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v75, -v64, v68, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v62, v73
	v_fmac_f32_e32 v68, v75, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v72, null, v33, v33, v179
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v74, v76, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v64, -v64, v68, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v72
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v64, v64, v71, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v173
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_exp_f32_e32 v25, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v72, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v75, null, v66, v66, v174
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v171
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v25, v25, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v75
	v_fmac_f32_e32 v65, v67, v65
	v_div_scale_f32 v67, s2, v179, v33, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v68, v67, v65
	v_fma_f32 v29, -v72, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v29, v65
	v_div_fixup_f32 v29, v64, v63, v222
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v72, v68, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v67, v67, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v70, v70, v73, v76
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v67, v67, v171
	v_div_fixup_f32 v25, v70, v69, v221
	v_fma_f32 v70, -v75, v62, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v74, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v25, v177, v25 :: v_dual_fmac_f32 v62, v70, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v65, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, s0, v174, v66, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v64, v33, v179
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v68, v62
	v_div_scale_f32 v69, null, v63, v63, v173
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v75, v70, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v65, v69
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v62
	v_fma_f32 v71, -v69, v65, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v178, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v64, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v175, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v71, v65
	v_div_scale_f32 v71, s1, v173, v63, v173
	v_fma_f32 v68, -v75, v70, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v73, v74, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v72, v71, v65
	v_div_fmas_f32 v62, v68, v62, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v68, null, v61, v61, v172
	v_fma_f32 v75, -v69, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v64, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v64, v68
	v_div_fixup_f32 v62, v62, v66, v174
	v_fmac_f32_e32 v72, v75, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v176, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s0, v171, v67, v171
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v69, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v166
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v71, v37, v74
	v_div_fmas_f32 v36, v66, v65, v72
	v_fma_f32 v72, -v68, v64, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	v_cndmask_b32_e64 v66, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v36, v36, v63, v173
	v_fma_f32 v63, -v73, v71, v37
	v_fmac_f32_e32 v64, v72, v64
	v_div_scale_f32 v72, s1, v172, v61, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v63, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v70, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v63, v72, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v73, v71, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v68, v63, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v30
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v168, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v31, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v30, v37, v74, v71
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v68, v63, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v163
	v_ldexp_f32 v31, v31, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v66, 0xbfb8aa3b, v165 :: v_dual_add_f32 v69, 1.0, v31
	v_exp_f32_e32 v66, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v30, v67, v171
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v169, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v66, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v73, v73, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v66
	v_div_fmas_f32 v37, v37, v64, v63
	v_div_scale_f32 v63, vcc_lo, v166, v73, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v75, null, v65, v65, v165
	v_div_fixup_f32 v37, v37, v61, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v75
	v_fma_f32 v74, -v66, v70, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v170, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v61, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v72, 1.0
	v_fmac_f32_e32 v72, v64, v72
	v_div_scale_f32 v64, s0, v165, v65, v165
	v_fmac_f32_e32 v70, v74, v70
	v_div_scale_f32 v74, null, v69, v69, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v67, v64, v72
	v_mul_f32_e32 v71, v63, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v76, v74
	v_fma_f32 v68, -v75, v67, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v66, v71, v63
	v_fmac_f32_e32 v71, v37, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v167, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v66, v71, v63
	v_fma_f32 v63, -v74, v76, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v62, v62, v70, v71
	v_fmac_f32_e32 v76, v63, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v66, null, v61, v61, v163
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, s1, v164, v69, v164
	v_rcp_f32_e32 v48, v66
	v_div_fixup_f32 v62, v62, v73, v166
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v68, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v158
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v67, v64
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v71, -v66, v48, 1.0
	v_div_fmas_f32 v64, v64, v72, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	v_exp_f32_e32 v40, v70
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v48, v71, v48
	v_div_scale_f32 v72, s0, v163, v61, v163
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v64, v65, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v157
	v_ldexp_f32 v38, v40, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v67, v63, v76
	v_mul_f32_e32 v40, v72, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v74, v67, v63
	v_fma_f32 v38, -v66, v40, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v67, v65, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v38, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v74, v67, v63
	v_div_scale_f32 v74, null, v73, v73, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v71, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v68, v74
	v_div_fmas_f32 v63, v63, v76, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v40, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v65, null, v67, v67, v157
	v_div_fmas_f32 v40, v66, v48, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v74, v68, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v151
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v65
	v_div_scale_f32 v72, vcc_lo, v158, v73, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v38, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v63, v69, v164
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v40, v61, v163
	v_div_scale_f32 v75, s0, v157, v67, v157
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v40, -v65, v66, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v161, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, null, v71, v71, v150
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v70
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v40, v66
	v_mul_f32_e32 v63, v72, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v160, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v159, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v74, v63, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v77, null, v64, v64, v151
	v_dual_fmac_f32 v63, v70, v68 :: v_dual_mul_f32 v70, v75, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v61, v69, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v162, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v74, v63, v72
	v_rcp_f32_e32 v74, v77
	v_fma_f32 v72, -v65, v70, v75
	v_fmac_f32_e32 v69, v76, v69
	v_div_scale_f32 v76, s1, v150, v71, v150
	v_div_fmas_f32 v51, v62, v68, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v70, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v63, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v72, -v77, v74, 1.0
	v_fma_f32 v65, -v65, v70, v75
	v_div_fixup_f32 v51, v51, v73, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v149 :: v_dual_fmac_f32 v74, v72, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s2, v151, v64, v151
	v_div_fmas_f32 v41, v65, v66, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_cndmask_b32_e64 v70, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v63
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v41, v41, v67, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v148
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v77, v65, v72
	v_mul_f32_e32 v68, v76, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v154, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v35, v74
	v_fma_f32 v73, -v61, v68, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v70
	v_ldexp_f32 v62, v63, v62
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v73, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v61, -v61, v68, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v147
	v_ldexp_f32 v35, v35, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v61, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v77, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v34, v34, v74, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v68, v63
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v34, v64, v151
	v_div_scale_f32 v68, null, v65, v65, v148
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v35, v61, v71, v150
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v68
	v_div_scale_f32 v75, null, v73, v73, v147
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v155, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v62, v62, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v61, v75
	v_rcp_f32_e32 v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v72, v66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v68, v74, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v67, v74
	v_fma_f32 v67, -v75, v61, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v156, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v70, v69, 1.0
	v_div_scale_f32 v71, null, v66, v66, v146
	v_fmac_f32_e32 v61, v67, v61
	v_div_scale_f32 v67, s1, v147, v73, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v63, v69
	v_div_scale_f32 v63, vcc_lo, v149, v62, v149
	v_mul_f32_e32 v76, v63, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v64, -v70, v76, v63
	v_fmac_f32_e32 v76, v64, v69
	v_div_scale_f32 v64, s0, v148, v65, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v70, v76, v63
	v_mul_f32_e32 v70, v64, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v63, v63, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v71
	v_fma_f32 v72, -v68, v70, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v153, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v63, v62, v149
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v76, v67, v61 :: v_dual_mul_f32 v51, v142, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v141
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v71, v69, 1.0
	v_fmac_f32_e32 v70, v72, v74
	v_fma_f32 v62, -v75, v76, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v63, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v68, v70, v64
	v_div_scale_f32 v68, s2, v146, v66, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v76, v62, v61 :: v_dual_fmac_f32 v63, 0xbfb8aa3b, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v74, v70
	v_mul_f32_e32 v70, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	v_exp_f32_e32 v42, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v75, v76, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v71, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v75, null, v63, v63, v141
	v_div_fmas_f32 v61, v67, v61, v76
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v42, v42, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v47, v69
	v_div_fixup_f32 v47, v64, v65, v148
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v62, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v61, v73, v147
	v_fma_f32 v61, -v71, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v50
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v143, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v64, v64, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v61, v61, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v62, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v69, v67
	v_div_fixup_f32 v39, v61, v66, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v68, v62
	v_div_scale_f32 v68, s0, v141, v63, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v71, -v67, v69, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v70, v68, v62 :: v_dual_mul_f32 v39, v145, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v71, v69
	v_div_scale_f32 v71, s1, v140, v64, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v66, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v74, 0xbfb8aa3b, v138 :: v_dual_add_f32 v61, 1.0, v61
	v_exp_f32_e32 v65, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v65, v65, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v75, v70, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v65, 1.0, v65 :: v_dual_fmac_f32 v70, v72, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v71, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v73, null, v65, v65, v138
	v_fma_f32 v68, -v75, v70, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v67, v72, v71
	v_rcp_f32_e32 v74, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v62, v68, v62, v70
	v_fmac_f32_e32 v72, v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, s0, v138, v65, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v62, v62, v63, v141
	v_fma_f32 v63, -v67, v72, v71
	v_div_scale_f32 v67, null, v61, v61, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v66, -v73, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v74, v66, v74
	v_rcp_f32_e32 v66, v67
	v_div_fmas_f32 v50, v63, v69, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v133
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v60, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v64, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v73, v71, v60
	v_fma_f32 v72, -v67, v66, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v43
	v_exp_f32_e32 v69, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v64, v74
	v_fmac_f32_e32 v66, v72, v66
	v_div_scale_f32 v72, s1, v139, v61, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v70, v68
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v73, v71, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v64, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v69, v63
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v67, v64, v72
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v69, null, v73, v73, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v63, 1.0, v63 :: v_dual_fmac_f32 v64, v49, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v69
	v_div_fmas_f32 v43, v60, v74, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_scale_f32 v75, null, v63, v63, v132
	v_fma_f32 v60, -v67, v64, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v72, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v60, v60, v66, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v69, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v130
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, vcc_lo, v133, v73, v133
	v_div_fixup_f32 v60, v60, v61, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v74, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v75, v72, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v68
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v71, v64, v70 :: v_dual_fmac_f32 v72, v66, v72
	v_div_scale_f32 v66, s0, v132, v63, v132
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v49, v43, v65, v138
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v137, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v69, v71, v64
	v_mul_f32_e32 v65, v66, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v61, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v68, v68, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v60, v70
	v_fma_f32 v67, -v75, v65, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v61, 1.0, v61 :: v_dual_mul_f32 v42, v144, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v134, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v69, v71, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v67, v72
	v_div_scale_f32 v67, null, v61, v61, v130
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v62, v62, v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v67
	v_fma_f32 v66, -v75, v65, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v136, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v62, v73, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v64, -v74, v76, 1.0
	v_div_fmas_f32 v65, v66, v72, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v67, v56, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v64, v76
	v_div_scale_f32 v64, s1, v131, v68, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v71, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v64, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s0, v130, v61, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v65, v63, v132
	v_fma_f32 v65, -v74, v66, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v52, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v52, v72, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v66, v65, v76 :: v_dual_add_f32 v73, 1.0, v45
	v_fma_f32 v45, -v67, v52, v72
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v74, v66, v64
	v_fmac_f32_e32 v52, v45, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v69
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v45, v71, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v74, null, v73, v73, v125
	v_div_fmas_f32 v64, v64, v76, v66
	v_fma_f32 v66, -v67, v52, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v44, v65
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v69, v74
	v_div_scale_f32 v65, null, v67, v67, v124
	v_div_fmas_f32 v52, v66, v56, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v65
	v_div_scale_f32 v72, vcc_lo, v125, v73, v125
	v_div_fixup_f32 v44, v52, v61, v130
	v_fma_f32 v45, -v74, v69, 1.0
	v_div_scale_f32 v61, null, v71, v71, v114
	v_div_scale_f32 v75, s0, v124, v67, v124
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v56, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v65, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v69, v45, v69 :: v_dual_fmac_f32 v66, v52, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v52, v127, v63 :: v_dual_add_f32 v63, 1.0, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v64, v68, v131
	v_rcp_f32_e32 v68, v61
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v126, v62
	v_mul_f32_e32 v50, v135, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v63, v63, v115
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v128, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v61, v68, 1.0
	v_fmac_f32_e32 v68, v76, v68
	v_mul_f32_e32 v64, v72, v69
	v_div_scale_f32 v76, s1, v114, v71, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v74, v64, v72
	v_fmac_f32_e32 v64, v70, v69
	v_mul_f32_e32 v70, v75, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v74, v64, v72
	v_rcp_f32_e32 v74, v77
	v_fma_f32 v72, -v65, v70, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v59, v62, v69, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v76, v68
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v107
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v77, v74, 1.0
	v_fma_f32 v65, -v65, v70, v75
	v_div_fixup_f32 v59, v59, v73, v125
	v_fma_f32 v73, -v61, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v64, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v72, v74
	v_div_scale_f32 v72, s2, v115, v63, v115
	v_div_fmas_f32 v58, v65, v66, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v72, v74
	v_fmac_f32_e32 v69, v73, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	v_ldexp_f32 v62, v64, v62
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v99
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v77, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v61, v69, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v55, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v70
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v62, v62, v107
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v58, v58, v67, v124
	v_div_fmas_f32 v61, v61, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v77, v65, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v66
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v53, v53, v74, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v70, v69, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v53, v53, v63, v115
	v_div_scale_f32 v68, null, v65, v65, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v64, v69
	v_div_scale_f32 v64, vcc_lo, v107, v62, v107
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v61, v71, v114
	v_rcp_f32_e32 v74, v68
	v_mul_f32_e32 v76, v64, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v152, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v73, v73, v98
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v123, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v70, v76, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v122, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v68, v74, 1.0
	v_fmac_f32_e32 v76, v61, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v121, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v67, v74
	v_fma_f32 v64, -v70, v76, v64
	v_div_scale_f32 v67, s0, v99, v65, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v75, v63, 1.0
	v_div_scale_f32 v70, s1, v98, v73, v98
	v_div_fmas_f32 v64, v64, v69, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v120, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v71, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v59, v64, v62, v107
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v70, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v75, v76, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v78
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v66, v72, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v75, v76, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v67, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v54, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v58, v58, v97
	v_fma_f32 v72, -v68, v66, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v57, v71
	v_fmac_f32_e32 v66, v72, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v68, v66, v67
	v_div_scale_f32 v68, s2, v97, v58, v97
	v_fma_f32 v64, -v71, v57, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v75, null, v72, v72, v96
	v_fmac_f32_e32 v57, v64, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v66, v67, v74, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v64, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v67, v68, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v66, v65, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v28, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v71, v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v70, v63, v76
	v_fmac_f32_e32 v67, v54, v57
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v24
	v_exp_f32_e32 v66, v74
	v_ldexp_f32 v28, v28, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v75
	v_fma_f32 v54, -v71, v67, v68
	v_div_fixup_f32 v63, v63, v73, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v54, v54, v57, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, s0, v96, v72, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v68, null, v28, v28, v95
	v_fma_f32 v70, -v75, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v64, v66, v64
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v68
	v_div_fixup_f32 v54, v54, v58, v97
	v_fmac_f32_e32 v62, v70, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v66, v26, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v73, v73, v93
	v_fma_f32 v70, -v68, v57, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v75, v66, v26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v113, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v70, v57
	v_div_scale_f32 v70, s1, v95, v28, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v64, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v112, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v74
	v_mul_f32_e32 v76, v70, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v67, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v75, v66, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v68, v76, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v58
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v62, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, s0, v93, v73, v93
	v_fmac_f32_e32 v76, v71, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v103, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v74, v65, 1.0
	v_div_scale_f32 v66, null, v58, v58, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v62, -v68, v76, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v65, v59, v65
	v_rcp_f32_e32 v59, v66
	v_div_fmas_f32 v24, v62, v57, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v92
	v_cndmask_b32_e64 v62, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v72, v96
	v_mul_f32_e32 v70, v27, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s2
	v_exp_f32_e32 v68, v68
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v28, v95
	v_fma_f32 v72, -v66, v59, 1.0
	v_fma_f32 v28, -v74, v70, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_exp_f32_e32 v62, v62
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v72, v59
	v_div_scale_f32 v72, s1, v94, v58, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v68, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v28, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v28, v72, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v62, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v74, v70, v27
	v_fma_f32 v74, -v66, v28, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v90
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v23, v23, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v57, 1.0, v57 :: v_dual_fmac_f32 v28, v74, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v21, v75
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v68, null, v57, v57, v91
	v_div_fmas_f32 v27, v27, v65, v70
	v_fma_f32 v65, -v66, v28, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v68
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v76, s0, v91, v57, v91
	v_fma_f32 v74, -v75, v21, 1.0
	v_div_fmas_f32 v28, v65, v59, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v62, v67
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, vcc_lo, v92, v23, v92
	v_fmac_f32_e32 v21, v74, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v62, -v68, v72, 1.0
	v_div_fixup_f32 v28, v28, v58, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v67, v21
	v_fmac_f32_e32 v72, v62, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v73, v93
	v_div_scale_f32 v77, null, v70, v70, v90
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v119, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v75, v74, v67
	v_mul_f32_e32 v73, v76, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v118, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v58, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v28, v21
	v_fma_f32 v28, -v68, v73, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v65, v117, v24 :: v_dual_mul_f32 v66, v116, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v75, v74, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v73, v28, v72
	v_fma_f32 v27, -v77, v78, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v24, v24, v89
	v_div_fmas_f32 v21, v26, v21, v74
	v_fma_f32 v26, -v68, v73, v76
	v_fmac_f32_e32 v78, v27, v78
	v_div_scale_f32 v27, s1, v90, v70, v90
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v26, v72, v73
	v_mul_f32_e32 v26, v27, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v58, v28
	v_div_fixup_f32 v21, v21, v23, v92
	v_div_fixup_f32 v20, v20, v57, v91
	v_fma_f32 v4, -v77, v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v26, v4, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v3, -v28, v58, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	v_exp_f32_e32 v2, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v77, v26, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v57, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v3, v58
	v_div_scale_f32 v73, s0, v89, v24, v89
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v84
	v_ldexp_f32 v4, v4, v67
	v_exp_f32_e32 v67, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v2, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v27, v78, v26
	v_mul_f32_e32 v27, v73, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v70, v90
	v_fma_f32 v72, -v28, v27, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v4, v4, v88
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v27, v72, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v23, v3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v57
	v_div_scale_f32 v23, null, v2, v2, v86
	v_fma_f32 v28, -v28, v27, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v75, v75, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v73, v23
	v_div_fmas_f32 v27, v28, v58, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v28, null, v3, v3, v84
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v57, v70, 1.0
	v_div_scale_f32 v58, vcc_lo, v88, v4, v88
	v_rcp_f32_e32 v77, v28
	v_div_fixup_f32 v24, v27, v24, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v70, v67, v70
	v_fma_f32 v67, -v23, v73, 1.0
	v_div_scale_f32 v79, s0, v86, v2, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v74, v76, 1.0
	v_dual_mul_f32 v78, v58, v70 :: v_dual_fmac_f32 v73, v67, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v54, v106, v54 :: v_dual_mul_f32 v67, v111, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v28, v77, 1.0
	v_fmac_f32_e32 v76, v27, v76
	v_div_scale_f32 v27, s1, v85, v75, v85
	v_fma_f32 v24, -v57, v78, v58
	v_mul_f32_e32 v80, v79, v73
	v_fmac_f32_e32 v77, v68, v77
	v_div_scale_f32 v82, s2, v84, v3, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v81, v27, v76 :: v_dual_fmac_f32 v78, v24, v70
	v_fma_f32 v24, -v23, v80, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v83, v82, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v110, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v74, v81, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v109, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v24, v73
	v_fma_f32 v24, -v28, v83, v82
	v_fma_f32 v20, -v57, v78, v58
	v_fmac_f32_e32 v81, v26, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v23, v80, v79
	v_fmac_f32_e32 v83, v24, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v20, v20, v70, v78
	v_fma_f32 v24, -v74, v81, v27
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v108, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v28, v83, v82
	v_div_fmas_f32 v23, v23, v73, v80
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v20, v4, v88
	v_div_fmas_f32 v24, v24, v76, v81
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v23, v2, v86
	v_div_fmas_f32 v26, v26, v77, v83
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v21, |v33|, |v29|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v24, v75, v85
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, |v25|, |v37|, |v36|
	v_max3_f32 v24, |v48|, |v40|, |v38|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v3, v26, v3, v84
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v32|, |v18|, |v16|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v102, v20
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v21, |v22|, v23
	v_max_f32_e64 v23, |v46|, |v41|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v87, v3
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, |v31|, |v30|, |v19|
	v_max3_f32 v21, v24, v26, |v17|
	v_max3_f32 v24, |v35|, |v51|, |v47|
	v_max3_f32 v27, |v60|, |v50|, |v49|
	v_max3_f32 v28, |v43|, |v14|, |v13|
	v_max_f32_e64 v70, |v56|, |v52|
	v_max3_f32 v73, |v45|, |v69|, |v61|
	v_max3_f32 v75, |v71|, |v64|, |v63|
	v_max3_f32 v76, |v54|, |v10|, |v8|
	v_max3_f32 v26, |v42|, |v39|, |v15|
	v_max3_f32 v23, v23, |v34|, v24
	v_max3_f32 v24, v27, v28, |v12|
	v_max3_f32 v27, |v55|, |v53|, |v11|
	v_max3_f32 v28, v70, |v44|, v73
	v_max3_f32 v75, v75, v76, |v9|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v70, v100, v2 :: v_dual_mul_f32 v73, v101, v4
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v20, v3, v21
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v3, v23, v26, v24
	v_max3_f32 v4, v28, v27, v75
	v_max_f32_e64 v20, |v66|, |v65|
	v_max3_f32 v21, |v59|, |v74|, |v72|
	v_max3_f32 v24, |v73|, |v70|, |v58|
	v_max3_f32 v26, |v57|, |v0|, |v5|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v27, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v20, |v62|, v21
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v21, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, v24, v26, |v6|
	v_max_f32_e32 v26, v27, v27
	v_max3_f32 v23, |v68|, |v67|, |v7|
	v_max_f32_e32 v27, v28, v28
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_max_f32 v75, v2, v26 :: v_dual_and_b32 v28, 0x60, v129
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 3, v129
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v20, v20, v23, v24
	v_dual_max_f32 v76, v3, v21 :: v_dual_max_f32 v77, v4, v27
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v4, 4, v129
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v21, v2, 9, 0
	v_lshlrev_b32_e32 v24, 5, v2
	v_lshlrev_b32_e32 v23, 4, v129
	v_permlanex16_b32 v3, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v27, 8, v129
	v_lshl_add_u32 v21, v4, 2, v21
	v_lshlrev_b32_e32 v26, 1, v1
	v_and_or_b32 v23, 0x680, v23, v24
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v3
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v79, v24, v28
	v_lshl_add_u32 v21, v27, 4, v21
	v_lshrrev_b32_e32 v80, 3, v1
	v_xor_b32_e32 v23, v23, v28
	v_lshl_add_u32 v81, v4, 6, 0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v20, v3
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v3, v21, v26, v79
	v_lshlrev_b32_e32 v27, 3, v27
	v_add_nc_u32_e32 v1, 0, v1
	v_add3_u32 v20, v81, v80, v23
	ds_store_b128 v3, v[75:78]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[75:78], v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v3, v75 :: v_dual_mov_b32 v20, v76
	v_mov_b32_e32 v21, v77
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v23, v75, v75
	v_max_f32_e32 v75, v76, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v78, v78
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v20, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v3, v23, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v23, v77, v77 :: v_dual_max_f32 v20, v75, v20
	v_max_f32_e32 v75, v78, v78
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v77, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v21, v23, v21 :: v_dual_mov_b32 v78, v20
	v_max_f32_e32 v23, v76, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v75, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v76, v23 :: v_dual_max_f32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v78, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v75, v75, v75 :: v_dual_max_f32 v20, v20, v78
	v_dual_max_f32 v76, v76, v76 :: v_dual_mov_b32 v77, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v21, v21, v75 :: v_dual_mov_b32 v78, v20
	v_max_f32_e32 v23, v23, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v79, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v80, v23 :: v_dual_max_f32 v75, v77, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v78, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v3, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v3, v79, v79 :: v_dual_max_f32 v76, v20, v76
	v_max_f32_e32 v20, v80, v80
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v79, 1, v28
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v21, v3
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v3, 5, v4
	v_lshl_add_u32 v2, v2, 4, 0
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v23, v20
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v79, v27
.Ltmp51:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v23, 4, v105
	v_and_b32_e32 v20, 63, v129
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v2, v3, v27
	ds_store_b128 v1, v[75:78]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[75:78], v2
.Ltmp53:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v23
	v_or_b32_e32 v80, 32, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v75, v75
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v78, v78, v78 :: v_dual_max_f32 v21, 0x2b8cbccc, v1
	v_max_f32_e32 v77, 0x2b8cbccc, v77
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v27, null, 0x40e00000, 0x40e00000, v21
	v_div_scale_f32 v81, vcc_lo, v21, 0x40e00000, v21
	v_div_scale_f32 v82, null, 0x40e00000, 0x40e00000, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v75, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s34, v3
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v84, v82
	v_max_f32_e32 v76, 0x2b8cbccc, v76
	v_max_f32_e32 v78, 0x2b8cbccc, v78
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[42:43], v[3:4]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v79, -v27, v75, 1.0
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v78
	v_fmac_f32_e32 v75, v79, v75
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s0, s34, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v80, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v83, v81, v75
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[40:41], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v85, -v82, v84, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[40:41], v[79:80]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v27, v83, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v85, s6, v77, 0x40e00000, v77
	v_fmac_f32_e32 v83, v3, v75
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v27, -v27, v83, v81
	v_rcp_f32_e32 v81, v86
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[42:43], v[79:80]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v80.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[40:41], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v27, v27, v75, v83
	v_mul_f32_e32 v75, v85, v84
	v_rcp_f32_e32 v83, v87
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[42:43], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v21, v27, 0x40e00000, v21
	v_fma_f32 v79, -v86, v81, 1.0
	v_fma_f32 v27, -v82, v75, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v79, v81
	v_div_scale_f32 v79, s7, v76, 0x40e00000, v76
	v_fmac_f32_e32 v75, v27, v84
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v27.l, v21.h
	v_mov_b16_e32 v27.h, v80.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v88, -v87, v83, 1.0
	v_mul_f32_e32 v89, v79, v81
	v_fma_f32 v3, -v82, v75, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v27
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v83, v88, v83
	v_div_scale_f32 v88, s8, v78, 0x40e00000, v78
	v_fma_f32 v27, -v86, v89, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v21, v21, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v75, v3, v84, v75
	v_mul_f32_e32 v82, v88, v83
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v89, v27, v81
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v84, 0xffff0000, v21
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v75, v75, 0x40e00000, v77
	v_fma_f32 v27, -v87, v82, v88
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v77, -v86, v89, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v79, null, v84, v84, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v82, v27, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v27, v77, v81, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v81, v79
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v77, -v87, v82, v88
	s_mov_b32 vcc_lo, s8
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v80.l, v75.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v27, v27, 0x40e00000, v76
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[40:41], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v76, v77, v83, v82
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v84, v84, v29
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v77, 1, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v79, v81, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v76, v76, 0x40e00000, v78
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v78.l, v27.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v85, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v78.h, v80.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v83, v81
	v_div_scale_f32 v83, vcc_lo, v33, v84, v33
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[42:43], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v80.l, v76.h
	v_and_b32_e32 v4, 1, v78
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v78, v83, v81
	v_div_scale_f32 v86, null, v84, v84, v22
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v75, v77, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v82, v85, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v77, 1, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v79, v78, v83
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v88, null, v84, v84, v25
	v_fmac_f32_e32 v85, v75, v85
	v_div_scale_f32 v89, s8, v29, v84, v29
	v_fmac_f32_e32 v78, v80, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v80, v88
	v_div_scale_f32 v93, null, v84, v84, v37
	v_mul_f32_e32 v90, v89, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v91, -v86, v87, 1.0
	v_fma_f32 v79, -v79, v78, v83
	v_fma_f32 v83, -v82, v90, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s9, v22, v84, v22
	v_fma_f32 v92, -v88, v80, 1.0
	v_div_fmas_f32 v78, v79, v81, v78
	v_fmac_f32_e32 v90, v83, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v79, v91, v87
	v_rcp_f32_e32 v81, v93
	v_fmac_f32_e32 v80, v92, v80
	v_div_scale_f32 v83, s10, v25, v84, v25
	v_div_scale_f32 v92, null, v84, v84, v36
	v_div_fixup_f32 v33, v78, v84, v33
	v_fma_f32 v78, -v82, v90, v89
	v_fma_f32 v82, -v86, v79, v91
	v_mul_f32_e32 v89, v83, v80
	v_rcp_f32_e32 v94, v92
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v95, -v93, v81, 1.0
	v_div_fmas_f32 v78, v78, v85, v90
	v_fmac_f32_e32 v79, v82, v87
	v_fma_f32 v82, -v88, v89, v83
	v_div_scale_f32 v85, s8, v37, v84, v37
	v_fmac_f32_e32 v81, v95, v81
	v_div_fixup_f32 v29, v78, v84, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v92, v94, 1.0
	v_fma_f32 v78, -v86, v79, v91
	v_fmac_f32_e32 v89, v82, v80
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v82, v85, v81
	v_fmac_f32_e32 v94, v90, v94
	v_div_scale_f32 v86, s11, v36, v84, v36
	v_div_fmas_f32 v78, v78, v87, v79
	v_fma_f32 v79, -v88, v89, v83
	v_div_scale_f32 v91, null, v84, v84, v30
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v83, -v93, v82, v85
	v_mul_f32_e32 v88, v86, v94
	v_div_fmas_f32 v79, v79, v80, v89
	v_rcp_f32_e32 v80, v91
	v_div_fixup_f32 v22, v78, v84, v22
	v_fmac_f32_e32 v82, v83, v81
	v_fma_f32 v83, -v92, v88, v86
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v93, v82, v85
	v_fmac_f32_e32 v88, v83, v94
	v_div_scale_f32 v85, null, v84, v84, v19
	v_fma_f32 v83, -v91, v80, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v78, v78, v81, v82
	v_fma_f32 v81, -v92, v88, v86
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v83, v80
	v_rcp_f32_e32 v83, v85
	v_div_fmas_f32 v81, v81, v94, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v85, v83, 1.0
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v90, null, v84, v84, v31
	v_div_fixup_f32 v25, v79, v84, v25
	v_div_scale_f32 v79, s9, v31, v84, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v87, v90
	v_div_scale_f32 v86, s8, v30, v84, v30
	v_div_fixup_f32 v37, v78, v84, v37
	v_div_fixup_f32 v36, v81, v84, v36
	v_div_scale_f32 v81, s10, v19, v84, v19
	v_mul_f32_e32 v92, v86, v80
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v95, null, v84, v84, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v90, v87, 1.0
	v_fma_f32 v78, -v91, v92, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, null, v84, v84, v48
	v_fmac_f32_e32 v92, v78, v80
	v_mul_f32_e32 v78, v81, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v82, v79, v87
	v_rcp_f32_e32 v94, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v90, v82, v79
	v_fmac_f32_e32 v82, v88, v87
	v_div_scale_f32 v88, null, v84, v84, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v89, v94, 1.0
	v_fma_f32 v79, -v90, v82, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s11, v48, v84, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v79, v79, v87, v82
	v_fma_f32 v82, -v91, v92, v86
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v86, -v85, v78, v81
	v_mul_f32_e32 v87, v93, v94
	v_fma_f32 v91, -v88, v90, 1.0
	v_div_fmas_f32 v80, v82, v80, v92
	v_rcp_f32_e32 v82, v95
	v_fmac_f32_e32 v78, v86, v83
	v_fma_f32 v86, -v89, v87, v93
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, s8, v40, v84, v40
	v_div_fixup_f32 v31, v79, v84, v31
	v_div_fixup_f32 v30, v80, v84, v30
	v_fma_f32 v79, -v85, v78, v81
	v_fmac_f32_e32 v87, v86, v94
	v_mul_f32_e32 v80, v91, v90
	v_fma_f32 v81, -v95, v82, 1.0
	v_div_scale_f32 v85, null, v84, v84, v32
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s9, v38, v84, v38
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v79, -v89, v87, v93
	v_fma_f32 v83, -v88, v80, v91
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v85
	v_div_scale_f32 v89, null, v84, v84, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v83, v90
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v19, v78, v84, v19
	v_rcp_f32_e32 v83, v89
	v_div_fmas_f32 v79, v79, v94, v87
	v_mul_f32_e32 v87, v86, v82
	v_fma_f32 v78, -v88, v80, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v81, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v48, v79, v84, v48
	v_fma_f32 v79, -v95, v87, v86
	v_div_scale_f32 v88, s10, v32, v84, v32
	v_fmac_f32_e32 v81, v92, v81
	v_fma_f32 v91, -v89, v83, 1.0
	v_div_scale_f32 v92, null, v84, v84, v16
	v_div_fmas_f32 v78, v78, v90, v80
	v_fmac_f32_e32 v87, v79, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v91, v83
	v_rcp_f32_e32 v80, v92
	v_div_scale_f32 v91, null, v84, v84, v17
	v_mul_f32_e32 v79, v88, v81
	v_div_scale_f32 v90, s8, v18, v84, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v94, v91
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v27, v27, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v40, v78, v84, v40
	v_fma_f32 v78, -v95, v87, v86
	v_fma_f32 v86, -v85, v79, v88
	v_mul_f32_e32 v93, v90, v83
	v_fma_f32 v95, -v92, v80, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v76, v77, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v77, 0xffff0000, v27
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v82, v87
	v_fmac_f32_e32 v79, v86, v81
	v_fma_f32 v82, -v89, v93, v90
	v_fmac_f32_e32 v80, v95, v80
	v_div_scale_f32 v86, s9, v16, v84, v16
	v_fma_f32 v87, -v91, v94, 1.0
	v_div_fixup_f32 v38, v78, v84, v38
	v_fma_f32 v78, -v85, v79, v88
	v_fmac_f32_e32 v93, v82, v83
	v_mul_f32_e32 v82, v86, v80
	v_fmac_f32_e32 v94, v87, v94
	v_div_scale_f32 v87, null, v77, v77, v46
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s11, v17, v84, v17
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v89, v93, v90
	v_fma_f32 v81, -v92, v82, v86
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v90, null, v77, v77, v41
	v_dual_mul_f32 v89, v85, v94 :: v_dual_and_b32 v76, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v81, v80
	v_rcp_f32_e32 v81, v90
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v32, v78, v84, v32
	v_div_fmas_f32 v79, v79, v83, v93
	v_fma_f32 v83, -v91, v89, v85
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v93, -v87, v88, 1.0
	v_fma_f32 v78, -v92, v82, v86
	v_div_scale_f32 v86, null, v77, v77, v34
	v_div_fixup_f32 v18, v79, v84, v18
	v_dual_fmac_f32 v89, v83, v94 :: v_dual_fmac_f32 v88, v93, v88
	v_div_scale_f32 v79, s8, v46, v77, v46
	v_fma_f32 v83, -v90, v81, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v75, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v80, v82
	v_fma_f32 v80, -v91, v89, v85
	v_mul_f32_e32 v82, v79, v88
	v_fmac_f32_e32 v81, v83, v81
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v85, s9, v41, v77, v41
	v_div_scale_f32 v91, null, v77, v77, v35
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v92, v85, v81
	v_div_fmas_f32 v80, v80, v94, v89
	v_fma_f32 v89, -v87, v82, v79
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fixup_f32 v16, v78, v84, v16
	v_fma_f32 v78, -v90, v92, v85
	v_fmac_f32_e32 v82, v89, v88
	v_div_fixup_f32 v17, v80, v84, v17
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v80, s10, v34, v77, v34
	v_div_scale_f32 v84, null, v77, v77, v51
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v91, v94, 1.0
	v_fma_f32 v79, -v87, v82, v79
	v_fmac_f32_e32 v92, v78, v81
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v78, v80, v83
	v_rcp_f32_e32 v87, v84
	v_fmac_f32_e32 v94, v89, v94
	v_div_scale_f32 v89, s11, v35, v77, v35
	v_div_fmas_f32 v79, v79, v88, v82
	v_fma_f32 v82, -v90, v92, v85
	v_div_scale_f32 v93, null, v77, v77, v47
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v86, v78, v80
	v_mul_f32_e32 v88, v89, v94
	v_div_fmas_f32 v81, v82, v81, v92
	v_rcp_f32_e32 v82, v93
	v_fma_f32 v90, -v84, v87, 1.0
	v_fmac_f32_e32 v78, v85, v83
	v_fma_f32 v85, -v91, v88, v89
	v_div_fixup_f32 v41, v81, v77, v41
	v_div_fixup_f32 v46, v79, v77, v46
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s8, v51, v77, v51
	v_fmac_f32_e32 v88, v85, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v93, v82, 1.0
	v_div_scale_f32 v85, null, v77, v77, v42
	v_fma_f32 v79, -v86, v78, v80
	v_mul_f32_e32 v80, v90, v87
	v_fmac_f32_e32 v82, v81, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v85
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s9, v47, v77, v47
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v79, -v91, v88, v89
	v_fma_f32 v83, -v84, v80, v90
	v_div_scale_f32 v89, null, v77, v77, v39
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v85, v81, 1.0
	v_fmac_f32_e32 v80, v83, v87
	v_rcp_f32_e32 v83, v89
	v_div_fmas_f32 v79, v79, v94, v88
	v_mul_f32_e32 v88, v86, v82
	v_div_fixup_f32 v34, v78, v77, v34
	v_fma_f32 v78, -v84, v80, v90
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v77, v77, v15
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v35, v79, v77, v35
	v_fma_f32 v79, -v93, v88, v86
	v_div_scale_f32 v84, s10, v42, v77, v42
	v_fma_f32 v90, -v89, v83, 1.0
	v_div_fmas_f32 v78, v78, v87, v80
	v_rcp_f32_e32 v80, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v79, v82 :: v_dual_mul_f32 v79, v84, v81
	v_fmac_f32_e32 v83, v90, v83
	v_div_scale_f32 v87, s8, v39, v77, v39
	v_div_scale_f32 v90, null, v77, v77, v60
	v_div_fixup_f32 v51, v78, v77, v51
	v_fma_f32 v78, -v93, v88, v86
	v_fma_f32 v86, -v85, v79, v84
	v_mul_f32_e32 v92, v87, v83
	v_rcp_f32_e32 v93, v90
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v86, v81
	v_div_fmas_f32 v78, v78, v82, v88
	v_fma_f32 v82, -v89, v92, v87
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s9, v15, v77, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v47, v78, v77, v47
	v_fma_f32 v88, -v90, v93, 1.0
	v_fma_f32 v78, -v85, v79, v84
	v_fmac_f32_e32 v92, v82, v83
	v_mul_f32_e32 v82, v86, v80
	v_div_scale_f32 v85, null, v77, v77, v50
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v93, v88, v93
	v_div_scale_f32 v84, s11, v60, v77, v60
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v89, v92, v87
	v_fma_f32 v81, -v91, v82, v86
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v89, null, v77, v77, v49
	v_mul_f32_e32 v88, v84, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v81, v80
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v81, v89
	v_div_fmas_f32 v79, v79, v83, v92
	v_fma_f32 v83, -v90, v88, v84
	v_div_fixup_f32 v42, v78, v77, v42
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v87, 1.0
	v_fma_f32 v78, -v91, v82, v86
	v_div_fixup_f32 v39, v79, v77, v39
	v_fmac_f32_e32 v88, v83, v93
	v_div_scale_f32 v79, s8, v50, v77, v50
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v83, -v89, v81, 1.0
	v_div_scale_f32 v86, null, v77, v77, v43
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v94, null, v77, v77, v12
	v_div_fmas_f32 v78, v78, v80, v82
	v_fma_f32 v80, -v90, v88, v84
	v_mul_f32_e32 v82, v79, v87
	v_fmac_f32_e32 v81, v83, v81
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v84, s9, v49, v77, v49
	v_div_scale_f32 v90, null, v77, v77, v14
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v91, v84, v81
	v_div_fmas_f32 v80, v80, v93, v88
	v_fma_f32 v88, -v85, v82, v79
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v83, 1.0
	v_div_fixup_f32 v15, v78, v77, v15
	v_fma_f32 v78, -v89, v91, v84
	v_fmac_f32_e32 v82, v88, v87
	v_div_fixup_f32 v60, v80, v77, v60
	v_fmac_f32_e32 v83, v92, v83
	v_div_scale_f32 v80, s10, v43, v77, v43
	v_div_scale_f32 v88, null, v77, v77, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v90, v93, 1.0
	v_fma_f32 v79, -v85, v82, v79
	v_fmac_f32_e32 v91, v78, v81
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v78, v80, v83
	v_rcp_f32_e32 v85, v88
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s11, v14, v77, v14
	v_div_fmas_f32 v79, v79, v87, v82
	v_fma_f32 v82, -v89, v91, v84
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v84, -v86, v78, v80
	v_mul_f32_e32 v87, v92, v93
	v_div_fixup_f32 v50, v79, v77, v50
	v_div_fmas_f32 v81, v82, v81, v91
	v_rcp_f32_e32 v82, v94
	v_fma_f32 v89, -v88, v85, 1.0
	v_fmac_f32_e32 v78, v84, v83
	v_fma_f32 v84, -v90, v87, v92
	v_div_fixup_f32 v49, v81, v77, v49
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s8, v13, v77, v13
	v_fmac_f32_e32 v87, v84, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v94, v82, 1.0
	v_div_scale_f32 v84, null, v76, v76, v56
	v_fma_f32 v79, -v86, v78, v80
	v_mul_f32_e32 v80, v89, v85
	v_fmac_f32_e32 v82, v81, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v86, s9, v12, v77, v12
	v_div_fmas_f32 v78, v79, v83, v78
	v_fma_f32 v79, -v90, v87, v92
	v_fma_f32 v83, -v88, v80, v89
	v_div_scale_f32 v90, null, v76, v76, v52
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v43, v78, v77, v43
	v_fmac_f32_e32 v80, v83, v85
	v_rcp_f32_e32 v83, v90
	v_fma_f32 v91, -v84, v81, 1.0
	v_div_fmas_f32 v79, v79, v93, v87
	v_mul_f32_e32 v87, v86, v82
	v_fma_f32 v78, -v88, v80, v89
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v76, v76, v44
	v_div_fixup_f32 v14, v79, v77, v14
	v_fma_f32 v79, -v94, v87, v86
	v_div_scale_f32 v88, s10, v56, v76, v56
	v_fma_f32 v89, -v90, v83, 1.0
	v_div_fmas_f32 v78, v78, v85, v80
	v_rcp_f32_e32 v80, v91
	v_fmac_f32_e32 v87, v79, v82
	v_mul_f32_e32 v79, v88, v81
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v85, s8, v52, v76, v52
	v_div_scale_f32 v89, null, v76, v76, v45
	v_div_fixup_f32 v13, v78, v77, v13
	v_fma_f32 v78, -v94, v87, v86
	v_fma_f32 v86, -v84, v79, v88
	v_mul_f32_e32 v92, v85, v83
	v_rcp_f32_e32 v93, v89
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v86, v81
	v_div_fmas_f32 v78, v78, v82, v87
	v_fma_f32 v82, -v90, v92, v85
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s9, v44, v76, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v12, v78, v77, v12
	v_fma_f32 v87, -v89, v93, 1.0
	v_fma_f32 v77, -v84, v79, v88
	v_fmac_f32_e32 v92, v82, v83
	v_mul_f32_e32 v78, v86, v80
	v_div_scale_f32 v84, null, v76, v76, v69
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v93, v87, v93
	v_div_scale_f32 v82, s11, v45, v76, v45
	v_div_fmas_f32 v77, v77, v81, v79
	v_fma_f32 v79, -v90, v92, v85
	v_fma_f32 v81, -v91, v78, v86
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v88, null, v76, v76, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v87, v82, v93 :: v_dual_fmac_f32 v78, v81, v80
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v79, v79, v83, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v83, -v89, v87, v82
	v_div_fixup_f32 v56, v77, v76, v56
	v_fma_f32 v90, -v84, v85, 1.0
	v_fma_f32 v77, -v91, v78, v86
	v_div_fixup_f32 v52, v79, v76, v52
	v_fmac_f32_e32 v87, v83, v93
	v_div_scale_f32 v79, s8, v69, v76, v69
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v83, -v88, v81, 1.0
	v_div_scale_f32 v86, null, v76, v76, v55
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v89, v87, v82
	v_mul_f32_e32 v80, v79, v85
	v_fmac_f32_e32 v81, v83, v81
	v_rcp_f32_e32 v82, v86
	v_div_scale_f32 v83, s9, v61, v76, v61
	v_div_scale_f32 v89, null, v76, v76, v53
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v90, v83, v81
	v_div_fmas_f32 v78, v78, v93, v87
	v_fma_f32 v87, -v84, v80, v79
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v86, v82, 1.0
	v_div_fixup_f32 v44, v77, v76, v44
	v_fma_f32 v77, -v88, v90, v83
	v_fmac_f32_e32 v80, v87, v85
	v_div_scale_f32 v87, null, v76, v76, v11
	v_div_fixup_f32 v45, v78, v76, v45
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v78, s10, v55, v76, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v89, v92, 1.0
	v_fma_f32 v79, -v84, v80, v79
	v_fmac_f32_e32 v90, v77, v81
	v_rcp_f32_e32 v84, v87
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v77, v78, v82 :: v_dual_fmac_f32 v92, v91, v92
	v_div_scale_f32 v91, s11, v53, v76, v53
	v_div_fmas_f32 v79, v79, v85, v80
	v_fma_f32 v80, -v88, v90, v83
	v_div_scale_f32 v93, null, v76, v76, v71
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v86, v77, v78
	v_mul_f32_e32 v85, v91, v92
	v_fma_f32 v88, -v87, v84, 1.0
	v_div_fmas_f32 v80, v80, v81, v90
	v_rcp_f32_e32 v81, v93
	v_fmac_f32_e32 v77, v83, v82
	v_fma_f32 v83, -v89, v85, v91
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s8, v11, v76, v11
	v_div_fixup_f32 v69, v79, v76, v69
	v_div_fixup_f32 v61, v80, v76, v61
	v_fma_f32 v78, -v86, v77, v78
	v_fmac_f32_e32 v85, v83, v92
	v_mul_f32_e32 v79, v88, v84
	v_fma_f32 v80, -v93, v81, 1.0
	v_div_scale_f32 v83, null, v76, v76, v64
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s9, v71, v76, v71
	v_div_fmas_f32 v77, v78, v82, v77
	v_fma_f32 v78, -v89, v85, v91
	v_fma_f32 v82, -v87, v79, v88
	v_fmac_f32_e32 v81, v80, v81
	v_rcp_f32_e32 v80, v83
	v_div_scale_f32 v89, null, v76, v76, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v82, v84
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v55, v77, v76, v55
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v78, v78, v92, v85
	v_mul_f32_e32 v85, v86, v81
	v_fma_f32 v77, -v87, v79, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v80, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v53, v78, v76, v53
	v_fma_f32 v78, -v93, v85, v86
	v_div_scale_f32 v87, s10, v64, v76, v64
	v_fmac_f32_e32 v80, v90, v80
	v_fma_f32 v88, -v89, v82, 1.0
	v_div_scale_f32 v90, null, v76, v76, v54
	v_div_fmas_f32 v77, v77, v84, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v78, v81 :: v_dual_fmac_f32 v82, v88, v82
	v_rcp_f32_e32 v79, v90
	v_div_scale_f32 v88, null, v76, v76, v10
	v_mul_f32_e32 v78, v87, v80
	v_div_scale_f32 v84, s8, v63, v76, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v88
	v_div_fixup_f32 v11, v77, v76, v11
	v_fma_f32 v77, -v93, v85, v86
	v_fma_f32 v86, -v83, v78, v87
	v_mul_f32_e32 v91, v84, v82
	v_fma_f32 v93, -v90, v79, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v81, v85
	v_fmac_f32_e32 v78, v86, v80
	v_fma_f32 v81, -v89, v91, v84
	v_fmac_f32_e32 v79, v93, v79
	v_div_scale_f32 v85, s9, v54, v76, v54
	v_fma_f32 v86, -v88, v92, 1.0
	v_div_fixup_f32 v71, v77, v76, v71
	v_fma_f32 v77, -v83, v78, v87
	v_fmac_f32_e32 v91, v81, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v81, v85, v79 :: v_dual_fmac_f32 v92, v86, v92
	v_div_scale_f32 v86, null, v76, v76, v8
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v83, s11, v10, v76, v10
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v89, v91, v84
	v_fma_f32 v80, -v90, v81, v85
	v_rcp_f32_e32 v84, v86
	v_div_scale_f32 v89, null, v76, v76, v9
	v_mul_f32_e32 v87, v83, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v80, v79
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v80, v89
	v_div_fmas_f32 v78, v78, v82, v91
	v_fma_f32 v82, -v88, v87, v83
	v_div_fixup_f32 v64, v77, v76, v64
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v86, v84, 1.0
	v_fma_f32 v77, -v90, v81, v85
	v_div_fixup_f32 v63, v78, v76, v63
	v_fmac_f32_e32 v87, v82, v92
	v_div_scale_f32 v78, s8, v8, v76, v8
	v_fmac_f32_e32 v84, v91, v84
	v_fma_f32 v82, -v89, v80, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v75, v75, v65
	v_div_fmas_f32 v77, v77, v79, v81
	v_fma_f32 v79, -v88, v87, v83
	v_mul_f32_e32 v81, v78, v84
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, null, v75, v75, v66
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, s9, v9, v76, v9
	v_div_fmas_f32 v79, v79, v92, v87
	v_rcp_f32_e32 v85, v82
	v_fma_f32 v87, -v86, v81, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v83, v80
	v_div_fixup_f32 v54, v77, v76, v54
	v_div_fixup_f32 v10, v79, v76, v10
	v_rcp_f32_e32 v79, v90
	v_fmac_f32_e32 v81, v87, v84
	v_fma_f32 v77, -v89, v88, v83
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v92, null, v75, v75, v59
	v_fma_f32 v87, -v82, v85, 1.0
	v_fma_f32 v78, -v86, v81, v78
	v_div_scale_f32 v86, null, v75, v75, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v77, v80 :: v_dual_fmac_f32 v85, v87, v85
	v_div_scale_f32 v77, s10, v66, v75, v66
	v_rcp_f32_e32 v87, v86
	v_fma_f32 v91, -v90, v79, 1.0
	v_div_fmas_f32 v78, v78, v84, v81
	v_fma_f32 v81, -v89, v88, v83
	v_mul_f32_e32 v83, v77, v85
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v91, v79
	v_div_scale_f32 v84, s8, v65, v75, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v82, v83, v77
	v_fma_f32 v89, -v86, v87, 1.0
	v_rcp_f32_e32 v94, v92
	v_div_fmas_f32 v80, v81, v80, v88
	v_mul_f32_e32 v93, v84, v79
	v_fmac_f32_e32 v83, v91, v85
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s11, v62, v75, v62
	v_div_fixup_f32 v8, v78, v76, v8
	v_div_fixup_f32 v9, v80, v76, v9
	v_fma_f32 v76, -v82, v83, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v89, v87
	v_div_scale_f32 v80, null, v75, v75, v74
	v_fma_f32 v81, -v90, v93, v84
	v_fma_f32 v78, -v92, v94, 1.0
	v_fma_f32 v77, -v86, v88, v89
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v93, v81, v79 :: v_dual_fmac_f32 v94, v78, v94
	v_fmac_f32_e32 v88, v77, v87
	v_rcp_f32_e32 v77, v80
	v_div_scale_f32 v78, s9, v59, v75, v59
	v_div_fmas_f32 v76, v76, v85, v83
	v_fma_f32 v81, -v90, v93, v84
	v_div_scale_f32 v83, null, v75, v75, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v82, v78, v94
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v66, v76, v75, v66
	v_fma_f32 v84, -v80, v77, 1.0
	v_div_fmas_f32 v79, v81, v79, v93
	v_fma_f32 v81, -v86, v88, v89
	v_rcp_f32_e32 v85, v83
	v_fma_f32 v86, -v92, v82, v78
	v_fmac_f32_e32 v77, v84, v77
	v_div_scale_f32 v84, s8, v74, v75, v74
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v82, v86, v94
	v_div_fmas_f32 v81, v81, v87, v88
	v_mul_f32_e32 v76, v84, v77
	v_div_fixup_f32 v65, v79, v75, v65
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v83, v85, 1.0
	v_fma_f32 v78, -v92, v82, v78
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v80, v76, v84
	v_div_fixup_f32 v62, v81, v75, v62
	v_div_scale_f32 v81, null, v75, v75, v68
	v_fmac_f32_e32 v85, v79, v85
	v_div_scale_f32 v79, s10, v72, v75, v72
	v_div_fmas_f32 v78, v78, v94, v82
	v_fmac_f32_e32 v76, v86, v77
	v_rcp_f32_e32 v87, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v82, v79, v85
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v59, v78, v75, v59
	v_fma_f32 v78, -v80, v76, v84
	v_div_scale_f32 v86, null, v75, v75, v67
	v_fma_f32 v80, -v83, v82, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v78, v77, v76
	v_div_scale_f32 v77, null, v75, v75, v7
	v_fma_f32 v84, -v81, v87, 1.0
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v82, v80, v85
	v_rcp_f32_e32 v80, v77
	v_div_scale_f32 v78, s8, v68, v75, v68
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v75, v75, v73
	v_div_fixup_f32 v74, v76, v75, v74
	v_fma_f32 v79, -v83, v82, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v77, v80, 1.0
	v_mul_f32_e32 v83, v78, v87
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v88, v76, v88
	v_div_scale_f32 v76, s9, v67, v75, v67
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v89, null, v75, v75, v70
	v_div_fmas_f32 v79, v79, v85, v82
	v_fma_f32 v82, -v81, v83, v78
	v_mul_f32_e32 v85, v76, v88
	v_div_scale_f32 v91, s10, v7, v75, v7
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v83, v82, v87
	v_fma_f32 v82, -v86, v85, v76
	v_mul_f32_e32 v94, v91, v80
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s11, v73, v75, v73
	v_div_fixup_f32 v72, v79, v75, v72
	v_fma_f32 v78, -v81, v83, v78
	v_fmac_f32_e32 v85, v82, v88
	v_fma_f32 v79, -v77, v94, v91
	v_mul_f32_e32 v81, v92, v90
	v_fma_f32 v82, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v76, -v86, v85, v76
	v_fmac_f32_e32 v94, v79, v80
	v_fma_f32 v79, -v84, v81, v92
	v_fmac_f32_e32 v93, v82, v93
	v_div_scale_f32 v82, s8, v70, v75, v70
	v_div_fmas_f32 v78, v78, v87, v83
	v_fma_f32 v77, -v77, v94, v91
	v_fmac_f32_e32 v81, v79, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v79, v82, v93
	v_div_scale_f32 v83, null, v75, v75, v58
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v68, v78, v75, v68
	v_div_fmas_f32 v76, v76, v88, v85
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v77, v77, v80, v94
	v_fma_f32 v80, -v84, v81, v92
	v_fma_f32 v84, -v89, v79, v82
	v_div_fixup_f32 v67, v76, v75, v67
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v7, v77, v75, v7
	v_div_fmas_f32 v80, v80, v90, v81
	v_fmac_f32_e32 v79, v84, v93
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v78, -v83, v85, 1.0
	v_div_scale_f32 v77, null, v75, v75, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v89, v79, v82
	v_div_fixup_f32 v73, v80, v75, v73
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v78, null, v75, v75, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v76, v76, v93, v79
	v_div_scale_f32 v81, vcc_lo, v58, v75, v58
	v_rcp_f32_e32 v79, v77
	v_rcp_f32_e32 v82, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v70, v76, v75, v70
	v_mul_f32_e32 v86, v81, v85
	v_div_scale_f32 v80, null, v75, v75, v5
	v_div_scale_f32 v87, null, v75, v75, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v83, v86, v81
	v_rcp_f32_e32 v84, v80
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v76, -v77, v79, 1.0
	v_fma_f32 v88, -v78, v82, 1.0
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v86, v90, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v76, v79
	v_div_scale_f32 v76, s8, v57, v75, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v81, -v83, v86, v81
	v_fma_f32 v91, -v80, v84, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v92, v76, v79
	v_fma_f32 v93, -v87, v89, 1.0
	v_div_fmas_f32 v81, v81, v85, v86
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fma_f32 v90, -v77, v92, v76
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v88, s9, v0, v75, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v91, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v94, v88, v82
	v_div_scale_f32 v91, s10, v5, v75, v5
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s11, v6, v75, v6
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v55, 15, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v78, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v86, v53
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v92, v90, v79 :: v_dual_and_b32 v53, 15, v69
	v_dual_mul_f32 v95, v91, v84 :: v_dual_mul_f32 v96, v93, v89
	v_fmac_f32_e32 v94, v83, v82
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v80, v95, v91
	v_fma_f32 v76, -v77, v92, v76
	v_fma_f32 v77, -v87, v96, v93
	v_fma_f32 v78, -v78, v94, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v88, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v90, v84
	v_div_fmas_f32 v76, v76, v79, v92
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v90, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v77, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v54, 15, v61
	v_and_b32_e32 v61, 15, v88
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v82, v94
	v_fma_f32 v77, -v80, v95, v91
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v0, v78, v75, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v39
	v_and_b32_e32 v39, 15, v42
	v_and_b32_e32 v42, 15, v60
	v_and_b32_e32 v60, 15, v63
	v_and_b32_e32 v63, 15, v90
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v87, v96, v93
	v_div_fmas_f32 v77, v77, v84, v95
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v89, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v12, v12
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v79, v75, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v58, v81, v75, v58
	v_div_fixup_f32 v5, v77, v75, v5
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v59, v59
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v83, v12
	v_cvt_i32_f32_e32 v103, v6
	v_and_b32_e32 v12, 15, v30
	v_and_b32_e32 v30, 15, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v18, 16, v129
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v6, 15, v29
	v_and_b32_e32 v29, 15, v32
	v_and_b32_e32 v32, 15, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v17, 10, v129
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v57, v76, v75, v57
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v82, v13
	v_cvt_i32_f32_e32 v97, v7
	v_cvt_i32_f32_e32 v0, v0
	v_and_b32_e32 v7, 15, v22
	v_and_b32_e32 v8, 15, v25
	v_and_b32_e32 v13, 15, v19
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v19, 4, v104
	v_and_b32_e32 v17, 0x1800, v17
	v_lshlrev_b32_e32 v22, 6, v18
	v_lshlrev_b32_e32 v25, 6, v129
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v76, v34
	v_cvt_i32_f32_e32 v77, v35
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v79, v15
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v84, v44
	v_cvt_i32_f32_e32 v85, v45
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v92, v65
	v_cvt_i32_f32_e32 v93, v62
	v_cvt_i32_f32_e32 v94, v59
	v_and_b32_e32 v15, 15, v40
	v_and_b32_e32 v40, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v19, v19, v28
	v_add3_u32 v17, 0, v17, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v0, 0x1b00, v25, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v75, v16
	v_cvt_i32_f32_e32 v80, v43
	v_cvt_i32_f32_e32 v81, v14
	v_cvt_i32_f32_e32 v87, v11
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v98, v73
	v_cvt_i32_f32_e32 v99, v70
	v_cvt_i32_f32_e32 v100, v58
	v_cvt_i32_f32_e32 v89, v10
	v_cvt_i32_f32_e32 v91, v9
	v_cvt_i32_f32_e32 v95, v68
	v_cvt_i32_f32_e32 v96, v67
	v_cvt_i32_f32_e32 v102, v5
	v_and_b32_e32 v5, 15, v33
	v_and_b32_e32 v9, 15, v37
	v_and_b32_e32 v10, 15, v36
	v_and_b32_e32 v11, 15, v31
	v_and_b32_e32 v16, 15, v38
	v_and_b32_e32 v33, 15, v46
	v_and_b32_e32 v34, 15, v41
	v_and_b32_e32 v35, 15, v76
	v_and_b32_e32 v36, 15, v77
	v_and_b32_e32 v37, 15, v51
	v_and_b32_e32 v38, 15, v47
	v_and_b32_e32 v43, 15, v50
	v_and_b32_e32 v44, 15, v49
	v_and_b32_e32 v49, 15, v56
	v_and_b32_e32 v50, 15, v52
	v_and_b32_e32 v51, 15, v84
	v_and_b32_e32 v52, 15, v85
	v_and_b32_e32 v65, 15, v66
	v_and_b32_e32 v66, 15, v92
	v_and_b32_e32 v67, 15, v93
	v_and_b32_e32 v68, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v17, v17, v19, v26
	v_xad_u32 v0, v0, v105, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v101, v57
	v_and_b32_e32 v14, 15, v48
	v_and_b32_e32 v31, 15, v75
	v_and_b32_e32 v41, 15, v79
	v_and_b32_e32 v45, 15, v80
	v_and_b32_e32 v46, 15, v81
	v_and_b32_e32 v47, 15, v82
	v_and_b32_e32 v48, 15, v83
	v_and_b32_e32 v57, 15, v87
	v_and_b32_e32 v58, 15, v71
	v_and_b32_e32 v59, 15, v64
	v_and_b32_e32 v69, 15, v74
	v_and_b32_e32 v73, 15, v97
	v_and_b32_e32 v74, 15, v98
	v_and_b32_e32 v75, 15, v99
	v_and_b32_e32 v76, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v17, v[5:8]
	ds_store_b128 v17, v[13:16] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v0
	ds_load_b128 v[13:16], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[33:36]
	ds_store_b128 v17, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v0
	ds_load_b128 v[41:44], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[49:52]
	ds_store_b128 v17, v[57:60] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v0
	ds_load_b128 v[57:60], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[65:68]
	ds_store_b128 v17, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v0
	ds_load_b128 v[73:76], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[9:12]
	ds_store_b128 v17, v[29:32] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v0
	ds_load_b128 v[28:31], v0 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[37:40]
	ds_store_b128 v17, v[45:48] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[37:40], v0
	ds_load_b128 v[45:48], v0 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v56, 15, v86
	v_and_b32_e32 v62, 15, v89
	v_and_b32_e32 v64, 15, v91
	v_and_b32_e32 v71, 15, v95
	v_med3_f32 v72, v72, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[53:56]
	ds_store_b128 v17, v[61:64] offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v72, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_load_b128 v[53:56], v0
	ds_load_b128 v[61:64], v0 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v77, 15, v101
	v_and_b32_e32 v79, 15, v102
	v_and_b32_e32 v70, 15, v72
	v_and_b32_e32 v72, 15, v96
	v_and_b32_e32 v80, 15, v103
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	v_lshl_or_b32 v15, v28, 4, v9
	v_lshl_or_b32 v28, v46, 4, v38
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v46, 3, v104
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s34, v23
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v17, v[69:72]
	ds_store_b128 v17, v[77:80] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v0
	ds_load_b128 v[77:80], v0 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s23, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s33, 7, v46
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s23, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 16, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v16, 4, v8
	v_lshl_or_b32 v16, v29, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 32, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v30, 4, v11
	v_lshl_or_b32 v12, v31, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s8, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s8, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v26, v45, 4, v37
	v_lshl_or_b32 v29, v47, 4, v39
	v_lshl_or_b32 v30, v48, 4, v40
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v14.l
	v_and_b16 v0.h, 0xff, v13.l
	v_lshlrev_b16 v3.l, 8, v6.l
	v_and_b16 v4.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v12.l
	v_and_b16 v5.h, 0xff, v17.l
	v_lshlrev_b16 v6.l, 8, v16.l
	v_and_b16 v6.h, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v41, 4, v33
	v_lshl_or_b32 v22, v42, 4, v34
	v_lshl_or_b32 v24, v43, 4, v35
	v_lshl_or_b32 v25, v44, 4, v36
	v_lshl_or_b32 v35, v61, 4, v53
	v_lshl_or_b32 v36, v62, 4, v54
	v_lshl_or_b32 v37, v63, 4, v55
	v_lshl_or_b32 v38, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v5.l, 8, v30.l
	v_and_b16 v5.h, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v28.l
	v_and_b16 v6.h, 0xff, v26.l
	s_and_b32 s9, s37, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s36
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v31, v57, 4, v49
	v_lshl_or_b32 v32, v58, 4, v50
	v_lshl_or_b32 v33, v59, 4, v51
	v_lshl_or_b32 v34, v60, 4, v52
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v77, 4, v69
	v_lshl_or_b32 v44, v78, 4, v70
	v_lshl_or_b32 v45, v79, 4, v71
	v_lshl_or_b32 v23, v80, 4, v72
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v25.l
	v_and_b16 v0.h, 0xff, v24.l
	v_lshlrev_b16 v3.l, 8, v22.l
	v_and_b16 v4.l, 0xff, v19.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v38.l
	v_and_b16 v5.h, 0xff, v37.l
	v_lshlrev_b16 v6.l, 8, v36.l
	v_and_b16 v6.h, 0xff, v35.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v73, 4, v65
	v_lshl_or_b32 v40, v74, 4, v66
	v_lshl_or_b32 v41, v75, 4, v67
	v_lshl_or_b32 v42, v76, 4, v68
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v0.l, 8, v34.l
	v_and_b16 v0.h, 0xff, v33.l
	v_lshlrev_b16 v3.l, 8, v32.l
	v_and_b16 v4.l, 0xff, v31.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v5.l, 8, v23.l
	v_and_b16 v5.h, 0xff, v45.l
	v_lshlrev_b16 v6.l, 8, v44.l
	v_and_b16 v6.h, 0xff, v43.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v4.l, v3.l
	v_lshlrev_b16 v0.l, 8, v42.l
	v_and_b16 v0.h, 0xff, v41.l
	v_lshlrev_b16 v3.l, 8, v40.l
	v_and_b16 v4.l, 0xff, v39.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v129
	v_lshrrev_b32_e32 v6, 2, v18
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.l, v4.l, v3.l
	v_dual_cndmask_b32 v0, 0x80000000, v10 :: v_dual_and_b32 v5, 2, v5
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s23, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[8:11], 0 offen
	buffer_store_b64 v[11:12], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v46
	v_mov_b16_e32 v4.l, v27.h
	v_mov_b16_e32 v3.l, v21.h
	v_add3_u32 v5, v6, v5, v46
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s34, v20
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s23, s23, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s23, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v129
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[42:43], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s39, 0xffff
	s_mov_b32 s8, s38
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1140
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 1140
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32960
; TotalNumSgprs: 56
; NumVgprs: 256
; ScratchSize: 1140
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
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
    .private_segment_fixed_size: 1140
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 284
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
