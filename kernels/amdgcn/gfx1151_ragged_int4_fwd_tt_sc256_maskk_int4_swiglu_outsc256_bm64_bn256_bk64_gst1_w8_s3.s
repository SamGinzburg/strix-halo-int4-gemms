	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[24:25], s[0:1], 0x5c
	v_mov_b32_e32 v162, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s74, 0xff
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
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s25, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v162
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s75, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s75, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[6:7], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s8, s6
	s_addc_u32 s5, s9, s7
	s_load_b64 s[68:69], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s10, s6
	s_addc_u32 s5, s11, s7
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s6
	s_addc_u32 s3, s3, s7
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[70:71], s[4:5], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s24, 0
	s_mov_b32 s5, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s68, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s69, 0, s2
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v217, s68, v0
	v_and_b32_e32 v71, 0x7f, v162
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[70:71], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[1:2]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v6, 0x7f, v162
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s68, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow773
	s_load_b128 s[64:67], s[0:1], 0x40
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v109, 0x80, v162
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v108, 15, v162
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v93, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s2, 0, v109
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v216, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v206, 0
	v_mov_b32_e32 v203, 0
	v_mov_b32_e32 v205, 0
	v_mov_b32_e32 v207, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_and_b32 s76, s3, s4
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s68, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s3
	s_clause 0x1
	s_load_b32 s25, s[0:1], 0x58
	s_load_b32 s26, s[0:1], 0x50
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[72:73], v[0:1]
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v0, s68, v108
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s16, s4, s6
	s_addc_u32 s17, s5, s7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[2:3]
	v_cmp_le_i64_e64 s1, s[70:71], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[2:3]
	v_cmp_gt_i64_e64 s6, s[72:73], v[4:5]
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v2, 16, v0
	v_dual_mov_b32 v216, 0 :: v_dual_add_nc_u32 v3, 32, v0
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v4, 48, v0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s24
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s16, s[16:17], 0x0
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v1, 5, v162
	.loc	1 1045 18 is_stmt 0             ; ragged.py:1045:18
	s_lshl_b32 s20, s75, 8
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[70:71], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[72:73], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_or_b32_e32 v1, s20, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:1148 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s24
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s5, s74, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v36, 0x68, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s4, s7
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s25, s5
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v35, 0x70, v1
	v_or_b32_e32 v34, 0x78, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:1152 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s24
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v28, 0x80, v1
	v_or_b32_e32 v27, 0x88, v1
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s4, s16
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v26, 0x90, v1
	v_mad_u64_u32 v[236:237], null, s25, v36, s[4:5]
	v_or_b32_e32 v25, 0x98, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:1156 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s24
	v_mad_u64_u32 v[237:238], null, s25, v35, s[4:5]
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v24, 0xa0, v1
	v_mad_u64_u32 v[238:239], null, s25, v34, s[4:5]
	v_or_b32_e32 v18, 0xa8, v1
	v_mad_u64_u32 v[239:240], null, s25, v28, s[4:5]
	scratch_store_b32 off, v0, off offset:1160 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf8, v1
	v_or_b32_e32 v16, 0xb8, v1
	v_or_b32_e32 v17, 0xb0, v1
	v_mad_u64_u32 v[240:241], null, s25, v27, s[4:5]
	v_mad_u64_u32 v[241:242], null, s25, v26, s[4:5]
	v_mad_u64_u32 v[242:243], null, s25, v25, s[4:5]
	v_mad_u64_u32 v[243:244], null, s25, v24, s[4:5]
	v_mad_u64_u32 v[244:245], null, s25, v18, s[4:5]
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v3, s74, v0
	v_or_b32_e32 v4, 0xf0, v1
	v_or_b32_e32 v5, 0xe8, v1
	v_or_b32_e32 v6, 0xe0, v1
	v_or_b32_e32 v7, 0xd8, v1
	v_or_b32_e32 v8, 0xd0, v1
	v_or_b32_e32 v14, 0xc8, v1
	v_or_b32_e32 v15, 0xc0, v1
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v21, s74, v16
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v22, s74, v17
	v_or_b32_e32 v37, 0x60, v1
	v_or_b32_e32 v38, 0x58, v1
	v_or_b32_e32 v44, 0x50, v1
	v_or_b32_e32 v45, 0x48, v1
	v_or_b32_e32 v46, 64, v1
	v_or_b32_e32 v47, 56, v1
	v_or_b32_e32 v48, 48, v1
	v_or_b32_e32 v54, 40, v1
	v_or_b32_e32 v55, 32, v1
	v_or_b32_e32 v56, 24, v1
	v_or_b32_e32 v57, 16, v1
	v_or_b32_e32 v58, 8, v1
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v64, s74, v1
	v_mad_u64_u32 v[220:221], null, v1, s25, s[4:5]
	v_mad_u64_u32 v[245:246], null, s25, v17, s[4:5]
	v_mad_u64_u32 v[16:17], null, s25, v16, s[4:5]
	v_mad_u64_u32 v[0:1], null, s25, v0, s[4:5]
	v_or_b32_e32 v76, s20, v162
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v20, s74, v15
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v63, s74, v58
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[16:17], off offset:296
	scratch_store_b32 off, v76, off offset:1164
	scratch_store_b64 off, v[0:1], off offset:360
	v_mad_u64_u32 v[15:16], null, s25, v15, s[4:5]
	v_mad_u64_u32 v[0:1], null, v64, s25, s[4:5]
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v19, s74, v14
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v62, s74, v57
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[15:16], off offset:304
	scratch_store_b32 off, v108, off offset:1180
	scratch_store_b64 off, v[0:1], off offset:368
	v_mad_u64_u32 v[14:15], null, s25, v14, s[4:5]
	v_mad_u64_u32 v[0:1], null, v63, s25, s[4:5]
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v12, s74, v7
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v13, s74, v8
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:312
	scratch_store_b32 off, v109, off offset:1184
	scratch_store_b64 off, v[0:1], off offset:376
	v_mad_u64_u32 v[14:15], null, s25, v8, s[4:5]
	v_mad_u64_u32 v[7:8], null, s25, v7, s[4:5]
	v_mad_u64_u32 v[0:1], null, v62, s25, s[4:5]
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v61, s74, v56
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v11, s74, v6
	s_clause 0x3                            ; 28-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:320
	scratch_store_b64 off, v[7:8], off offset:328
	scratch_store_b32 off, v71, off offset:1188
	scratch_store_b64 off, v[0:1], off offset:384
	v_mad_u64_u32 v[6:7], null, s25, v6, s[4:5]
	v_mad_u64_u32 v[0:1], null, v61, s25, s[4:5]
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v60, s74, v55
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v10, s74, v5
	scratch_store_b64 off, v[6:7], off offset:336 ; 8-byte Folded Spill
	v_mad_u64_u32 v[5:6], null, s25, v5, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:392 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v60, s25, s[4:5]
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v59, s74, v54
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v9, s74, v4
	scratch_store_b64 off, v[5:6], off offset:344 ; 8-byte Folded Spill
	v_mad_u64_u32 v[4:5], null, s25, v4, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:400 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v59, s25, s[4:5]
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v53, s74, v48
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v52, s74, v47
	scratch_store_b64 off, v[4:5], off offset:352 ; 8-byte Folded Spill
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v51, s74, v46
	scratch_store_b64 off, v[0:1], off offset:408 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v53, s25, s[4:5]
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v50, s74, v45
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v49, s74, v44
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v43, s74, v38
	scratch_store_b64 off, v[0:1], off offset:416 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v52, s25, s[4:5]
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v42, s74, v37
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v41, s74, v36
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v40, s74, v35
	scratch_store_b64 off, v[0:1], off offset:424 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v51, s25, s[4:5]
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v39, s74, v34
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v33, s74, v28
	v_cndmask_b32_e64 v66, 0x88, 0, s2
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v72, 5, v162
	scratch_store_b64 off, v[0:1], off offset:432 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v50, s25, s[4:5]
	v_xor_b32_e32 v218, v66, v71
	v_dual_mov_b32 v146, 0 :: v_dual_and_b32 v71, 0xf0, v162
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v32, s74, v27
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v65, 1, v162
	scratch_store_b64 off, v[0:1], off offset:440 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v49, s25, s[4:5]
	v_dual_mov_b32 v144, 0 :: v_dual_lshlrev_b32 v75, 2, v71
	v_dual_mov_b32 v111, 0 :: v_dual_and_b32 v72, 32, v72
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v68, 24, v65
	scratch_store_b64 off, v[0:1], off offset:448 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v43, s25, s[4:5]
	v_dual_mov_b32 v152, 0 :: v_dual_and_b32 v65, 28, v65
	v_add3_u32 v72, 0, v75, v72
	v_dual_mov_b32 v211, 0 :: v_dual_and_b32 v2, 0xe0, v162
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v31, s74, v26
	scratch_store_b64 off, v[0:1], off offset:456 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v42, s25, s[4:5]
	v_dual_mov_b32 v124, 0 :: v_dual_lshlrev_b32 v67, 5, v108
	v_dual_mov_b32 v97, 0 :: v_dual_lshlrev_b32 v2, 4, v2
	v_mov_b32_e32 v129, 0
	v_or_b32_e32 v66, 0x7f0, v162
	scratch_store_b64 off, v[0:1], off offset:464 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v41, s25, s[4:5]
	v_or3_b32 v222, v67, v68, v2
	v_or_b32_e32 v2, 0x3f0, v162
	v_mov_b32_e32 v127, 0
	v_dual_mov_b32 v154, 0 :: v_dual_lshlrev_b32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v68, 8, v222
	scratch_store_b64 off, v[0:1], off offset:472 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v40, s25, s[4:5]
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v30, s74, v25
	v_mov_b32_e32 v207, 0
	v_mov_b32_e32 v145, 0
	v_mov_b32_e32 v153, 0
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v29, s74, v24
	scratch_store_b64 off, v[0:1], off offset:480 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v39, s25, s[4:5]
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v23, s74, v18
	v_mad_u64_u32 v[223:224], null, s25, v58, s[4:5]
	v_mad_u64_u32 v[224:225], null, s25, v57, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:488 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v33, s25, s[4:5]
	v_mad_u64_u32 v[225:226], null, s25, v56, s[4:5]
	v_mad_u64_u32 v[226:227], null, s25, v55, s[4:5]
	v_mad_u64_u32 v[227:228], null, s25, v54, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:496 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v32, s25, s[4:5]
	v_mad_u64_u32 v[228:229], null, s25, v48, s[4:5]
	v_mad_u64_u32 v[229:230], null, s25, v47, s[4:5]
	v_mad_u64_u32 v[230:231], null, s25, v46, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:504 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, v72, v65
	v_mad_u64_u32 v[231:232], null, s25, v45, s[4:5]
	v_or_b32_e32 v69, 0x300, v162
	v_or_b32_e32 v70, 0x700, v162
	scratch_store_b32 off, v0, off offset:1168 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v31, s25, s[4:5]
	v_xor_b32_e32 v67, 0x110, v218
	v_xor_b32_e32 v73, 16, v222
	v_xor_b32_e32 v74, 24, v222
	v_mad_u64_u32 v[232:233], null, s25, v44, s[4:5]
	v_mad_u64_u32 v[233:234], null, s25, v38, s[4:5]
	scratch_store_b64 off, v[0:1], off offset:512 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_mad_u64_u32 v[234:235], null, s25, v37, s[4:5]
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v219, 0, v108
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v66
	v_dual_mov_b32 v180, 0 :: v_dual_add_nc_u32 v221, 0, v69
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v255, 0, v70
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v68
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v164, 0, v67
	v_dual_mov_b32 v174, 0 :: v_dual_add_nc_u32 v235, 0, v73
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v71
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v246, 0, v74
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v176, 0
	scratch_store_b32 off, v0, off offset:1172 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v30, s25, s[4:5]
	v_mov_b32_e32 v155, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v182, 0
	scratch_store_b64 off, v[0:1], off offset:532 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v29, s25, s[4:5]
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v170, 0
	scratch_store_b64 off, v[0:1], off offset:540 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v23, s25, s[4:5]
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v158, 0
	scratch_store_b64 off, v[0:1], off offset:548 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v22, s25, s[4:5]
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v142, 0
	scratch_store_b64 off, v[0:1], off offset:556 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v21, s25, s[4:5]
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v138, 0
	scratch_store_b64 off, v[0:1], off offset:564 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v20, s25, s[4:5]
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v148, 0
	scratch_store_b64 off, v[0:1], off offset:572 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v19, s25, s[4:5]
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v106, 0
	scratch_store_b64 off, v[0:1], off offset:580 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v13, s25, s[4:5]
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v104, 0
	scratch_store_b64 off, v[0:1], off offset:588 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v12, s25, s[4:5]
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v118, 0
	scratch_store_b64 off, v[0:1], off offset:596 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v11, s25, s[4:5]
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v100, 0
	scratch_store_b64 off, v[0:1], off offset:604 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v10, s25, s[4:5]
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v93, 0
	scratch_store_b64 off, v[0:1], off offset:612 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v9, s25, s[4:5]
	v_mov_b32_e32 v101, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s6, s24, s16
	s_and_b32 s17, s9, 0xffff
	s_mov_b32 s16, s8
	s_mov_b32 s19, 0x31027000
	scratch_store_b64 off, v[0:1], off offset:620 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v3, s25, s[4:5]
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s9, s11, 0xffff
	s_mov_b32 s8, s10
	s_mov_b32 s7, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s21, s15, 0xffff
	scratch_store_b64 off, v[0:1], off offset:628 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v162
	s_mov_b32 s20, s14
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v235, off
	scratch_store_b32 off, v246, off offset:4
	scratch_store_b32 off, v0, off offset:1176
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v216, off offset:1144
	scratch_store_b32 off, v215, off offset:1140
	scratch_store_b32 off, v85, off offset:1136
	scratch_store_b32 off, v214, off offset:1132
	scratch_store_b32 off, v86, off offset:1128
	scratch_store_b32 off, v213, off offset:1124
	scratch_store_b32 off, v212, off offset:1120
	scratch_store_b32 off, v211, off offset:1116
	scratch_store_b32 off, v210, off offset:1112
	scratch_store_b32 off, v87, off offset:1108
	scratch_store_b32 off, v88, off offset:1104
	scratch_store_b32 off, v209, off offset:1100
	scratch_store_b32 off, v208, off offset:1096
	scratch_store_b32 off, v207, off offset:1092
	scratch_store_b32 off, v206, off offset:1088
	scratch_store_b32 off, v205, off offset:1084
	scratch_store_b32 off, v204, off offset:1080
	scratch_store_b32 off, v203, off offset:1076
	scratch_store_b32 off, v202, off offset:1072
	scratch_store_b32 off, v201, off offset:1068
	scratch_store_b32 off, v200, off offset:1064
	scratch_store_b32 off, v199, off offset:1060
	scratch_store_b32 off, v197, off offset:1056
	scratch_store_b32 off, v196, off offset:1052
	scratch_store_b32 off, v198, off offset:1048
	scratch_store_b32 off, v195, off offset:1044
	scratch_store_b32 off, v194, off offset:1040
	scratch_store_b32 off, v193, off offset:1036
	scratch_store_b32 off, v192, off offset:1032
	scratch_store_b32 off, v191, off offset:1028
	scratch_store_b32 off, v190, off offset:1024
	scratch_store_b32 off, v189, off offset:1020
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v188, off offset:1016
	scratch_store_b32 off, v187, off offset:1012
	scratch_store_b32 off, v186, off offset:1008
	scratch_store_b32 off, v185, off offset:1004
	scratch_store_b32 off, v184, off offset:1000
	scratch_store_b32 off, v183, off offset:996
	scratch_store_b32 off, v182, off offset:992
	scratch_store_b32 off, v181, off offset:988
	scratch_store_b32 off, v180, off offset:984
	scratch_store_b32 off, v179, off offset:980
	scratch_store_b32 off, v178, off offset:976
	scratch_store_b32 off, v177, off offset:972
	scratch_store_b32 off, v176, off offset:968
	scratch_store_b32 off, v175, off offset:964
	scratch_store_b32 off, v174, off offset:960
	scratch_store_b32 off, v173, off offset:956
	scratch_store_b32 off, v172, off offset:952
	scratch_store_b32 off, v171, off offset:948
	scratch_store_b32 off, v170, off offset:944
	scratch_store_b32 off, v169, off offset:940
	scratch_store_b32 off, v168, off offset:936
	scratch_store_b32 off, v167, off offset:932
	scratch_store_b32 off, v160, off offset:928
	scratch_store_b32 off, v159, off offset:924
	scratch_store_b32 off, v158, off offset:920
	scratch_store_b32 off, v157, off offset:916
	scratch_store_b32 off, v156, off offset:912
	scratch_store_b32 off, v147, off offset:908
	scratch_store_b32 off, v166, off offset:904
	scratch_store_b32 off, v165, off offset:900
	scratch_store_b32 off, v163, off offset:896
	scratch_store_b32 off, v161, off offset:892
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v146, off offset:888
	scratch_store_b32 off, v145, off offset:884
	scratch_store_b32 off, v144, off offset:880
	scratch_store_b32 off, v143, off offset:876
	scratch_store_b32 off, v155, off offset:872
	scratch_store_b32 off, v154, off offset:868
	scratch_store_b32 off, v153, off offset:864
	scratch_store_b32 off, v152, off offset:860
	scratch_store_b32 off, v142, off offset:856
	scratch_store_b32 off, v141, off offset:852
	scratch_store_b32 off, v140, off offset:848
	scratch_store_b32 off, v139, off offset:844
	scratch_store_b32 off, v138, off offset:840
	scratch_store_b32 off, v137, off offset:836
	scratch_store_b32 off, v136, off offset:832
	scratch_store_b32 off, v135, off offset:828
	scratch_store_b32 off, v134, off offset:824
	scratch_store_b32 off, v133, off offset:820
	scratch_store_b32 off, v132, off offset:816
	scratch_store_b32 off, v131, off offset:812
	scratch_store_b32 off, v151, off offset:808
	scratch_store_b32 off, v150, off offset:804
	scratch_store_b32 off, v149, off offset:800
	scratch_store_b32 off, v148, off offset:796
	scratch_store_b32 off, v130, off offset:792
	scratch_store_b32 off, v129, off offset:788
	scratch_store_b32 off, v128, off offset:784
	scratch_store_b32 off, v127, off offset:780
	scratch_store_b32 off, v126, off offset:776
	scratch_store_b32 off, v125, off offset:772
	scratch_store_b32 off, v124, off offset:768
	scratch_store_b32 off, v123, off offset:764
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v122, off offset:760
	scratch_store_b32 off, v121, off offset:756
	scratch_store_b32 off, v120, off offset:752
	scratch_store_b32 off, v106, off offset:748
	scratch_store_b32 off, v105, off offset:744
	scratch_store_b32 off, v119, off offset:740
	scratch_store_b32 off, v114, off offset:736
	scratch_store_b32 off, v113, off offset:732
	scratch_store_b32 off, v104, off offset:728
	scratch_store_b32 off, v103, off offset:724
	scratch_store_b32 off, v99, off offset:720
	scratch_store_b32 off, v98, off offset:716
	scratch_store_b32 off, v118, off offset:712
	scratch_store_b32 off, v117, off offset:708
	scratch_store_b32 off, v116, off offset:704
	scratch_store_b32 off, v115, off offset:700
	scratch_store_b32 off, v97, off offset:696
	scratch_store_b32 off, v89, off offset:692
	scratch_store_b32 off, v96, off offset:688
	scratch_store_b32 off, v95, off offset:684
	scratch_store_b32 off, v112, off offset:680
	scratch_store_b32 off, v111, off offset:676
	scratch_store_b32 off, v110, off offset:672
	scratch_store_b32 off, v94, off offset:668
	scratch_store_b32 off, v93, off offset:664
	scratch_store_b32 off, v92, off offset:660
	scratch_store_b32 off, v91, off offset:656
	scratch_store_b32 off, v107, off offset:652
	scratch_store_b32 off, v102, off offset:648
	scratch_store_b32 off, v101, off offset:644
	scratch_store_b32 off, v100, off offset:640
	scratch_store_b32 off, v90, off offset:636
	scratch_load_b32 v166, off, off offset:1176 ; 4-byte Folded Reload
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v0, 0
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s7, 7
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v17, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v252, v0
	v_mov_b32_e32 v248, v0
	v_mov_b32_e32 v249, v0
	v_mov_b32_e32 v250, v0
	v_mov_b32_e32 v251, v0
	v_mov_b32_e32 v253, v0
	v_dual_mov_b32 v254, v0 :: v_dual_mov_b32 v33, 0
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
	v_mov_b32_e32 v32, v0
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
	s_mov_b32 s15, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_clause 0x8                            ; 72-byte Folded Reload
	scratch_load_b64 v[151:152], off, off offset:296
	scratch_load_b64 v[152:153], off, off offset:304
	scratch_load_b64 v[153:154], off, off offset:312
	scratch_load_b64 v[154:155], off, off offset:320
	scratch_load_b64 v[155:156], off, off offset:328
	scratch_load_b64 v[156:157], off, off offset:336
	scratch_load_b64 v[157:158], off, off offset:344
	scratch_load_b64 v[158:159], off, off offset:352
	scratch_load_b64 v[159:160], off, off offset:360
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v0, 6, v162
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s22, s15, s14
	s_clause 0x10                           ; 136-byte Folded Spill
	scratch_store_b64 off, v[245:246], off offset:136
	scratch_store_b64 off, v[244:245], off offset:128
	scratch_store_b64 off, v[243:244], off offset:120
	scratch_store_b64 off, v[242:243], off offset:112
	scratch_store_b64 off, v[241:242], off offset:104
	scratch_store_b64 off, v[240:241], off offset:96
	scratch_store_b64 off, v[239:240], off offset:88
	scratch_store_b64 off, v[238:239], off offset:80
	scratch_store_b64 off, v[237:238], off offset:72
	scratch_store_b64 off, v[236:237], off offset:64
	scratch_store_b64 off, v[234:235], off offset:56
	scratch_store_b64 off, v[232:233], off offset:48
	scratch_store_b64 off, v[231:232], off offset:40
	scratch_store_b64 off, v[230:231], off offset:32
	scratch_store_b64 off, v[229:230], off offset:24
	scratch_store_b64 off, v[228:229], off offset:16
	scratch_store_b64 off, v[227:228], off offset:8
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v0, s22, v0
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v206, 0, v218
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v0, s26, v[217:218]
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s25, v0
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v2, 4, v0
	v_or_b32_e32 v3, 8, v0
	v_or_b32_e32 v4, 12, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s4, s76, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v1, 0x80000000, v129, s4
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v2, s26, v[217:218]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s25, v2
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s4, s76, s4
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v2, 0x80000000, v129, s4
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v3, s26, v[217:218]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s25, v3
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s4, s76, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v3, 0x80000000, v129, s4
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v4, s26, v[217:218]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s25, v4
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v4, 16, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s4, s76, s4
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v131, 0x80000000, v129, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v4, s26, v[217:218]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s25, v4
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v4, 20, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s4, s76, s4
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v132, 0x80000000, v129, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v4, s26, v[217:218]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s25, v4
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v4, 24, v0
	v_or_b32_e32 v0, 28, v0
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s4, s76, s4
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v133, 0x80000000, v129, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v4, s26, v[217:218]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s25, v4
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v4, 31, v162
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s4, s76, s4
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v235, s22, v4
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v134, 0x80000000, v129, s4
	.loc	1 1155 42 is_stmt 0             ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v0, s26, v[217:218]
	.loc	1 1142 32 is_stmt 1             ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s25, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v4, v220, v235
	v_add_nc_u32_e32 v5, v223, v235
	v_add_nc_u32_e32 v6, v224, v235
	v_add_nc_u32_e32 v7, v225, v235
	.loc	1 1155 66                       ; ragged.py:1155:66
	s_and_b32 s4, s76, s4
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v8, v226, v235
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v0, 0x80000000, v129, s4
	.loc	1 1142 32                       ; ragged.py:1142:32
	v_cmp_gt_i32_e64 s4, s25, v235
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v129, v227, v235
	v_add_nc_u32_e32 v130, v228, v235
	v_add_nc_u32_e32 v135, v229, v235
	v_add_nc_u32_e32 v136, v230, v235
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v137, v231, v235
	v_add_nc_u32_e32 v138, v232, v235
	v_add_nc_u32_e32 v139, v233, v235
	v_add_nc_u32_e32 v140, v234, v235
	v_add_nc_u32_e32 v141, v236, v235
	v_add_nc_u32_e32 v142, v237, v235
	v_add_nc_u32_e32 v143, v238, v235
	v_add_nc_u32_e32 v144, v239, v235
	v_add_nc_u32_e32 v145, v240, v235
	v_add_nc_u32_e32 v146, v241, v235
	v_add_nc_u32_e32 v147, v242, v235
	v_add_nc_u32_e32 v148, v243, v235
	v_add_nc_u32_e32 v149, v244, v235
	v_add_nc_u32_e32 v150, v245, v235
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	v_cndmask_b32_e64 v129, 0x80000000, v129, s4
	v_cndmask_b32_e64 v130, 0x80000000, v130, s4
	v_cndmask_b32_e64 v135, 0x80000000, v135, s4
	v_cndmask_b32_e64 v136, 0x80000000, v136, s4
	v_cndmask_b32_e64 v137, 0x80000000, v137, s4
	v_cndmask_b32_e64 v138, 0x80000000, v138, s4
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
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v151, v151, v235
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v152, v152, v235
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v153, v153, v235
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v154, v154, v235
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v155, v155, v235
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v156, v156, v235
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v157, v157, v235
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v158, v158, v235
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v159, v159, v235
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v151, 0x80000000, v151, s4
	v_cndmask_b32_e64 v152, 0x80000000, v152, s4
	v_cndmask_b32_e64 v153, 0x80000000, v153, s4
	v_cndmask_b32_e64 v154, 0x80000000, v154, s4
	v_cndmask_b32_e64 v155, 0x80000000, v155, s4
	v_cndmask_b32_e64 v156, 0x80000000, v156, s4
	v_cndmask_b32_e64 v157, 0x80000000, v157, s4
	v_cndmask_b32_e64 v158, 0x80000000, v158, s4
	v_cndmask_b32_e64 v159, 0x80000000, v159, s4
	s_clause 0x1f
	buffer_load_u8 v240, v4, s[8:11], 0 offen
	buffer_load_u8 v160, v5, s[8:11], 0 offen
	buffer_load_u8 v5, v6, s[8:11], 0 offen
	buffer_load_u8 v161, v7, s[8:11], 0 offen
	buffer_load_u8 v238, v8, s[8:11], 0 offen
	buffer_load_u8 v163, v129, s[8:11], 0 offen
	buffer_load_u8 v239, v130, s[8:11], 0 offen
	buffer_load_u8 v165, v135, s[8:11], 0 offen
	buffer_load_u8 v232, v136, s[8:11], 0 offen
	buffer_load_u8 v198, v137, s[8:11], 0 offen
	buffer_load_u8 v231, v138, s[8:11], 0 offen
	buffer_load_u8 v199, v139, s[8:11], 0 offen
	buffer_load_u8 v230, v140, s[8:11], 0 offen
	buffer_load_u8 v200, v141, s[8:11], 0 offen
	buffer_load_u8 v246, v142, s[8:11], 0 offen
	buffer_load_u8 v201, v143, s[8:11], 0 offen
	buffer_load_u8 v6, v144, s[8:11], 0 offen
	buffer_load_u8 v202, v145, s[8:11], 0 offen
	buffer_load_u8 v7, v146, s[8:11], 0 offen
	buffer_load_u8 v203, v147, s[8:11], 0 offen
	buffer_load_u8 v242, v148, s[8:11], 0 offen
	buffer_load_u8 v204, v149, s[8:11], 0 offen
	buffer_load_u8 v244, v150, s[8:11], 0 offen
	buffer_load_u8 v243, v151, s[8:11], 0 offen
	buffer_load_u8 v245, v152, s[8:11], 0 offen
	buffer_load_u8 v237, v153, s[8:11], 0 offen
	buffer_load_u8 v229, v154, s[8:11], 0 offen
	buffer_load_u8 v236, v155, s[8:11], 0 offen
	buffer_load_u8 v8, v156, s[8:11], 0 offen
	buffer_load_u8 v4, v157, s[8:11], 0 offen
	buffer_load_u8 v228, v158, s[8:11], 0 offen
	buffer_load_u8 v241, v159, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v1, v1, s[16:19], 0 offen
	buffer_load_u8 v2, v2, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	buffer_load_u8 v129, v132, s[16:19], 0 offen
	buffer_load_u8 v130, v133, s[16:19], 0 offen
	buffer_load_u8 v132, v134, s[16:19], 0 offen
	buffer_load_u8 v0, v0, s[16:19], 0 offen
	buffer_load_u8 v131, v131, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v166, v1
	s_waitcnt vmcnt(6)
	ds_store_b8 v166, v2 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v166, v3 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v166, v129 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v166, v130 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v221, v131
	ds_store_b8 v166, v132 offset:1536
	ds_store_b8 v255, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v219 offset:320
	ds_load_u8 v1, v219 offset:256
	ds_load_u8 v2, v219 offset:336
	ds_load_u8 v3, v219 offset:272
	ds_load_u8 v129, v219 offset:352
	ds_load_u8 v130, v219 offset:288
	ds_load_u8 v131, v219 offset:368
	ds_load_u8 v132, v219 offset:304
	ds_load_u8 v188, v219 offset:832
	ds_load_u8 v189, v219 offset:768
	ds_load_u8 v158, v219 offset:1584
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	ds_load_u8 v1, v219 offset:448
	ds_load_u8 v133, v219 offset:384
	ds_load_u8 v134, v219 offset:464
	ds_load_u8 v135, v219 offset:400
	ds_load_u8 v136, v219 offset:480
	ds_load_u8 v137, v219 offset:416
	ds_load_u8 v138, v219 offset:496
	ds_load_u8 v139, v219 offset:432
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v133, v1, 0xc0c0004
	ds_load_u8 v133, v219 offset:64
	ds_load_u8 v140, v219
	ds_load_u8 v141, v219 offset:80
	ds_load_u8 v142, v219 offset:16
	ds_load_u8 v143, v219 offset:96
	ds_load_u8 v144, v219 offset:32
	ds_load_u8 v145, v219 offset:112
	ds_load_u8 v146, v219 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v3, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v130, v137, v136, 0xc0c0004
	v_lshl_or_b32 v1, v1, 16, v0
	v_mov_b32_e32 v136, v226
	v_lshl_or_b32 v3, v3, 16, v2
	v_mov_b32_e32 v137, v223
	v_lshl_or_b32 v197, v130, 16, v129
	v_perm_b32 v129, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v130, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v133, v140, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v195, v130, 16, v129
	ds_load_u8 v172, v219 offset:960
	ds_load_u8 v174, v219 offset:896
	ds_load_u8 v129, v219 offset:1024
	ds_load_u8 v140, v219 offset:192
	ds_load_u8 v147, v219 offset:128
	ds_load_u8 v148, v219 offset:208
	ds_load_u8 v149, v219 offset:144
	ds_load_u8 v150, v219 offset:224
	ds_load_u8 v151, v219 offset:160
	ds_load_u8 v152, v219 offset:240
	ds_load_u8 v153, v219 offset:176
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v130, 0, v222
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v131, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v140, v147, v140, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v134, v149, v148, 0xc0c0004
	scratch_store_b32 off, v129, off offset:144 ; 4-byte Folded Spill
	ds_load_u8 v146, v219 offset:976
	ds_load_u8 v168, v219 offset:912
	ds_load_u8 v129, v219 offset:992
	v_lshl_or_b32 v0, v140, 16, v133
	v_perm_b32 v133, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v132, v153, v152, 0xc0c0004
	v_mov_b32_e32 v152, v224
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v2, v134, 16, v133
	v_perm_b32 v133, v144, v143, 0xc0c0004
	v_mov_b32_e32 v144, v225
	v_perm_b32 v134, v151, v150, 0xc0c0004
	v_lshl_or_b32 v194, v132, 16, v131
	v_mov_b32_e32 v143, v220
	ds_load_u8 v220, v219 offset:848
	ds_load_u8 v183, v219 offset:784
	ds_load_u8 v175, v219 offset:864
	ds_load_u8 v178, v219 offset:800
	ds_load_u8 v151, v219 offset:880
	ds_load_u8 v147, v219 offset:816
	ds_load_u8 v142, v219 offset:704
	ds_load_u8 v177, v219 offset:1488
	ds_load_u8 v179, v219 offset:1424
	ds_load_u8 v169, v219 offset:1504
	ds_load_u8 v171, v219 offset:1440
	ds_load_u8 v157, v219 offset:1520
	ds_load_u8 v150, v219 offset:1456
	v_lshl_or_b32 v196, v134, 16, v133
	ds_load_u8 v226, v219 offset:640
	ds_load_u8 v190, v219 offset:720
	ds_load_u8 v191, v219 offset:656
	ds_load_u8 v184, v219 offset:736
	ds_load_u8 v185, v219 offset:672
	ds_load_u8 v205, v219 offset:752
	ds_load_u8 v181, v219 offset:688
	ds_load_u8 v134, v219 offset:576
	ds_load_u8 v132, v219 offset:512
	ds_load_u8 v138, v219 offset:592
	ds_load_u8 v135, v219 offset:528
	ds_load_u8 v141, v219 offset:608
	ds_load_u8 v140, v219 offset:544
	ds_load_u8 v213, v219 offset:624
	v_mov_b32_e32 v131, v233
	s_waitcnt lgkmcnt(27)
	scratch_store_b32 off, v129, off offset:288 ; 4-byte Folded Spill
	ds_load_u8 v156, v219 offset:928
	ds_load_u8 v129, v219 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:252 ; 4-byte Folded Spill
	ds_load_u8 v225, v219 offset:560
	ds_load_u8 v129, v219 offset:1216
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:256 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1280
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:280 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:212 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:220 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v149, v219 offset:1152
	ds_load_u8 v145, v219 offset:1088
	ds_load_u8 v129, v219 offset:1104
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:284 ; 4-byte Folded Spill
	ds_load_u8 v155, v219 offset:1040
	ds_load_u8 v153, v219 offset:1120
	ds_load_u8 v129, v219 offset:1056
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:272 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:228 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:244 ; 4-byte Folded Spill
	ds_load_u8 v182, v219 offset:1472
	ds_load_u8 v129, v219 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:148 ; 4-byte Folded Spill
	ds_load_u8 v224, v219 offset:1408
	ds_load_u8 v139, v219 offset:1344
	ds_load_u8 v192, v219 offset:1360
	ds_load_u8 v193, v219 offset:1296
	ds_load_u8 v186, v219 offset:1376
	ds_load_u8 v187, v219 offset:1312
	ds_load_u8 v180, v219 offset:1392
	ds_load_u8 v215, v219 offset:1328
	ds_load_u8 v129, v219 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:164 ; 4-byte Folded Spill
	scratch_load_b32 v129, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v133, v129
	scratch_load_b32 v129, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v129, v129
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1920
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:260 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:264 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:224 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:236 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:204 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v154, v219 offset:1728
	ds_load_u8 v167, v219 offset:1792
	ds_load_u8 v129, v219 offset:1744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:268 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:276 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:240 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:248 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:216 ; 4-byte Folded Spill
	ds_load_u8 v129, v219 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:232 ; 4-byte Folded Spill
	ds_load_u8 v176, v219 offset:1664
	ds_load_u8 v214, v219 offset:1600
	ds_load_u8 v170, v219 offset:1616
	ds_load_u8 v173, v219 offset:1552
	ds_load_u8 v159, v219 offset:1632
	ds_load_u8 v148, v219 offset:1568
	ds_load_u8 v129, v219 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v129, off offset:292 ; 4-byte Folded Spill
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v206, v240
	ds_store_b8 v206, v5 offset:512
	ds_store_b8 v206, v238 offset:1024
	ds_store_b8 v206, v239 offset:1536
	ds_store_b8 v206, v232 offset:2048
	ds_store_b8 v206, v231 offset:2560
	ds_store_b8 v206, v230 offset:3072
	ds_store_b8 v206, v246 offset:3584
	ds_store_b8 v206, v6 offset:4096
	ds_store_b8 v206, v7 offset:4608
	ds_store_b8 v206, v242 offset:5120
	ds_store_b8 v206, v244 offset:5632
	ds_store_b8 v206, v245 offset:6144
	ds_store_b8 v206, v229 offset:6656
	ds_store_b8 v206, v8 offset:7168
	ds_store_b8 v206, v228 offset:7680
	ds_store_b8 v164, v160
	ds_store_b8 v164, v161 offset:512
	ds_store_b8 v164, v163 offset:1024
	ds_store_b8 v164, v165 offset:1536
	ds_store_b8 v164, v198 offset:2048
	ds_store_b8 v164, v199 offset:2560
	ds_store_b8 v164, v200 offset:3072
	ds_store_b8 v164, v201 offset:3584
	ds_store_b8 v164, v202 offset:4096
	ds_store_b8 v164, v203 offset:4608
	ds_store_b8 v164, v204 offset:5120
	ds_store_b8 v164, v243 offset:5632
	ds_store_b8 v164, v237 offset:6144
	ds_store_b8 v164, v236 offset:6656
	ds_store_b8 v164, v4 offset:7168
	ds_store_b8 v164, v241 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[4:5], off, off offset:368
	scratch_load_b64 v[6:7], off, off offset:376
	scratch_load_b64 v[160:161], off, off offset:392
	scratch_load_b64 v[7:8], off, off offset:384
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[228:231], v130 offset1:8
	v_mov_b32_e32 v163, v255
	v_mov_b32_e32 v129, v217
	scratch_load_b32 v165, off, off offset:528 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[228:229], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[228:229], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[228:229], v[196:197], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[228:229], v[194:195], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[230:231], v[0:1], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[230:231], v[2:3], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[230:231], v[196:197], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[230:231], v[194:195], v[121:128] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v5, v4, v235
	v_mov_b32_e32 v4, v222
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v8, v160, v235
	scratch_load_b64 v[160:161], off, off offset:400 ; 8-byte Folded Reload
	v_add_nc_u32_e32 v7, v7, v235
	v_add_nc_u32_e32 v6, v6, v235
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v228, v160, v235
	scratch_load_b64 v[160:161], off, off offset:408 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v228, 0x80000000, v228, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v229, v160, v235
	scratch_load_b64 v[160:161], off, off offset:416 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v229, 0x80000000, v229, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v230, v160, v235
	scratch_load_b64 v[160:161], off, off offset:424 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v230, 0x80000000, v230, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v231, v160, v235
	scratch_load_b64 v[160:161], off, off offset:432 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v231, 0x80000000, v231, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v232, v160, v235
	scratch_load_b64 v[160:161], off, off offset:440 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v232, 0x80000000, v232, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v236, v160, v235
	scratch_load_b64 v[160:161], off, off offset:448 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v236, 0x80000000, v236, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v237, v160, v235
	scratch_load_b64 v[160:161], off, off offset:456 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v237, 0x80000000, v237, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v238, v160, v235
	scratch_load_b64 v[160:161], off, off offset:464 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v238, 0x80000000, v238, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v239, v160, v235
	scratch_load_b64 v[160:161], off, off offset:472 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v239, 0x80000000, v239, s4
	s_clause 0x6
	buffer_load_u8 v5, v5, s[8:11], 0 offen
	buffer_load_u8 v7, v7, s[8:11], 0 offen
	buffer_load_u8 v234, v228, s[8:11], 0 offen
	buffer_load_u8 v207, v230, s[8:11], 0 offen
	buffer_load_u8 v232, v232, s[8:11], 0 offen
	buffer_load_u8 v209, v237, s[8:11], 0 offen
	buffer_load_u8 v204, v239, s[8:11], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	scratch_load_b32 v239, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v240, v160, v235
	scratch_load_b64 v[160:161], off, off offset:480 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v240, 0x80000000, v240, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v241, v160, v235
	scratch_load_b64 v[160:161], off, off offset:488 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v241, 0x80000000, v241, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v242, v160, v235
	scratch_load_b64 v[160:161], off, off offset:496 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v242, 0x80000000, v242, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v243, v160, v235
	scratch_load_b64 v[160:161], off, off offset:504 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v243, 0x80000000, v243, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v244, v160, v235
	scratch_load_b64 v[160:161], off, off offset:512 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v244, 0x80000000, v244, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v245, v160, v235
	scratch_load_b64 v[160:161], off, off offset:532 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v245, 0x80000000, v245, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v246, v160, v235
	scratch_load_b64 v[160:161], off, off offset:540 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v246, 0x80000000, v246, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v233, v160, v235
	scratch_load_b64 v[160:161], off, off offset:548 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v233, 0x80000000, v233, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v227, v160, v235
	scratch_load_b64 v[160:161], off, off offset:556 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v227, 0x80000000, v227, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v223, v160, v235
	scratch_load_b64 v[160:161], off, off offset:564 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v223, 0x80000000, v223, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v222, v160, v235
	scratch_load_b64 v[160:161], off, off offset:572 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v222, 0x80000000, v222, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v255, v160, v235
	scratch_load_b64 v[160:161], off, off offset:580 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v255, 0x80000000, v255, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v217, v160, v235
	scratch_load_b64 v[160:161], off, off offset:588 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v217, 0x80000000, v217, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v211, v160, v235
	scratch_load_b64 v[160:161], off, off offset:596 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v211, 0x80000000, v211, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v216, v160, v235
	scratch_load_b64 v[160:161], off, off offset:604 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v216, 0x80000000, v216, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v208, v160, v235
	scratch_load_b64 v[160:161], off, off offset:612 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v208, 0x80000000, v208, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v210, v160, v235
	scratch_load_b64 v[160:161], off, off offset:620 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v210, 0x80000000, v210, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v212, v160, v235
	scratch_load_b64 v[160:161], off, off offset:628 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v161, v218
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v212, 0x80000000, v212, s4
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v235, v160, v235
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1185 39                       ; ragged.py:1185:39
	v_cndmask_b32_e64 v235, 0x80000000, v235, s4
	s_clause 0x18
	buffer_load_u8 v218, v241, s[8:11], 0 offen
	buffer_load_u8 v243, v243, s[8:11], 0 offen
	buffer_load_u8 v245, v245, s[8:11], 0 offen
	buffer_load_u8 v233, v233, s[8:11], 0 offen
	buffer_load_u8 v223, v223, s[8:11], 0 offen
	buffer_load_u8 v255, v255, s[8:11], 0 offen
	buffer_load_u8 v211, v211, s[8:11], 0 offen
	buffer_load_u8 v208, v208, s[8:11], 0 offen
	buffer_load_u8 v212, v212, s[8:11], 0 offen
	buffer_load_u8 v203, v231, s[8:11], 0 offen
	buffer_load_u8 v201, v229, s[8:11], 0 offen
	buffer_load_u8 v8, v8, s[8:11], 0 offen
	buffer_load_u8 v6, v6, s[8:11], 0 offen
	buffer_load_u8 v202, v242, s[8:11], 0 offen
	buffer_load_u8 v198, v240, s[8:11], 0 offen
	buffer_load_u8 v199, v238, s[8:11], 0 offen
	buffer_load_u8 v200, v236, s[8:11], 0 offen
	buffer_load_u8 v222, v222, s[8:11], 0 offen
	buffer_load_u8 v227, v227, s[8:11], 0 offen
	buffer_load_u8 v246, v246, s[8:11], 0 offen
	buffer_load_u8 v244, v244, s[8:11], 0 offen
	buffer_load_u8 v160, v235, s[8:11], 0 offen
	buffer_load_u8 v210, v210, s[8:11], 0 offen
	buffer_load_u8 v216, v216, s[8:11], 0 offen
	buffer_load_u8 v217, v217, s[8:11], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	scratch_load_b32 v235, off, off         ; 4-byte Folded Reload
	ds_load_2addr_stride64_b64 v[228:231], v165 offset1:8
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s4, s15, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s15, 0x60
	s_mov_b32 s15, s4
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[239:242], v239 offset1:8
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[235:238], v235 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v206, v5
	ds_store_b8 v206, v7 offset:512
	ds_store_b8 v206, v234 offset:1024
	ds_store_b8 v206, v207 offset:1536
	ds_store_b8 v206, v232 offset:2048
	ds_store_b8 v206, v209 offset:2560
	ds_store_b8 v206, v204 offset:3072
	ds_store_b8 v206, v218 offset:3584
	ds_store_b8 v206, v243 offset:4096
	ds_store_b8 v206, v245 offset:4608
	ds_store_b8 v206, v233 offset:5120
	ds_store_b8 v206, v223 offset:5632
	ds_store_b8 v206, v255 offset:6144
	ds_store_b8 v206, v211 offset:6656
	ds_store_b8 v206, v208 offset:7168
	ds_store_b8 v206, v212 offset:7680
	ds_store_b8 v164, v6
	ds_store_b8 v164, v8 offset:512
	ds_store_b8 v164, v201 offset:1024
	ds_store_b8 v164, v203 offset:1536
	ds_store_b8 v164, v200 offset:2048
	ds_store_b8 v164, v199 offset:2560
	ds_store_b8 v164, v198 offset:3072
	ds_store_b8 v164, v202 offset:3584
	ds_store_b8 v164, v244 offset:4096
	ds_store_b8 v164, v246 offset:4608
	ds_store_b8 v164, v227 offset:5120
	ds_store_b8 v164, v222 offset:5632
	ds_store_b8 v164, v217 offset:6144
	ds_store_b8 v164, v216 offset:6656
	ds_store_b8 v164, v210 offset:7168
	ds_store_b8 v164, v160 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[243:246], v130 offset1:8
	v_mov_b32_e32 v222, v4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v4, v135, v138, 0xc0c0004
	v_perm_b32 v5, v191, v190, 0xc0c0004
	v_mov_b32_e32 v217, v129
	scratch_load_b32 v129, off, off offset:252 ; 4-byte Folded Reload
	v_perm_b32 v6, v140, v141, 0xc0c0004
	v_perm_b32 v7, v185, v184, 0xc0c0004
	v_perm_b32 v8, v147, v151, 0xc0c0004
	v_dual_mov_b32 v218, v161 :: v_dual_mov_b32 v255, v163
	v_mov_b32_e32 v223, v137
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[247:254], v[243:244], v[0:1], v[247:254] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[245:246], v[0:1], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[243:244], v[2:3], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[245:246], v[2:3], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v189, v188, 0xc0c0004
	v_perm_b32 v1, v174, v172, 0xc0c0004
	v_perm_b32 v2, v132, v134, 0xc0c0004
	v_perm_b32 v3, v226, v142, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[243:244], v[194:195], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[245:246], v[194:195], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v1, v1, 16, v0
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[243:244], v[196:197], v[33:40] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v0, v3, 16, v2
	v_perm_b32 v2, v183, v220, 0xc0c0004
	v_perm_b32 v3, v168, v146, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[41:48], v[245:246], v[196:197], v[41:48] neg_lo:[1,1,0]
	v_mov_b32_e32 v226, v136
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[228:229], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[230:231], v[0:1], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v5, 16, v4
	scratch_load_b32 v5, off, off offset:288 ; 4-byte Folded Reload
	v_perm_b32 v4, v178, v175, 0xc0c0004
	v_mov_b32_e32 v220, v143
	v_wmma_i32_16x16x16_iu4 v[81:88], v[228:229], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[230:231], v[2:3], v[89:96] neg_lo:[1,1,0]
	s_waitcnt vmcnt(1)
	v_perm_b32 v129, v129, v133, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v156, v5, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v7, 16, v6
	v_perm_b32 v6, v225, v213, 0xc0c0004
	v_perm_b32 v7, v181, v205, 0xc0c0004
	v_mov_b32_e32 v225, v144
	v_wmma_i32_16x16x16_iu4 v[97:104], v[228:229], v[4:5], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[230:231], v[4:5], v[105:112] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v6, v7, 16, v6
	v_lshl_or_b32 v7, v129, 16, v8
	v_wmma_i32_16x16x16_iu4 v[113:120], v[228:229], v[6:7], v[113:120] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[227:228], off, off offset:8
	scratch_load_b64 v[228:229], off, off offset:16
	v_wmma_i32_16x16x16_iu4 v[121:128], v[230:231], v[6:7], v[121:128] neg_lo:[1,1,0]
	s_clause 0x3                            ; 32-byte Folded Reload
	scratch_load_b64 v[229:230], off, off offset:24
	scratch_load_b64 v[230:231], off, off offset:32
	scratch_load_b64 v[231:232], off, off offset:40
	scratch_load_b64 v[232:233], off, off offset:48
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v233, v131
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[129:132], v165 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[129:130], v[6:7], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[131:132], v[6:7], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v7, off, off offset:196
	scratch_load_b32 v8, off, off offset:200
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[4:5], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[4:5], v[41:48] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:212
	scratch_load_b32 v6, off, off offset:220
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[247:254], v[129:130], v[0:1], v[247:254] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[2:3], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[0:1], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[2:3], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:280
	scratch_load_b32 v2, off, off offset:144
	scratch_load_b32 v3, off, off offset:256
	scratch_load_b32 v4, off, off offset:284
	v_perm_b32 v1, v224, v182, 0xc0c0004
	v_mov_b32_e32 v224, v152
	s_waitcnt vmcnt(6)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:228
	scratch_load_b32 v129, off, off offset:244
	s_waitcnt vmcnt(6)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	scratch_load_b32 v6, off, off offset:272 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_perm_b32 v0, v0, v139, 0xc0c0004
	s_waitcnt vmcnt(5)
	v_perm_b32 v2, v2, v145, 0xc0c0004
	s_waitcnt vmcnt(4)
	v_perm_b32 v3, v149, v3, 0xc0c0004
	s_waitcnt vmcnt(3)
	v_perm_b32 v4, v155, v4, 0xc0c0004
	v_lshl_or_b32 v1, v1, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v0, v3, 16, v2
	v_perm_b32 v2, v193, v192, 0xc0c0004
	v_perm_b32 v3, v179, v177, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[65:72], v[235:236], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[237:238], v[0:1], v[73:80] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v5, 16, v4
	v_perm_b32 v4, v187, v186, 0xc0c0004
	v_perm_b32 v5, v171, v169, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[81:88], v[235:236], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[237:238], v[2:3], v[89:96] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v5, v5, 16, v4
	s_waitcnt vmcnt(1)
	v_perm_b32 v8, v129, v8, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:180
	scratch_load_b32 v130, off, off offset:188
	s_waitcnt vmcnt(2)
	v_perm_b32 v6, v6, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v4, v7, 16, v6
	v_perm_b32 v6, v215, v180, 0xc0c0004
	v_perm_b32 v7, v150, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[97:104], v[235:236], v[4:5], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[237:238], v[4:5], v[105:112] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v7, v7, 16, v6
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	v_lshl_or_b32 v6, v129, 16, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[235:236], v[6:7], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[237:238], v[6:7], v[121:128] neg_lo:[1,1,0]
	s_clause 0x3                            ; 28-byte Folded Reload
	scratch_load_b64 v[236:237], off, off offset:64
	scratch_load_b64 v[237:238], off, off offset:72
	scratch_load_b64 v[234:235], off, off offset:56
	scratch_load_b32 v235, off, off
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[129:132], v235 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[247:254], v[129:130], v[0:1], v[247:254] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[0:1], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[2:3], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[2:3], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v1, off, off offset:192
	scratch_load_b32 v2, off, off offset:260
	scratch_load_b32 v0, off, off offset:264
	v_perm_b32 v3, v176, v154, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[4:5], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[4:5], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[129:130], v[6:7], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[131:132], v[6:7], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v5, off, off offset:268
	scratch_load_b32 v6, off, off offset:276
	scratch_load_b32 v7, off, off offset:240
	scratch_load_b32 v8, off, off offset:248
	s_waitcnt vmcnt(5)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	scratch_load_b32 v2, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_perm_b32 v0, v167, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v1, v1, 16, v0
	s_waitcnt vmcnt(3)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v214, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v0, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:224
	scratch_load_b32 v3, off, off offset:236
	v_wmma_i32_16x16x16_iu4 v[65:72], v[239:240], v[0:1], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[241:242], v[0:1], v[73:80] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:168
	scratch_load_b32 v4, off, off offset:176
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	v_perm_b32 v4, v173, v170, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v3, v3, 16, v2
	v_lshl_or_b32 v2, v5, 16, v4
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v4, off, off offset:204
	scratch_load_b32 v5, off, off offset:208
	v_wmma_i32_16x16x16_iu4 v[81:88], v[239:240], v[2:3], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[241:242], v[2:3], v[89:96] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v4, v5, v4, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v5, off, off offset:160
	scratch_load_b32 v6, off, off offset:164
	s_waitcnt vmcnt(0)
	v_perm_b32 v5, v6, v5, 0xc0c0004
	v_perm_b32 v6, v148, v159, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v5, v5, 16, v4
	v_lshl_or_b32 v4, v7, 16, v6
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v7, off, off offset:216
	scratch_load_b32 v8, off, off offset:232
	scratch_load_b32 v6, off, off offset:292
	v_wmma_i32_16x16x16_iu4 v[97:104], v[239:240], v[4:5], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[241:242], v[4:5], v[105:112] neg_lo:[1,1,0]
	s_waitcnt vmcnt(1)
	v_perm_b32 v7, v8, v7, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:172
	scratch_load_b32 v129, off, off offset:184
	s_waitcnt vmcnt(2)
	v_perm_b32 v6, v158, v6, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v6, v7, 16, v6
	s_waitcnt vmcnt(0)
	v_perm_b32 v8, v129, v8, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:152
	scratch_load_b32 v130, off, off offset:156
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v7, v129, 16, v8
	v_wmma_i32_16x16x16_iu4 v[113:120], v[239:240], v[6:7], v[113:120] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[238:239], off, off offset:80
	scratch_load_b64 v[239:240], off, off offset:88
	v_wmma_i32_16x16x16_iu4 v[121:128], v[241:242], v[6:7], v[121:128] neg_lo:[1,1,0]
	s_clause 0x6                            ; 52-byte Folded Reload
	scratch_load_b64 v[240:241], off, off offset:96
	scratch_load_b64 v[241:242], off, off offset:104
	scratch_load_b64 v[242:243], off, off offset:112
	scratch_load_b64 v[243:244], off, off offset:120
	scratch_load_b64 v[244:245], off, off offset:128
	scratch_load_b64 v[245:246], off, off offset:136
	scratch_load_b32 v246, off, off offset:4
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[129:132], v246 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[247:254], v[129:130], v[0:1], v[247:254] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[0:1], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[2:3], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[2:3], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[129:130], v[4:5], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[131:132], v[4:5], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[129:130], v[6:7], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[131:132], v[6:7], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v130, v73
	v_cvt_f32_i32_e32 v147, v74
	v_cvt_f32_i32_e32 v154, v83
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v22
	v_cvt_f32_i32_e32 v73, v23
	v_cvt_f32_i32_e32 v83, v36
	v_cvt_f32_i32_e32 v23, v43
	v_cvt_f32_i32_e32 v22, v44
	v_cvt_f32_i32_e32 v36, v55
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v55, off, off offset:1164
	scratch_load_b32 v43, off, off offset:1148
	scratch_load_b32 v44, off, off offset:1152
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v148, v65
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v6, v30
	v_cvt_f32_i32_e32 v30, v40
	v_cvt_f32_i32_e32 v40, v51
	v_cvt_f32_i32_e32 v7, v31
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v39, v52
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s4, s7, s6
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v136, v86
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s4, s4, s5
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v155, v84
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v8, v32
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v38, v53
	v_cvt_f32_i32_e32 v35, v56
	v_cvt_f32_i32_e32 v5, v29
	v_cvt_f32_i32_e32 v29, v57
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v149, v66
	v_cvt_f32_i32_e32 v150, v67
	v_cvt_f32_i32_e32 v129, v72
	v_cvt_f32_i32_e32 v152, v81
	.loc	1 1202 32                       ; ragged.py:1202:32
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
	v_cvt_f32_i32_e32 v137, v85
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v37
	v_cvt_f32_i32_e32 v37, v54
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v151, v68
	v_cvt_f32_i32_e32 v153, v82
	v_cvt_f32_i32_e32 v134, v88
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v0, v108
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v108, v114
	v_cvt_f32_i32_e32 v109, v115
	v_cvt_f32_i32_e32 v141, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v116
	v_cvt_f32_i32_e32 v143, v92
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v112, v118
	v_cvt_f32_i32_e32 v142, v90
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v157, v98
	v_cvt_f32_i32_e32 v158, v99
	v_cvt_f32_i32_e32 v139, v103
	v_cvt_f32_i32_e32 v138, v104
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v111, v117
	v_cvt_f32_i32_e32 v104, v123
	v_cvt_f32_i32_e32 v103, v124
	v_cvt_f32_i32_e32 v99, v125
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v156, v97
	v_cvt_f32_i32_e32 v159, v100
	v_cvt_f32_i32_e32 v100, v107
	v_cvt_f32_i32_e32 v107, v113
	v_cvt_f32_i32_e32 v133, v69
	v_cvt_f32_i32_e32 v132, v70
	v_cvt_f32_i32_e32 v131, v71
	v_cvt_f32_i32_e32 v160, v101
	v_cvt_f32_i32_e32 v135, v87
	v_cvt_f32_i32_e32 v140, v102
	v_cvt_f32_i32_e32 v146, v75
	v_cvt_f32_i32_e32 v145, v76
	v_cvt_f32_i32_e32 v102, v105
	v_cvt_f32_i32_e32 v101, v106
	v_cvt_f32_i32_e32 v113, v119
	v_cvt_f32_i32_e32 v114, v120
	v_cvt_f32_i32_e32 v144, v91
	v_cvt_f32_i32_e32 v106, v121
	v_cvt_f32_i32_e32 v105, v122
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v4, v16
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v197, v77
	v_cvt_f32_i32_e32 v196, v78
	v_cvt_f32_i32_e32 v195, v79
	v_cvt_f32_i32_e32 v194, v80
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v3, v15
	v_cvt_f32_i32_e32 v15, v61
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v87, v96
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v20, v63
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v97, v127
	v_cvt_f32_i32_e32 v96, v128
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v91, v247
	v_cvt_f32_i32_e32 v78, v248
	v_cvt_f32_i32_e32 v77, v249
	v_cvt_f32_i32_e32 v76, v250
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v71, v251
	v_cvt_f32_i32_e32 v70, v252
	v_cvt_f32_i32_e32 v69, v253
	v_cvt_f32_i32_e32 v68, v254
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v17, v26
	v_cvt_f32_i32_e32 v16, v27
	v_cvt_f32_i32_e32 v2, v14
	v_cvt_f32_i32_e32 v14, v28
	v_cvt_f32_i32_e32 v28, v58
	v_cvt_f32_i32_e32 v27, v59
	v_cvt_f32_i32_e32 v26, v60
	v_cvt_f32_i32_e32 v19, v62
	v_cvt_f32_i32_e32 v21, v64
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v33, v55, s4, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v43, s7, v43, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s7, v44, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v33, v33, s[20:23], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	s_clause 0x1
	buffer_load_u16 v43, v43, s[12:15], 0 offen
	buffer_load_u16 v51, v44, s[12:15], 0 offen
	scratch_load_b32 v44, off, off offset:1156 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s7, v44, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v5, v51, v5
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s1
	buffer_load_u16 v52, v44, s[12:15], 0 offen
	scratch_load_b32 v44, off, off offset:1160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v52, 16, v52
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s7, v44, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s7, s7, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s7, s24
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v52, v9
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	buffer_load_u16 v53, v44, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v56, off, off offset:1168 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v56, v33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x11                           ; 72-byte Folded Reload
	scratch_load_b32 v57, off, off offset:1172
	scratch_load_b32 v181, off, off offset:988
	scratch_load_b32 v184, off, off offset:1000
	scratch_load_b32 v163, off, off offset:896
	scratch_load_b32 v168, off, off offset:936
	scratch_load_b32 v182, off, off offset:992
	scratch_load_b32 v161, off, off offset:892
	scratch_load_b32 v166, off, off offset:904
	scratch_load_b32 v203, off, off offset:1076
	scratch_load_b32 v198, off, off offset:1048
	scratch_load_b32 v192, off, off offset:1032
	scratch_load_b32 v190, off, off offset:1024
	scratch_load_b32 v174, off, off offset:960
	scratch_load_b32 v183, off, off offset:996
	scratch_load_b32 v202, off, off offset:1072
	scratch_load_b32 v193, off, off offset:1036
	scratch_load_b32 v191, off, off offset:1028
	scratch_load_b32 v175, off, off offset:964
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v33, 16, v43
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(17)
	ds_load_b128 v[43:46], v57
	ds_load_b128 v[47:50], v57 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v148
	s_clause 0x11                           ; 72-byte Folded Reload
	scratch_load_b32 v165, off, off offset:900
	scratch_load_b32 v173, off, off offset:956
	scratch_load_b32 v119, off, off offset:740
	scratch_load_b32 v148, off, off offset:796
	scratch_load_b32 v176, off, off offset:968
	scratch_load_b32 v167, off, off offset:932
	scratch_load_b32 v115, off, off offset:700
	scratch_load_b32 v116, off, off offset:704
	scratch_load_b32 v118, off, off offset:712
	scratch_load_b32 v123, off, off offset:764
	scratch_load_b32 v124, off, off offset:768
	scratch_load_b32 v125, off, off offset:772
	scratch_load_b32 v126, off, off offset:776
	scratch_load_b32 v117, off, off offset:708
	scratch_load_b32 v207, off, off offset:1092
	scratch_load_b32 v206, off, off offset:1088
	scratch_load_b32 v205, off, off offset:1084
	scratch_load_b32 v204, off, off offset:1080
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(34) lgkmcnt(1)
	v_dual_fmac_f32 v181, v54, v43 :: v_dual_mul_f32 v54, v33, v149
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v149, off, off offset:800
	scratch_load_b32 v189, off, off offset:1020
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(32)
	v_dual_mul_f32 v15, v53, v15 :: v_dual_fmac_f32 v182, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v150
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v184, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v151
	scratch_load_b32 v151, off, off offset:808 ; 4-byte Folded Reload
	v_dual_mul_f32 v0, v52, v0 :: v_dual_mul_f32 v1, v33, v1
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v183, v54, v46 :: v_dual_mul_f32 v54, v51, v152
	scratch_load_b32 v152, off, off offset:860 ; 4-byte Folded Reload
	v_dual_fmac_f32 v161, v54, v43 :: v_dual_mul_f32 v54, v51, v153
	scratch_load_b32 v153, off, off offset:864 ; 4-byte Folded Reload
	v_dual_fmac_f32 v163, v54, v44 :: v_dual_mul_f32 v54, v51, v154
	scratch_load_b32 v154, off, off offset:868 ; 4-byte Folded Reload
	v_fmac_f32_e32 v166, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v155
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v155, off, off offset:872
	scratch_load_b32 v150, off, off offset:804
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v165, v54, v46 :: v_dual_mul_f32 v54, v52, v156
	s_waitcnt vmcnt(22)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v148, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v157
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v149, v54, v44 :: v_dual_mul_f32 v54, v52, v158
	s_waitcnt vmcnt(5)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v151, v54, v45 :: v_dual_mul_f32 v54, v52, v159
	scratch_load_b32 v159, off, off offset:924 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v150, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v53, v107
	scratch_load_b32 v107, off, off offset:652 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v115, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v43, v53, v108 :: v_dual_mul_f32 v54, v130, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v116, v43, v44 :: v_dual_mul_f32 v43, v53, v109
	v_dual_fmac_f32 v118, v43, v45 :: v_dual_mul_f32 v43, v53, v110
	scratch_load_b32 v110, off, off offset:672 ; 4-byte Folded Reload
	v_fmac_f32_e32 v117, v43, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v133
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v173, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v132
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v174, v43, v48 :: v_dual_mul_f32 v43, v33, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v175, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v33, v129
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v176, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v137
	scratch_load_b32 v137, off, off offset:836 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v152, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v136
	scratch_load_b32 v136, off, off offset:832 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v153, v43, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v135
	scratch_load_b32 v135, off, off offset:828 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v154, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v51, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v155, v43, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v160
	scratch_load_b32 v160, off, off offset:928 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v123, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v140
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v124, v43, v48 :: v_dual_mul_f32 v43, v52, v139
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v125, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v52, v138
	scratch_load_b32 v138, off, off offset:840 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v126, v43, v50 :: v_dual_mul_f32 v43, v53, v111
	scratch_load_b32 v111, off, off offset:676 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v107, v43, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v112
	scratch_load_b32 v112, off, off offset:680 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v110, v43, v48 :: v_dual_mul_f32 v43, v53, v113
	scratch_load_b32 v113, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v111, v43, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v43, v53, v114
	scratch_load_b32 v114, off, off offset:736 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v112, v43, v50
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[43:46], v57 offset:512
	ds_load_b128 v[47:50], v57 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v207, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v54, v33, v147 :: v_dual_fmac_f32 v119, v0, v46
	v_mul_f32_e32 v0, v106, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v159, v54, v44 :: v_dual_mul_f32 v54, v33, v146
	v_fmac_f32_e32 v192, v0, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v53, v105
	scratch_load_b32 v105, off, off offset:744 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v160, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v33, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v167, v54, v46 :: v_dual_mul_f32 v54, v141, v51
	v_dual_fmac_f32 v203, v54, v43 :: v_dual_mul_f32 v54, v51, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v135, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v144
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v54, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v51, v143
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v137, v54, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v102, v52
	scratch_load_b32 v102, off, off offset:648 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v198, v54, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v101
	scratch_load_b32 v101, off, off offset:644 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v113, v54, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v54, v52, v100
	scratch_load_b32 v100, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v100, v0, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v53, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v102, v0, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v53, v103
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v101, v0, v46 :: v_dual_mul_f32 v0, v33, v197
	scratch_load_b32 v197, off, off offset:1056 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v168, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v196, v33
	scratch_load_b32 v196, off, off offset:1052 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v206, v0, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v195, v33
	scratch_load_b32 v195, off, off offset:1044 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v205, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v194, v33
	scratch_load_b32 v194, off, off offset:1040 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v204, v0, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v51, v90
	scratch_load_b32 v90, off, off offset:636 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v138, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v89, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v202, v0, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v88, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v197, v0, v49 :: v_dual_mul_f32 v0, v87, v51
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v196, v0, v50
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v52, v95
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v114, v54, v45 :: v_dual_fmac_f32 v105, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v94, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v195, v0, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v93, v52
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v194, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v92, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v193, v0, v50 :: v_dual_mul_f32 v0, v53, v99
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v90, v0, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v98, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v191, v0, v48 :: v_dual_mul_f32 v0, v97, v53
	v_fmac_f32_e32 v190, v0, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v96, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v189, v0, v50 :: v_dual_add_nc_u32 v0, s74, v55
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v0, v0, s4, 1
	buffer_load_u16 v0, v0, s[20:23], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v56, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v188, off, off offset:1016
	scratch_load_b32 v187, off, off offset:1012
	scratch_load_b32 v186, off, off offset:1008
	scratch_load_b32 v185, off, off offset:1004
	scratch_load_b32 v180, off, off offset:984
	scratch_load_b32 v179, off, off offset:980
	scratch_load_b32 v178, off, off offset:976
	scratch_load_b32 v177, off, off offset:972
	scratch_load_b32 v158, off, off offset:920
	scratch_load_b32 v172, off, off offset:952
	scratch_load_b32 v171, off, off offset:948
	scratch_load_b32 v169, off, off offset:940
	scratch_load_b32 v170, off, off offset:944
	scratch_load_b32 v157, off, off offset:916
	scratch_load_b32 v147, off, off offset:908
	scratch_load_b32 v156, off, off offset:912
	scratch_load_b32 v134, off, off offset:824
	scratch_load_b32 v133, off, off offset:820
	scratch_load_b32 v132, off, off offset:816
	scratch_load_b32 v131, off, off offset:812
	scratch_load_b32 v130, off, off offset:792
	scratch_load_b32 v129, off, off offset:788
	scratch_load_b32 v128, off, off offset:784
	scratch_load_b32 v127, off, off offset:780
	scratch_load_b32 v104, off, off offset:728
	scratch_load_b32 v98, off, off offset:716
	scratch_load_b32 v99, off, off offset:720
	scratch_load_b32 v122, off, off offset:760
	scratch_load_b32 v121, off, off offset:756
	scratch_load_b32 v106, off, off offset:748
	scratch_load_b32 v120, off, off offset:752
	scratch_load_b32 v103, off, off offset:724
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v146, off, off offset:888
	scratch_load_b32 v145, off, off offset:884
	scratch_load_b32 v143, off, off offset:876
	scratch_load_b32 v144, off, off offset:880
	scratch_load_b32 v142, off, off offset:856
	scratch_load_b32 v141, off, off offset:852
	scratch_load_b32 v140, off, off offset:848
	scratch_load_b32 v139, off, off offset:844
	ds_load_b128 v[43:46], v57
	ds_load_b128 v[47:50], v57 offset:16
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v95, off, off offset:684
	scratch_load_b32 v97, off, off offset:696
	scratch_load_b32 v89, off, off offset:692
	scratch_load_b32 v96, off, off offset:688
	scratch_load_b32 v92, off, off offset:660
	scratch_load_b32 v93, off, off offset:664
	scratch_load_b32 v94, off, off offset:668
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v91
	s_clause 0xe                            ; 60-byte Folded Reload
	scratch_load_b32 v210, off, off offset:1112
	scratch_load_b32 v208, off, off offset:1096
	scratch_load_b32 v87, off, off offset:1108
	scratch_load_b32 v88, off, off offset:1104
	scratch_load_b32 v209, off, off offset:1100
	scratch_load_b32 v201, off, off offset:1068
	scratch_load_b32 v200, off, off offset:1064
	scratch_load_b32 v199, off, off offset:1060
	scratch_load_b32 v216, off, off offset:1144
	scratch_load_b32 v215, off, off offset:1140
	scratch_load_b32 v214, off, off offset:1132
	scratch_load_b32 v213, off, off offset:1124
	scratch_load_b32 v212, off, off offset:1120
	scratch_load_b32 v211, off, off offset:1116
	scratch_load_b32 v91, off, off offset:656
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(61) lgkmcnt(1)
	v_fmac_f32_e32 v188, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v78
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(60)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v187, v0, v44 :: v_dual_mul_f32 v0, v33, v77
	s_waitcnt vmcnt(59)
	v_fmac_f32_e32 v186, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v76
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(58)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v185, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v82
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(53)
	v_fmac_f32_e32 v158, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v81
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(48)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v157, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v80
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(47)
	v_dual_fmac_f32 v147, v0, v45 :: v_dual_mul_f32 v0, v51, v79
	s_waitcnt vmcnt(46)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v156, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v86
	scratch_load_b32 v86, off, off offset:1128 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(46)
	v_fmac_f32_e32 v134, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v85
	scratch_load_b32 v85, off, off offset:1136 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(46)
	v_fmac_f32_e32 v133, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v84
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(45)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v0, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v83
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(44)
	v_fmac_f32_e32 v131, v0, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v42
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(39)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v104, v0, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v41
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(38)
	v_fmac_f32_e32 v98, v0, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v40
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(37)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v99, v0, v45 :: v_dual_mul_f32 v0, v53, v39
	s_waitcnt vmcnt(32)
	v_dual_fmac_f32 v103, v0, v46 :: v_dual_mul_f32 v0, v33, v71
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v180, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v70
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v179, v0, v48 :: v_dual_mul_f32 v0, v33, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v178, v0, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v68
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v177, v0, v50 :: v_dual_mul_f32 v0, v51, v75
	s_waitcnt vmcnt(31)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v146, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v74
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(30)
	v_dual_fmac_f32 v145, v0, v48 :: v_dual_mul_f32 v0, v51, v73
	s_waitcnt vmcnt(29)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v143, v0, v49 :: v_dual_mul_f32 v0, v51, v72
	s_waitcnt vmcnt(28)
	v_fmac_f32_e32 v144, v0, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v130, v0, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v32
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v129, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v0, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v127, v0, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v38
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(23)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v95, v0, v47 :: v_dual_mul_f32 v0, v53, v37
	s_waitcnt vmcnt(22)
	v_fmac_f32_e32 v97, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v36
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(21)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v89, v0, v49 :: v_dual_mul_f32 v0, v53, v35
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[34:37], v57 offset:512
	ds_load_b128 v[38:41], v57 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(20)
	v_fmac_f32_e32 v96, v0, v50
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v67, v33
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(8) lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v216, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v66
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v170, v1, v38
	v_fmac_f32_e32 v139, v5, v38
	v_fmac_f32_e32 v120, v9, v38
	v_fmac_f32_e32 v94, v15, v38
	v_fmac_f32_e32 v172, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v33, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v171, v0, v36 :: v_dual_mul_f32 v0, v33, v10
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v12, v52
	v_mul_f32_e32 v12, v19, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v169, v0, v37 :: v_dual_mul_f32 v0, v18, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v88, v10, v40 :: v_dual_fmac_f32 v201, v12, v39
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v86, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v142, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v51, v16
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v141, v0, v36 :: v_dual_mul_f32 v0, v51, v14
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v21, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v140, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v25, v52 :: v_dual_fmac_f32 v199, v14, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v210, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v24
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v122, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v121, v0, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v52, v22
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v106, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v29, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v208, v0, v34
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v91, v0, v35
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v92, v0, v36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v26
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v93, v0, v37
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v2, v33
	v_mul_f32_e32 v2, v3, v33
	v_dual_mul_f32 v3, v4, v33 :: v_dual_mul_f32 v4, v6, v51
	v_mul_f32_e32 v6, v7, v51
	v_dual_mul_f32 v7, v8, v51 :: v_dual_mul_f32 v8, v11, v52
	v_mul_f32_e32 v11, v13, v52
	v_mul_f32_e32 v13, v20, v53
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v215, v0, v39
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v85, v2, v40 :: v_dual_fmac_f32 v214, v3, v41
	v_dual_fmac_f32 v213, v4, v39 :: v_dual_fmac_f32 v212, v6, v40
	v_fmac_f32_e32 v211, v7, v41
	v_fmac_f32_e32 v87, v8, v39
	v_dual_fmac_f32 v209, v11, v41 :: v_dual_fmac_f32 v200, v13, v40
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v6, off, off offset:1188
	scratch_load_b32 v108, off, off offset:1180
	scratch_load_b32 v109, off, off offset:1184
	v_mov_b32_e32 v5, v217
.LBB0_9:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v7, 7, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v49, 0xbfb8aa3b, v158 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v211
	v_mul_f32_e32 v45, 0xbfb8aa3b, v140
	v_dual_mul_f32 v43, 0xbfb8aa3b, v132 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v209
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v7
	v_or_b32_e32 v2, 60, v7
	v_or_b32_e32 v4, 58, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v47, 0xbfb8aa3b, v127
	v_mul_f32_e32 v61, 0xbfb8aa3b, v103
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s68, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s0
	v_add_co_u32 v2, s0, s68, v2
	v_add_co_ci_u32_e64 v3, null, s69, 0, s0
	v_add_co_u32 v8, s1, s68, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[70:71], v[0:1]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s69, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 54, v7
	v_or_b32_e32 v4, 52, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s68, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s6
	v_add_co_u32 v2, s6, s68, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[70:71], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s69, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 50, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s10, s68, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s10
	v_add_co_u32 v8, s10, s68, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[70:71], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s69, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v7
	v_or_b32_e32 v3, 46, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v4, 44, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s14, s68, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s14
	v_add_co_u32 v2, s14, s68, v3
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[70:71], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s69, 0, s14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[72:73], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 42, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s18, s68, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s18
	v_add_co_u32 v8, s18, s68, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[70:71], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s69, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 40, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 38, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[70:71], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s22, s68, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s69, 0, s22
	v_add_co_u32 v1, s22, s68, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v216
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s69, 0, s22
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[72:73], v[8:9]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[70:71], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[72:73], v[3:4]
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_mul_f32_e32 v9, 0xbfb8aa3b, v185
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v4, 0xbfb8aa3b, v215 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v177
	v_dual_mul_f32 v8, 0xbfb8aa3b, v186 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_mul_f32_e32 v40, 0xbfb8aa3b, v180
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v13
	v_mul_f32_e32 v33, 0xbfb8aa3b, v147
	v_mul_f32_e32 v35, 0xbfb8aa3b, v144
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v14, 0xbfb8aa3b, v214
	v_cndmask_b32_e64 v15, 0, 0x42800000, s26
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v216
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v215
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v14
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v85
	v_exp_f32_e32 v12, v12
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s26
	v_exp_f32_e32 v13, v13
	v_cndmask_b32_e64 v17, 0, 0x42800000, s27
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s27
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_dual_mul_f32 v36, 0xbfb8aa3b, v143 :: v_dual_fmac_f32 v17, 0xbfb8aa3b, v214
	v_mul_f32_e32 v46, 0xbfb8aa3b, v146
	v_ldexp_f32 v0, v12, v0
	v_mul_f32_e32 v12, 0xbfb8aa3b, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v13, v13, v4
	v_exp_f32_e32 v17, v17
	v_ldexp_f32 v14, v15, v14
	v_cndmask_b32_e64 v21, 0, 0x42800000, s27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_mul_f32_e32 v12, 0xbfb8aa3b, v213
	v_mul_f32_e32 v50, 0xbfb8aa3b, v141
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s27
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v211
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v60, 0xbfb8aa3b, v134
	v_ldexp_f32 v15, v17, v16
	v_mul_f32_e32 v17, 0xbfb8aa3b, v212
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_exp_f32_e32 v21, v21
	v_mul_f32_e32 v54, 0xbfb8aa3b, v129
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v17
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v22
	v_cndmask_b32_e64 v19, 0, 0x42800000, s26
	v_exp_f32_e32 v16, v16
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v213
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s26
	v_cndmask_b32_e64 v25, 0, 0x42800000, s27
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v212
	v_mul_f32_e32 v48, 0xbfb8aa3b, v128
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v66, 0xbfb8aa3b, v122 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v209
	v_mul_f32_e32 v56, 0xbfb8aa3b, v120
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v16, v16, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v210
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s27
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v17, v12
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_mul_f32_e32 v58, 0xbfb8aa3b, v95
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_add_f32 v15, 1.0, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v19, v18
	v_ldexp_f32 v18, v21, v20
	v_mul_f32_e32 v19, 0xbfb8aa3b, v87
	v_mul_f32_e32 v21, 0xbfb8aa3b, v88
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v51, 0xbfb8aa3b, v131
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v0, v0, v216
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v210
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s26
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s26
	v_exp_f32_e32 v20, v20
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v87
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v13, 1.0, v13 :: v_dual_add_f32 v16, 1.0, v16
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v23, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, s27, v85, v14, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v20, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v208
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v84, null, v16, v16, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v10, 0xbfb8aa3b, v187 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v188
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v19, v21, v19
	v_ldexp_f32 v21, v23, v22
	v_mul_f32_e32 v23, 0xbfb8aa3b, v201
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_ldexp_f32 v22, v25, v24
	v_dual_mul_f32 v24, 0xbfb8aa3b, v200 :: v_dual_add_f32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_add_f32 v21, 1.0, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, s26
	v_mul_f32_e32 v25, 0xbfb8aa3b, v199
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s26
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v208
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v201
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v25
	v_mul_f32_e32 v53, 0xbfb8aa3b, v97
	v_exp_f32_e32 v23, v23
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v200
	v_exp_f32_e32 v70, v26
	v_cndmask_b32_e64 v25, 0, 0x42800000, s26
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s26
	v_exp_f32_e32 v72, v24
	v_mul_f32_e32 v26, 0xbfb8aa3b, v91
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v199
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, vcc_lo, v216, v0, v216
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v23, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v73, v25
	v_ldexp_f32 v67, v70, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v71, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v72, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v13, v13, v215
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_add_f32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v70, v74
	v_rcp_f32_e32 v70, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v73, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v14, v14, v85
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_mul_f32 v77, v75, v74
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v72, v70, 1.0
	v_fma_f32 v79, -v71, v77, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v28, 0xbfb8aa3b, v178 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v179
	v_dual_mul_f32 v38, 0xbfb8aa3b, v171 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v172
	v_dual_mul_f32 v29, 0xbfb8aa3b, v170 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v169
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v73, v76, 1.0
	v_fmac_f32_e32 v77, v79, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v39, 0xbfb8aa3b, v156 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v157
	v_dual_mul_f32 v41, 0xbfb8aa3b, v145 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v80, v76
	v_fmac_f32_e32 v70, v78, v70
	v_div_scale_f32 v78, s26, v215, v13, v215
	v_div_scale_f32 v80, null, v15, v15, v214
	v_fma_f32 v71, -v71, v77, v75
	v_mul_f32_e32 v83, v81, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v78, v70
	v_rcp_f32_e32 v82, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v63, 0xbfb8aa3b, v142 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v71, v71, v74, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v75, -v72, v79, v78
	v_rcp_f32_e32 v74, v84
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v55, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v64, 0xbfb8aa3b, v104
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v75, v70
	v_fma_f32 v75, -v73, v83, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v80, v82, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v71, v0, v216
	v_fma_f32 v71, -v72, v79, v78
	v_dual_fmac_f32 v83, v75, v76 :: v_dual_fmac_f32 v82, v77, v82
	v_div_scale_f32 v72, s28, v214, v15, v214
	v_fma_f32 v75, -v84, v74, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v70, v71, v70, v79
	v_fma_f32 v71, -v73, v83, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v73, v72, v82
	s_mov_b32 vcc_lo, s27
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, null, v12, v12, v213
	v_div_scale_f32 v77, s26, v86, v16, v86
	v_div_fmas_f32 v71, v71, v76, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v76, v75
	v_fma_f32 v78, -v80, v73, v72
	v_mul_f32_e32 v79, v77, v74
	v_div_scale_f32 v81, null, v17, v17, v212
	v_div_fixup_f32 v13, v70, v13, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v73, v78, v82
	v_div_fixup_f32 v14, v71, v14, v85
	v_fma_f32 v70, -v84, v79, v77
	v_rcp_f32_e32 v71, v81
	v_fma_f32 v78, -v75, v76, 1.0
	v_fma_f32 v72, -v80, v73, v72
	v_div_scale_f32 v80, null, v18, v18, v211
	v_fmac_f32_e32 v79, v70, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v70, s27, v213, v12, v213
	v_rcp_f32_e32 v78, v80
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v83, -v81, v71, 1.0
	v_div_fmas_f32 v72, v72, v82, v73
	v_fma_f32 v73, -v84, v79, v77
	v_mul_f32_e32 v77, v70, v76
	s_mov_b32 vcc_lo, s26
	v_fmac_f32_e32 v71, v83, v71
	v_div_scale_f32 v82, s28, v212, v17, v212
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v80, v78, 1.0
	v_div_scale_f32 v84, null, v20, v20, v210
	v_div_fmas_f32 v73, v73, v74, v79
	v_fma_f32 v74, -v75, v77, v70
	v_dual_mul_f32 v79, v82, v71 :: v_dual_fmac_f32 v78, v83, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v84
	v_div_scale_f32 v85, s26, v211, v18, v211
	v_fmac_f32_e32 v77, v74, v76
	v_div_scale_f32 v74, null, v19, v19, v87
	v_div_fixup_f32 v15, v72, v15, v214
	v_div_fixup_f32 v16, v73, v16, v86
	v_fma_f32 v72, -v81, v79, v82
	v_mul_f32_e32 v73, v85, v78
	v_fma_f32 v70, -v75, v77, v70
	v_rcp_f32_e32 v75, v74
	v_fma_f32 v86, -v84, v83, 1.0
	v_fmac_f32_e32 v79, v72, v71
	v_fma_f32 v72, -v80, v73, v85
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v65, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v62, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v83, v86, v83
	v_div_scale_f32 v86, s29, v210, v20, v210
	v_div_fmas_f32 v70, v70, v76, v77
	v_fma_f32 v76, -v81, v79, v82
	v_fmac_f32_e32 v73, v72, v78
	v_fma_f32 v77, -v74, v75, 1.0
	s_mov_b32 vcc_lo, s28
	v_mul_f32_e32 v72, v86, v83
	v_div_fmas_f32 v71, v76, v71, v79
	v_fma_f32 v76, -v80, v73, v85
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, null, v21, v21, v88
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v79, -v84, v72, v86
	v_div_scale_f32 v80, s27, v87, v19, v87
	v_div_fmas_f32 v73, v76, v78, v73
	v_rcp_f32_e32 v76, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v79, v83
	v_mul_f32_e32 v78, v80, v75
	v_div_fixup_f32 v12, v70, v12, v213
	v_div_fixup_f32 v17, v71, v17, v212
	v_div_fixup_f32 v70, v73, v18, v211
	v_fma_f32 v18, -v84, v72, v86
	v_fma_f32 v71, -v74, v78, v80
	v_div_scale_f32 v73, null, v22, v22, v209
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v77, v76, 1.0
	s_mov_b32 vcc_lo, s29
	v_fmac_f32_e32 v78, v71, v75
	v_div_fmas_f32 v18, v18, v83, v72
	v_rcp_f32_e32 v72, v73
	v_fmac_f32_e32 v76, v79, v76
	v_div_scale_f32 v79, null, v23, v23, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v81, v18, v20, v210
	v_fma_f32 v18, -v74, v78, v80
	s_mov_b32 vcc_lo, s27
	v_rcp_f32_e32 v80, v79
	v_div_scale_f32 v71, s26, v88, v21, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v73, v72, 1.0
	v_div_fmas_f32 v18, v18, v75, v78
	v_div_scale_f32 v78, s27, v209, v22, v209
	v_mul_f32_e32 v20, v71, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v72, v74, v72
	v_div_scale_f32 v74, null, v67, v67, v201
	v_fma_f32 v82, -v79, v80, 1.0
	v_div_fixup_f32 v83, v18, v19, v87
	v_fma_f32 v75, -v77, v20, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v18, v74
	v_div_scale_f32 v87, null, v69, v69, v199
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, null, v68, v68, v200
	v_fmac_f32_e32 v20, v75, v76
	v_div_scale_f32 v75, s28, v208, v23, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v86, v82
	v_fma_f32 v85, -v74, v18, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v71, -v77, v20, v71
	s_mov_b32 vcc_lo, s26
	v_dual_mul_f32 v84, v75, v80 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v30, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v18, v85, v18
	v_div_fmas_f32 v20, v71, v76, v20
	v_rcp_f32_e32 v76, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v85, -v82, v86, 1.0
	v_mul_f32_e32 v19, v78, v72
	v_fma_f32 v71, -v79, v84, v75
	v_div_fixup_f32 v88, v20, v21, v88
	s_mov_b32 vcc_lo, s27
	v_fmac_f32_e32 v86, v85, v86
	v_fma_f32 v77, -v73, v19, v78
	v_fmac_f32_e32 v84, v71, v80
	v_div_scale_f32 v71, s29, v200, v68, v200
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v59, 0xbfb8aa3b, v99 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v19, v77, v72
	v_div_scale_f32 v77, s26, v201, v67, v201
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v24, 0xbfb8aa3b, v93 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v73, v19, v78
	v_fma_f32 v73, -v87, v76, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v197, v17
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v19, v20, v72, v19
	v_fma_f32 v20, -v79, v84, v75
	v_dual_mul_f32 v75, v71, v86 :: v_dual_fmac_f32 v76, v73, v76
	v_div_scale_f32 v73, s27, v199, v69, v199
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v80, v84
	v_mul_f32_e32 v78, v73, v76
	v_div_fixup_f32 v79, v19, v22, v209
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v80, v20, v23, v208
	v_fma_f32 v20, -v87, v78, v73
	v_mul_f32_e32 v21, v77, v18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v23, v207, v0 :: v_dual_mul_f32 v22, v206, v13
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 36, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v20, v76
	v_fma_f32 v72, -v74, v21, v77
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, s28
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[70:71], v[1:2]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v21, v72, v18 :: v_dual_fmac_f32 v20, 0xbfb8aa3b, v188
	v_fma_f32 v72, -v82, v75, v71
	v_fma_f32 v19, -v74, v21, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v72, v86
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v11, v19, v18, v21
	v_fma_f32 v21, -v87, v78, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v18, -v82, v75, v71
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v187
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s28
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v18, v18, v86, v75
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v67, v11, v67, v201
	v_div_fmas_f32 v10, v21, v76, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_exp_f32_e32 v9, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v68, v18, v68, v200
	v_div_fixup_f32 v10, v10, v69, v199
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v202, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v205, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v21, v19
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v185
	v_ldexp_f32 v8, v9, v71
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v19, v203, v16 :: v_dual_mul_f32 v16, v196, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v73, 1.0, v8 :: v_dual_fmac_f32 v12, 0xbfb8aa3b, v186
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v0, v0, v188
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v70, null, v73, v73, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v9, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v70
	v_div_scale_f32 v77, vcc_lo, v188, v0, v188
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v13, v193, v79 :: v_dual_add_f32 v76, 1.0, v8
	v_mul_f32_e32 v21, v204, v15
	v_dual_mul_f32 v15, v198, v81 :: v_dual_mul_f32 v14, v195, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v69, v72, 1.0
	v_div_scale_f32 v78, null, v76, v76, v185
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v8, -v70, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v71, v74, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v9, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v74, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v12, v194, v88 :: v_dual_fmac_f32 v75, v8, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, s26, v187, v73, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v79, v77, v72 :: v_dual_mul_f32 v8, v191, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v192, v80
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v69, v79, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v78, v74, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v9, v190, v68 :: v_dual_mul_f32 v10, v189, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v68, v81, v75 :: v_dual_fmac_f32 v79, v80, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v71, v74
	v_div_scale_f32 v80, null, v67, v67, v186
	v_div_scale_f32 v82, s27, v185, v76, v185
	v_fma_f32 v69, -v69, v79, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v71, v80
	v_fma_f32 v77, -v70, v68, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v40, v69, v72, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v68, v77, v75 :: v_dual_mul_f32 v77, v82, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v40, v0, v188
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v79, -v80, v71, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v180
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v70, v68, v81
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v70, -v78, v77, v82
	v_fmac_f32_e32 v71, v79, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, s28, v186, v67, v186
	v_div_fmas_f32 v31, v40, v75, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, s29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v40, v79, v71 :: v_dual_fmac_f32 v77, v70, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v73, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v72, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v80, v40, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v179
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v78, v77, v82
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v69 :: v_dual_fmac_f32 v40, v28, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v178
	v_exp_f32_e32 v28, v75
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v69, v69, v180
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v74, v78, v74, v77
	v_rcp_f32_e32 v77, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v80, v40, v79
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v68
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v50
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fmas_f32 v27, v27, v71, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v72, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v27, v27, v67, v186
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v70, v77
	v_div_scale_f32 v71, null, v40, v40, v179
	v_div_scale_f32 v70, vcc_lo, v180, v69, v180
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v184, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v78, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v81, v70, v77
	v_div_fixup_f32 v28, v74, v76, v185
	v_div_scale_f32 v80, null, v72, v72, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v75, v81, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v183, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v71, v79, 1.0
	v_rcp_f32_e32 v67, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v78, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v73, v77
	v_div_scale_f32 v73, s26, v179, v40, v179
	v_dual_fmac_f32 v79, v74, v79 :: v_dual_add_f32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v70, -v75, v81, v70
	v_fma_f32 v74, -v80, v67, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v76, null, v68, v68, v177
	v_div_fmas_f32 v70, v70, v77, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v73, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v77, v76
	v_fmac_f32_e32 v67, v74, v67
	v_div_scale_f32 v74, s27, v178, v72, v178
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v83, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v71, v75, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v181, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v70, v69, v180
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v172
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v76, v77, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v81, v74, v67
	v_fmac_f32_e32 v75, v78, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v80, v81, v74
	v_fma_f32 v71, -v71, v75, v73
	v_div_scale_f32 v73, s28, v177, v68, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v69, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v38, v38, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v182, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v71, v71, v79, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_exp_f32_e32 v32, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v70, 1.0, v38 :: v_dual_mul_f32 v75, v73, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v80, v81, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v70, v70, v172
	v_fma_f32 v38, -v76, v75, v73
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v69
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v80
	v_div_fmas_f32 v67, v74, v67, v81
	v_fmac_f32_e32 v75, v38, v77
	v_div_fixup_f32 v38, v71, v40, v179
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v32, v67, v72, v178
	v_fma_f32 v40, -v76, v75, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v71, v71, v171
	v_fma_f32 v73, -v80, v69, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v77, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v38, v174, v38 :: v_dual_fmac_f32 v69, v73, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s26, v172, v70, v172
	v_div_fixup_f32 v29, v40, v68, v177
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v73, v69
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v72, v74, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v175, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v170
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v80, v75, v73
	v_fmac_f32_e32 v74, v76, v74
	v_div_scale_f32 v76, s27, v171, v71, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v75, v77, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v76, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v73, -v80, v75, v73
	v_fma_f32 v80, -v72, v77, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v69, v73, v69, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_ldexp_f32 v68, v68, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v77, v80, v74 :: v_dual_mul_f32 v40, v173, v0
	v_div_fixup_f32 v69, v69, v70, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v72, v77, v76
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v68 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v70, v74, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v74, 0, 0x42800000, s28
	v_exp_f32_e32 v75, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v0, v0, v170
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v71, v171
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v33
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v39, v75, v73
	v_dual_fmac_f32 v79, 0xbfb8aa3b, v169 :: v_dual_mul_f32 v42, v160, v42
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v67, v79
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v156
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v74, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v70, v70, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v67, v67, v169
	v_div_scale_f32 v49, s26, v169, v67, v169
	s_mov_b32 vcc_lo, s26
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v68, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v68, v79
	v_rcp_f32_e32 v68, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v76, v49, v79
	v_fma_f32 v71, -v78, v76, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v77, -v72, v68, 1.0
	v_fmac_f32_e32 v76, v71, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v77, v68
	v_div_scale_f32 v77, s27, v170, v0, v170
	v_fma_f32 v49, -v78, v76, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v78, 1.0, v39 :: v_dual_mul_f32 v71, v77, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v49, v79, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v74, null, v78, v78, v158
	v_fma_f32 v39, -v72, v71, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v71, v39, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v72, v71, v77
	v_rcp_f32_e32 v77, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s28
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v49, v49, v68, v71
	v_div_scale_f32 v68, vcc_lo, v158, v78, v158
	v_fma_f32 v79, -v74, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v39, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v49, v0, v170
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v80, v77, 1.0
	v_fmac_f32_e32 v75, v79, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v33, v67, v169
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v168, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v77, v71, v77 :: v_dual_mul_f32 v76, v68, v75
	v_div_scale_f32 v71, s26, v157, v70, v157
	v_div_scale_f32 v79, null, v73, v73, v156
	v_fma_f32 v0, -v74, v76, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v72, v49, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v159, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v81, v79
	v_dual_fmac_f32 v76, v0, v75 :: v_dual_add_f32 v69, 1.0, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v68, -v74, v76, v68
	v_div_scale_f32 v72, null, v69, v69, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v68, v68, v75, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, s27, v156, v73, v156
	v_div_fixup_f32 v68, v68, v78, v158
	v_mul_f32_e32 v67, v71, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v80, v67, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v0, v77
	v_fma_f32 v0, -v79, v81, 1.0
	v_fma_f32 v71, -v80, v67, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v81, v0, v81
	v_rcp_f32_e32 v0, v72
	v_div_fmas_f32 v67, v71, v77, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_exp_f32_e32 v41, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v46, v81
	v_div_scale_f32 v77, s26, v147, v69, v147
	v_div_fixup_f32 v67, v67, v70, v157
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v72, v0, 1.0
	v_fma_f32 v70, -v79, v71, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v76, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_ldexp_f32 v36, v41, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v176, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v70, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v145
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v78, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v77, v0
	v_fma_f32 v46, -v79, v71, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v76
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v143
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v78, v78, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v72, v41, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	v_exp_f32_e32 v35, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v41, v36, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v76, v75
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fmas_f32 v46, v46, v81, v71
	v_fma_f32 v71, -v72, v41, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v79, v74, 1.0
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v72, v72, v145
	v_div_fmas_f32 v0, v71, v0, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v36, v74
	v_div_scale_f32 v77, vcc_lo, v146, v78, v146
	v_rcp_f32_e32 v71, v70
	v_div_fixup_f32 v36, v46, v73, v156
	v_div_fixup_f32 v0, v0, v69, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v73, v77, v74 :: v_dual_add_f32 v76, 1.0, v35
	v_div_scale_f32 v81, s26, v145, v72, v145
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v166, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v41, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v79, v73, v77
	v_div_scale_f32 v69, null, v76, v76, v143
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v70, v71, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v73, v80, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v163, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v46, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v82, null, v0, v0, v144
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v161, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v79, v73, v77
	v_mul_f32_e32 v67, v81, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v79, v82
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v165, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v69, v75, 1.0
	v_div_fmas_f32 v63, v68, v74, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v70, v67, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v80, v75
	v_div_scale_f32 v80, s27, v143, v76, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v142
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v77, v71
	v_fma_f32 v77, -v82, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v74, v80, v75
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v70, v67, v81
	v_fmac_f32_e32 v79, v77, v79
	v_div_scale_f32 v77, s28, v144, v0, v144
	v_div_fixup_f32 v63, v63, v78, v146
	v_fma_f32 v78, -v69, v74, v80
	v_div_fmas_f32 v50, v70, v71, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v67, v77, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_ldexp_f32 v68, v73, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v167, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v78, v75
	v_fma_f32 v45, -v82, v67, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v141
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v69, v74, v80
	v_fmac_f32_e32 v67, v45, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v71
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v140
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v68, v68, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v69, v69, v75, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v78
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v71
	v_fma_f32 v44, -v82, v67, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v45, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v72, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fmas_f32 v44, v44, v79, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v74, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v71, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v44, v0, v144
	v_div_scale_f32 v74, null, v67, v67, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, vcc_lo, v142, v68, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v77, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v78, 1.0, v45 :: v_dual_mul_f32 v81, v73, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v155, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v69, v76, v143
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v153, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v78, v78, v140
	v_fma_f32 v72, -v71, v81, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v77, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v74, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v69, v80
	v_div_scale_f32 v70, s26, v141, v67, v141
	v_dual_fmac_f32 v81, v72, v75 :: v_dual_add_f32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v79, v76, v79
	v_fma_f32 v71, -v71, v81, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v76, null, v0, v0, v139
	v_fma_f32 v72, -v80, v69, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v73, v70, v79
	v_div_fmas_f32 v71, v71, v75, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v76
	v_fmac_f32_e32 v69, v72, v69
	v_div_scale_f32 v72, s27, v140, v78, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v83, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v74, v73, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v152, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v71, v68, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v134
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v81, v72, v69
	v_fmac_f32_e32 v73, v77, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v71, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v80, v81, v72
	v_fma_f32 v70, -v74, v73, v70
	v_div_scale_f32 v74, s28, v139, v0, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v70, v70, v79, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_exp_f32_e32 v51, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v74, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v80, v81, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v76, v73, v74
	v_div_scale_f32 v80, null, v71, v71, v134
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v51, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v69, v72, v69, v81
	v_rcp_f32_e32 v68, v80
	v_fmac_f32_e32 v73, v52, v75
	v_div_fixup_f32 v52, v70, v67, v141
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v69, v78, v140
	v_fma_f32 v69, -v76, v73, v74
	s_mov_b32 vcc_lo, s28
	v_div_scale_f32 v72, null, v67, v67, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v80, v68, 1.0
	v_div_fmas_f32 v69, v69, v75, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v73, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v74, v68
	v_div_scale_f32 v74, s26, v134, v71, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v69, v0, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v70, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v74, v68
	v_fma_f32 v77, -v72, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v43, v138, v0 :: v_dual_add_f32 v0, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v80, v76, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v73, v77, v73
	v_div_scale_f32 v77, s27, v133, v67, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v75, v75
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v0, v0, v131
	v_fmac_f32_e32 v76, v70, v68
	v_mul_f32_e32 v70, v77, v73
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v79, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v136, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v80, v76, v74
	v_fma_f32 v80, -v72, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v75, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v74, v68, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v80, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v78, v79, 1.0
	v_div_fixup_f32 v68, v68, v71, v134
	v_fma_f32 v71, -v72, v70, v77
	v_div_scale_f32 v72, null, v69, v69, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v74, v79
	v_div_scale_f32 v55, s26, v131, v0, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v74, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v130
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fmas_f32 v54, v71, v73, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v55, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v76
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v72, v74, 1.0
	v_div_fixup_f32 v54, v54, v67, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v78, v73, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v77, v74
	v_div_scale_f32 v77, s27, v132, v69, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v67, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v76, v75
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v67, v77, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v78, v73, v55
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v78, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v72, v67, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v128
	v_ldexp_f32 v70, v71, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v71, null, v78, v78, v130
	v_fmac_f32_e32 v67, v48, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v48, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v47, v55, v79, v73
	v_div_scale_f32 v80, null, v70, v70, v129
	v_fma_f32 v55, -v72, v67, v77
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v71, v76, 1.0
	v_div_fmas_f32 v55, v55, v74, v67
	v_div_scale_f32 v67, vcc_lo, v130, v78, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v73, 0xbfb8aa3b, v127 :: v_dual_fmac_f32 v76, v79, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v55, v69, v132
	v_div_fixup_f32 v0, v47, v0, v131
	v_fma_f32 v74, -v80, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v67, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v151, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v74, v77
	v_div_scale_f32 v74, s26, v129, v70, v129
	v_fma_f32 v55, -v71, v75, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v73, v73, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v81, v74, v77
	v_fmac_f32_e32 v75, v55, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v150, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v82, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v69, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v80, v81, v74
	v_fma_f32 v67, -v71, v75, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v55, v148, v68 :: v_dual_mul_f32 v54, v149, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v81, v69, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v67, v76, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v79, v82, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v69, null, v0, v0, v127
	v_fma_f32 v71, -v80, v81, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v82, v68, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v66, v69
	v_div_scale_f32 v68, s27, v128, v73, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v122
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v75, v68, v82
	v_div_fmas_f32 v71, v71, v77, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v69, v66, 1.0
	v_div_scale_f32 v65, s26, v127, v0, v127
	v_div_fixup_f32 v70, v71, v70, v129
	v_fma_f32 v71, -v79, v75, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v66, v76, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v71, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v71, v74, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v65, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v121
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v154, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v67, v67, v78, v130
	v_fma_f32 v68, -v79, v75, v68
	v_fma_f32 v78, -v69, v57, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v77, v77
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v106
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v71, v71, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v78, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v76, v77, v76
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v65, -v69, v57, v65
	v_div_fmas_f32 v68, v68, v82, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v120
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v56, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v79, v78, 1.0
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v75, v75, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v77, 1.0, v56 :: v_dual_fmac_f32 v78, v69, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s27, v122, v71, v122
	v_rcp_f32_e32 v80, v76
	v_div_fmas_f32 v56, v65, v66, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v65, null, v77, v77, v106
	v_mul_f32_e32 v66, v69, v78
	v_div_fixup_f32 v57, v68, v73, v128
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v72, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v65
	v_div_fixup_f32 v0, v56, v0, v127
	v_fma_f32 v73, -v79, v66, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v74, -v76, v80, 1.0
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v81, s28, v106, v77, v106
	v_fmac_f32_e32 v66, v73, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v126, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v74, v80
	v_div_scale_f32 v73, s26, v121, v75, v121
	v_fma_f32 v68, -v65, v72, 1.0
	v_fma_f32 v69, -v79, v66, v69
	v_div_scale_f32 v74, null, v0, v0, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v73, v80
	v_fmac_f32_e32 v72, v68, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v66, v69, v78, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v82, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v68, v124, v70 :: v_dual_mul_f32 v69, v123, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v76, v79, v73
	v_mul_f32_e32 v70, v81, v72
	v_div_fixup_f32 v66, v66, v71, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v67, v80
	v_fma_f32 v67, -v65, v70, v81
	v_fma_f32 v64, -v74, v82, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v104
	v_cndmask_b32_e64 v83, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v76, v79, v73
	v_fmac_f32_e32 v70, v67, v72
	v_fmac_f32_e32 v82, v64, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v78
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v98
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v62, s27, v120, v0, v120
	v_div_fmas_f32 v73, v73, v80, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	v_exp_f32_e32 v61, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v62, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v65, v70, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v74, v76, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v103
	v_ldexp_f32 v61, v61, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v65, v72, v70
	v_fmac_f32_e32 v76, v78, v82
	v_div_scale_f32 v70, null, v67, v67, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v74, v76, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v70
	v_div_scale_f32 v78, null, v61, v61, v98
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v73, v73, v75, v121
	v_div_fmas_f32 v62, v62, v82, v76
	v_rcp_f32_e32 v76, v78
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v59, v71
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v99
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v70, v74, 1.0
	v_div_fixup_f32 v0, v62, v0, v120
	v_div_scale_f32 v79, vcc_lo, v104, v67, v104
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v71, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v78, v76, 1.0
	v_div_fixup_f32 v65, v65, v77, v106
	v_div_scale_f32 v71, null, v75, v75, v103
	v_dual_mul_f32 v77, v79, v74 :: v_dual_fmac_f32 v76, v64, v76
	v_div_scale_f32 v80, s26, v98, v61, v98
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v51, v137, v51 :: v_dual_mul_f32 v64, v119, v65
	v_mul_f32_e32 v59, v105, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v114, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v70, v77, v79
	v_mul_f32_e32 v81, v80, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v135, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v62, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v113, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v73, v74
	v_fma_f32 v66, -v78, v81, v80
	v_div_scale_f32 v73, s27, v103, v75, v103
	v_fma_f32 v82, -v71, v0, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v70, v77, v79
	v_dual_fmac_f32 v81, v66, v76 :: v_dual_add_f32 v62, 1.0, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v82, v0
	v_div_fmas_f32 v70, v70, v74, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v74, -v78, v81, v80
	s_mov_b32 vcc_lo, s26
	v_div_scale_f32 v82, null, v62, v62, v99
	v_mul_f32_e32 v58, v73, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v83, 0, 0x42800000, s28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v74, v74, v76, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v82
	v_fma_f32 v77, -v71, v58, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v95
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s28
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v77, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v83
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v82, v66, 1.0
	v_div_scale_f32 v34, s26, v99, v62, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v80, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v78, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v53, v66
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v76, v76, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v71, v58, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v80, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_dual_mul_f32 v73, v34, v66 :: v_dual_add_f32 v76, 1.0, v76
	v_div_fmas_f32 v0, v71, v0, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v80
	v_ldexp_f32 v77, v78, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v82, v73, v34
	v_div_scale_f32 v79, null, v76, v76, v95
	v_div_fixup_f32 v0, v0, v75, v103
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v77
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v58, v66
	v_div_fixup_f32 v58, v70, v67, v104
	v_rcp_f32_e32 v70, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_ldexp_f32 v30, v71, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v75, v75, v97
	v_fma_f32 v34, -v82, v73, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v79, v70, 1.0
	s_mov_b32 vcc_lo, s26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v66, v73
	v_div_scale_f32 v73, null, v30, v30, v89
	v_fmac_f32_e32 v70, v77, v70
	v_div_scale_f32 v77, vcc_lo, v95, v76, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v53, v78, 1.0
	v_div_fixup_f32 v34, v34, v62, v99
	v_div_scale_f32 v82, s26, v97, v75, v97
	v_mul_f32_e32 v81, v77, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v78, v66, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v80, v73
	v_div_fixup_f32 v67, v74, v61, v98
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v66, v118, v34 :: v_dual_mul_f32 v61, v117, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v79, v81, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v34, v82, v78 :: v_dual_mul_f32 v67, v116, v67
	v_fmac_f32_e32 v81, v0, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v0, -v53, v34, v82
	v_fma_f32 v74, -v73, v80, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v62, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v115, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v0, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v74, v80
	v_div_scale_f32 v74, s27, v89, v30, v89
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v79, v81, v77
	v_fma_f32 v53, -v53, v34, v82
	v_mul_f32_e32 v0, v74, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v62, v62, v70, v81
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v70, -v73, v0, v74
	v_div_fmas_f32 v26, v53, v78, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, s28
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cmp_gt_f32_e64 s26, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v70, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s28
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v91
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v73, v0, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v53
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v58, v58, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v4, v77
	v_cndmask_b32_e64 v77, 0, 0x42800000, s26
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v73, v80, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v53, v34
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v24, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v30, v89
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v77
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s26
	v_ldexp_f32 v4, v4, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v75, v97
	v_div_scale_f32 v70, null, v30, v30, v91
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v79, -v25, v24, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v53, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, vcc_lo, v96, v58, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v4, v4, v92
	v_fmac_f32_e32 v24, v79, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v70
	v_div_scale_f32 v73, null, v53, v53, v93
	v_rcp_f32_e32 v79, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v83, null, v34, v34, v94
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v57, v125, v57 :: v_dual_mul_f32 v78, v74, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v81, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v85, v83
	v_fma_f32 v80, -v70, v75, 1.0
	v_div_fixup_f32 v62, v62, v76, v95
	v_fma_f32 v82, -v25, v78, v74
	v_fma_f32 v84, -v77, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v76, v110, v26 :: v_dual_fmac_f32 v75, v80, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, s26, v91, v30, v91
	v_fmac_f32_e32 v78, v82, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v73, v81, 1.0
	v_fmac_f32_e32 v79, v84, v79
	v_div_scale_f32 v84, s27, v92, v4, v92
	v_fma_f32 v87, -v83, v85, 1.0
	v_dual_mul_f32 v86, v80, v75 :: v_dual_fmac_f32 v81, v82, v81
	v_div_scale_f32 v82, s28, v93, v53, v93
	v_fma_f32 v25, -v25, v78, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v88, v84, v79 :: v_dual_fmac_f32 v85, v87, v85
	v_div_scale_f32 v87, s29, v94, v34, v94
	v_fma_f32 v74, -v70, v86, v80
	v_mul_f32_e32 v89, v82, v81
	v_div_fmas_f32 v24, v25, v24, v78
	v_fma_f32 v25, -v77, v88, v84
	v_mul_f32_e32 v78, v87, v85
	v_fmac_f32_e32 v86, v74, v75
	v_fma_f32 v74, -v73, v89, v82
	v_div_fixup_f32 v24, v24, v58, v96
	v_fmac_f32_e32 v88, v25, v79
	v_fma_f32 v25, -v83, v78, v87
	v_fma_f32 v58, -v70, v86, v80
	v_fmac_f32_e32 v89, v74, v81
	s_mov_b32 vcc_lo, s26
	v_fma_f32 v70, -v77, v88, v84
	v_fmac_f32_e32 v78, v25, v85
	v_div_fmas_f32 v58, v58, v75, v86
	v_fma_f32 v25, -v73, v89, v82
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v111, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v83, v78, v87
	v_div_fmas_f32 v70, v70, v79, v88
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v107, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v81, v89
	s_mov_b32 vcc_lo, s29
	v_div_fixup_f32 v4, v70, v4, v92
	v_div_fmas_f32 v75, v73, v85, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v112, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v25, v53, v93
	v_div_fixup_f32 v25, v58, v30, v91
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v102, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v75, v34, v94
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, |v28|, |v40|, |v38|
	v_max3_f32 v26, |v33|, |v22|, |v20|
.Ltmp6:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v100, v25
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v49|, |v42|, |v39|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v90, v0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v37|, |v31|
	v_max_f32_e64 v30, |v46|, |v41|
	v_max3_f32 v34, |v36|, |v60|, |v50|
	v_max3_f32 v62, |v63|, |v52|, |v51|
	v_max3_f32 v78, |v43|, |v18|, |v17|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v101, v24
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, |v32|, |v29|, |v23|
	v_max3_f32 v0, v0, |v27|, v4
	v_max3_f32 v4, v25, v26, |v21|
	v_max3_f32 v25, |v45|, |v44|, |v19|
	v_max3_f32 v26, v30, |v35|, v34
	v_max3_f32 v30, v62, v78, |v16|
	v_max_f32_e64 v34, |v55|, |v54|
	v_max3_f32 v62, |v48|, |v69|, |v68|
	v_max3_f32 v78, |v72|, |v65|, |v64|
	v_max3_f32 v79, |v59|, |v14|, |v12|
	v_max3_f32 v0, v0, v24, v4
	v_max3_f32 v24, v26, v25, v30
	v_max3_f32 v4, |v57|, |v56|, |v15|
	v_max3_f32 v25, v34, |v47|, v62
	v_max3_f32 v26, v78, v79, |v13|
	s_mov_b32 s26, 0x76543210
	v_max_f32_e64 v30, |v71|, |v67|
	v_max3_f32 v62, |v75|, |v70|, |v58|
	v_max3_f32 v78, |v53|, |v8|, |v9|
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v79, v0, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v25, v4, v26
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v84, 8, v162
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v34, |v61|, |v77|, |v76|
	v_max3_f32 v26, |v74|, |v73|, |v11|
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v83, 1, v109
	v_lshrrev_b32_e32 v86, 3, v109
.Ltmp17:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s27, s68, v3
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v30, v30, |v66|, v34
	v_max3_f32 v34, v62, v78, |v10|
	v_max_f32_e32 v62, v79, v79
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v78, v24, s26, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v79, v25, s26, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s69, 0, s27
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v30, v26, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v80, v78, v78 :: v_dual_max_f32 v81, v79, v79
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v34, 3, v162
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v0, v62
	v_dual_max_f32 v79, v24, v80 :: v_dual_lshlrev_b32 v30, 4, v162
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v80, v25, v81
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v24, 4, v162
	v_lshl_add_u32 v62, v34, 9, 0
	v_lshlrev_b32_e32 v81, 5, v34
	v_permlanex16_b32 v0, v26, s26, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v25, 0x60, v162
	v_lshl_add_u32 v87, v24, 6, 0
	v_lshl_add_u32 v62, v24, 2, v62
	v_and_or_b32 v82, 0x680, v30, v81
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v85, v81, v25
.Ltmp27:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[70:71], v[3:4]
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v62, v84, 4, v62
	v_xor_b32_e32 v82, v82, v25
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v26, v0
.Ltmp30:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v26, 34, v7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[72:73], v[3:4]
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v62, v83, v85
	v_add3_u32 v62, v87, v86, v82
	v_lshlrev_b32_e32 v34, 4, v34
.Ltmp32:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s26, s68, v26
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v0, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v62
.Ltmp34:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 32, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s69, 0, s26
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[72:73], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 30, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s31, s68, v0
	v_add_co_ci_u32_e64 v1, null, s69, 0, s31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v2, s31, s68, v2
	v_add_co_ci_u32_e64 v3, null, s69, 0, s31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 28, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[70:71], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[72:73], v[2:3]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[70:71], v[82:83]
.Ltmp35:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, v78
	v_dual_mov_b32 v0, v79 :: v_dual_max_f32 v3, v78, v78
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v79, v79
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v2, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v62, v81, v81
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v0, v0, v0
.Ltmp41:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[72:73], v[82:83]
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v81, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v4
	v_max_f32_e32 v4, v26, v0
	v_max_f32_e32 v26, v80, v80
.Ltmp43:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s36, s68, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s69, 0, s36
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v80, v4 :: v_dual_mov_b32 v79, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v26, v2
.Ltmp46:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[72:73], v[0:1]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v62, v78
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v62, v2 :: v_dual_add_nc_u32 v83, 0, v109
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v80, v80 :: v_dual_mov_b32 v78, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v0, v79, v79
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v62, v62 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v4, v1
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v3, v0 :: v_dual_max_f32 v3, v62, v62
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v80, v1
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v78, v78
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v62, v0
.Ltmp58:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v79, 26, v7
	v_or_b32_e32 v81, 24, v7
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, 0
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s38, s68, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v80, v80
.Ltmp64:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s69, 0, s38
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v62, v62, v62
.Ltmp66:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s39, s68, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v82 :: v_dual_lshlrev_b32 v82, 3, v84
	v_max_f32_e32 v2, v2, v3
	v_dual_max_f32 v3, v26, v4 :: v_dual_max_f32 v0, v0, v62
.Ltmp68:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v81, null, s69, 0, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v4, v2
	v_lshrrev_b32_e32 v62, 1, v25
.Ltmp70:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[70:71], v[78:79]
	v_cmp_le_i64_e64 s40, s[70:71], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[72:73], v[80:81]
.Ltmp71:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v4
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 5, v24
	v_add_nc_u32_e32 v24, 0, v34
	v_mov_b32_e32 v26, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v26
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v26, v83, v62, v82
	v_add3_u32 v4, v24, v4, v82
.Ltmp76:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v62, 22, v7
	v_or_b32_e32 v24, 18, v7
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v26, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v4
.Ltmp78:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 20, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v82, s39, s68, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v83, null, s69, 0, s39
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[72:73], v[78:79]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s44, s68, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v79, null, s69, 0, s44
	v_add_co_u32 v80, s44, s68, v24
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v81, null, s69, 0, s44
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[70:71], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[72:73], v[78:79]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v78, s48, s68, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v1, v1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[70:71], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[72:73], v[80:81]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s69, 0, s48
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v24, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 14, v7
	v_or_b32_e32 v4, 12, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[70:71], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[72:73], v[82:83]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v26, null, 0x40e00000, 0x40e00000, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s48, s68, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v81, null, s69, 0, s48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v0, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s48, s68, v4
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 10, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s69, 0, s48
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[70:71], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[72:73], v[78:79]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v78, s54, s68, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v62, -v26, v0, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 8, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[70:71], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[72:73], v[80:81]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s69, 0, s54
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v0, v62, v0
	v_div_scale_f32 v62, vcc_lo, v24, 0x40e00000, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s54, s68, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v4, v62, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v81, null, s69, 0, s54
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[70:71], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[72:73], v[78:79]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v78, -v26, v4, v62
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[70:71], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[72:73], v[82:83]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[70:71], v[80:81]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v4, v78, v0
	v_max_f32_e32 v78, 0x2b8cbccc, v3
	v_div_scale_f32 v82, null, 0x40e00000, 0x40e00000, v2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[72:73], v[80:81]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v80, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v78
	v_rcp_f32_e32 v83, v82
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v79, 6, v7
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v85, v84
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v82, v83, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v88, -v84, v85, 1.0
	v_fmac_f32_e32 v83, v1, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v85, v88, v85
	v_fma_f32 v26, -v26, v4, v62
	v_div_scale_f32 v62, s60, v2, 0x40e00000, v2
	v_div_fmas_f32 v4, v26, v0, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v62, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s58, s68, v79
	v_add_co_ci_u32_e64 v1, null, s69, 0, s58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v24
	v_fma_f32 v24, -v82, v26, v62
	s_mov_b32 vcc_lo, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[70:71], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v26, v24, v83
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v24.l, v4.h
	v_mov_b16_e32 v24.h, v86.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v82, v26, v62
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v24
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v3, null, 0x40e00000, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v83, v26
	v_rcp_f32_e32 v81, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v0, v0, 0x40e00000, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v0.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v79, -v3, v81, 1.0
	v_fmac_f32_e32 v81, v79, v81
	v_div_scale_f32 v79, s61, v80, 0x40e00000, v80
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v87, v79, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v3, v87, v79
	v_fmac_f32_e32 v87, v24, v81
	v_div_scale_f32 v62, s62, v78, 0x40e00000, v78
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v24, v4, v1, 0x7fff
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v1, 4, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v3, v87, v79
	v_mul_f32_e32 v26, v62, v85
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v79.h, v86.h
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v82, 0xffff0000, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v81, v87
	v_fma_f32 v3, -v84, v26, v62
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v82, v82, v37
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v26, v3, v85
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s60, s68, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v83, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.l, v2.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v1, -v84, v26, v62
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s69, 0, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v85, v26
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v26, 1, v86
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v62, -v81, v83, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v78, v1, 0x40e00000, v78
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v1, v0, v26, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v62, v83
	v_div_scale_f32 v89, null, v82, v82, v27
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.l, v78.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, null, v82, v82, v31
	v_div_scale_f32 v87, vcc_lo, v37, v82, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v80, 1, v86
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v89
	v_rcp_f32_e32 v85, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v88, v87, v83
	v_div_scale_f32 v90, null, v82, v82, v28
	v_div_scale_f32 v91, s60, v31, v82, v31
	v_div_scale_f32 v95, null, v82, v82, v40
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v62, 2, v7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v89, v86, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v86, v93, v86
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v84, v85, 1.0
	v_div_scale_f32 v93, s61, v27, v82, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v81, v88, v87
	v_fmac_f32_e32 v85, v79, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v88, v0, v83 :: v_dual_and_b32 v79, 0xffff0000, v1
	v_rcp_f32_e32 v0, v90
	v_mul_f32_e32 v92, v91, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v81, v88, v87
	v_fma_f32 v87, -v84, v92, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v81, v81, v83, v88
	v_fma_f32 v94, -v90, v0, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v87, v85 :: v_dual_mul_f32 v83, v93, v86
	v_rcp_f32_e32 v87, v95
	v_div_scale_f32 v88, s62, v28, v82, v28
	v_fmac_f32_e32 v0, v94, v0
	v_div_scale_f32 v94, null, v82, v82, v38
	v_div_fixup_f32 v37, v81, v82, v37
	v_fma_f32 v81, -v84, v92, v91
	v_fma_f32 v84, -v89, v83, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v96, v94
	v_mul_f32_e32 v91, v88, v0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v97, -v95, v87, 1.0
	v_div_fmas_f32 v81, v81, v85, v92
	v_fmac_f32_e32 v83, v84, v86
	v_fma_f32 v84, -v90, v91, v88
	v_div_scale_f32 v85, s60, v40, v82, v40
	v_fmac_f32_e32 v87, v97, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v94, v96, 1.0
	v_div_fixup_f32 v31, v81, v82, v31
	v_fma_f32 v81, -v89, v83, v93
	v_fmac_f32_e32 v91, v84, v0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v96, v92, v96
	v_div_scale_f32 v92, null, v82, v82, v32
	v_mul_f32_e32 v84, v85, v87
	v_div_scale_f32 v89, s63, v38, v82, v38
	v_div_fmas_f32 v81, v81, v86, v83
	v_fma_f32 v83, -v90, v91, v88
	v_rcp_f32_e32 v88, v92
	v_div_scale_f32 v93, null, v82, v82, v29
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v86, -v95, v84, v85
	v_mul_f32_e32 v90, v89, v96
	v_div_fmas_f32 v0, v83, v0, v91
	v_rcp_f32_e32 v83, v93
	v_div_fixup_f32 v27, v81, v82, v27
	v_fmac_f32_e32 v84, v86, v87
	v_fma_f32 v86, -v94, v90, v89
	v_fma_f32 v91, -v92, v88, 1.0
	v_div_fixup_f32 v28, v0, v82, v28
	v_div_scale_f32 v81, s61, v32, v82, v32
	v_fma_f32 v0, -v95, v84, v85
	v_fmac_f32_e32 v90, v86, v96
	v_fmac_f32_e32 v88, v91, v88
	v_fma_f32 v85, -v93, v83, 1.0
	v_div_scale_f32 v86, null, v82, v82, v23
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v91, null, v82, v82, v49
	v_div_fmas_f32 v0, v0, v87, v84
	v_fma_f32 v84, -v94, v90, v89
	v_mul_f32_e32 v87, v81, v88
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v78, v80, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v83, v85, v83 :: v_dual_and_b32 v80, 0xffff0000, v26
	v_rcp_f32_e32 v85, v86
	v_div_scale_f32 v89, s60, v29, v82, v29
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v40, v0, v82, v40
	v_div_fmas_f32 v84, v84, v96, v90
	v_fma_f32 v90, -v92, v87, v81
	v_mul_f32_e32 v94, v89, v83
	v_rcp_f32_e32 v96, v91
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v86, v85, 1.0
	v_fmac_f32_e32 v87, v90, v88
	v_fma_f32 v0, -v93, v94, v89
	v_div_scale_f32 v90, null, v82, v82, v42
	v_div_fixup_f32 v38, v84, v82, v38
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v84, s62, v23, v82, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v91, v96, 1.0
	v_fma_f32 v81, -v92, v87, v81
	v_fmac_f32_e32 v94, v0, v83
	v_rcp_f32_e32 v92, v90
	v_mul_f32_e32 v0, v84, v85
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s63, v49, v82, v49
	v_div_fmas_f32 v81, v81, v88, v87
	v_fma_f32 v87, -v93, v94, v89
	v_div_scale_f32 v97, null, v82, v82, v39
	s_mov_b32 vcc_lo, s60
	v_dual_mul_f32 v89, v95, v96 :: v_dual_and_b32 v78, 0xffff0000, v2
	v_fma_f32 v88, -v86, v0, v84
	v_fma_f32 v93, -v90, v92, 1.0
	v_div_fmas_f32 v83, v87, v83, v94
	v_rcp_f32_e32 v87, v97
	v_div_fixup_f32 v32, v81, v82, v32
	v_fmac_f32_e32 v0, v88, v85
	v_fma_f32 v88, -v91, v89, v95
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, s60, v42, v82, v42
	v_div_fixup_f32 v29, v83, v82, v29
	v_fma_f32 v81, -v86, v0, v84
	v_fmac_f32_e32 v89, v88, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v93, v92
	v_fma_f32 v84, -v97, v87, 1.0
	v_div_scale_f32 v86, null, v82, v82, v33
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v88, s61, v39, v82, v39
	v_div_fmas_f32 v0, v81, v85, v0
	v_fma_f32 v81, -v91, v89, v95
	v_fma_f32 v85, -v90, v83, v93
	v_fmac_f32_e32 v87, v84, v87
	v_rcp_f32_e32 v84, v86
	v_div_scale_f32 v91, null, v82, v82, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v85, v92
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v23, v0, v82, v23
	v_rcp_f32_e32 v85, v91
	v_div_fmas_f32 v81, v81, v96, v89
	v_mul_f32_e32 v89, v88, v87
	v_fma_f32 v0, -v90, v83, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v86, v84, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v49, v81, v82, v49
	v_fma_f32 v81, -v97, v89, v88
	v_div_scale_f32 v90, s62, v33, v82, v33
	v_fmac_f32_e32 v84, v94, v84
	v_fma_f32 v93, -v91, v85, 1.0
	v_div_scale_f32 v94, null, v82, v82, v20
	v_div_fmas_f32 v0, v0, v92, v83
	v_fmac_f32_e32 v89, v81, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v93, v85
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v93, null, v82, v82, v21
	v_mul_f32_e32 v81, v90, v84
	v_div_scale_f32 v92, s60, v22, v82, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v93
	v_div_fixup_f32 v42, v0, v82, v42
	v_fma_f32 v0, -v97, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v95, v92, v85
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v87, v89
	v_fmac_f32_e32 v81, v88, v84
	v_fma_f32 v87, -v91, v95, v92
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v88, s61, v20, v82, v20
	v_fma_f32 v89, -v93, v96, 1.0
	v_div_fixup_f32 v39, v0, v82, v39
	v_fma_f32 v0, -v86, v81, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v95, v87, v85 :: v_dual_mul_f32 v86, v88, v83
	v_fmac_f32_e32 v96, v89, v96
	v_div_scale_f32 v89, null, v80, v80, v46
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v87, s63, v21, v82, v21
	v_div_fmas_f32 v0, v0, v84, v81
	v_fma_f32 v81, -v91, v95, v92
	v_fma_f32 v84, -v94, v86, v88
	v_rcp_f32_e32 v90, v89
	v_div_scale_f32 v92, null, v80, v80, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v87, v96 :: v_dual_fmac_f32 v86, v84, v83
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v84, v92
	v_div_fmas_f32 v81, v81, v85, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v93, v91, v87
	v_div_fixup_f32 v33, v0, v82, v33
	v_fma_f32 v95, -v89, v90, 1.0
	v_fma_f32 v0, -v94, v86, v88
	v_div_fixup_f32 v22, v81, v82, v22
	v_fmac_f32_e32 v91, v85, v96
	v_div_scale_f32 v81, s60, v46, v80, v46
	v_fmac_f32_e32 v90, v95, v90
	v_fma_f32 v85, -v92, v84, 1.0
	v_div_scale_f32 v88, null, v80, v80, v35
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v83, v86
	v_fma_f32 v83, -v93, v91, v87
	v_mul_f32_e32 v86, v81, v90
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v87, s61, v41, v80, v41
	v_div_scale_f32 v93, null, v80, v80, v36
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v94, v87, v84
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v89, v86, v81
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fixup_f32 v20, v0, v82, v20
	v_fma_f32 v0, -v92, v94, v87
	v_fmac_f32_e32 v86, v91, v90
	v_div_fixup_f32 v21, v83, v82, v21
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v82, s62, v35, v80, v35
	v_div_scale_f32 v83, null, v80, v80, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v93, v96, 1.0
	v_fma_f32 v81, -v89, v86, v81
	v_fmac_f32_e32 v94, v0, v84
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v0, v82, v85
	v_rcp_f32_e32 v89, v83
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v91, s63, v36, v80, v36
	v_div_fmas_f32 v81, v81, v90, v86
	v_fma_f32 v86, -v92, v94, v87
	v_div_scale_f32 v95, null, v80, v80, v50
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v87, -v88, v0, v82
	v_mul_f32_e32 v90, v91, v96
	v_div_fmas_f32 v84, v86, v84, v94
	v_rcp_f32_e32 v86, v95
	v_fma_f32 v92, -v83, v89, 1.0
	v_fmac_f32_e32 v0, v87, v85
	v_fma_f32 v87, -v93, v90, v91
	v_div_fixup_f32 v41, v84, v80, v41
	v_div_fixup_f32 v46, v81, v80, v46
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s60, v60, v80, v60
	v_fmac_f32_e32 v90, v87, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v95, v86, 1.0
	v_div_scale_f32 v87, null, v80, v80, v45
	v_fma_f32 v81, -v88, v0, v82
	v_mul_f32_e32 v82, v92, v89
	v_fmac_f32_e32 v86, v84, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v87
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v88, s61, v50, v80, v50
	v_div_fmas_f32 v0, v81, v85, v0
	v_fma_f32 v81, -v93, v90, v91
	v_fma_f32 v85, -v83, v82, v92
	v_div_scale_f32 v91, null, v80, v80, v44
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v87, v84, 1.0
	v_fmac_f32_e32 v82, v85, v89
	v_rcp_f32_e32 v85, v91
	v_div_fmas_f32 v81, v81, v96, v90
	v_mul_f32_e32 v90, v88, v86
	v_div_fixup_f32 v35, v0, v80, v35
	v_fma_f32 v0, -v83, v82, v92
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, null, v80, v80, v19
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v36, v81, v80, v36
	v_fma_f32 v81, -v95, v90, v88
	v_div_scale_f32 v83, s62, v45, v80, v45
	v_fma_f32 v92, -v91, v85, 1.0
	v_div_fmas_f32 v0, v0, v89, v82
	v_rcp_f32_e32 v82, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v81, v86 :: v_dual_mul_f32 v81, v83, v84
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v89, s60, v44, v80, v44
	v_div_scale_f32 v92, null, v80, v80, v63
	v_div_fixup_f32 v60, v0, v80, v60
	v_fma_f32 v0, -v95, v90, v88
	v_fma_f32 v88, -v87, v81, v83
	v_mul_f32_e32 v94, v89, v85
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v81, v88, v84
	v_div_fmas_f32 v0, v0, v86, v90
	v_fma_f32 v86, -v91, v94, v89
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s61, v19, v80, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v50, v0, v80, v50
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v0, -v87, v81, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v94, v86, v85 :: v_dual_mul_f32 v83, v88, v82
	v_div_scale_f32 v87, null, v80, v80, v52
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v86, s63, v63, v80, v63
	v_div_fmas_f32 v0, v0, v84, v81
	v_fma_f32 v81, -v91, v94, v89
	v_fma_f32 v84, -v93, v83, v88
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v80, v80, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v86, v95 :: v_dual_fmac_f32 v83, v84, v82
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v81, v81, v85, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v92, v90, v86
	v_div_fixup_f32 v45, v0, v80, v45
	v_fma_f32 v94, -v87, v89, 1.0
	v_fma_f32 v0, -v93, v83, v88
	v_div_fixup_f32 v44, v81, v80, v44
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v81, s60, v52, v80, v52
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v85, -v91, v84, 1.0
	v_div_scale_f32 v88, null, v80, v80, v43
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v96, null, v80, v80, v16
	v_div_fmas_f32 v0, v0, v82, v83
	v_fma_f32 v82, -v92, v90, v86
	v_mul_f32_e32 v83, v81, v89
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v86, s61, v51, v80, v51
	v_div_scale_f32 v92, null, v80, v80, v18
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v93, v86, v84
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v87, v83, v81
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v85, 1.0
	v_div_fixup_f32 v19, v0, v80, v19
	v_fma_f32 v0, -v91, v93, v86
	v_fmac_f32_e32 v83, v90, v89
	v_div_scale_f32 v90, null, v80, v80, v17
	v_div_fixup_f32 v63, v82, v80, v63
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v82, s62, v43, v80, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v81, -v87, v83, v81
	v_fmac_f32_e32 v93, v0, v84
	v_rcp_f32_e32 v87, v90
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v0, v82, v85
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s63, v18, v80, v18
	v_div_fmas_f32 v81, v81, v89, v83
	v_fma_f32 v83, -v91, v93, v86
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v86, -v88, v0, v82
	v_mul_f32_e32 v89, v94, v95
	v_fma_f32 v91, -v90, v87, 1.0
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fmac_f32_e32 v0, v86, v85
	v_fma_f32 v86, -v92, v89, v94
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s60, v17, v80, v17
	v_div_fixup_f32 v52, v81, v80, v52
	v_div_fixup_f32 v51, v83, v80, v51
	v_fma_f32 v81, -v88, v0, v82
	v_fmac_f32_e32 v89, v86, v95
	v_mul_f32_e32 v82, v91, v87
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v79, v79, v55
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v88, s61, v16, v80, v16
	v_div_fmas_f32 v0, v81, v85, v0
	v_fma_f32 v81, -v92, v89, v94
	v_fma_f32 v85, -v90, v82, v91
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v92, null, v79, v79, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v85, v87
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v43, v0, v80, v43
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v81, v81, v95, v89
	v_mul_f32_e32 v89, v88, v84
	v_fma_f32 v0, -v90, v82, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v83, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v18, v81, v80, v18
	v_fma_f32 v81, -v96, v89, v88
	v_div_scale_f32 v90, s62, v55, v79, v55
	v_fmac_f32_e32 v83, v93, v83
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_scale_f32 v93, null, v79, v79, v47
	v_div_fmas_f32 v0, v0, v87, v82
	v_fmac_f32_e32 v89, v81, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v91, v85
	v_rcp_f32_e32 v82, v93
	v_div_scale_f32 v91, null, v79, v79, v48
	v_mul_f32_e32 v81, v90, v83
	v_div_scale_f32 v87, s60, v54, v79, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v91
	v_div_fixup_f32 v17, v0, v80, v17
	v_fma_f32 v0, -v96, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v85
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v84, v89
	v_fmac_f32_e32 v81, v88, v83
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s61, v47, v79, v47
	v_fma_f32 v89, -v91, v95, 1.0
	v_div_fixup_f32 v16, v0, v80, v16
	v_fma_f32 v0, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v80, v88, v82 :: v_dual_fmac_f32 v95, v89, v95
	v_div_scale_f32 v84, s63, v48, v79, v48
	v_div_scale_f32 v86, null, v79, v79, v69
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v89, v84, v95
	v_div_fmas_f32 v0, v0, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v80, v88
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v79, v79, v68
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v80, v83, v82
	v_div_fmas_f32 v81, v81, v85, v94
	v_rcp_f32_e32 v83, v90
	v_fma_f32 v85, -v91, v89, v84
	v_div_fixup_f32 v55, v0, v79, v55
	v_fma_f32 v0, -v93, v80, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v87, 1.0
	v_div_scale_f32 v88, null, v79, v79, v57
	v_fmac_f32_e32 v89, v85, v95
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v54, v81, v79, v54
	v_fmac_f32_e32 v87, v92, v87
	v_div_scale_f32 v81, s60, v69, v79, v69
	v_fma_f32 v85, -v90, v83, 1.0
	v_div_fmas_f32 v0, v0, v82, v80
	v_fma_f32 v80, -v91, v89, v84
	v_rcp_f32_e32 v84, v88
	v_mul_f32_e32 v82, v81, v87
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, s61, v68, v79, v68
	v_div_scale_f32 v91, null, v79, v79, v56
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v92, v85, v83
	v_div_fmas_f32 v80, v80, v95, v89
	v_fma_f32 v89, -v86, v82, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v88, v84, 1.0
	v_rcp_f32_e32 v94, v91
	v_div_fixup_f32 v47, v0, v79, v47
	v_div_fixup_f32 v48, v80, v79, v48
	v_fmac_f32_e32 v82, v89, v87
	v_fma_f32 v0, -v90, v92, v85
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v80, s62, v57, v79, v57
	v_div_scale_f32 v89, null, v79, v79, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v81, -v86, v82, v81
	v_fmac_f32_e32 v92, v0, v83
	v_mul_f32_e32 v86, v80, v84
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v95, v89
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s63, v56, v79, v56
	v_div_fmas_f32 v0, v81, v87, v82
	v_fma_f32 v81, -v90, v92, v85
	v_fma_f32 v82, -v88, v86, v80
	v_div_scale_f32 v90, null, v79, v79, v72
	v_mul_f32_e32 v85, v93, v94
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v82, v84
	v_rcp_f32_e32 v82, v90
	v_fma_f32 v87, -v89, v95, 1.0
	v_div_fmas_f32 v81, v81, v83, v92
	v_fma_f32 v83, -v91, v85, v93
	v_div_fixup_f32 v0, v0, v79, v69
	v_fma_f32 v69, -v88, v86, v80
	v_fmac_f32_e32 v95, v87, v95
	v_div_scale_f32 v87, s60, v15, v79, v15
	v_div_fixup_f32 v68, v81, v79, v68
	v_fmac_f32_e32 v85, v83, v94
	v_fma_f32 v81, -v90, v82, 1.0
	v_div_scale_f32 v83, null, v79, v79, v65
	v_mul_f32_e32 v80, v87, v95
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v83
	v_div_fmas_f32 v69, v69, v84, v86
	v_fma_f32 v84, -v91, v85, v93
	v_fma_f32 v86, -v89, v80, v87
	v_div_scale_f32 v88, s61, v72, v79, v72
	v_div_scale_f32 v91, null, v79, v79, v64
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v80, v86, v95
	v_div_fmas_f32 v84, v84, v94, v85
	v_rcp_f32_e32 v85, v91
	v_mul_f32_e32 v86, v88, v82
	v_fma_f32 v92, -v83, v81, 1.0
	v_div_fixup_f32 v57, v69, v79, v57
	v_div_fixup_f32 v56, v84, v79, v56
	v_fma_f32 v69, -v89, v80, v87
	v_fma_f32 v84, -v90, v86, v88
	v_fmac_f32_e32 v81, v92, v81
	v_div_scale_f32 v87, s62, v65, v79, v65
	v_div_scale_f32 v92, null, v79, v79, v59
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v89, -v91, v85, 1.0
	v_div_fmas_f32 v69, v69, v95, v80
	v_fmac_f32_e32 v86, v84, v82
	v_mul_f32_e32 v80, v87, v81
	v_rcp_f32_e32 v84, v92
	v_div_scale_f32 v93, null, v79, v79, v14
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s60, v64, v79, v64
	v_div_fixup_f32 v15, v69, v79, v15
	v_fma_f32 v69, -v90, v86, v88
	v_fma_f32 v88, -v83, v80, v87
	v_rcp_f32_e32 v94, v93
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v90, v89, v85
	v_fma_f32 v95, -v92, v84, 1.0
	v_div_fmas_f32 v69, v69, v82, v86
	v_fmac_f32_e32 v80, v88, v81
	v_div_scale_f32 v86, s61, v59, v79, v59
	v_fma_f32 v82, -v91, v90, v89
	v_fmac_f32_e32 v84, v95, v84
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v93, v94, 1.0
	v_div_fixup_f32 v69, v69, v79, v72
	v_fma_f32 v72, -v83, v80, v87
	v_div_scale_f32 v87, null, v79, v79, v12
	v_fmac_f32_e32 v90, v82, v85
	v_mul_f32_e32 v82, v86, v84
	v_fmac_f32_e32 v94, v88, v94
	v_div_scale_f32 v83, s63, v14, v79, v14
	v_rcp_f32_e32 v88, v87
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v72, v72, v81, v80
	v_fma_f32 v80, -v91, v90, v89
	v_fma_f32 v81, -v92, v82, v86
	v_mul_f32_e32 v89, v83, v94
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v91, null, v79, v79, v13
	v_div_fmas_f32 v80, v80, v85, v90
	v_fmac_f32_e32 v82, v81, v84
	v_fma_f32 v85, -v93, v89, v83
	v_fma_f32 v90, -v87, v88, 1.0
	v_rcp_f32_e32 v81, v91
	v_div_fixup_f32 v65, v72, v79, v65
	v_div_fixup_f32 v64, v80, v79, v64
	v_fma_f32 v72, -v92, v82, v86
	v_dual_fmac_f32 v89, v85, v94 :: v_dual_fmac_f32 v88, v90, v88
	v_div_scale_f32 v80, s60, v12, v79, v12
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v92, null, v78, v78, v67
	v_div_fmas_f32 v72, v72, v84, v82
	v_fma_f32 v82, -v93, v89, v83
	v_mul_f32_e32 v83, v80, v88
	v_div_scale_f32 v84, null, v78, v78, v71
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v85, -v91, v81, 1.0
	v_div_fmas_f32 v82, v82, v94, v89
	v_rcp_f32_e32 v86, v84
	v_fma_f32 v89, -v87, v83, v80
	v_div_fixup_f32 v59, v72, v79, v59
	v_fmac_f32_e32 v81, v85, v81
	v_div_scale_f32 v85, s61, v13, v79, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v89, v88
	v_div_fixup_f32 v14, v82, v79, v14
	v_rcp_f32_e32 v82, v92
	v_mul_f32_e32 v90, v85, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v84, v86, 1.0
	v_fma_f32 v80, -v87, v83, v80
	v_div_scale_f32 v87, null, v78, v78, v66
	v_fma_f32 v72, -v91, v90, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v89, v86
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v89, v87
	v_div_fmas_f32 v80, v80, v88, v83
	v_fmac_f32_e32 v90, v72, v81
	v_div_scale_f32 v72, s62, v71, v78, v71
	v_fma_f32 v93, -v92, v82, 1.0
	v_div_scale_f32 v94, null, v78, v78, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v83, -v91, v90, v85
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v91, -v87, v89, 1.0
	v_mul_f32_e32 v85, v72, v86
	v_fmac_f32_e32 v82, v93, v82
	v_div_scale_f32 v88, s60, v67, v78, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s63, v66, v78, v66
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v81, v83, v81, v90
	v_fma_f32 v93, -v84, v85, v72
	v_dual_mul_f32 v90, v91, v89 :: v_dual_mul_f32 v95, v88, v82
	v_div_fixup_f32 v12, v80, v79, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v81, v79, v13
	v_div_scale_f32 v81, null, v78, v78, v77
	v_fma_f32 v79, -v87, v90, v91
	v_fmac_f32_e32 v85, v93, v86
	v_fma_f32 v83, -v92, v95, v88
	v_fma_f32 v80, -v94, v96, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v81
	v_fma_f32 v72, -v84, v85, v72
	v_dual_fmac_f32 v95, v83, v82 :: v_dual_fmac_f32 v96, v80, v96
	v_div_scale_f32 v80, s61, v61, v78, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v72, v72, v86, v85
	v_fma_f32 v83, -v92, v95, v88
	v_div_scale_f32 v85, null, v78, v78, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v80, v96
	v_fma_f32 v86, -v81, v79, 1.0
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v71, v72, v78, v71
	v_div_fmas_f32 v82, v83, v82, v95
	v_fma_f32 v83, -v87, v90, v91
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v94, v84, v80
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s60, v77, v78, v77
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v84, v88, v96
	v_div_fmas_f32 v83, v83, v89, v90
	v_mul_f32_e32 v72, v86, v79
	v_div_fixup_f32 v67, v82, v78, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v85, v87, 1.0
	v_fma_f32 v80, -v94, v84, v80
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v88, -v81, v72, v86
	v_div_fixup_f32 v66, v83, v78, v66
	v_div_scale_f32 v83, null, v78, v78, v74
	v_fmac_f32_e32 v87, v82, v87
	v_div_scale_f32 v82, s62, v76, v78, v76
	v_div_fmas_f32 v80, v80, v96, v84
	v_fmac_f32_e32 v72, v88, v79
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v82, v87
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v61, v80, v78, v61
	v_fma_f32 v80, -v81, v72, v86
	v_div_scale_f32 v88, null, v78, v78, v73
	v_fma_f32 v81, -v85, v84, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v72, v80, v79, v72
	v_div_scale_f32 v79, null, v78, v78, v11
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v81, v87
	v_rcp_f32_e32 v81, v79
	v_div_scale_f32 v80, s60, v74, v78, v74
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v78, v78, v75
	v_div_fixup_f32 v72, v72, v78, v77
	v_fma_f32 v82, -v85, v84, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v88, v90, 1.0
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v79, v81, 1.0
	v_mul_f32_e32 v85, v80, v89
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v90, v77, v90
	v_div_scale_f32 v77, s61, v73, v78, v73
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v78, v78, v70
	v_div_fmas_f32 v82, v82, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_mul_f32_e32 v87, v77, v90
	v_div_scale_f32 v93, s62, v11, v78, v11
	v_fma_f32 v94, -v86, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v77
	v_mul_f32_e32 v96, v93, v81
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s63, v75, v78, v75
	v_div_fixup_f32 v76, v82, v78, v76
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v82, -v79, v96, v93
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v77, -v88, v87, v77
	v_fmac_f32_e32 v96, v82, v81
	v_fma_f32 v82, -v86, v83, v94
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s60, v70, v78, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v79, v96, v93
	v_fmac_f32_e32 v83, v82, v92
	v_div_fmas_f32 v80, v80, v89, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v82, v84, v95
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v85, null, v78, v78, v58
	v_div_fmas_f32 v77, v77, v90, v87
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v74, v80, v78, v74
	v_div_fmas_f32 v79, v79, v81, v96
	v_fma_f32 v81, -v86, v83, v94
	v_fma_f32 v86, -v91, v82, v84
	s_mov_b32 vcc_lo, s63
	v_rcp_f32_e32 v87, v85
	v_div_fixup_f32 v11, v79, v78, v11
	v_div_fmas_f32 v81, v81, v92, v83
	v_fmac_f32_e32 v82, v86, v95
	v_div_scale_f32 v79, null, v78, v78, v53
	v_div_fixup_f32 v73, v77, v78, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v75, v81, v78, v75
	v_fma_f32 v77, -v91, v82, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v79
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v80, -v85, v87, 1.0
	v_div_scale_f32 v89, null, v78, v78, v10
	v_div_fmas_f32 v77, v77, v95, v82
	v_div_scale_f32 v83, vcc_lo, v58, v78, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, null, v78, v78, v8
	v_div_fixup_f32 v70, v77, v78, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v79, v81, 1.0
	v_mul_f32_e32 v88, v83, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v80
	v_rcp_f32_e32 v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v77, v81
	v_div_scale_f32 v77, s60, v53, v78, v53
	v_fma_f32 v92, -v85, v88, v83
	v_div_scale_f32 v82, null, v78, v78, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v94, v77, v81
	v_fma_f32 v90, -v80, v84, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v88, v92, v87
	v_fma_f32 v95, -v89, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v79, v94, v77
	v_rcp_f32_e32 v86, v82
	v_fma_f32 v83, -v85, v88, v83
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s63, v10, v78, v10
	v_fmac_f32_e32 v94, v92, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_mul_f32_e32 v98, v95, v91
	v_fma_f32 v77, -v79, v94, v77
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v81, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v90, v84
	v_div_fixup_f32 v53, v77, v78, v53
	v_div_scale_f32 v90, s61, v8, v78, v8
	v_div_fixup_f32 v58, v83, v78, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v59, v59
	v_and_b32_e32 v51, 15, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v96, v90, v84 :: v_dual_and_b32 v49, 15, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v65, v65
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v104, v53
	v_and_b32_e32 v53, 15, v69
	v_and_b32_e32 v69, 15, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v80, v96, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v82, v86, 1.0
	v_fma_f32 v79, -v89, v98, v95
	v_fmac_f32_e32 v96, v85, v84
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v11, v11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v41, v41, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v80, v96, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v71, v71, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v84, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s62, v9, v78, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v96, v71
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v79, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v101, v11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v29, v29
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v11, 15, v96
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v89, v98, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v95, v13
	v_and_b32_e32 v13, 15, v41
	v_and_b32_e32 v41, 15, v57
	v_and_b32_e32 v57, 15, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v93, v86
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v82, v97, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v67, v67
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v32, v32, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v0, v0, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v82, v97, v93
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v97
	s_mov_b32 vcc_lo, s63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v91, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v92, v64
	v_and_b32_e32 v64, 15, v83
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v83, 16, v162
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v80, v78, v8
	v_div_fixup_f32 v9, v79, v78, v9
	v_div_fixup_f32 v10, v81, v78, v10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v55, v55
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_cvt_i32_f32_e32 v77, v39
	v_cvt_i32_f32_e32 v84, v43
	v_cvt_i32_f32_e32 v97, v67
	v_and_b32_e32 v12, 15, v31
	v_and_b32_e32 v39, 15, v32
	v_and_b32_e32 v43, 15, v29
	v_and_b32_e32 v67, 15, v33
	v_and_b32_e32 v29, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v162
	v_and_b32_e32 v31, 0x2f0, v30
	v_lshlrev_b32_e32 v32, 8, v83
	v_and_b32_e32 v33, 64, v162
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_cvt_i32_f32_e32 v103, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v58, 3, v109
	v_and_or_b32 v0, 0xe000, v0, v32
	v_xor_b32_e32 v31, v31, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v28, v28, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v61, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s60, 0x40e00000
	v_med3_f32 v9, v9, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v87, v55
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v58, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v98, v72
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s60, 0x40e00000
	v_med3_f32 v61, v61, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v54, v54
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v105, v8
	v_cvt_i32_f32_e32 v106, v9
	v_cvt_i32_f32_e32 v107, v10
	v_and_b32_e32 v8, 15, v37
	v_and_b32_e32 v9, 15, v46
	v_and_b32_e32 v10, 15, v87
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v31, 0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v70, v70
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v20
	v_cvt_i32_f32_e32 v86, v16
	v_and_b32_e32 v16, 15, v27
	v_and_b32_e32 v20, 15, v28
	v_and_b32_e32 v27, 15, v40
	v_and_b32_e32 v28, 15, v60
	v_and_b32_e32 v30, 15, v98
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v31, v[8:11]
	ds_store_b128 v31, v[27:30] offset:256
	v_cndmask_b32_e64 v11, 0x2010, 0, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v59, s2, s68, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v76, v76, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_cvt_i32_f32_e32 v88, v47
	v_and_b32_e32 v47, 15, v23
	v_and_b32_e32 v23, 15, v61
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v60, null, s69, 0, s2
	v_add_co_u32 v61, s2, s68, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v62, null, s69, 0, s2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[70:71], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[72:73], v[3:4]
	.loc	1 1240 13 is_stmt 1             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v75, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v54, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v74, v74
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v90, v68
	v_cvt_i32_f32_e32 v99, v76
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v73, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_med3_f32 v75, v75, s60, 0x40e00000
	v_cvt_i32_f32_e32 v89, v48
	v_cvt_i32_f32_e32 v93, v14
	v_and_b32_e32 v79, 15, v21
	v_and_b32_e32 v21, 15, v36
	v_and_b32_e32 v36, 15, v50
	v_and_b32_e32 v48, 15, v19
	v_and_b32_e32 v14, 15, v54
	v_and_b32_e32 v50, 15, v101
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v8, v0, 16, 0
	v_lshlrev_b32_e32 v9, 6, v162
	v_lshlrev_b32_e32 v10, 5, v25
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v15, 15, v97
	v_med3_f32 v22, v22, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_cvt_i32_f32_e32 v80, v35
	v_and_b32_e32 v35, 15, v38
	v_and_b32_e32 v68, 15, v84
	v_and_b32_e32 v37, 15, v90
	v_and_b32_e32 v38, 15, v99
	v_and_b32_e32 v58, 15, v70
	v_and_b32_e32 v70, 15, v104
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v81, v63
	v_cvt_i32_f32_e32 v82, v52
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v102, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v31, v[47:50] offset:2048
	ds_store_b128 v31, v[67:70] offset:2304
	ds_store_b128 v8, v[12:15]
	ds_store_b128 v8, v[35:38] offset:256
	v_lshlrev_b32_e32 v13, 2, v83
	v_and_or_b32 v9, 0x300, v9, v10
	v_xor_b32_e32 v10, v11, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v85, v17
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v91, v56
	v_cvt_i32_f32_e32 v100, v73
	v_and_b32_e32 v55, 15, v42
	v_and_b32_e32 v63, 15, v77
	v_and_b32_e32 v17, 15, v80
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v56, 15, v82
	v_and_b32_e32 v72, 15, v18
	v_and_b32_e32 v18, 15, v88
	v_and_b32_e32 v65, 15, v92
	v_and_b32_e32 v19, 15, v66
	v_and_b32_e32 v54, 15, v102
	v_and_b32_e32 v66, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v12, v0, 32, 0
	v_xad_u32 v0, v0, 48, 0
	v_or3_b32 v25, v10, v9, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v71, 15, v22
	v_and_b32_e32 v75, 15, v78
	v_and_b32_e32 v40, 15, v45
	v_and_b32_e32 v76, 15, v85
	v_and_b32_e32 v80, 15, v86
	v_and_b32_e32 v73, 15, v93
	v_and_b32_e32 v77, 15, v94
	v_and_b32_e32 v81, 15, v95
	v_and_b32_e32 v42, 15, v74
	v_and_b32_e32 v74, 15, v105
	v_and_b32_e32 v78, 15, v106
	v_and_b32_e32 v82, 15, v107
	v_and_b32_e32 v22, 15, v89
	v_and_b32_e32 v44, 15, v44
	v_and_b32_e32 v45, 15, v91
	v_and_b32_e32 v46, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v8, v[51:54] offset:2048
	ds_store_b128 v8, v[71:74] offset:2304
	ds_store_b128 v12, v[16:19]
	ds_store_b128 v12, v[39:42] offset:256
	ds_store_b128 v12, v[55:58] offset:2048
	ds_store_b128 v12, v[75:78] offset:2304
	ds_store_b128 v0, v[20:23]
	ds_store_b128 v0, v[43:46] offset:256
	v_add_nc_u32_e32 v20, 0, v25
	ds_store_b128 v0, v[63:66] offset:2048
	ds_store_b128 v0, v[79:82] offset:2304
	v_xad_u32 v0, 0x4020, v25, 0
	v_xad_u32 v55, 0x8040, v25, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v20
	ds_load_b128 v[12:15], v20 offset:128
	ds_load_b128 v[16:19], v20 offset:4096
	ds_load_b128 v[20:23], v20 offset:4224
	ds_load_b128 v[27:30], v0
	ds_load_b128 v[31:34], v0 offset:128
	ds_load_b128 v[35:38], v0 offset:4096
	ds_load_b128 v[39:42], v0 offset:4224
	v_xad_u32 v0, 0xc060, v25, 0
	ds_load_b128 v[43:46], v55
	ds_load_b128 v[47:50], v55 offset:128
	ds_load_b128 v[51:54], v55 offset:4096
	ds_load_b128 v[55:58], v55 offset:4224
	ds_load_b128 v[63:66], v0 offset:4096
	ds_load_b128 v[67:70], v0
	ds_load_b128 v[71:74], v0 offset:128
	ds_load_b128 v[75:78], v0 offset:4224
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v3, s68, v7
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s69, s74, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s75, 7, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s68, s74, s69
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s60, s[70:71], v[59:60]
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, 2, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s61, s[72:73], v[59:60]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s62, s[70:71], v[61:62]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s63, s[72:73], v[61:62]
	.loc	1 1249 38 is_stmt 1             ; ragged.py:1249:38
	s_ashr_i32 s72, s68, 1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s69, s65, 0xffff
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[6:7], null, v7, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s60, s60, s61
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v44, v52, 4, v44
	v_lshl_or_b32 v25, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 4, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v59, v35, 4, v27
	v_lshl_or_b32 v62, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 6, v3
	v_add_nc_u32_e32 v27, 36, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v47, v55, 4, v47
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v55, v75, 4, v71
	v_lshl_or_b32 v52, v64, 4, v68
	v_lshl_or_b32 v68, v18, 4, v10
	v_lshl_or_b32 v71, v37, 4, v29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 8, v3
	v_add_nc_u32_e32 v29, 38, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v76, 4, v72
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v65, 4, v69
	v_lshl_or_b32 v69, v19, 4, v11
	v_lshl_or_b32 v72, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 10, v3
	v_add_nc_u32_e32 v30, 40, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v60, v20, 4, v12
	v_lshl_or_b32 v61, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 12, v3
	v_add_nc_u32_e32 v31, 42, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v51, 4, v43
	v_lshl_or_b32 v51, v63, 4, v67
	v_lshl_or_b32 v64, v21, 4, v13
	v_lshl_or_b32 v67, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 14, v3
	v_add_nc_u32_e32 v32, 44, v3
	v_mad_u64_u32 v[7:8], null, v8, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v36, 4, v28
	v_lshl_or_b32 v65, v22, 4, v14
	v_lshl_or_b32 v41, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 16, v3
	v_add_nc_u32_e32 v33, 46, v3
	v_mad_u64_u32 v[8:9], null, v9, s72, v[0:1]
	v_mad_u64_u32 v[27:28], null, v27, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v66, 4, v70
	v_lshl_or_b32 v66, v23, 4, v15
	v_lshl_or_b32 v42, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 18, v3
	v_add_nc_u32_e32 v34, 48, v3
	v_mad_u64_u32 v[9:10], null, v10, s72, v[0:1]
	v_mad_u64_u32 v[28:29], null, v29, s72, v[0:1]
	v_add_nc_u32_e32 v16, 20, v3
	v_add_nc_u32_e32 v35, 50, v3
	v_mad_u64_u32 v[10:11], null, v11, s72, v[0:1]
	v_mad_u64_u32 v[29:30], null, v30, s72, v[0:1]
	v_add_nc_u32_e32 v17, 22, v3
	v_mad_u64_u32 v[11:12], null, v12, s72, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[0:1]
	v_add_nc_u32_e32 v18, 24, v3
	v_mad_u64_u32 v[12:13], null, v13, s72, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[0:1]
	v_add_nc_u32_e32 v19, 26, v3
	v_mad_u64_u32 v[13:14], null, v14, s72, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[0:1]
	v_add_nc_u32_e32 v20, 28, v3
	v_mad_u64_u32 v[14:15], null, v15, s72, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[0:1]
	v_add_nc_u32_e32 v21, 30, v3
	v_add_nc_u32_e32 v22, 32, v3
	v_add_nc_u32_e32 v36, 52, v3
	v_add_nc_u32_e32 v37, 54, v3
	v_add_nc_u32_e32 v38, 56, v3
	v_add_nc_u32_e32 v39, 58, v3
	v_add_nc_u32_e32 v40, 60, v3
	v_add_nc_u32_e32 v70, 62, v3
	v_mad_u64_u32 v[15:16], null, v16, s72, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[0:1]
	v_add_nc_u32_e32 v23, 34, v3
	v_mad_u64_u32 v[3:4], null, v3, s72, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s72, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s72, v[0:1]
	v_mad_u64_u32 v[21:22], null, v22, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s62, s62, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[22:23], null, v23, s72, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v23, 0x80000000, v3, s62
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[3:4], null, v70, s72, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[38:39], null, v39, s72, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s60
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	s_mov_b32 s71, 0x31027000
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	s_mov_b32 s70, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s68, s64
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x5
	buffer_store_b8 v25, v23, s[68:71], 0 offen
	buffer_store_b8 v59, v0, s[68:71], 0 offen
	buffer_store_b8 v43, v4, s[68:71], 0 offen
	buffer_store_b8 v51, v6, s[68:71], 0 offen
	buffer_store_b8 v60, v7, s[68:71], 0 offen
	buffer_store_b8 v61, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v57, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v58, v78, 4, v74
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v47, v0, s[68:71], 0 offen
	buffer_store_b8 v55, v4, s[68:71], 0 offen
	buffer_store_b8 v62, v6, s[68:71], 0 offen
	buffer_store_b8 v63, v7, s[68:71], 0 offen
	buffer_store_b8 v44, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v26.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v24.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s34, s35
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s31, s33
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v52, v0, s[68:71], 0 offen
	buffer_store_b8 v64, v4, s[68:71], 0 offen
	buffer_store_b8 v67, v6, s[68:71], 0 offen
	buffer_store_b8 v48, v7, s[68:71], 0 offen
	buffer_store_b8 v56, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s27, s28
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s25, s26
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s23, s24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s21, s22
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v68, v0, s[68:71], 0 offen
	buffer_store_b8 v71, v4, s[68:71], 0 offen
	buffer_store_b8 v45, v6, s[68:71], 0 offen
	buffer_store_b8 v53, v7, s[68:71], 0 offen
	buffer_store_b8 v65, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s19, s20
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s17, s18
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s15, s16
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s13, s14
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s11, s12
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v41, v0, s[68:71], 0 offen
	buffer_store_b8 v49, v4, s[68:71], 0 offen
	buffer_store_b8 v57, v6, s[68:71], 0 offen
	buffer_store_b8 v69, v7, s[68:71], 0 offen
	buffer_store_b8 v72, v8, s[68:71], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s9, s10
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b8 v46, v0, s[68:71], 0 offen
	buffer_store_b8 v54, v4, s[68:71], 0 offen
	buffer_store_b8 v66, v6, s[68:71], 0 offen
	buffer_store_b8 v42, v7, s[68:71], 0 offen
	buffer_store_b8 v50, v8, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v162
	v_lshrrev_b32_e32 v6, 2, v83
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 3, v108
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v58, v0, s[68:71], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v3
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s74, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add3_u32 v3, v6, v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v3
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v162
	s_and_b32 s69, s67, 0xffff
	s_mov_b32 s68, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s75, 1
	s_and_b32 vcc_lo, vcc_lo, s76
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[68:71], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp79:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1196
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
		.amdhsa_next_free_sgpr 77
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 1196
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 36996
; TotalNumSgprs: 79
; NumVgprs: 256
; ScratchSize: 1196
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 79
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 1196
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 298
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
