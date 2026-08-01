	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s76, s[0:1], 0x54
	s_load_b64 s[24:25], s[0:1], 0x5c
	v_dual_mov_b32 v191, v0 :: v_dual_mov_b32 v90, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_and_b32_e32 v71, 0x7f, v191
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s76, 0xff
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
	v_and_b32_e32 v0, 63, v191
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
	s_sub_i32 s77, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s77, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[66:67], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[72:73], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[74:75], s[2:3], 0x0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s2
	v_add_nc_u32_e32 v218, s66, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[74:75], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s24, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_and_b32_e32 v6, 0x7f, v191
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow773
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v92, 0 :: v_dual_and_b32 v109, 0x80, v191
	v_dual_mov_b32 v93, 0 :: v_dual_and_b32 v108, 15, v191
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v96, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s3, 0, v109
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v214, 0
	v_dual_mov_b32 v211, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v213, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v215, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v217, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v206, 0
	v_mov_b32_e32 v203, 0
	v_mov_b32_e32 v205, 0
	v_mov_b32_e32 v207, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s8, s66, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s8
	s_clause 0x1
	s_load_b32 s22, s[0:1], 0x58
	s_load_b32 s25, s[0:1], 0x50
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s10, s6, s4
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[74:75], v[0:1]
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v0, s66, v108
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s11, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[2:3]
	v_cmp_le_i64_e64 s1, s[72:73], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[2:3]
	v_cmp_gt_i64_e64 s7, s[74:75], v[4:5]
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v2, 16, v0
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v3, 32, v0
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v4, 48, v0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s24
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s9, s[10:11], 0x0
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v1, 5, v191
	.loc	1 1045 18 is_stmt 0             ; ragged.py:1045:18
	s_lshl_b32 s20, s77, 8
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[74:75], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_or_b32_e32 v1, s20, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:1136 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s24
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s5, s76, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v55, 32, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s4, s6, s8
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s22, s5
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v54, 40, v1
	v_or_b32_e32 v47, 56, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:1140 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s24
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v48, 48, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s7, s24, s9
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s6, s9
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v36, 0x68, v1
	v_or_b32_e32 v35, 0x70, v1
	v_or_b32_e32 v34, 0x78, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:1144 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s24
	v_mad_u64_u32 v[228:229], null, s22, v55, s[6:7]
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v28, 0x80, v1
	v_mad_u64_u32 v[229:230], null, s22, v54, s[6:7]
	v_or_b32_e32 v27, 0x88, v1
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v52, s76, v47
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v53, s76, v48
	v_mad_u64_u32 v[230:231], null, s22, v48, s[6:7]
	v_mad_u64_u32 v[47:48], null, s22, v47, s[6:7]
	v_or_b32_e32 v26, 0x90, v1
	v_mad_u64_u32 v[231:232], null, s22, v36, s[6:7]
	v_or_b32_e32 v25, 0x98, v1
	v_mad_u64_u32 v[232:233], null, s22, v35, s[6:7]
	scratch_store_b32 off, v0, off offset:1148 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf8, v1
	v_or_b32_e32 v17, 0xb0, v1
	v_or_b32_e32 v18, 0xa8, v1
	v_or_b32_e32 v24, 0xa0, v1
	v_or_b32_e32 v46, 64, v1
	v_mad_u64_u32 v[233:234], null, s22, v34, s[6:7]
	v_mad_u64_u32 v[234:235], null, s22, v28, s[6:7]
	v_mad_u64_u32 v[235:236], null, s22, v27, s[6:7]
	v_mad_u64_u32 v[236:237], null, s22, v26, s[6:7]
	v_mad_u64_u32 v[237:238], null, s22, v25, s[6:7]
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v3, s76, v0
	v_or_b32_e32 v4, 0xf0, v1
	v_or_b32_e32 v5, 0xe8, v1
	v_or_b32_e32 v6, 0xe0, v1
	v_or_b32_e32 v7, 0xd8, v1
	v_or_b32_e32 v8, 0xd0, v1
	v_or_b32_e32 v14, 0xc8, v1
	v_or_b32_e32 v15, 0xc0, v1
	v_or_b32_e32 v16, 0xb8, v1
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v22, s76, v17
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v23, s76, v18
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v29, s76, v24
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v30, s76, v25
	v_or_b32_e32 v37, 0x60, v1
	v_or_b32_e32 v38, 0x58, v1
	v_or_b32_e32 v44, 0x50, v1
	v_or_b32_e32 v45, 0x48, v1
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v51, s76, v46
	v_or_b32_e32 v56, 24, v1
	v_or_b32_e32 v57, 16, v1
	v_or_b32_e32 v58, 8, v1
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v64, s76, v1
	v_mad_u64_u32 v[222:223], null, v1, s22, s[6:7]
	v_mad_u64_u32 v[238:239], null, s22, v24, s[6:7]
	v_mad_u64_u32 v[24:25], null, s22, v18, s[6:7]
	scratch_store_b64 off, v[47:48], off offset:256 ; 8-byte Folded Spill
	v_mad_u64_u32 v[46:47], null, s22, v46, s[6:7]
	v_mad_u64_u32 v[17:18], null, s22, v17, s[6:7]
	v_mad_u64_u32 v[0:1], null, s22, v0, s[6:7]
	v_or_b32_e32 v76, s20, v191
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v21, s76, v16
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v50, s76, v45
	s_clause 0x3                            ; 28-byte Folded Spill
	scratch_store_b64 off, v[46:47], off offset:264
	scratch_store_b64 off, v[17:18], off offset:312
	scratch_store_b32 off, v76, off offset:1152
	scratch_store_b64 off, v[0:1], off offset:352
	v_mad_u64_u32 v[45:46], null, s22, v45, s[6:7]
	v_mad_u64_u32 v[16:17], null, s22, v16, s[6:7]
	v_mad_u64_u32 v[0:1], null, v64, s22, s[6:7]
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v63, s76, v58
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v20, s76, v15
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v49, s76, v44
	s_clause 0x3                            ; 28-byte Folded Spill
	scratch_store_b64 off, v[45:46], off offset:272
	scratch_store_b64 off, v[16:17], off offset:320
	scratch_store_b32 off, v108, off offset:1168
	scratch_store_b64 off, v[0:1], off offset:360
	v_mad_u64_u32 v[44:45], null, s22, v44, s[6:7]
	v_mad_u64_u32 v[15:16], null, s22, v15, s[6:7]
	v_mad_u64_u32 v[0:1], null, v63, s22, s[6:7]
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v62, s76, v57
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v19, s76, v14
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v42, s76, v37
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v43, s76, v38
	s_clause 0x3                            ; 28-byte Folded Spill
	scratch_store_b64 off, v[44:45], off offset:280
	scratch_store_b64 off, v[15:16], off offset:328
	scratch_store_b32 off, v109, off offset:1172
	scratch_store_b64 off, v[0:1], off offset:368
	v_mad_u64_u32 v[44:45], null, s22, v38, s[6:7]
	v_mad_u64_u32 v[37:38], null, s22, v37, s[6:7]
	v_mad_u64_u32 v[14:15], null, s22, v14, s[6:7]
	v_mad_u64_u32 v[0:1], null, v62, s22, s[6:7]
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v61, s76, v56
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[44:45], off offset:288
	scratch_store_b64 off, v[37:38], off offset:296
	scratch_store_b64 off, v[14:15], off offset:336
	v_mad_u64_u32 v[14:15], null, s22, v8, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:376 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v61, s22, s[6:7]
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v60, s76, v55
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[24:25], off offset:304
	scratch_store_b64 off, v[14:15], off offset:344
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v59, s76, v54
	scratch_store_b64 off, v[0:1], off offset:384 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v60, s22, s[6:7]
	scratch_store_b32 off, v71, off offset:1176 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v66, 0x88, 0, s3
	v_dual_mov_b32 v129, 0 :: v_dual_lshlrev_b32 v72, 5, v191
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v65, 1, v191
	scratch_store_b64 off, v[0:1], off offset:392 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v59, s22, s[6:7]
	v_xor_b32_e32 v220, v66, v71
	v_dual_mov_b32 v124, 0 :: v_dual_and_b32 v71, 0xf0, v191
	v_dual_mov_b32 v127, 0 :: v_dual_and_b32 v72, 32, v72
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v68, 24, v65
	scratch_store_b64 off, v[0:1], off offset:400 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v53, s22, s[6:7]
	v_dual_mov_b32 v126, 0 :: v_dual_lshlrev_b32 v75, 2, v71
	v_dual_mov_b32 v154, 0 :: v_dual_and_b32 v65, 28, v65
	v_dual_mov_b32 v213, 0 :: v_dual_and_b32 v2, 0xe0, v191
	scratch_store_b64 off, v[0:1], off offset:408 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v52, s22, s[6:7]
	v_add3_u32 v72, 0, v75, v72
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v67, 5, v108
	v_dual_mov_b32 v103, 0 :: v_dual_lshlrev_b32 v2, 4, v2
	v_mov_b32_e32 v123, 0
	scratch_store_b64 off, v[0:1], off offset:416 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v51, s22, s[6:7]
	v_or3_b32 v221, v67, v68, v2
	v_or_b32_e32 v2, 0x3f0, v191
	v_or_b32_e32 v66, 0x7f0, v191
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v71, 1, v71
	v_mov_b32_e32 v141, 0
	scratch_store_b64 off, v[0:1], off offset:424 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v50, s22, s[6:7]
	v_mov_b32_e32 v139, 0
	v_mov_b32_e32 v179, 0
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v41, s76, v36
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v40, s76, v35
	scratch_store_b64 off, v[0:1], off offset:432 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v49, s22, s[6:7]
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v39, s76, v34
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v33, s76, v28
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v32, s76, v27
	scratch_store_b64 off, v[0:1], off offset:440 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, v72, v65
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v31, s76, v26
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v13, s76, v8
	scratch_store_b32 off, v0, off offset:1156 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v43, s22, s[6:7]
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v12, s76, v7
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v11, s76, v6
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v10, s76, v5
	scratch_store_b64 off, v[0:1], off offset:448 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v9, s76, v4
	v_mad_u64_u32 v[223:224], null, s22, v58, s[6:7]
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v66
	v_or_b32_e32 v69, 0x300, v191
	v_or_b32_e32 v70, 0x700, v191
	v_xor_b32_e32 v67, 0x110, v220
	v_xor_b32_e32 v68, 8, v221
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v71
	v_xor_b32_e32 v73, 16, v221
	v_xor_b32_e32 v74, 24, v221
	v_mad_u64_u32 v[224:225], null, s22, v57, s[6:7]
	scratch_store_b32 off, v0, off offset:1160 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v42, s22, s[6:7]
	v_mad_u64_u32 v[225:226], null, s22, v56, s[6:7]
	v_mad_u64_u32 v[244:245], null, s22, v5, s[6:7]
	v_mad_u64_u32 v[226:227], null, s22, v7, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:464 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v41, s22, s[6:7]
	v_mad_u64_u32 v[239:240], null, s22, v6, s[6:7]
	v_mad_u64_u32 v[245:246], null, s22, v4, s[6:7]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v219, 6, v191
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v216, 0, v108
	scratch_store_b64 off, v[0:1], off offset:472 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v40, s22, s[6:7]
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v246, 0, v69
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v251, 0, v70
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v164, 0, v67
	scratch_store_b64 off, v[0:1], off offset:480 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v39, s22, s[6:7]
	v_dual_mov_b32 v152, 0 :: v_dual_add_nc_u32 v227, 0, v68
	v_dual_mov_b32 v178, 0 :: v_dual_add_nc_u32 v247, 0, v73
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v240, 0, v74
	scratch_store_b64 off, v[0:1], off offset:488 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v33, s22, s[6:7]
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v174, 0
	v_mov_b32_e32 v187, 0
	scratch_store_b64 off, v[0:1], off offset:496 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v32, s22, s[6:7]
	v_dual_mov_b32 v186, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v183, 0
	scratch_store_b64 off, v[0:1], off offset:504 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v31, s22, s[6:7]
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v163, 0
	scratch_store_b64 off, v[0:1], off offset:512 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v30, s22, s[6:7]
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v160, 0
	scratch_store_b64 off, v[0:1], off offset:520 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v29, s22, s[6:7]
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v138, 0
	scratch_store_b64 off, v[0:1], off offset:528 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v23, s22, s[6:7]
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v148, 0
	scratch_store_b64 off, v[0:1], off offset:536 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v22, s22, s[6:7]
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v142, 0
	scratch_store_b64 off, v[0:1], off offset:544 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v21, s22, s[6:7]
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	scratch_store_b64 off, v[0:1], off offset:552 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v20, s22, s[6:7]
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v114, 0
	scratch_store_b64 off, v[0:1], off offset:560 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v19, s22, s[6:7]
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v110, 0
	scratch_store_b64 off, v[0:1], off offset:568 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v13, s22, s[6:7]
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v92, 0
	scratch_store_b64 off, v[0:1], off offset:576 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v12, s22, s[6:7]
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v90, 0
	v_mov_b32_e32 v93, 0
	s_and_b32 s9, s13, 0xffff
	s_mov_b32 s8, s12
	s_mov_b32 s11, 0x31027000
	scratch_store_b64 off, v[0:1], off offset:584 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v11, s22, s[6:7]
	s_mov_b32 s10, 0x7ffffffe
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s26, 0
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s21, s19, 0xffff
	scratch_store_b64 off, v[0:1], off offset:592 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v10, s22, s[6:7]
	s_mov_b32 s20, s18
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x4                            ; 28-byte Folded Spill
	scratch_store_b64 off, v[218:219], off offset:244
	scratch_store_b32 off, v219, off offset:252
	scratch_store_b32 off, v240, off offset:64
	scratch_store_b32 off, v247, off offset:68
	scratch_store_b64 off, v[0:1], off offset:600
	v_mad_u64_u32 v[0:1], null, v9, s22, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:608 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v3, s22, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:616 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v191
	scratch_store_b32 off, v0, off offset:1164 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	scratch_load_b32 v24, off, off offset:1164 ; 4-byte Folded Reload
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v217, off offset:1132
	scratch_store_b32 off, v215, off offset:1128
	scratch_store_b32 off, v85, off offset:1124
	scratch_store_b32 off, v214, off offset:1120
	scratch_store_b32 off, v86, off offset:1116
	scratch_store_b32 off, v213, off offset:1112
	scratch_store_b32 off, v212, off offset:1108
	scratch_store_b32 off, v211, off offset:1104
	scratch_store_b32 off, v210, off offset:1100
	scratch_store_b32 off, v87, off offset:1096
	scratch_store_b32 off, v88, off offset:1092
	scratch_store_b32 off, v209, off offset:1088
	scratch_store_b32 off, v208, off offset:1084
	scratch_store_b32 off, v207, off offset:1080
	scratch_store_b32 off, v206, off offset:1076
	scratch_store_b32 off, v205, off offset:1072
	scratch_store_b32 off, v204, off offset:1068
	scratch_store_b32 off, v203, off offset:1064
	scratch_store_b32 off, v202, off offset:1060
	scratch_store_b32 off, v201, off offset:1056
	scratch_store_b32 off, v200, off offset:1052
	scratch_store_b32 off, v199, off offset:1048
	scratch_store_b32 off, v198, off offset:1044
	scratch_store_b32 off, v197, off offset:1040
	scratch_store_b32 off, v196, off offset:1036
	scratch_store_b32 off, v195, off offset:1032
	scratch_store_b32 off, v194, off offset:1028
	scratch_store_b32 off, v193, off offset:1024
	scratch_store_b32 off, v192, off offset:1020
	scratch_store_b32 off, v190, off offset:1016
	scratch_store_b32 off, v189, off offset:1012
	scratch_store_b32 off, v188, off offset:1008
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v187, off offset:1004
	scratch_store_b32 off, v186, off offset:1000
	scratch_store_b32 off, v185, off offset:996
	scratch_store_b32 off, v184, off offset:992
	scratch_store_b32 off, v183, off offset:988
	scratch_store_b32 off, v182, off offset:984
	scratch_store_b32 off, v181, off offset:980
	scratch_store_b32 off, v180, off offset:976
	scratch_store_b32 off, v179, off offset:972
	scratch_store_b32 off, v178, off offset:968
	scratch_store_b32 off, v177, off offset:964
	scratch_store_b32 off, v176, off offset:960
	scratch_store_b32 off, v175, off offset:956
	scratch_store_b32 off, v174, off offset:952
	scratch_store_b32 off, v173, off offset:948
	scratch_store_b32 off, v172, off offset:944
	scratch_store_b32 off, v171, off offset:940
	scratch_store_b32 off, v170, off offset:936
	scratch_store_b32 off, v169, off offset:932
	scratch_store_b32 off, v168, off offset:928
	scratch_store_b32 off, v167, off offset:924
	scratch_store_b32 off, v166, off offset:920
	scratch_store_b32 off, v165, off offset:916
	scratch_store_b32 off, v163, off offset:912
	scratch_store_b32 off, v162, off offset:908
	scratch_store_b32 off, v161, off offset:904
	scratch_store_b32 off, v160, off offset:900
	scratch_store_b32 off, v159, off offset:896
	scratch_store_b32 off, v158, off offset:892
	scratch_store_b32 off, v157, off offset:888
	scratch_store_b32 off, v156, off offset:884
	scratch_store_b32 off, v155, off offset:880
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v154, off offset:876
	scratch_store_b32 off, v141, off offset:872
	scratch_store_b32 off, v140, off offset:868
	scratch_store_b32 off, v139, off offset:864
	scratch_store_b32 off, v153, off offset:860
	scratch_store_b32 off, v152, off offset:856
	scratch_store_b32 off, v151, off offset:852
	scratch_store_b32 off, v150, off offset:848
	scratch_store_b32 off, v138, off offset:844
	scratch_store_b32 off, v137, off offset:840
	scratch_store_b32 off, v136, off offset:836
	scratch_store_b32 off, v135, off offset:832
	scratch_store_b32 off, v149, off offset:828
	scratch_store_b32 off, v148, off offset:824
	scratch_store_b32 off, v147, off offset:820
	scratch_store_b32 off, v146, off offset:816
	scratch_store_b32 off, v134, off offset:812
	scratch_store_b32 off, v133, off offset:808
	scratch_store_b32 off, v132, off offset:804
	scratch_store_b32 off, v131, off offset:800
	scratch_store_b32 off, v145, off offset:796
	scratch_store_b32 off, v144, off offset:792
	scratch_store_b32 off, v143, off offset:788
	scratch_store_b32 off, v142, off offset:784
	scratch_store_b32 off, v130, off offset:780
	scratch_store_b32 off, v129, off offset:776
	scratch_store_b32 off, v128, off offset:772
	scratch_store_b32 off, v127, off offset:768
	scratch_store_b32 off, v126, off offset:764
	scratch_store_b32 off, v125, off offset:760
	scratch_store_b32 off, v124, off offset:756
	scratch_store_b32 off, v123, off offset:752
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v122, off offset:748
	scratch_store_b32 off, v121, off offset:744
	scratch_store_b32 off, v120, off offset:740
	scratch_store_b32 off, v119, off offset:736
	scratch_store_b32 off, v118, off offset:732
	scratch_store_b32 off, v117, off offset:728
	scratch_store_b32 off, v116, off offset:724
	scratch_store_b32 off, v115, off offset:720
	scratch_store_b32 off, v114, off offset:716
	scratch_store_b32 off, v113, off offset:712
	scratch_store_b32 off, v112, off offset:708
	scratch_store_b32 off, v111, off offset:704
	scratch_store_b32 off, v110, off offset:700
	scratch_store_b32 off, v107, off offset:696
	scratch_store_b32 off, v106, off offset:692
	scratch_store_b32 off, v105, off offset:688
	scratch_store_b32 off, v104, off offset:684
	scratch_store_b32 off, v89, off offset:680
	scratch_store_b32 off, v103, off offset:676
	scratch_store_b32 off, v102, off offset:672
	scratch_store_b32 off, v101, off offset:668
	scratch_store_b32 off, v100, off offset:664
	scratch_store_b32 off, v99, off offset:660
	scratch_store_b32 off, v98, off offset:656
	scratch_store_b32 off, v97, off offset:652
	scratch_store_b32 off, v96, off offset:648
	scratch_store_b32 off, v95, off offset:644
	scratch_store_b32 off, v94, off offset:640
	scratch_store_b32 off, v93, off offset:636
	scratch_store_b32 off, v92, off offset:632
	scratch_store_b32 off, v91, off offset:628
	scratch_store_b32 off, v90, off offset:624
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v183, v0
	v_dual_mov_b32 v2, v0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v3, v0
	v_dual_mov_b32 v4, v0 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v5, v0
	v_dual_mov_b32 v6, v0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v7, v0
	v_dual_mov_b32 v8, v0 :: v_dual_mov_b32 v65, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[1:4], off offset:32
	scratch_store_b128 off, v[5:8], off offset:48
	v_dual_mov_b32 v184, v0 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v185, v0
	v_dual_mov_b32 v186, v0 :: v_dual_mov_b32 v25, 0
	v_mov_b32_e32 v187, v0
	v_dual_mov_b32 v188, v0 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v189, v0
	v_dual_mov_b32 v26, v0 :: v_dual_mov_b32 v73, 0
	v_mov_b32_e32 v27, v0
	v_dual_mov_b32 v28, v0 :: v_dual_mov_b32 v81, 0
	v_mov_b32_e32 v29, v0
	v_dual_mov_b32 v30, v0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v31, v0
	v_dual_mov_b32 v32, v0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v34, v0 :: v_dual_mov_b32 v105, 0
	v_mov_b32_e32 v35, v0
	v_dual_mov_b32 v36, v0 :: v_dual_mov_b32 v113, 0
	v_mov_b32_e32 v37, v0
	v_dual_mov_b32 v38, v0 :: v_dual_mov_b32 v121, 0
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
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s6, s26, 7
	s_mov_b32 s18, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[1:4], off
	scratch_store_b128 off, v[5:8], off offset:16
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1157 25                       ; ragged.py:1157:25
	scratch_load_b64 v[1:2], off, off offset:256 ; 8-byte Folded Reload
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_add_i32 s19, s18, s6
	scratch_store_b64 off, v[226:227], off offset:72 ; 8-byte Folded Spill
	v_or_b32_e32 v0, s19, v219
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	v_dual_mov_b32 v163, v221 :: v_dual_mov_b32 v4, v227
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v0, s25, v[218:219]
	v_mov_b32_e32 v18, v239
	v_mov_b32_e32 v20, v225
	v_mov_b32_e32 v22, v251
	v_mov_b32_e32 v16, v231
	v_mov_b32_e32 v162, v220
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v0, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 4, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s19, v130
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s25, v[218:219]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v132, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 8, v219
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s19, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s25, v[218:219]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v133, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 12, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s19, v130
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s25, v[218:219]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v134, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 16, v219
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s19, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s25, v[218:219]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v135, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 20, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s19, v130
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s25, v[218:219]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v136, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 24, v219
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s19, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s25, v[218:219]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v137, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 28, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s19, v130
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s25, v[218:219]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v131, 31, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v227, s19, v131
	v_mov_b32_e32 v17, v238
	v_mov_b32_e32 v19, v244
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v222, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v9, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v223, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v3, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v224, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v11, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v225, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v5, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v228, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v13, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v229, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v6, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v230, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v15, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:264 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v7, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:272 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v254, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:280 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v8, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:288 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v252, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:296 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v10, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:304 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v248, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v231, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v12, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v232, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v243, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v233, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v14, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v234, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v241, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v235, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v255, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v236, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v208, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v237, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v253, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v238, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v209, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:312 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v249, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:320 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v206, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:328 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v247, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:336 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v205, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:344 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v242, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:352 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v204, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v226, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v240, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v239, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v203, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v244, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v250, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v245, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v202, v131, s[12:15], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v131, v1, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v207, v131, s[12:15], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v0, v0, s[8:11], 0 offen
	buffer_load_u8 v131, v132, s[8:11], 0 offen
	buffer_load_u8 v132, v133, s[8:11], 0 offen
	buffer_load_u8 v133, v135, s[8:11], 0 offen
	buffer_load_u8 v135, v136, s[8:11], 0 offen
	buffer_load_u8 v136, v137, s[8:11], 0 offen
	buffer_load_u8 v130, v130, s[8:11], 0 offen
	buffer_load_u8 v134, v134, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v24, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v24, v131 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v24, v132 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v24, v133 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v24, v135 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v246, v134
	ds_store_b8 v24, v136 offset:1536
	ds_store_b8 v251, v130
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v216 offset:320
	ds_load_u8 v130, v216 offset:256
	ds_load_u8 v131, v216 offset:336
	ds_load_u8 v132, v216 offset:272
	ds_load_u8 v133, v216 offset:352
	ds_load_u8 v134, v216 offset:288
	ds_load_u8 v135, v216 offset:368
	ds_load_u8 v136, v216 offset:304
	ds_load_u8 v193, v216 offset:832
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v0, v130, v0, 0xc0c0004
	ds_load_u8 v130, v216 offset:448
	ds_load_u8 v137, v216 offset:384
	ds_load_u8 v138, v216 offset:464
	ds_load_u8 v139, v216 offset:400
	ds_load_u8 v140, v216 offset:480
	ds_load_u8 v141, v216 offset:416
	ds_load_u8 v142, v216 offset:496
	ds_load_u8 v143, v216 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v130, v137, v130, 0xc0c0004
	ds_load_u8 v137, v216 offset:64
	ds_load_u8 v144, v216
	ds_load_u8 v145, v216 offset:80
	ds_load_u8 v146, v216 offset:96
	ds_load_u8 v147, v216 offset:112
	ds_load_u8 v148, v216 offset:16
	ds_load_u8 v149, v216 offset:32
	ds_load_u8 v150, v216 offset:48
	v_lshl_or_b32 v195, v130, 16, v0
	v_perm_b32 v0, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v130, v139, v138, 0xc0c0004
	ds_load_u8 v138, v216 offset:704
	ds_load_u8 v23, v216 offset:640
	v_lshl_or_b32 v197, v130, 16, v0
	v_perm_b32 v0, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v130, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v137, v144, v137, 0xc0c0004
	ds_load_u8 v144, v216 offset:192
	ds_load_u8 v151, v216 offset:128
	ds_load_u8 v152, v216 offset:208
	ds_load_u8 v153, v216 offset:144
	ds_load_u8 v154, v216 offset:224
	ds_load_u8 v155, v216 offset:160
	ds_load_u8 v156, v216 offset:240
	ds_load_u8 v157, v216 offset:176
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v131, v148, v145, 0xc0c0004
	v_lshl_or_b32 v199, v130, 16, v0
	v_perm_b32 v0, v136, v135, 0xc0c0004
	v_perm_b32 v130, v143, v142, 0xc0c0004
	v_mov_b32_e32 v136, v236
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v201, v130, 16, v0
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v144, v151, v144, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v132, v153, v152, 0xc0c0004
	v_lshl_or_b32 v194, v144, 16, v137
	v_mov_b32_e32 v137, v237
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v196, v132, 16, v131
	v_perm_b32 v131, v149, v146, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v132, v155, v154, 0xc0c0004
	v_mov_b32_e32 v146, v224
	ds_load_u8 v224, v216 offset:720
	v_lshl_or_b32 v198, v132, 16, v131
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v132, v157, v156, 0xc0c0004
	v_mov_b32_e32 v156, v234
	ds_load_u8 v234, v216 offset:960
	ds_load_u8 v175, v216 offset:896
	ds_load_u8 v0, v216 offset:1024
	v_perm_b32 v131, v150, v147, 0xc0c0004
	ds_load_u8 v237, v216 offset:768
	ds_load_u8 v147, v216 offset:848
	ds_load_u8 v144, v216 offset:784
	ds_load_u8 v176, v216 offset:864
	ds_load_u8 v179, v216 offset:800
	ds_load_u8 v165, v216 offset:880
	ds_load_u8 v169, v216 offset:816
	v_mov_b32_e32 v150, v233
	v_lshl_or_b32 v200, v132, 16, v131
	s_waitcnt lgkmcnt(7)
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	ds_load_u8 v170, v216 offset:976
	ds_load_u8 v173, v216 offset:912
	ds_load_u8 v0, v216 offset:992
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	ds_load_u8 v161, v216 offset:928
	ds_load_u8 v0, v216 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v226, v216 offset:656
	ds_load_u8 v149, v216 offset:736
	ds_load_u8 v190, v216 offset:672
	ds_load_u8 v155, v216 offset:752
	ds_load_u8 v148, v216 offset:688
	ds_load_u8 v225, v216 offset:576
	ds_load_u8 v130, v216 offset:512
	ds_load_u8 v132, v216 offset:592
	ds_load_u8 v131, v216 offset:528
	ds_load_u8 v135, v216 offset:608
	ds_load_u8 v133, v216 offset:544
	ds_load_u8 v140, v216 offset:624
	ds_load_u8 v21, v216 offset:560
	ds_load_u8 v0, v216 offset:1216
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v130, v130, v225, 0xc0c0004
	v_mov_b32_e32 v225, v20
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v131, v131, v132, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1280
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	ds_load_u8 v167, v216 offset:1152
	ds_load_u8 v171, v216 offset:1088
	ds_load_u8 v157, v216 offset:1104
	ds_load_u8 v160, v216 offset:1040
	ds_load_u8 v0, v216 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1056
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v145, v216 offset:1472
	ds_load_u8 v0, v216 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	ds_load_u8 v178, v216 offset:1488
	ds_load_u8 v180, v216 offset:1424
	ds_load_u8 v217, v216 offset:1504
	ds_load_u8 v219, v216 offset:1440
	ds_load_u8 v0, v216 offset:1520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	ds_load_u8 v166, v216 offset:1456
	ds_load_u8 v139, v216 offset:1408
	ds_load_u8 v134, v216 offset:1344
	ds_load_u8 v142, v216 offset:1360
	ds_load_u8 v141, v216 offset:1296
	ds_load_u8 v143, v216 offset:1376
	ds_load_u8 v192, v216 offset:1312
	ds_load_u8 v181, v216 offset:1392
	ds_load_u8 v154, v216 offset:1328
	ds_load_u8 v0, v216 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v129, v0
	scratch_load_b32 v0, off, off offset:460 ; 4-byte Folded Reload
	v_perm_b32 v132, v226, v224, 0xc0c0004
	v_mov_b32_e32 v224, v146
	s_waitcnt vmcnt(0)
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1920
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1728
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	ds_load_u8 v172, v216 offset:1792
	ds_load_u8 v0, v216 offset:1744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v177, v216 offset:1664
	ds_load_u8 v152, v216 offset:1600
	ds_load_u8 v218, v216 offset:1616
	ds_load_u8 v174, v216 offset:1552
	ds_load_u8 v153, v216 offset:1632
	ds_load_u8 v168, v216 offset:1568
	ds_load_u8 v0, v216 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	ds_load_u8 v0, v216 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v220
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v0, v9
	ds_store_b8 v0, v11 offset:512
	ds_store_b8 v0, v13 offset:1024
	ds_store_b8 v0, v15 offset:1536
	ds_store_b8 v0, v254 offset:2048
	ds_store_b8 v0, v252 offset:2560
	ds_store_b8 v0, v248 offset:3072
	ds_store_b8 v0, v243 offset:3584
	ds_store_b8 v0, v241 offset:4096
	ds_store_b8 v0, v208 offset:4608
	ds_store_b8 v0, v209 offset:5120
	ds_store_b8 v0, v206 offset:5632
	ds_store_b8 v0, v205 offset:6144
	ds_store_b8 v0, v204 offset:6656
	ds_store_b8 v0, v203 offset:7168
	ds_store_b8 v0, v202 offset:7680
	ds_store_b8 v164, v3
	ds_store_b8 v164, v5 offset:512
	ds_store_b8 v164, v6 offset:1024
	ds_store_b8 v164, v7 offset:1536
	ds_store_b8 v164, v8 offset:2048
	ds_store_b8 v164, v10 offset:2560
	ds_store_b8 v164, v12 offset:3072
	ds_store_b8 v164, v14 offset:3584
	ds_store_b8 v164, v255 offset:4096
	ds_store_b8 v164, v253 offset:4608
	ds_store_b8 v164, v249 offset:5120
	ds_store_b8 v164, v247 offset:5632
	ds_store_b8 v164, v242 offset:6144
	ds_store_b8 v164, v240 offset:6656
	ds_store_b8 v164, v250 offset:7168
	ds_store_b8 v164, v207 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1186 29                       ; ragged.py:1186:29
	scratch_load_b64 v[1:2], off, off offset:360 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v247, 0, v221
	v_mov_b32_e32 v3, v229
	v_dual_mov_b32 v13, v235 :: v_dual_mov_b32 v10, v232
	v_mov_b32_e32 v9, v230
	ds_load_2addr_stride64_b64 v[202:205], v247 offset1:8
	.loc	1 1186 29                       ; ragged.py:1186:29
	scratch_load_b64 v[5:6], off, off offset:592 ; 8-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[202:203], v[194:195], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[202:203], v[196:197], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[202:203], v[198:199], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[202:203], v[200:201], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[204:205], v[194:195], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[204:205], v[196:197], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[204:205], v[198:199], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[204:205], v[200:201], v[121:128] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v202, v1, v227
	scratch_load_b64 v[1:2], off, off offset:368 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v203, v1, v227
	scratch_load_b64 v[1:2], off, off offset:376 ; 8-byte Folded Reload
	v_mov_b32_e32 v151, v223
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v223, v202, s[12:15], 0 offen
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v204, v1, v227
	scratch_load_b64 v[1:2], off, off offset:384 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v205, v1, v227
	scratch_load_b64 v[1:2], off, off offset:392 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v206, v1, v227
	scratch_load_b64 v[1:2], off, off offset:400 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v207, v1, v227
	scratch_load_b64 v[1:2], off, off offset:408 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v208, v1, v227
	scratch_load_b64 v[1:2], off, off offset:416 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v209, v1, v227
	scratch_load_b64 v[1:2], off, off offset:424 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v240, v1, v227
	scratch_load_b64 v[1:2], off, off offset:432 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v241, v1, v227
	scratch_load_b64 v[1:2], off, off offset:440 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v242, v1, v227
	scratch_load_b64 v[1:2], off, off offset:448 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v243, v1, v227
	scratch_load_b64 v[1:2], off, off offset:464 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v248, v1, v227
	scratch_load_b64 v[1:2], off, off offset:472 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v249, v1, v227
	scratch_load_b64 v[1:2], off, off offset:480 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v250, v1, v227
	scratch_load_b64 v[1:2], off, off offset:488 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v252, v1, v227
	scratch_load_b64 v[1:2], off, off offset:496 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v253, v1, v227
	scratch_load_b64 v[1:2], off, off offset:504 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v254, v1, v227
	scratch_load_b64 v[1:2], off, off offset:512 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v255, v1, v227
	scratch_load_b64 v[1:2], off, off offset:520 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v244, v1, v227
	scratch_load_b64 v[1:2], off, off offset:528 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v251, v1, v227
	scratch_load_b64 v[1:2], off, off offset:536 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v235, v1, v227
	scratch_load_b64 v[1:2], off, off offset:544 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v233, v1, v227
	scratch_load_b64 v[1:2], off, off offset:552 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v232, v1, v227
	scratch_load_b64 v[1:2], off, off offset:560 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v231, v1, v227
	scratch_load_b64 v[1:2], off, off offset:568 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v230, v1, v227
	scratch_load_b64 v[1:2], off, off offset:576 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v236, v1, v227
	scratch_load_b64 v[1:2], off, off offset:584 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v2, v228
	v_add_nc_u32_e32 v238, v1, v227
	v_mov_b32_e32 v1, v222
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x2
	buffer_load_u8 v221, v204, s[12:15], 0 offen
	buffer_load_u8 v222, v206, s[12:15], 0 offen
	buffer_load_u8 v215, v208, s[12:15], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	scratch_load_b32 v206, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v228, v5, v227
	scratch_load_b64 v[5:6], off, off offset:600 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v229, v5, v227
	scratch_load_b64 v[5:6], off, off offset:608 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v239, v5, v227
	scratch_load_b64 v[5:6], off, off offset:616 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v227, v5, v227
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1b
	buffer_load_u8 v220, v240, s[12:15], 0 offen
	buffer_load_u8 v214, v242, s[12:15], 0 offen
	buffer_load_u8 v248, v248, s[12:15], 0 offen
	buffer_load_u8 v250, v250, s[12:15], 0 offen
	buffer_load_u8 v253, v253, s[12:15], 0 offen
	buffer_load_u8 v255, v255, s[12:15], 0 offen
	buffer_load_u8 v251, v251, s[12:15], 0 offen
	buffer_load_u8 v233, v233, s[12:15], 0 offen
	buffer_load_u8 v231, v231, s[12:15], 0 offen
	buffer_load_u8 v236, v236, s[12:15], 0 offen
	buffer_load_u8 v228, v228, s[12:15], 0 offen
	buffer_load_u8 v239, v239, s[12:15], 0 offen
	buffer_load_u8 v212, v209, s[12:15], 0 offen
	buffer_load_u8 v213, v207, s[12:15], 0 offen
	buffer_load_u8 v210, v205, s[12:15], 0 offen
	buffer_load_u8 v211, v203, s[12:15], 0 offen
	buffer_load_u8 v252, v252, s[12:15], 0 offen
	buffer_load_u8 v249, v249, s[12:15], 0 offen
	buffer_load_u8 v158, v243, s[12:15], 0 offen
	buffer_load_u8 v159, v241, s[12:15], 0 offen
	buffer_load_u8 v232, v232, s[12:15], 0 offen
	buffer_load_u8 v235, v235, s[12:15], 0 offen
	buffer_load_u8 v244, v244, s[12:15], 0 offen
	buffer_load_u8 v254, v254, s[12:15], 0 offen
	buffer_load_u8 v227, v227, s[12:15], 0 offen
	buffer_load_u8 v229, v229, s[12:15], 0 offen
	buffer_load_u8 v238, v238, s[12:15], 0 offen
	buffer_load_u8 v230, v230, s[12:15], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	scratch_load_b32 v240, off, off offset:64 ; 4-byte Folded Reload
	ds_load_2addr_stride64_b64 v[202:205], v4 offset1:8
	ds_load_2addr_stride64_b64 v[206:209], v206 offset1:8
	.loc	1 1200 21                       ; ragged.py:1200:21
	s_add_i32 s14, s18, 32
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cmpk_lt_u32 s18, 0x60
	s_mov_b32 s18, s14
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[240:243], v240 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v0, v223
	ds_store_b8 v0, v221 offset:512
	ds_store_b8 v0, v222 offset:1024
	ds_store_b8 v164, v232 offset:5632
	ds_store_b8 v164, v230 offset:6144
	ds_store_b8 v164, v238 offset:6656
	ds_store_b8 v164, v229 offset:7168
	ds_store_b8 v164, v227 offset:7680
	v_mov_b32_e32 v222, v1
	ds_store_b8 v0, v215 offset:1536
	ds_store_b8 v0, v220 offset:2048
	ds_store_b8 v0, v214 offset:2560
	ds_store_b8 v0, v248 offset:3072
	ds_store_b8 v0, v250 offset:3584
	ds_store_b8 v0, v253 offset:4096
	ds_store_b8 v0, v255 offset:4608
	ds_store_b8 v0, v251 offset:5120
	ds_store_b8 v0, v233 offset:5632
	ds_store_b8 v0, v231 offset:6144
	ds_store_b8 v0, v236 offset:6656
	ds_store_b8 v0, v228 offset:7168
	ds_store_b8 v0, v239 offset:7680
	ds_store_b8 v164, v211
	ds_store_b8 v164, v210 offset:512
	ds_store_b8 v164, v213 offset:1024
	ds_store_b8 v164, v212 offset:1536
	ds_store_b8 v164, v159 offset:2048
	ds_store_b8 v164, v158 offset:2560
	ds_store_b8 v164, v249 offset:3072
	ds_store_b8 v164, v252 offset:3584
	ds_store_b8 v164, v254 offset:4096
	ds_store_b8 v164, v244 offset:4608
	ds_store_b8 v164, v235 offset:5120
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_load_b32 v1, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[247:250], v247 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v237, v193, 0xc0c0004
	v_perm_b32 v158, v175, v234, 0xc0c0004
	v_perm_b32 v159, v23, v138, 0xc0c0004
	v_dual_mov_b32 v230, v9 :: v_dual_mov_b32 v229, v3
	v_dual_mov_b32 v228, v2 :: v_dual_mov_b32 v227, v4
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[2:5], off, off
	scratch_load_b128 v[6:9], off, off offset:16
	v_dual_mov_b32 v239, v18 :: v_dual_mov_b32 v234, v156
	v_dual_mov_b32 v235, v13 :: v_dual_mov_b32 v232, v10
	v_dual_mov_b32 v231, v16 :: v_dual_mov_b32 v238, v17
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[10:13], off, off offset:32
	scratch_load_b128 v[14:17], off, off offset:48
	v_dual_mov_b32 v237, v137 :: v_dual_mov_b32 v236, v136
	v_dual_mov_b32 v221, v163 :: v_dual_mov_b32 v220, v162
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[247:248], v[198:199], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[249:250], v[198:199], v[41:48] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v199, v158, 16, v0
	v_lshl_or_b32 v198, v159, 16, v130
	v_perm_b32 v0, v144, v147, 0xc0c0004
	v_perm_b32 v130, v173, v170, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[247:248], v[200:201], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[249:250], v[200:201], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v200, v132, 16, v131
	v_perm_b32 v131, v133, v135, 0xc0c0004
	v_lshl_or_b32 v201, v130, 16, v0
	v_perm_b32 v0, v179, v176, 0xc0c0004
	v_perm_b32 v132, v190, v149, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[182:189], v[247:248], v[194:195], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[249:250], v[196:197], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[202:203], v[198:199], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[204:205], v[198:199], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v132, 16, v131
	v_perm_b32 v131, v169, v165, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[81:88], v[202:203], v[200:201], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[204:205], v[200:201], v[89:96] neg_lo:[1,1,0]
	v_mov_b32_e32 v251, v22
	v_dual_mov_b32 v233, v150 :: v_dual_mov_b32 v244, v19
	v_mov_b32_e32 v223, v151
	s_waitcnt vmcnt(4)
	v_perm_b32 v130, v161, v1, 0xc0c0004
	scratch_load_b32 v1, off, off offset:188 ; 4-byte Folded Reload
	v_lshl_or_b32 v176, v130, 16, v0
	v_perm_b32 v0, v21, v140, 0xc0c0004
	v_perm_b32 v130, v148, v155, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt vmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[2:9], v[247:248], v[196:197], v[2:9] neg_lo:[1,1,0]
	scratch_load_b32 v247, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[97:104], v[202:203], v[175:176], v[97:104] neg_lo:[1,1,0]
	v_lshl_or_b32 v169, v130, 16, v0
	scratch_load_b32 v0, off, off offset:220 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[105:112], v[204:205], v[175:176], v[105:112] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt vmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[10:17], v[249:250], v[194:195], v[10:17] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[194:197], v227 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[182:189], v[194:195], v[198:199], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[196:197], v[198:199], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[194:195], v[175:176], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[196:197], v[175:176], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[2:9], v[194:195], v[200:201], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[200:201], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v129, v1, v129, 0xc0c0004
	scratch_load_b32 v1, off, off offset:80 ; 4-byte Folded Reload
	v_lshl_or_b32 v170, v129, 16, v131
	v_perm_b32 v129, v139, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[202:203], v[169:170], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[204:205], v[169:170], v[121:128] neg_lo:[1,1,0]
	s_waitcnt vmcnt(1)
	v_perm_b32 v0, v0, v134, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[194:195], v[169:170], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[196:197], v[169:170], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v148, v129, 16, v0
	v_perm_b32 v0, v141, v142, 0xc0c0004
	v_perm_b32 v129, v180, v178, 0xc0c0004
	v_lshl_or_b32 v156, v129, 16, v0
	v_perm_b32 v0, v192, v143, 0xc0c0004
	v_perm_b32 v129, v219, v217, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v129, 16, v0
	v_perm_b32 v0, v154, v181, 0xc0c0004
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[178:181], v247 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v1, v171, 0xc0c0004
	scratch_load_b32 v1, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v167, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:148
	scratch_load_b32 v18, off, off offset:156
	v_lshl_or_b32 v147, v131, 16, v130
	v_perm_b32 v130, v160, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[206:207], v[147:148], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[208:209], v[147:148], v[73:80] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[182:189], v[178:179], v[147:148], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[180:181], v[147:148], v[10:17] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v18, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:200
	scratch_load_b32 v18, off, off offset:212
	v_lshl_or_b32 v155, v131, 16, v130
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[206:207], v[155:156], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[208:209], v[155:156], v[89:96] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[2:9], v[178:179], v[155:156], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[180:181], v[155:156], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v18, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:132
	scratch_load_b32 v18, off, off offset:136
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v18, v1, 0xc0c0004
	scratch_load_b32 v1, off, off offset:236 ; 4-byte Folded Reload
	v_lshl_or_b32 v133, v131, 16, v130
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[206:207], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[208:209], v[133:134], v[105:112] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[178:179], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[180:181], v[133:134], v[41:48] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v166, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:164
	scratch_load_b32 v18, off, off offset:180
	v_lshl_or_b32 v161, v129, 16, v0
	scratch_load_b32 v0, off, off offset:208 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v130, v18, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:116
	scratch_load_b32 v18, off, off offset:124
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v18, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:128
	scratch_load_b32 v18, off, off offset:196
	v_lshl_or_b32 v160, v131, 16, v130
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[113:120], v[206:207], v[160:161], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[208:209], v[160:161], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[178:179], v[160:161], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[180:181], v[160:161], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v18, v1, 0xc0c0004
	scratch_load_b32 v1, off, off offset:84 ; 4-byte Folded Reload
	v_perm_b32 v0, v172, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v129, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v1, v152, 0xc0c0004
	scratch_load_b32 v1, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v177, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:160
	scratch_load_b32 v1, off, off offset:172
	v_lshl_or_b32 v147, v131, 16, v130
	v_perm_b32 v130, v174, v218, 0xc0c0004
	scratch_load_b64 v[218:219], off, off offset:244 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[65:72], v[240:241], v[147:148], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[242:243], v[147:148], v[73:80] neg_lo:[1,1,0]
	s_waitcnt vmcnt(1)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:104
	scratch_load_b32 v18, off, off offset:112
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v18, v1, 0xc0c0004
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v219, off, off offset:252
	scratch_load_b32 v1, off, off offset:204
	scratch_load_b32 v18, off, off offset:216
	v_lshl_or_b32 v140, v129, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v18, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:140
	scratch_load_b32 v1, off, off offset:144
	v_lshl_or_b32 v139, v131, 16, v130
	v_perm_b32 v130, v168, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[240:241], v[139:140], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[242:243], v[139:140], v[89:96] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:96
	scratch_load_b32 v18, off, off offset:100
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v18, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:176
	scratch_load_b32 v18, off, off offset:184
	v_lshl_or_b32 v135, v129, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v18, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:228
	scratch_load_b32 v1, off, off offset:240
	v_lshl_or_b32 v134, v131, 16, v130
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[240:241], v[134:135], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[242:243], v[134:135], v[105:112] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:152
	scratch_load_b32 v18, off, off offset:168
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v18, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:108
	scratch_load_b32 v18, off, off offset:120
	v_lshl_or_b32 v136, v129, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v18, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:88
	scratch_load_b32 v18, off, off offset:92
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v18, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v131, 16, v130
	v_wmma_i32_16x16x16_iu4 v[113:120], v[240:241], v[136:137], v[113:120] neg_lo:[1,1,0]
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v240, off, off offset:64
	scratch_load_b64 v[0:1], off, off offset:72
	v_wmma_i32_16x16x16_iu4 v[121:128], v[242:243], v[136:137], v[121:128] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[130:133], v240 offset1:8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v226, v0
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[182:189], v[130:131], v[147:148], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[10:17], v[132:133], v[147:148], v[10:17] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[2:9], v[130:131], v[139:140], v[2:9] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[132:133], v[139:140], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[130:131], v[134:135], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[132:133], v[134:135], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[130:131], v[136:137], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[132:133], v[136:137], v[57:64] neg_lo:[1,1,0]
	s_clause 0x3                            ; 64-byte Folded Spill
	scratch_store_b128 off, v[10:13], off offset:32
	scratch_store_b128 off, v[14:17], off offset:48
	scratch_store_b128 off, v[2:5], off
	scratch_store_b128 off, v[6:9], off offset:16
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_scc1 .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b128 v[17:20], off, off
	scratch_load_b128 v[21:24], off, off offset:16
	scratch_load_b32 v192, off, off offset:1152
	.loc	1 1201 27 is_stmt 1             ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v146, v108
	v_cvt_f32_i32_e32 v147, v109
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s6, s26, s7
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v106
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s6, s6, s5
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s22, s10
	s_mov_b32 s23, s11
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v170, v40
	v_cvt_f32_i32_e32 v171, v42
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:32
	scratch_load_b128 v[13:16], off, off offset:48
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v1, v182
	v_cvt_f32_i32_e32 v172, v43
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v0, v65
	v_cvt_f32_i32_e32 v65, v66
	v_cvt_f32_i32_e32 v66, v67
	v_cvt_f32_i32_e32 v67, v68
	v_cvt_f32_i32_e32 v68, v69
	v_cvt_f32_i32_e32 v129, v70
	v_cvt_f32_i32_e32 v130, v71
	v_cvt_f32_i32_e32 v131, v72
	v_cvt_f32_i32_e32 v69, v73
	v_cvt_f32_i32_e32 v132, v74
	v_cvt_f32_i32_e32 v133, v75
	v_cvt_f32_i32_e32 v134, v76
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v70, v78
	v_cvt_f32_i32_e32 v71, v79
	v_cvt_f32_i32_e32 v72, v80
	v_cvt_f32_i32_e32 v135, v81
	v_cvt_f32_i32_e32 v136, v82
	v_cvt_f32_i32_e32 v137, v83
	v_cvt_f32_i32_e32 v138, v84
	v_cvt_f32_i32_e32 v85, v85
	v_cvt_f32_i32_e32 v86, v86
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v88, v88
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v148, v110
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v3, v184
	v_cvt_f32_i32_e32 v4, v185
	v_cvt_f32_i32_e32 v5, v186
	v_cvt_f32_i32_e32 v6, v187
	v_cvt_f32_i32_e32 v7, v188
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v139, v101
	v_cvt_f32_i32_e32 v140, v102
	v_cvt_f32_i32_e32 v141, v103
	v_cvt_f32_i32_e32 v142, v104
	v_cvt_f32_i32_e32 v143, v105
	v_cvt_f32_i32_e32 v145, v107
	v_cvt_f32_i32_e32 v149, v111
	v_cvt_f32_i32_e32 v150, v112
	v_cvt_f32_i32_e32 v151, v113
	v_cvt_f32_i32_e32 v152, v114
	v_cvt_f32_i32_e32 v153, v115
	v_cvt_f32_i32_e32 v154, v116
	v_cvt_f32_i32_e32 v155, v117
	v_cvt_f32_i32_e32 v156, v118
	v_cvt_f32_i32_e32 v157, v119
	v_cvt_f32_i32_e32 v158, v120
	v_cvt_f32_i32_e32 v159, v121
	v_cvt_f32_i32_e32 v160, v122
	v_cvt_f32_i32_e32 v161, v123
	v_cvt_f32_i32_e32 v162, v124
	v_cvt_f32_i32_e32 v163, v125
	v_cvt_f32_i32_e32 v165, v126
	v_cvt_f32_i32_e32 v166, v127
	v_cvt_f32_i32_e32 v128, v128
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v2, v183
	v_cvt_f32_i32_e32 v8, v189
	v_cvt_f32_i32_e32 v167, v37
	v_cvt_f32_i32_e32 v169, v39
	v_cvt_f32_i32_e32 v37, v41
	v_cvt_f32_i32_e32 v39, v47
	v_cvt_f32_i32_e32 v178, v53
	v_cvt_f32_i32_e32 v179, v54
	v_cvt_f32_i32_e32 v180, v55
	v_cvt_f32_i32_e32 v181, v56
	v_cvt_f32_i32_e32 v182, v57
	v_cvt_f32_i32_e32 v183, v58
	v_cvt_f32_i32_e32 v184, v59
	v_cvt_f32_i32_e32 v185, v60
	v_cvt_f32_i32_e32 v186, v61
	v_cvt_f32_i32_e32 v187, v62
	v_cvt_f32_i32_e32 v188, v63
	v_cvt_f32_i32_e32 v189, v64
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v168, v38
	v_cvt_f32_i32_e32 v173, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v38, v46
	v_cvt_f32_i32_e32 v41, v48
	v_cvt_f32_i32_e32 v174, v49
	v_cvt_f32_i32_e32 v175, v50
	v_cvt_f32_i32_e32 v176, v51
	v_cvt_f32_i32_e32 v177, v52
	s_waitcnt vmcnt(4)
	v_cvt_f32_i32_e32 v108, v18
	v_cvt_f32_i32_e32 v109, v19
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:1136
	scratch_load_b32 v19, off, off offset:1140
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v106, v17
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v17, v192, s6, 1
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v110, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v17, v17, s[20:23], 0 offen
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v24, v24
	s_waitcnt vmcnt(4)
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	s_waitcnt vmcnt(3)
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v18, s26, v18, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v19, s26, v19, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1
	buffer_load_u16 v18, v18, s[16:19], 0 offen
	buffer_load_u16 v40, v19, s[16:19], 0 offen
	scratch_load_b32 v19, off, off offset:1144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v18
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v19, s26, v19, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v84, v43, v1 :: v_dual_lshlrev_b32 v1, 16, v40
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v104, v89, v1
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v42, v19, s[16:19], 0 offen
	scratch_load_b32 v19, off, off offset:1148 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v120, v69, v43
	v_dual_mul_f32 v117, v70, v43 :: v_dual_mul_f32 v0, v43, v0
	v_dual_mul_f32 v118, v71, v43 :: v_dual_mul_f32 v101, v94, v1
	v_dual_mul_f32 v119, v72, v43 :: v_dual_mul_f32 v82, v43, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v72, v9, v43 :: v_dual_mul_f32 v127, v43, v65
	v_dual_mul_f32 v70, v15, v43 :: v_dual_mul_f32 v103, v96, v1
	v_dual_mul_f32 v73, v43, v4 :: v_dual_mul_f32 v116, v1, v135
	v_dual_mul_f32 v75, v43, v3 :: v_dual_mul_f32 v114, v1, v136
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v18, v43, v131 :: v_dual_mul_f32 v53, v30, v1
	v_mul_f32_e32 v123, v43, v129
	v_dual_mul_f32 v125, v43, v68 :: v_dual_mul_f32 v68, v1, v106
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v76, v43, v7 :: v_dual_mul_f32 v55, v32, v1
	v_dual_mul_f32 v78, v43, v6 :: v_dual_mul_f32 v107, v1, v137
	v_dual_mul_f32 v80, v43, v5 :: v_dual_mul_f32 v105, v1, v138
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v121, v43, v77 :: v_dual_mul_f32 v106, v1, v88
	v_dual_mul_f32 v122, v43, v134 :: v_dual_mul_f32 v59, v1, v109
	v_dual_mul_f32 v124, v43, v133 :: v_dual_mul_f32 v57, v1, v110
	v_dual_mul_f32 v126, v43, v132 :: v_dual_mul_f32 v109, v1, v93
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v77, v43, v13
	v_dual_mul_f32 v79, v43, v12 :: v_dual_mul_f32 v110, v1, v86
	v_dual_mul_f32 v81, v43, v11 :: v_dual_mul_f32 v112, v1, v85
	v_dual_mul_f32 v83, v43, v10 :: v_dual_mul_f32 v58, v1, v24
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v102, v95, v1 :: v_dual_mul_f32 v111, v1, v92
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v54, v31, v1 :: v_dual_mul_f32 v113, v1, v91
	v_mul_f32_e32 v60, v1, v23
	v_mul_f32_e32 v62, v1, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v115, v1, v90
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v63, v1, v28
	v_mul_f32_e32 v65, v1, v27
	v_dual_mul_f32 v69, v14, v43 :: v_dual_mul_f32 v20, v43, v130
	v_dual_mul_f32 v71, v16, v43 :: v_dual_mul_f32 v74, v43, v8
	v_mul_f32_e32 v56, v25, v1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v19, s26, v19, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s26, s26, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s26, s24
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	buffer_load_u16 v190, v19, s[16:19], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v199, off, off offset:1156 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v19, v43, v66 :: v_dual_mul_f32 v66, v1, v108
	v_mul_f32_e32 v108, v1, v87
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v61, v1, v29 :: v_dual_lshlrev_b32 v28, 16, v190
	v_mul_f32_e32 v64, v1, v21
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v199, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v43, v67
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v67, v1, v26 :: v_dual_mul_f32 v86, v166, v28
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v1, 16, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v85, v128, v28
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v128, off, off offset:1160
	scratch_load_b32 v207, off, off offset:1080
	scratch_load_b32 v206, off, off offset:1076
	scratch_load_b32 v205, off, off offset:1072
	scratch_load_b32 v204, off, off offset:1068
	scratch_load_b32 v203, off, off offset:1064
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v40, v37, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v143, v1
	v_mul_f32_e32 v10, v148, v1
	v_dual_mul_f32 v11, v149, v1 :: v_dual_mul_f32 v22, v188, v28
	v_mul_f32_e32 v12, v150, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v37, v38, v1 :: v_dual_mul_f32 v14, v1, v100
	v_mul_f32_e32 v38, v39, v1
	v_dual_mul_f32 v39, v41, v1 :: v_dual_mul_f32 v8, v28, v152
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v16, v1, v99 :: v_dual_mul_f32 v25, v182, v28
	v_dual_mul_f32 v98, v1, v98 :: v_dual_mul_f32 v23, v187, v28
	v_dual_mul_f32 v100, v1, v97 :: v_dual_mul_f32 v3, v28, v154
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v41, v1, v36 :: v_dual_mul_f32 v4, v28, v153
	v_mul_f32_e32 v43, v1, v35
	v_dual_mul_f32 v50, v1, v34 :: v_dual_mul_f32 v9, v28, v151
	v_dual_mul_f32 v52, v1, v33 :: v_dual_mul_f32 v35, v28, v175
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v15, v1, v142 :: v_dual_mul_f32 v2, v28, v155
	v_mul_f32_e32 v92, v1, v141
	v_dual_mul_f32 v94, v1, v140 :: v_dual_mul_f32 v33, v28, v177
	v_dual_mul_f32 v96, v1, v139 :: v_dual_mul_f32 v7, v28, v157
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v42, v1, v170 :: v_dual_mul_f32 v29, v28, v181
	v_dual_mul_f32 v44, v1, v169 :: v_dual_mul_f32 v31, v28, v179
	v_dual_mul_f32 v46, v1, v168 :: v_dual_mul_f32 v89, v28, v162
	v_dual_mul_f32 v48, v1, v167 :: v_dual_mul_f32 v91, v28, v160
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v93, v1, v147 :: v_dual_mul_f32 v36, v28, v174
	v_dual_mul_f32 v95, v1, v146 :: v_dual_mul_f32 v30, v28, v180
	v_dual_mul_f32 v97, v1, v145 :: v_dual_mul_f32 v6, v28, v158
	v_dual_mul_f32 v99, v1, v144 :: v_dual_mul_f32 v32, v28, v178
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v45, v1, v45 :: v_dual_mul_f32 v88, v28, v163
	v_dual_mul_f32 v47, v1, v173 :: v_dual_mul_f32 v24, v28, v186
	v_dual_mul_f32 v49, v1, v172 :: v_dual_mul_f32 v90, v28, v161
	v_dual_mul_f32 v51, v1, v171 :: v_dual_mul_f32 v26, v28, v185
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v5, v159, v28
	v_mul_f32_e32 v87, v165, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v34, v28, v176
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v28, v156
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v180, off, off offset:976
	scratch_load_b32 v181, off, off offset:980
	scratch_load_b32 v172, off, off offset:944
	scratch_load_b32 v173, off, off offset:948
	scratch_load_b32 v174, off, off offset:952
	scratch_load_b32 v182, off, off offset:984
	scratch_load_b32 v175, off, off offset:956
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(12)
	ds_load_b128 v[130:133], v128
	ds_load_b128 v[134:137], v128 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v189, v28
	v_mul_f32_e32 v27, v28, v184
	v_mul_f32_e32 v28, v28, v183
	s_clause 0x10                           ; 68-byte Folded Reload
	scratch_load_b32 v183, off, off offset:988
	scratch_load_b32 v163, off, off offset:912
	scratch_load_b32 v165, off, off offset:916
	scratch_load_b32 v166, off, off offset:920
	scratch_load_b32 v167, off, off offset:924
	scratch_load_b32 v155, off, off offset:880
	scratch_load_b32 v156, off, off offset:884
	scratch_load_b32 v158, off, off offset:892
	scratch_load_b32 v157, off, off offset:888
	scratch_load_b32 v146, off, off offset:816
	scratch_load_b32 v150, off, off offset:848
	scratch_load_b32 v151, off, off offset:852
	scratch_load_b32 v152, off, off offset:856
	scratch_load_b32 v153, off, off offset:860
	scratch_load_b32 v147, off, off offset:820
	scratch_load_b32 v148, off, off offset:824
	scratch_load_b32 v149, off, off offset:828
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(23) lgkmcnt(1)
	v_fmac_f32_e32 v180, v0, v130
	s_waitcnt vmcnt(22)
	v_dual_fmac_f32 v181, v127, v131 :: v_dual_add_nc_u32 v0, s76, v192
	s_waitcnt vmcnt(20) lgkmcnt(0)
	v_dual_fmac_f32 v172, v125, v134 :: v_dual_fmac_f32 v173, v123, v135
	s_waitcnt vmcnt(19)
	v_fmac_f32_e32 v174, v20, v136
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v0, v0, s6, 1
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(18)
	v_fmac_f32_e32 v182, v17, v133
	s_waitcnt vmcnt(17)
	v_fmac_f32_e32 v175, v18, v137
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v0, v0, s[20:23], 0 offen
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(17)
	v_fmac_f32_e32 v183, v19, v132
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[138:141], v128 offset:512
	ds_load_b128 v[17:20], v128 offset:528
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v123, off, off offset:752
	scratch_load_b32 v125, off, off offset:760
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v155, v116, v130
	scratch_load_b32 v116, off, off offset:724 ; 4-byte Folded Reload
	s_waitcnt vmcnt(12)
	v_fmac_f32_e32 v157, v105, v133
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v202, off, off offset:1060
	scratch_load_b32 v198, off, off offset:1044
	scratch_load_b32 v197, off, off offset:1040
	scratch_load_b32 v142, off, off offset:784
	scratch_load_b32 v143, off, off offset:788
	scratch_load_b32 v145, off, off offset:796
	scratch_load_b32 v196, off, off offset:1036
	scratch_load_b32 v195, off, off offset:1032
	scratch_load_b32 v194, off, off offset:1028
	scratch_load_b32 v193, off, off offset:1024
	scratch_load_b32 v144, off, off offset:792
	s_waitcnt vmcnt(22)
	v_fmac_f32_e32 v146, v115, v139
	scratch_load_b32 v115, off, off offset:720 ; 4-byte Folded Reload
	v_dual_fmac_f32 v163, v126, v139 :: v_dual_fmac_f32 v158, v107, v132
	v_dual_fmac_f32 v165, v124, v140 :: v_dual_fmac_f32 v156, v114, v131
	v_dual_fmac_f32 v206, v117, v18 :: v_dual_fmac_f32 v205, v118, v19
	s_waitcnt vmcnt(20)
	v_fmac_f32_e32 v152, v108, v136
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v124, off, off offset:756
	scratch_load_b32 v126, off, off offset:764
	scratch_load_b32 v117, off, off offset:728
	scratch_load_b32 v118, off, off offset:732
	v_dual_fmac_f32 v167, v121, v17 :: v_dual_fmac_f32 v150, v112, v134
	s_waitcnt vmcnt(21)
	v_dual_fmac_f32 v151, v110, v135 :: v_dual_fmac_f32 v148, v111, v141
	v_fmac_f32_e32 v153, v106, v137
	v_fmac_f32_e32 v147, v113, v140
	s_waitcnt vmcnt(20)
	v_fmac_f32_e32 v149, v109, v17
	v_fmac_f32_e32 v203, v104, v138
	v_dual_fmac_f32 v207, v120, v138 :: v_dual_fmac_f32 v204, v119, v20
	v_fmac_f32_e32 v166, v122, v141
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v199, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v105, off, off offset:688
	scratch_load_b32 v106, off, off offset:692
	scratch_load_b32 v110, off, off offset:700
	scratch_load_b32 v114, off, off offset:716
	scratch_load_b32 v111, off, off offset:704
	scratch_load_b32 v112, off, off offset:708
	scratch_load_b32 v113, off, off offset:712
	scratch_load_b32 v107, off, off offset:696
	scratch_load_b32 v0, off, off offset:628
	scratch_load_b32 v192, off, off offset:1020
	scratch_load_b32 v190, off, off offset:1016
	scratch_load_b32 v189, off, off offset:1012
	scratch_load_b32 v188, off, off offset:1008
	scratch_load_b32 v187, off, off offset:1004
	scratch_load_b32 v186, off, off offset:1000
	scratch_load_b32 v185, off, off offset:996
	scratch_load_b32 v184, off, off offset:992
	scratch_load_b32 v104, off, off offset:684
	scratch_load_b32 v179, off, off offset:972
	scratch_load_b32 v178, off, off offset:968
	scratch_load_b32 v177, off, off offset:964
	scratch_load_b32 v176, off, off offset:960
	scratch_load_b32 v171, off, off offset:940
	scratch_load_b32 v170, off, off offset:936
	scratch_load_b32 v168, off, off offset:928
	scratch_load_b32 v169, off, off offset:932
	scratch_load_b32 v217, off, off offset:1132
	scratch_load_b32 v215, off, off offset:1128
	scratch_load_b32 v214, off, off offset:1120
	scratch_load_b32 v213, off, off offset:1112
	scratch_load_b32 v212, off, off offset:1108
	scratch_load_b32 v211, off, off offset:1104
	s_clause 0x10                           ; 68-byte Folded Reload
	scratch_load_b32 v162, off, off offset:908
	scratch_load_b32 v161, off, off offset:904
	scratch_load_b32 v159, off, off offset:896
	scratch_load_b32 v160, off, off offset:900
	scratch_load_b32 v154, off, off offset:876
	scratch_load_b32 v129, off, off offset:776
	scratch_load_b32 v127, off, off offset:768
	scratch_load_b32 v122, off, off offset:748
	scratch_load_b32 v121, off, off offset:744
	scratch_load_b32 v119, off, off offset:736
	scratch_load_b32 v120, off, off offset:740
	scratch_load_b32 v210, off, off offset:1100
	scratch_load_b32 v209, off, off offset:1088
	scratch_load_b32 v208, off, off offset:1084
	scratch_load_b32 v201, off, off offset:1056
	scratch_load_b32 v200, off, off offset:1052
	scratch_load_b32 v199, off, off offset:1048
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(62)
	v_fmac_f32_e32 v123, v96, v134
	v_fmac_f32_e32 v125, v92, v136
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v96, off, off offset:648
	scratch_load_b32 v92, off, off offset:632
	v_fmac_f32_e32 v116, v97, v140
	scratch_load_b32 v97, off, off offset:652 ; 4-byte Folded Reload
	v_fmac_f32_e32 v202, v101, v18
	scratch_load_b32 v101, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(62)
	v_fmac_f32_e32 v142, v100, v130
	scratch_load_b32 v100, off, off offset:664 ; 4-byte Folded Reload
	v_dual_fmac_f32 v198, v102, v19 :: v_dual_fmac_f32 v197, v103, v20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v102, off, off offset:672
	scratch_load_b32 v103, off, off offset:676
	v_fmac_f32_e32 v143, v98, v131
	v_dual_fmac_f32 v145, v16, v132 :: v_dual_fmac_f32 v196, v13, v138
	s_waitcnt vmcnt(60)
	v_fmac_f32_e32 v115, v99, v139
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v99, off, off offset:660
	scratch_load_b32 v98, off, off offset:656
	v_fmac_f32_e32 v144, v14, v133
	v_dual_fmac_f32 v195, v10, v18 :: v_dual_fmac_f32 v194, v11, v19
	s_waitcnt vmcnt(61)
	v_fmac_f32_e32 v124, v94, v135
	scratch_load_b32 v94, off, off offset:640 ; 4-byte Folded Reload
	s_waitcnt vmcnt(60)
	v_fmac_f32_e32 v117, v95, v141
	s_waitcnt vmcnt(59)
	v_fmac_f32_e32 v118, v93, v17
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v95, off, off offset:644
	scratch_load_b32 v93, off, off offset:636
	v_dual_fmac_f32 v126, v15, v137 :: v_dual_fmac_f32 v193, v12, v20
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[13:16], v128
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(59)
	v_dual_fmac_f32 v105, v9, v130 :: v_dual_fmac_f32 v106, v8, v131
	s_waitcnt vmcnt(58)
	v_fmac_f32_e32 v110, v4, v132
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[9:12], v128 offset:16
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v132, off, off offset:804
	scratch_load_b32 v131, off, off offset:800
	scratch_load_b32 v130, off, off offset:780
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(56)
	v_fmac_f32_e32 v107, v3, v133
	scratch_load_b32 v133, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(55)
	v_fmac_f32_e32 v192, v5, v138
	s_waitcnt vmcnt(53)
	v_dual_fmac_f32 v190, v87, v18 :: v_dual_fmac_f32 v189, v86, v19
	s_waitcnt vmcnt(51) lgkmcnt(1)
	v_dual_fmac_f32 v188, v85, v20 :: v_dual_fmac_f32 v187, v84, v13
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v85, off, off offset:1124
	scratch_load_b32 v86, off, off offset:1116
	scratch_load_b32 v138, off, off offset:844
	scratch_load_b32 v87, off, off offset:1096
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(53)
	v_dual_fmac_f32 v186, v82, v14 :: v_dual_fmac_f32 v185, v75, v15
	s_waitcnt vmcnt(52)
	v_dual_fmac_f32 v184, v73, v16 :: v_dual_fmac_f32 v111, v35, v14
	s_waitcnt vmcnt(50) lgkmcnt(0)
	v_dual_fmac_f32 v112, v34, v15 :: v_dual_fmac_f32 v179, v80, v9
	s_waitcnt vmcnt(48)
	v_dual_fmac_f32 v178, v78, v10 :: v_dual_fmac_f32 v177, v76, v11
	v_dual_fmac_f32 v113, v33, v16 :: v_dual_fmac_f32 v114, v36, v13
	s_waitcnt vmcnt(35)
	v_dual_fmac_f32 v162, v68, v13 :: v_dual_fmac_f32 v161, v66, v14
	s_waitcnt vmcnt(33)
	v_fmac_f32_e32 v160, v57, v16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(18)
	v_fmac_f32_e32 v92, v89, v141
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v89, off, off offset:680
	scratch_load_b32 v141, off, off offset:872
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v159, v59, v15 :: v_dual_fmac_f32 v154, v64, v9
	v_fmac_f32_e32 v104, v31, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(17)
	v_fmac_f32_e32 v100, v7, v136
	scratch_load_b32 v136, off, off offset:836 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(15)
	v_dual_fmac_f32 v102, v32, v9 :: v_dual_fmac_f32 v99, v1, v135
	scratch_load_b32 v135, off, off offset:832 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v94, v2, v134
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[1:4], v128 offset:512
	scratch_load_b32 v134, off, off offset:812 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(13)
	v_fmac_f32_e32 v93, v90, v140
	scratch_load_b32 v90, off, off offset:624 ; 4-byte Folded Reload
	v_dual_fmac_f32 v101, v6, v137 :: v_dual_fmac_f32 v0, v91, v139
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[5:8], v128 offset:528
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v139, off, off offset:864
	scratch_load_b32 v140, off, off offset:868
	scratch_load_b32 v137, off, off offset:840
	v_mov_b32_e32 v91, v0
	scratch_load_b32 v128, off, off offset:772 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v176, v74, v12
	v_fmac_f32_e32 v129, v46, v10
	v_fmac_f32_e32 v127, v42, v12
	v_fmac_f32_e32 v103, v29, v12
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v217, v72, v1
	v_dual_fmac_f32 v171, v83, v2 :: v_dual_fmac_f32 v170, v81, v3
	v_fmac_f32_e32 v168, v79, v4
	v_fmac_f32_e32 v210, v40, v1
	v_dual_fmac_f32 v122, v51, v2 :: v_dual_fmac_f32 v121, v49, v3
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v169, v77, v5
	v_dual_fmac_f32 v215, v69, v6 :: v_dual_fmac_f32 v214, v71, v8
	v_dual_fmac_f32 v213, v53, v6 :: v_dual_fmac_f32 v212, v54, v7
	v_fmac_f32_e32 v211, v55, v8
	v_dual_fmac_f32 v119, v47, v4 :: v_dual_fmac_f32 v120, v45, v5
	v_dual_fmac_f32 v209, v39, v8 :: v_dual_fmac_f32 v208, v25, v1
	v_fmac_f32_e32 v95, v28, v2
	v_dual_fmac_f32 v97, v27, v3 :: v_dual_fmac_f32 v98, v26, v4
	v_dual_fmac_f32 v96, v24, v5 :: v_dual_fmac_f32 v201, v23, v6
	v_dual_fmac_f32 v200, v22, v7 :: v_dual_fmac_f32 v199, v21, v8
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v132, v43, v15 :: v_dual_fmac_f32 v131, v41, v16
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v130, v48, v9 :: v_dual_fmac_f32 v133, v50, v14
	s_waitcnt vmcnt(12)
	v_dual_fmac_f32 v85, v70, v7 :: v_dual_fmac_f32 v86, v56, v1
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v138, v67, v2 :: v_dual_fmac_f32 v89, v30, v11
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v141, v62, v10 :: v_dual_fmac_f32 v136, v63, v4
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v135, v61, v5
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v134, v52, v13
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v90, v88, v17
	scratch_load_b32 v88, off, off offset:1092 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v87, v37, v6
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v139, v60, v11 :: v_dual_fmac_f32 v140, v58, v12
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v137, v65, v3
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v128, v44, v11
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v88, v38, v7
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v6, off, off offset:1176
	scratch_load_b32 v108, off, off offset:1168
	scratch_load_b32 v109, off, off offset:1172
	v_mov_b32_e32 v5, v218
.LBB0_9:                                ; %._crit_edge
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v7, 7, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v10, 0xbfb8aa3b, v186 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v85
	v_dual_mul_f32 v49, 0xbfb8aa3b, v162 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v211
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v7
	v_or_b32_e32 v2, 60, v7
	v_or_b32_e32 v4, 58, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v13
	v_mul_f32_e32 v45, 0xbfb8aa3b, v136
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s0
	v_add_co_u32 v2, s0, s66, v2
	v_add_co_ci_u32_e64 v3, null, s67, 0, s0
	v_add_co_u32 v8, s1, s66, v4
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[72:73], v[0:1]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s67, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[74:75], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[74:75], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 54, v7
	v_or_b32_e32 v4, 52, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s7
	v_add_co_u32 v2, s7, s66, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[72:73], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[74:75], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 50, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[74:75], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s11, s66, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s11
	v_add_co_u32 v8, s11, s66, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[72:73], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s67, 0, s11
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[74:75], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v7
	v_or_b32_e32 v3, 46, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[74:75], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v4, 44, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s15, s66, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s15
	v_add_co_u32 v2, s15, s66, v3
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[72:73], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s15
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[74:75], v[8:9]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 42, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[74:75], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s19, s66, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s19
	v_add_co_u32 v8, s19, s66, v8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[72:73], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, s67, 0, s19
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[74:75], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 40, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[74:75], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 38, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[72:73], v[8:9]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s23, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s67, 0, s23
	v_add_co_u32 v1, s23, s66, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v217
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s23
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[74:75], v[8:9]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[72:73], v[3:4]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[74:75], v[3:4]
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_mul_f32_e32 v9, 0xbfb8aa3b, v184
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v4, 0xbfb8aa3b, v215 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v176
	v_cndmask_b32_e64 v15, 0, 0x42800000, s27
	v_mul_f32_e32 v40, 0xbfb8aa3b, v179
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v85
	v_dual_mul_f32 v33, 0xbfb8aa3b, v159 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v137
	v_dual_mul_f32 v43, 0xbfb8aa3b, v132 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v209
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v14, 0xbfb8aa3b, v214
	v_exp_f32_e32 v15, v15
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_mul_f32_e32 v35, 0xbfb8aa3b, v140
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v215
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v14
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s27
	v_mul_f32_e32 v36, 0xbfb8aa3b, v139
	v_mul_f32_e32 v46, 0xbfb8aa3b, v154
	v_exp_f32_e32 v13, v13
	v_cndmask_b32_e64 v17, 0, 0x42800000, s28
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v217
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s28
	v_ldexp_f32 v14, v15, v14
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v18
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v214
	v_exp_f32_e32 v12, v12
	v_dual_mul_f32 v56, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v127
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v13, v13, v4
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v21, 0, 0x42800000, s28
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s28
	v_mul_f32_e32 v60, 0xbfb8aa3b, v134
	v_mul_f32_e32 v54, 0xbfb8aa3b, v129
	v_cmp_gt_f32_e64 s28, 0xc2fc0000, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v0, v12, v0
	v_dual_mul_f32 v12, 0xbfb8aa3b, v86 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v211
	v_mul_f32_e32 v61, 0xbfb8aa3b, v113
	v_ldexp_f32 v15, v17, v16
	v_mul_f32_e32 v17, 0xbfb8aa3b, v212
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_mul_f32_e32 v12, 0xbfb8aa3b, v213
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v25, 0, 0x42800000, s28
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v17
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_mul_f32_e32 v48, 0xbfb8aa3b, v128
	v_cndmask_b32_e64 v19, 0, 0x42800000, s27
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s27
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v19, 0xbfb8aa3b, v212 :: v_dual_mul_f32 v66, 0xbfb8aa3b, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v16, v16
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v213
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v209
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, s28
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v25, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v14, 1.0, v14 :: v_dual_add_f32 v15, 1.0, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v16, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v210
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v0, v0, v217
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v81, s28, v85, v14, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v12, v17, v12
	v_ldexp_f32 v17, v19, v18
	v_ldexp_f32 v18, v21, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_mul_f32_e32 v19, 0xbfb8aa3b, v87
	v_mul_f32_e32 v21, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v21
	v_dual_mul_f32 v51, 0xbfb8aa3b, v131 :: v_dual_add_f32 v16, 1.0, v16
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s27
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v210
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s27
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v87
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v88
	v_exp_f32_e32 v20, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v84, null, v16, v16, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v21
	v_exp_f32_e32 v23, v23
	v_dual_mul_f32 v8, 0xbfb8aa3b, v185 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v187
	v_dual_mul_f32 v28, 0xbfb8aa3b, v177 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v178
	v_dual_mul_f32 v38, 0xbfb8aa3b, v170 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v171
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v20, v20, v4
	v_mul_f32_e32 v4, 0xbfb8aa3b, v208
	v_ldexp_f32 v19, v21, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_ldexp_f32 v21, v23, v22
	v_mul_f32_e32 v23, 0xbfb8aa3b, v201
	v_ldexp_f32 v22, v25, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_dual_mul_f32 v24, 0xbfb8aa3b, v200 :: v_dual_add_f32 v19, 1.0, v19
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_add_f32 v21, 1.0, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v26, 0, 0x42800000, s27
	v_mul_f32_e32 v25, 0xbfb8aa3b, v199
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s27
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_dual_fmac_f32 v23, 0xbfb8aa3b, v208 :: v_dual_fmac_f32 v26, 0xbfb8aa3b, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v25
	v_dual_mul_f32 v29, 0xbfb8aa3b, v169 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v168
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v70, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v25, 0, 0x42800000, s27
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s27
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v200
	v_mul_f32_e32 v26, 0xbfb8aa3b, v95
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v199
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, vcc_lo, v217, v0, v217
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v24
	v_ldexp_f32 v67, v70, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v73, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v71, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v24, 0xbfb8aa3b, v98
	v_exp_f32_e32 v23, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v22, 1.0, v22 :: v_dual_add_f32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v70, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v72, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v13, v13, v215
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v73, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v14, v14, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v70, v72
	v_dual_mul_f32 v77, v75, v74 :: v_dual_add_f32 v68, 1.0, v68
	v_rcp_f32_e32 v76, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v23, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v71, v77, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v39, 0xbfb8aa3b, v160 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v161
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v72, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v41, 0xbfb8aa3b, v141 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v73, v76, 1.0
	v_fmac_f32_e32 v77, v79, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v63, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v133
	v_dual_mul_f32 v55, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v62, 0xbfb8aa3b, v111
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v80, v76
	v_fmac_f32_e32 v70, v78, v70
	v_div_scale_f32 v78, s27, v215, v13, v215
	v_div_scale_f32 v80, null, v15, v15, v214
	v_fma_f32 v71, -v71, v77, v75
	v_mul_f32_e32 v83, v81, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v78, v70
	v_rcp_f32_e32 v82, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v65, 0xbfb8aa3b, v121 :: v_dual_mul_f32 v30, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v71, v71, v74, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v75, -v72, v79, v78
	v_rcp_f32_e32 v74, v84
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v57, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v64, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v79, v75, v70
	v_fma_f32 v75, -v73, v83, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v80, v82, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v71, v0, v217
	v_fma_f32 v71, -v72, v79, v78
	v_dual_fmac_f32 v83, v75, v76 :: v_dual_fmac_f32 v82, v77, v82
	v_div_scale_f32 v72, s29, v214, v15, v214
	v_fma_f32 v75, -v84, v74, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v70, v71, v70, v79
	v_fma_f32 v71, -v73, v83, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v73, v72, v82
	s_mov_b32 vcc_lo, s28
	v_fmac_f32_e32 v74, v75, v74
	v_div_scale_f32 v75, null, v12, v12, v213
	v_div_scale_f32 v77, s27, v86, v16, v86
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
	v_div_scale_f32 v70, s28, v213, v12, v213
	v_rcp_f32_e32 v78, v80
	s_mov_b32 vcc_lo, s29
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v83, -v81, v71, 1.0
	v_div_fmas_f32 v72, v72, v82, v73
	v_fma_f32 v73, -v84, v79, v77
	v_mul_f32_e32 v77, v70, v76
	s_mov_b32 vcc_lo, s27
	v_fmac_f32_e32 v71, v83, v71
	v_div_scale_f32 v82, s29, v212, v17, v212
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v80, v78, 1.0
	v_div_scale_f32 v84, null, v20, v20, v210
	v_div_fmas_f32 v73, v73, v74, v79
	v_fma_f32 v74, -v75, v77, v70
	v_dual_mul_f32 v79, v82, v71 :: v_dual_fmac_f32 v78, v83, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v84
	v_div_scale_f32 v85, s27, v211, v18, v211
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
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v59, 0xbfb8aa3b, v112 :: v_dual_mul_f32 v34, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v83, v86, v83
	v_div_scale_f32 v86, s30, v210, v20, v210
	v_div_fmas_f32 v70, v70, v76, v77
	v_fma_f32 v76, -v81, v79, v82
	v_fmac_f32_e32 v73, v72, v78
	v_fma_f32 v77, -v74, v75, 1.0
	s_mov_b32 vcc_lo, s29
	v_mul_f32_e32 v72, v86, v83
	v_div_fmas_f32 v71, v76, v71, v79
	v_fma_f32 v76, -v80, v73, v85
	v_fmac_f32_e32 v75, v77, v75
	v_div_scale_f32 v77, null, v21, v21, v88
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v79, -v84, v72, v86
	v_div_scale_f32 v80, s28, v87, v19, v87
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
	s_mov_b32 vcc_lo, s30
	v_fmac_f32_e32 v78, v71, v75
	v_div_fmas_f32 v18, v18, v83, v72
	v_rcp_f32_e32 v72, v73
	v_fmac_f32_e32 v76, v79, v76
	v_div_scale_f32 v79, null, v23, v23, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v81, v18, v20, v210
	v_fma_f32 v18, -v74, v78, v80
	s_mov_b32 vcc_lo, s28
	v_rcp_f32_e32 v80, v79
	v_div_scale_f32 v71, s27, v88, v21, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v73, v72, 1.0
	v_div_fmas_f32 v18, v18, v75, v78
	v_div_scale_f32 v78, s28, v209, v22, v209
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
	v_div_scale_f32 v75, s29, v208, v23, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v86, v82
	v_fma_f32 v85, -v74, v18, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v77, v20, v71
	s_mov_b32 vcc_lo, s27
	v_dual_mul_f32 v84, v75, v80 :: v_dual_mul_f32 v17, v198, v17
	v_fmac_f32_e32 v18, v85, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v20, v71, v76, v20
	v_rcp_f32_e32 v76, v87
	v_fma_f32 v71, -v79, v84, v75
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v85, -v82, v86, 1.0
	v_mul_f32_e32 v19, v78, v72
	v_div_fixup_f32 v88, v20, v21, v88
	s_mov_b32 vcc_lo, s28
	v_fmac_f32_e32 v84, v71, v80
	v_fmac_f32_e32 v86, v85, v86
	v_fma_f32 v77, -v73, v19, v78
	v_div_scale_f32 v71, s30, v200, v68, v200
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v53, 0xbfb8aa3b, v104 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v19, v77, v72
	v_div_scale_f32 v77, s27, v201, v67, v201
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v4, 0xbfb8aa3b, v96 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v20, -v73, v19, v78
	v_fma_f32 v73, -v87, v76, 1.0
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 36, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v19, v20, v72, v19
	v_fma_f32 v20, -v79, v84, v75
	v_dual_mul_f32 v75, v71, v86 :: v_dual_fmac_f32 v76, v73, v76
	v_div_scale_f32 v73, s28, v199, v69, v199
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v80, v84
	v_mul_f32_e32 v78, v73, v76
	v_div_fixup_f32 v79, v19, v22, v209
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v206, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v80, v20, v23, v208
	v_fma_f32 v20, -v87, v78, v73
	v_mul_f32_e32 v21, v77, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v10
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[72:73], v[1:2]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s76, 31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v20, v76
	v_fma_f32 v72, -v74, v21, v77
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0x42800000, s29
	.loc	1 1249 38 is_stmt 1             ; ragged.py:1249:38
	s_add_i32 s65, s76, s65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v21, v72, v18
	v_fma_f32 v72, -v82, v75, v71
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v187
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v19, -v74, v21, v77
	v_fmac_f32_e32 v75, v72, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v207, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v11, v19, v18, v21
	v_fma_f32 v18, -v82, v75, v71
	v_fma_f32 v21, -v87, v78, v73
	s_mov_b32 vcc_lo, s30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v186
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v18, v18, v86, v75
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v21, v76, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	v_exp_f32_e32 v9, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v67, v11, v67, v201
	v_div_fixup_f32 v68, v18, v68, v200
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v202, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v10, v10, v69, v199
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v21, v19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v20, v205, v14 :: v_dual_mul_f32 v21, v204, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v9, v71
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v184
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v19, v203, v16 :: v_dual_mul_f32 v16, v197, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v73, 1.0, v8 :: v_dual_mul_f32 v14, v195, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v0, v0, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v185
	v_exp_f32_e32 v9, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v73, v73, v186
	v_rcp_f32_e32 v72, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v12
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v70
	v_div_scale_f32 v77, vcc_lo, v187, v0, v187
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v193, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v8, v9, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v196, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, s27, v186, v73, v186
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v9, -v69, v72, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v76, 1.0, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v70, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v71, v74, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v194, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v9, v72
	v_div_scale_f32 v78, null, v76, v76, v184
	v_fmac_f32_e32 v75, v8, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v192, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v79, v77, v72 :: v_dual_mul_f32 v8, v190, v67
	v_rcp_f32_e32 v74, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v9, v189, v68 :: v_dual_mul_f32 v10, v188, v10
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v69, v79, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v81, v75
	v_div_scale_f32 v82, s28, v184, v76, v184
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v40
	v_cmp_gt_f32_e64 s30, 0xc2fc0000, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v78, v74, 1.0
	v_fmac_f32_e32 v79, v80, v72
	v_div_scale_f32 v80, null, v67, v67, v185
	v_fmac_f32_e32 v74, v71, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v69, v79, v77
	v_fma_f32 v77, -v70, v68, v81
	v_rcp_f32_e32 v71, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v40, v69, v72, v79
	v_dual_fmac_f32 v68, v77, v75 :: v_dual_mul_f32 v77, v82, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v40, v0, v187
	v_fma_f32 v40, -v70, v68, v81
	v_fma_f32 v70, -v78, v77, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v179
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v80, v71, 1.0
	v_div_fmas_f32 v31, v40, v75, v68
	v_fmac_f32_e32 v77, v70, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_cndmask_b32_e64 v75, 0, 0x42800000, s30
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v78, v77, v82
	v_div_fixup_f32 v31, v31, v73, v186
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v178
	v_cmp_gt_f32_e64 s30, 0xc2fc0000, v50
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v69, v72, v69
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v79, v71
	v_div_scale_f32 v79, s29, v185, v67, v185
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v177
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v74, v78, v74, v77
	v_mul_f32_e32 v40, v79, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v80, v40, v79
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v28, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v69, v69, v179
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v80, v40, v79
	v_rcp_f32_e32 v77, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v68
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s29
	v_div_fmas_f32 v27, v27, v71, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v72, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v75, v77, 1.0
	v_div_fixup_f32 v27, v27, v67, v185
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v72, 1.0, v28 :: v_dual_fmac_f32 v77, v70, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, vcc_lo, v179, v69, v179
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v74, v76, v184
	v_div_scale_f32 v71, null, v40, v40, v178
	v_mul_f32_e32 v81, v70, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v78, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v183, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v71
	v_div_scale_f32 v80, null, v72, v72, v177
	v_fma_f32 v73, -v75, v81, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v182, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v80
	v_fmac_f32_e32 v81, v73, v77
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v78, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v71, v79, 1.0
	v_div_scale_f32 v73, s27, v178, v40, v178
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v75, v81, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v68, 1.0, v68 :: v_dual_fmac_f32 v79, v74, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v80, v67, 1.0
	v_div_fmas_f32 v70, v70, v77, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v68, v68, v176
	v_fmac_f32_e32 v67, v74, v67
	v_div_scale_f32 v74, s28, v177, v72, v177
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v83, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v180, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v70, v69, v179
	v_mul_f32_e32 v81, v74, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v80, v81, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v76, v77, 1.0
	v_fmac_f32_e32 v81, v69, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v77, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v38, v38, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v73, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v181, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v170
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v78, -v71, v75, v73
	v_fma_f32 v74, -v80, v81, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v75, v78, v79
	v_fma_f32 v71, -v71, v75, v73
	v_div_scale_f32 v73, s29, v176, v68, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v71, v71, v79, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_exp_f32_e32 v32, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v75, v73, v77 :: v_dual_add_f32 v70, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v76, v75, v73
	v_div_scale_f32 v80, null, v70, v70, v171
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v74, v67, v81
	v_rcp_f32_e32 v69, v80
	v_fmac_f32_e32 v75, v38, v77
	v_div_fixup_f32 v38, v71, v40, v178
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v67, v72, v177
	s_mov_b32 vcc_lo, s29
	v_fma_f32 v40, -v76, v75, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v71, v71, v170
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v80, v69, 1.0
	v_div_fmas_f32 v40, v40, v77, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v173, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v73, v69
	v_div_scale_f32 v73, s27, v171, v70, v171
	v_div_fixup_f32 v29, v40, v68, v176
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v73, v69
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v76, -v72, v74, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v174, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v80, v75, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v76, v74
	v_div_scale_f32 v76, s28, v170, v71, v170
	v_fmac_f32_e32 v75, v77, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v76, v74
	v_fma_f32 v73, -v80, v75, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v72, v77, v76
	v_div_fmas_f32 v69, v73, v69, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v68, v68, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v80, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v172, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v69, v69, v70, v171
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v72, v77, v76
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v68 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v162
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v70, v74, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, s29
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v168
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v0, v0, v169
	v_div_fixup_f32 v42, v42, v71, v170
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v161
	v_exp_f32_e32 v67, v79
	v_exp_f32_e32 v75, v75
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v165, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v74
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s29
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v33
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v67, v67, v78
	v_ldexp_f32 v39, v75, v73
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_ldexp_f32 v70, v74, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v75, 0xbfb8aa3b, v160 :: v_dual_add_f32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v67, v67, v168
	v_div_scale_f32 v49, s27, v168, v67, v168
	s_mov_b32 vcc_lo, s27
	v_rcp_f32_e32 v79, v78
	v_div_scale_f32 v80, null, v70, v70, v161
	v_fma_f32 v68, -v78, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v68, v79
	v_rcp_f32_e32 v68, v72
	v_mul_f32_e32 v76, v49, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v71, -v78, v76, v49
	v_fma_f32 v77, -v72, v68, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v71, v79
	v_fmac_f32_e32 v68, v77, v68
	v_div_scale_f32 v77, s28, v169, v0, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v78, v76, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v78, 1.0, v39 :: v_dual_mul_f32 v71, v77, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v49, v79, v76
	v_div_scale_f32 v74, null, v78, v78, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v72, v71, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_fmac_f32_e32 v71, v39, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v72, v71, v77
	v_rcp_f32_e32 v77, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s29
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v49, v49, v68, v71
	v_div_scale_f32 v68, vcc_lo, v162, v78, v162
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v74, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v39, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v49, v0, v169
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v49, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v80, v77, 1.0
	v_fmac_f32_e32 v75, v79, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v175, v29
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v33, v67, v168
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v33, v167, v0 :: v_dual_mul_f32 v76, v68, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v71, v77
	v_div_scale_f32 v71, s27, v161, v70, v161
	v_div_scale_f32 v79, null, v73, v73, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v74, v76, v68
	v_mul_f32_e32 v67, v71, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v72, v49, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v81, v79
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v49, v163, v69 :: v_dual_fmac_f32 v76, v0, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v80, v67, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v74, v76, v68
	v_fmac_f32_e32 v67, v0, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v72, null, v69, v69, v159
	v_fma_f32 v0, -v79, v81, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v68, v68, v75, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v80, v67, v71
	v_div_scale_f32 v46, s28, v160, v73, v160
	v_fmac_f32_e32 v81, v0, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_fixup_f32 v68, v68, v78, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v154
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v71, v77, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v46, v81
	v_div_scale_f32 v77, s27, v159, v69, v159
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v72, v0, 1.0
	v_div_fixup_f32 v67, v67, v70, v161
	v_fma_f32 v70, -v79, v71, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v39, v166, v39 :: v_dual_fmac_f32 v0, v76, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v70, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v41, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v41, v77, v0 :: v_dual_fmac_f32 v76, 0xbfb8aa3b, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v79, v71, v46
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v78, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v76, v76
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v72, v41, v77
	v_div_scale_f32 v79, null, v78, v78, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v35, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v41, v36, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v74, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v76, v75
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fmas_f32 v46, v46, v81, v71
	v_fma_f32 v71, -v72, v41, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v140
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v79, v74, 1.0
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v72, v72, v141
	v_div_fmas_f32 v0, v71, v0, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v36, v74
	v_div_scale_f32 v77, vcc_lo, v154, v78, v154
	v_rcp_f32_e32 v71, v70
	v_div_fixup_f32 v36, v46, v73, v160
	v_div_fixup_f32 v0, v0, v69, v159
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v73, v77, v74 :: v_dual_add_f32 v76, 1.0, v35
	v_div_scale_f32 v81, s27, v141, v72, v141
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v158, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v41, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v79, v73, v77
	v_div_scale_f32 v69, null, v76, v76, v139
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v70, v71, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v73, v80, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v156, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v46, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v82, null, v0, v0, v140
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v155, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v79, v73, v77
	v_mul_f32_e32 v67, v81, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v79, v82
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v157, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v69, v75, 1.0
	v_div_fmas_f32 v63, v68, v74, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v70, v67, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v80, v75
	v_div_scale_f32 v80, s28, v139, v76, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v77, v71
	v_fma_f32 v77, -v82, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v74, v80, v75
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v70, v67, v81
	v_fmac_f32_e32 v79, v77, v79
	v_div_scale_f32 v77, s29, v140, v0, v140
	v_div_fixup_f32 v63, v63, v78, v154
	v_fma_f32 v78, -v69, v74, v80
	v_div_fmas_f32 v50, v70, v71, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v67, v77, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s30
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_ldexp_f32 v68, v73, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v78, v75
	v_fma_f32 v45, -v82, v67, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v137
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v69, v74, v80
	v_fmac_f32_e32 v67, v45, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v71
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v136
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v68, v68, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s30
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
	v_div_fixup_f32 v50, v50, v72, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s29
	v_div_fmas_f32 v44, v44, v79, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v74, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v71, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v135
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v44, v0, v140
	v_div_scale_f32 v74, null, v67, v67, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, vcc_lo, v138, v68, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v77, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v79, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v78, 1.0, v45 :: v_dual_mul_f32 v81, v73, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v153, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v45, v69, v76, v139
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v151, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v78, v78, v136
	v_fma_f32 v72, -v71, v81, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v77, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v74, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v69, v80
	v_div_scale_f32 v70, s27, v137, v67, v137
	v_dual_fmac_f32 v81, v72, v75 :: v_dual_add_f32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v79, v76, v79
	v_fma_f32 v71, -v71, v81, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v76, null, v0, v0, v135
	v_fma_f32 v72, -v80, v69, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v73, v70, v79
	v_div_fmas_f32 v71, v71, v75, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v76
	v_fmac_f32_e32 v69, v72, v69
	v_div_scale_f32 v72, s28, v136, v78, v136
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v83, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v74, v73, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v150, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v71, v68, v138
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
	v_div_scale_f32 v74, s29, v135, v0, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
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
	s_mov_b32 vcc_lo, s28
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v51, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v69, v72, v69, v81
	v_rcp_f32_e32 v68, v80
	v_fmac_f32_e32 v73, v52, v75
	v_div_fixup_f32 v52, v70, v67, v137
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v69, v78, v136
	v_fma_f32 v69, -v76, v73, v74
	s_mov_b32 vcc_lo, s29
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
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v74, v68
	v_div_scale_f32 v74, s27, v134, v71, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v69, v0, v135
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
	v_dual_mul_f32 v43, v149, v0 :: v_dual_add_f32 v0, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v80, v76, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v73, v77, v73
	v_div_scale_f32 v77, s28, v133, v67, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v75, v75
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v0, v0, v131
	v_fmac_f32_e32 v76, v70, v68
	v_mul_f32_e32 v70, v77, v73
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v79, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v147, v52
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
	v_div_scale_f32 v55, s27, v131, v0, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v74, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v130
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fmas_f32 v54, v71, v73, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s29
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
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v77, v74
	v_div_scale_f32 v77, s28, v132, v69, v132
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
	s_mov_b32 vcc_lo, s27
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
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v47, v55, v79, v73
	v_div_scale_f32 v80, null, v70, v70, v129
	v_fma_f32 v55, -v72, v67, v77
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s29
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
	v_mul_f32_e32 v47, v145, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v74, v77
	v_div_scale_f32 v74, s27, v129, v70, v129
	v_fma_f32 v55, -v71, v75, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v73, v73, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v81, v74, v77
	v_fmac_f32_e32 v75, v55, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v144, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v82, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v69, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v80, v81, v74
	v_fma_f32 v67, -v71, v75, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v55, v142, v68 :: v_dual_mul_f32 v54, v143, v54
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
	v_div_scale_f32 v68, s28, v128, v73, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v122
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v75, v68, v82
	v_div_fmas_f32 v71, v71, v77, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v69, v66, 1.0
	v_div_scale_f32 v65, s27, v127, v0, v127
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
	v_mul_f32_e32 v45, v152, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v67, v67, v78, v130
	v_fma_f32 v68, -v79, v75, v68
	v_fma_f32 v78, -v69, v57, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v77, v77
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v119
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
	s_mov_b32 vcc_lo, s28
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
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v75, v75, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v77, 1.0, v56 :: v_dual_fmac_f32 v78, v69, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s28, v122, v71, v122
	v_rcp_f32_e32 v80, v76
	v_div_fmas_f32 v56, v65, v66, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v65, null, v77, v77, v119
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
	s_mov_b32 vcc_lo, s28
	v_div_scale_f32 v81, s29, v119, v77, v119
	v_fmac_f32_e32 v66, v73, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v126, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v74, v80
	v_div_scale_f32 v73, s27, v121, v75, v121
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
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v114
	v_cndmask_b32_e64 v83, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v76, v79, v73
	v_fmac_f32_e32 v70, v67, v72
	v_fmac_f32_e32 v82, v64, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v78
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v111
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s27
	v_div_scale_f32 v62, s28, v120, v0, v120
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
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v113
	v_ldexp_f32 v61, v61, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v65, v72, v70
	v_fmac_f32_e32 v76, v78, v82
	v_div_scale_f32 v70, null, v67, v67, v114
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
	v_div_scale_f32 v78, null, v61, v61, v111
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	v_div_fixup_f32 v73, v73, v75, v121
	v_div_fmas_f32 v62, v62, v82, v76
	v_rcp_f32_e32 v76, v78
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v59, v71
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v112
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v70, v74, 1.0
	v_div_fixup_f32 v0, v62, v0, v120
	v_div_scale_f32 v79, vcc_lo, v114, v67, v114
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v71, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v78, v76, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v146, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v75, v75, v113
	v_div_fixup_f32 v65, v65, v77, v119
	v_dual_mul_f32 v77, v79, v74 :: v_dual_fmac_f32 v76, v64, v76
	v_div_scale_f32 v80, s27, v111, v61, v111
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v118, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v0, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v117, v65
	v_mul_f32_e32 v65, v116, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v70, v77, v79
	v_mul_f32_e32 v81, v80, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v148, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v62, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v115, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v73, v74
	v_fma_f32 v66, -v78, v81, v80
	v_fma_f32 v82, -v71, v0, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s28, v113, v75, v113
	v_fma_f32 v70, -v70, v77, v79
	v_fmac_f32_e32 v81, v66, v76
	v_fmac_f32_e32 v0, v82, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v62, v62, v112
	v_div_fmas_f32 v70, v70, v74, v77
	v_fma_f32 v74, -v78, v81, v80
	s_mov_b32 vcc_lo, s27
	v_mul_f32_e32 v58, v73, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v83, 0, 0x42800000, s29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v66, v82
	v_div_fmas_f32 v74, v74, v76, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v71, v58, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v83, 0xbfb8aa3b, v102
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s29
	v_cmp_gt_f32_e64 s29, 0xc2fc0000, v26
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v77, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v83
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v104
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v82, v66, 1.0
	v_div_scale_f32 v34, s27, v112, v62, v112
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
	s_mov_b32 vcc_lo, s28
	v_dual_mul_f32 v73, v34, v66 :: v_dual_add_f32 v76, 1.0, v76
	v_div_fmas_f32 v0, v71, v0, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v80
	v_ldexp_f32 v77, v78, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v82, v73, v34
	v_div_scale_f32 v79, null, v76, v76, v102
	v_div_fixup_f32 v0, v0, v75, v113
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v77
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v58, v66
	v_div_fixup_f32 v58, v70, v67, v114
	v_rcp_f32_e32 v70, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_ldexp_f32 v30, v71, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v75, v75, v104
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
	s_mov_b32 vcc_lo, s27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v66, v73
	v_div_scale_f32 v73, null, v30, v30, v89
	v_fmac_f32_e32 v70, v77, v70
	v_div_scale_f32 v77, vcc_lo, v102, v76, v102
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v53, v78, 1.0
	v_div_fixup_f32 v34, v34, v62, v112
	v_div_scale_f32 v82, s27, v104, v75, v104
	v_mul_f32_e32 v81, v77, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v78, v66, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v80, v73
	v_div_fixup_f32 v67, v74, v61, v111
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v66, v110, v34 :: v_dual_mul_f32 v61, v107, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v79, v81, v77
	v_mul_f32_e32 v34, v82, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v106, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v0, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v0, -v53, v34, v82
	v_fma_f32 v74, -v73, v80, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v62, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v105, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v0, v78
	v_fmac_f32_e32 v80, v74, v80
	v_div_scale_f32 v74, s28, v89, v30, v89
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v58, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v79, v81, v77
	v_fma_f32 v53, -v53, v34, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v0, v74, v80
	v_div_fmas_f32 v62, v62, v70, v81
	s_mov_b32 vcc_lo, s27
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v70, -v73, v0, v74
	v_div_fmas_f32 v26, v53, v78, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, s29
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_cmp_gt_f32_e64 s27, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v70, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s29
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v95
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v73, v0, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v53
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v58, v58, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v4, v77
	v_cndmask_b32_e64 v77, 0, 0x42800000, s27
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v73, v80, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v53, v34
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v96
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
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s27
	v_ldexp_f32 v4, v4, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v26, v75, v104
	v_div_scale_f32 v70, null, v30, v30, v95
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v79, -v25, v24, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v53, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, vcc_lo, v103, v58, v103
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v4, v4, v97
	v_fmac_f32_e32 v24, v79, v24
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v70
	v_div_scale_f32 v73, null, v53, v53, v98
	v_rcp_f32_e32 v79, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v83, null, v34, v34, v96
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v57, v125, v57 :: v_dual_mul_f32 v78, v74, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v81, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v85, v83
	v_fma_f32 v80, -v70, v75, 1.0
	v_div_fixup_f32 v62, v62, v76, v102
	v_fma_f32 v82, -v25, v78, v74
	v_fma_f32 v84, -v77, v79, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v76, v99, v26 :: v_dual_fmac_f32 v75, v80, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, s27, v95, v30, v95
	v_fmac_f32_e32 v78, v82, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v73, v81, 1.0
	v_fmac_f32_e32 v79, v84, v79
	v_div_scale_f32 v84, s28, v97, v4, v97
	v_fma_f32 v87, -v83, v85, 1.0
	v_dual_mul_f32 v86, v80, v75 :: v_dual_fmac_f32 v81, v82, v81
	v_div_scale_f32 v82, s29, v98, v53, v98
	v_fma_f32 v25, -v25, v78, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v88, v84, v79 :: v_dual_fmac_f32 v85, v87, v85
	v_div_scale_f32 v87, s30, v96, v34, v96
	v_fma_f32 v74, -v70, v86, v80
	v_mul_f32_e32 v89, v82, v81
	v_div_fmas_f32 v24, v25, v24, v78
	v_fma_f32 v25, -v77, v88, v84
	v_mul_f32_e32 v78, v87, v85
	v_fmac_f32_e32 v86, v74, v75
	v_fma_f32 v74, -v73, v89, v82
	v_div_fixup_f32 v24, v24, v58, v103
	v_fmac_f32_e32 v88, v25, v79
	v_fma_f32 v25, -v83, v78, v87
	v_fma_f32 v58, -v70, v86, v80
	v_fmac_f32_e32 v89, v74, v81
	s_mov_b32 vcc_lo, s27
	v_fma_f32 v70, -v77, v88, v84
	v_fmac_f32_e32 v78, v25, v85
	v_div_fmas_f32 v58, v58, v75, v86
	v_fma_f32 v25, -v73, v89, v82
	s_mov_b32 vcc_lo, s28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v100, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v83, v78, v87
	v_div_fmas_f32 v70, v70, v79, v88
	s_mov_b32 vcc_lo, s29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v94, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v81, v89
	s_mov_b32 vcc_lo, s30
	v_div_fixup_f32 v4, v70, v4, v97
	v_div_fmas_f32 v75, v73, v85, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v101, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v25, v53, v98
	v_div_fixup_f32 v25, v58, v30, v95
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v93, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v75, v34, v96
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, |v28|, |v40|, |v38|
	v_max3_f32 v26, |v33|, |v22|, |v20|
.Ltmp6:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v91, v25
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
	v_mul_f32_e32 v58, v92, v24
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
	s_mov_b32 s27, 0x76543210
	v_max_f32_e64 v30, |v71|, |v67|
	v_max3_f32 v34, |v61|, |v77|, |v76|
	v_max3_f32 v62, |v75|, |v70|, |v58|
	v_max3_f32 v78, |v53|, |v8|, |v9|
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v79, v0, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v25, v4, v26
	v_max3_f32 v26, |v74|, |v73|, |v11|
	v_max3_f32 v30, v30, |v66|, v34
	v_max3_f32 v34, v62, v78, |v10|
	v_max_f32_e32 v62, v79, v79
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v78, v24, s27, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v79, v25, s27, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v84, 8, v191
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v30, v26, v34
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v34, 3, v191
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v80, v78, v78 :: v_dual_max_f32 v81, v79, v79
	v_max_f32_e32 v78, v0, v62
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v30, 4, v191
	v_lshl_add_u32 v62, v34, 9, 0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v24, v80 :: v_dual_max_f32 v80, v25, v81
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v24, 4, v191
	v_lshlrev_b32_e32 v81, 5, v34
	v_permlanex16_b32 v0, v26, s27, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v25, 0x60, v191
	v_lshlrev_b32_e32 v83, 1, v109
	v_lshl_add_u32 v62, v24, 2, v62
	v_and_or_b32 v82, 0x680, v30, v81
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v85, v81, v25
	v_lshrrev_b32_e32 v86, 3, v109
	v_lshl_add_u32 v62, v84, 4, v62
	v_xor_b32_e32 v82, v82, v25
	v_lshl_add_u32 v87, v24, 6, 0
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v26, v0
.Ltmp24:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v26, 34, v7
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v62, v83, v85
.Ltmp26:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s28, s66, v3
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v62, v87, v86, v82
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp28:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s27, s66, v26
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v0, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v62
.Ltmp30:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 32, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s27
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[74:75], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 30, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s33, s66, v0
	v_add_co_ci_u32_e64 v4, null, s67, 0, s28
	v_add_co_ci_u32_e64 v1, null, s67, 0, s33
	v_add_co_u32 v2, s33, s66, v2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[74:75], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s33
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[74:75], v[0:1]
.Ltmp31:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, v78
	v_mov_b32_e32 v0, v79
.Ltmp32:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[72:73], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[74:75], v[2:3]
.Ltmp33:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v78, v78
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v79, v79
.Ltmp36:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 28, v7
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v2, v80
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v0, v0, v0
	v_max_f32_e32 v62, v81, v81
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v4
	v_max_f32_e32 v4, v26, v0
	v_max_f32_e32 v26, v80, v80
.Ltmp41:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s37, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s37
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v80, v4
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v78, v81, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
.Ltmp44:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[74:75], v[0:1]
.Ltmp45:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v79, v3 :: v_dual_max_f32 v2, v26, v2
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v62, v78
	v_dual_max_f32 v1, v80, v80 :: v_dual_lshlrev_b32 v34, 4, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v62, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v78, v26
.Ltmp48:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[72:73], v[82:83]
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v4, v1 :: v_dual_max_f32 v0, v79, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v62, v62 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[74:75], v[82:83]
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v80, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v3, v0 :: v_dual_max_f32 v3, v62, v62
	v_dual_max_f32 v4, v78, v78 :: v_dual_add_nc_u32 v83, 0, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v62, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v79, 26, v7
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v80, v80
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v62, v62 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v81, 24, v7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v86.h, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s39, s66, v79
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v82 :: v_dual_lshlrev_b32 v82, 3, v84
	v_max_f32_e32 v2, v2, v3
	v_max_f32_e32 v3, v26, v4
	v_max_f32_e32 v62, v62, v62
.Ltmp60:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s67, 0, s39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v4, v2
.Ltmp62:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s40, s66, v81
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v62
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v62, 1, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v81, null, s67, 0, s40
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[72:73], v[78:79]
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[72:73], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[74:75], v[80:81]
.Ltmp68:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v4
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 5, v24
	v_add_nc_u32_e32 v24, 0, v34
	v_mov_b32_e32 v26, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v26
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v26, v83, v62, v82
	v_add3_u32 v4, v24, v4, v82
.Ltmp72:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v62, 22, v7
	v_or_b32_e32 v24, 18, v7
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v26, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v4
.Ltmp74:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 20, v7
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v82, s40, s66, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v83, null, s67, 0, s40
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[74:75], v[78:79]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s45, s66, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v79, null, s67, 0, s45
	v_add_co_u32 v80, s45, s66, v24
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v81, null, s67, 0, s45
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[72:73], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[74:75], v[78:79]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v78, s49, s66, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v1, v1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[72:73], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[74:75], v[80:81]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s67, 0, s49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v24, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 14, v7
	v_or_b32_e32 v4, 12, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[72:73], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[74:75], v[82:83]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v26, null, 0x40e00000, 0x40e00000, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s49, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v81, null, s67, 0, s49
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v0, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v82, s49, s66, v4
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v4, 10, v7
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v83, null, s67, 0, s49
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[72:73], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[74:75], v[78:79]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v78, s55, s66, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v62, -v26, v0, 1.0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 8, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[72:73], v[80:81]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[74:75], v[80:81]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v79, null, s67, 0, s55
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v0, v62, v0
	v_div_scale_f32 v62, vcc_lo, v24, 0x40e00000, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v80, s55, s66, v4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v4, v62, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v81, null, s67, 0, s55
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[72:73], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[74:75], v[78:79]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v78, -v26, v4, v62
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[72:73], v[82:83]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[74:75], v[82:83]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[72:73], v[80:81]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v4, v78, v0
	v_max_f32_e32 v78, 0x2b8cbccc, v3
	v_div_scale_f32 v82, null, 0x40e00000, 0x40e00000, v2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[74:75], v[80:81]
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
	v_div_scale_f32 v62, s61, v2, 0x40e00000, v2
	v_div_fmas_f32 v4, v26, v0, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v26, v62, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s59, s66, v79
	v_add_co_ci_u32_e64 v1, null, s67, 0, s59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v24
	v_fma_f32 v24, -v82, v26, v62
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s59, s[72:73], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[74:75], v[0:1]
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
	v_div_scale_f32 v79, s62, v80, 0x40e00000, v80
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v87, v79, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v3, v87, v79
	v_fmac_f32_e32 v87, v24, v81
	v_div_scale_f32 v62, s63, v78, 0x40e00000, v78
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
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v82, v82, v37
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v26, v3, v85
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s61, s66, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v83, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.l, v2.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v1, -v84, v26, v62
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s61
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
	v_div_scale_f32 v91, s61, v31, v82, v31
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
	v_div_scale_f32 v93, s62, v27, v82, v27
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
	v_div_scale_f32 v88, s63, v28, v82, v28
	v_fmac_f32_e32 v0, v94, v0
	v_div_scale_f32 v94, null, v82, v82, v38
	v_div_fixup_f32 v37, v81, v82, v37
	v_fma_f32 v81, -v84, v92, v91
	v_fma_f32 v84, -v89, v83, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v96, v94
	v_mul_f32_e32 v91, v88, v0
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v97, -v95, v87, 1.0
	v_div_fmas_f32 v81, v81, v85, v92
	v_fmac_f32_e32 v83, v84, v86
	v_fma_f32 v84, -v90, v91, v88
	v_div_scale_f32 v85, s61, v40, v82, v40
	v_fmac_f32_e32 v87, v97, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v94, v96, 1.0
	v_div_fixup_f32 v31, v81, v82, v31
	v_fma_f32 v81, -v89, v83, v93
	v_fmac_f32_e32 v91, v84, v0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v96, v92, v96
	v_div_scale_f32 v92, null, v82, v82, v32
	v_mul_f32_e32 v84, v85, v87
	v_div_scale_f32 v89, s64, v38, v82, v38
	v_div_fmas_f32 v81, v81, v86, v83
	v_fma_f32 v83, -v90, v91, v88
	v_rcp_f32_e32 v88, v92
	v_div_scale_f32 v93, null, v82, v82, v29
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v86, -v95, v84, v85
	v_mul_f32_e32 v90, v89, v96
	v_div_fmas_f32 v0, v83, v0, v91
	v_rcp_f32_e32 v83, v93
	v_div_fixup_f32 v27, v81, v82, v27
	v_fmac_f32_e32 v84, v86, v87
	v_fma_f32 v86, -v94, v90, v89
	v_fma_f32 v91, -v92, v88, 1.0
	v_div_fixup_f32 v28, v0, v82, v28
	v_div_scale_f32 v81, s62, v32, v82, v32
	v_fma_f32 v0, -v95, v84, v85
	v_fmac_f32_e32 v90, v86, v96
	v_fmac_f32_e32 v88, v91, v88
	v_fma_f32 v85, -v93, v83, 1.0
	v_div_scale_f32 v86, null, v82, v82, v23
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v91, null, v82, v82, v49
	v_div_fmas_f32 v0, v0, v87, v84
	v_fma_f32 v84, -v94, v90, v89
	v_mul_f32_e32 v87, v81, v88
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v78, v80, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v83, v85, v83 :: v_dual_and_b32 v80, 0xffff0000, v26
	v_rcp_f32_e32 v85, v86
	v_div_scale_f32 v89, s61, v29, v82, v29
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v40, v0, v82, v40
	v_div_fmas_f32 v84, v84, v96, v90
	v_fma_f32 v90, -v92, v87, v81
	v_mul_f32_e32 v94, v89, v83
	v_rcp_f32_e32 v96, v91
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v86, v85, 1.0
	v_fmac_f32_e32 v87, v90, v88
	v_fma_f32 v0, -v93, v94, v89
	v_div_scale_f32 v90, null, v82, v82, v42
	v_div_fixup_f32 v38, v84, v82, v38
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v84, s63, v23, v82, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v91, v96, 1.0
	v_fma_f32 v81, -v92, v87, v81
	v_fmac_f32_e32 v94, v0, v83
	v_rcp_f32_e32 v92, v90
	v_mul_f32_e32 v0, v84, v85
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s64, v49, v82, v49
	v_div_fmas_f32 v81, v81, v88, v87
	v_fma_f32 v87, -v93, v94, v89
	v_div_scale_f32 v97, null, v82, v82, v39
	s_mov_b32 vcc_lo, s61
	v_dual_mul_f32 v89, v95, v96 :: v_dual_and_b32 v78, 0xffff0000, v2
	v_fma_f32 v88, -v86, v0, v84
	v_fma_f32 v93, -v90, v92, 1.0
	v_div_fmas_f32 v83, v87, v83, v94
	v_rcp_f32_e32 v87, v97
	v_div_fixup_f32 v32, v81, v82, v32
	v_fmac_f32_e32 v0, v88, v85
	v_fma_f32 v88, -v91, v89, v95
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, s61, v42, v82, v42
	v_div_fixup_f32 v29, v83, v82, v29
	v_fma_f32 v81, -v86, v0, v84
	v_fmac_f32_e32 v89, v88, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v83, v93, v92
	v_fma_f32 v84, -v97, v87, 1.0
	v_div_scale_f32 v86, null, v82, v82, v33
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v88, s62, v39, v82, v39
	v_div_fmas_f32 v0, v81, v85, v0
	v_fma_f32 v81, -v91, v89, v95
	v_fma_f32 v85, -v90, v83, v93
	v_fmac_f32_e32 v87, v84, v87
	v_rcp_f32_e32 v84, v86
	v_div_scale_f32 v91, null, v82, v82, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v85, v92
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v23, v0, v82, v23
	v_rcp_f32_e32 v85, v91
	v_div_fmas_f32 v81, v81, v96, v89
	v_mul_f32_e32 v89, v88, v87
	v_fma_f32 v0, -v90, v83, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v86, v84, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v49, v81, v82, v49
	v_fma_f32 v81, -v97, v89, v88
	v_div_scale_f32 v90, s63, v33, v82, v33
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
	v_div_scale_f32 v92, s61, v22, v82, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v93
	v_div_fixup_f32 v42, v0, v82, v42
	v_fma_f32 v0, -v97, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v95, v92, v85
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v87, v89
	v_fmac_f32_e32 v81, v88, v84
	v_fma_f32 v87, -v91, v95, v92
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v88, s62, v20, v82, v20
	v_fma_f32 v89, -v93, v96, 1.0
	v_div_fixup_f32 v39, v0, v82, v39
	v_fma_f32 v0, -v86, v81, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v95, v87, v85 :: v_dual_mul_f32 v86, v88, v83
	v_fmac_f32_e32 v96, v89, v96
	v_div_scale_f32 v89, null, v80, v80, v46
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v87, s64, v21, v82, v21
	v_div_fmas_f32 v0, v0, v84, v81
	v_fma_f32 v81, -v91, v95, v92
	v_fma_f32 v84, -v94, v86, v88
	v_rcp_f32_e32 v90, v89
	v_div_scale_f32 v92, null, v80, v80, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v87, v96 :: v_dual_fmac_f32 v86, v84, v83
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v84, v92
	v_div_fmas_f32 v81, v81, v85, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v93, v91, v87
	v_div_fixup_f32 v33, v0, v82, v33
	v_fma_f32 v95, -v89, v90, 1.0
	v_fma_f32 v0, -v94, v86, v88
	v_div_fixup_f32 v22, v81, v82, v22
	v_fmac_f32_e32 v91, v85, v96
	v_div_scale_f32 v81, s61, v46, v80, v46
	v_fmac_f32_e32 v90, v95, v90
	v_fma_f32 v85, -v92, v84, 1.0
	v_div_scale_f32 v88, null, v80, v80, v35
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v83, v86
	v_fma_f32 v83, -v93, v91, v87
	v_mul_f32_e32 v86, v81, v90
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v87, s62, v41, v80, v41
	v_div_scale_f32 v93, null, v80, v80, v36
	s_mov_b32 vcc_lo, s64
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
	v_div_scale_f32 v82, s63, v35, v80, v35
	v_div_scale_f32 v83, null, v80, v80, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v93, v96, 1.0
	v_fma_f32 v81, -v89, v86, v81
	v_fmac_f32_e32 v94, v0, v84
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v0, v82, v85
	v_rcp_f32_e32 v89, v83
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v91, s64, v36, v80, v36
	v_div_fmas_f32 v81, v81, v90, v86
	v_fma_f32 v86, -v92, v94, v87
	v_div_scale_f32 v95, null, v80, v80, v50
	s_mov_b32 vcc_lo, s62
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
	v_div_scale_f32 v92, s61, v60, v80, v60
	v_fmac_f32_e32 v90, v87, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v95, v86, 1.0
	v_div_scale_f32 v87, null, v80, v80, v45
	v_fma_f32 v81, -v88, v0, v82
	v_mul_f32_e32 v82, v92, v89
	v_fmac_f32_e32 v86, v84, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v87
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v88, s62, v50, v80, v50
	v_div_fmas_f32 v0, v81, v85, v0
	v_fma_f32 v81, -v93, v90, v91
	v_fma_f32 v85, -v83, v82, v92
	v_div_scale_f32 v91, null, v80, v80, v44
	s_mov_b32 vcc_lo, s64
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
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v36, v81, v80, v36
	v_fma_f32 v81, -v95, v90, v88
	v_div_scale_f32 v83, s63, v45, v80, v45
	v_fma_f32 v92, -v91, v85, 1.0
	v_div_fmas_f32 v0, v0, v89, v82
	v_rcp_f32_e32 v82, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v81, v86 :: v_dual_mul_f32 v81, v83, v84
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v89, s61, v44, v80, v44
	v_div_scale_f32 v92, null, v80, v80, v63
	v_div_fixup_f32 v60, v0, v80, v60
	v_fma_f32 v0, -v95, v90, v88
	v_fma_f32 v88, -v87, v81, v83
	v_mul_f32_e32 v94, v89, v85
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v81, v88, v84
	v_div_fmas_f32 v0, v0, v86, v90
	v_fma_f32 v86, -v91, v94, v89
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s62, v19, v80, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v50, v0, v80, v50
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v0, -v87, v81, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v94, v86, v85 :: v_dual_mul_f32 v83, v88, v82
	v_div_scale_f32 v87, null, v80, v80, v52
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v86, s64, v63, v80, v63
	v_div_fmas_f32 v0, v0, v84, v81
	v_fma_f32 v81, -v91, v94, v89
	v_fma_f32 v84, -v93, v83, v88
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v80, v80, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v86, v95 :: v_dual_fmac_f32 v83, v84, v82
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v81, v81, v85, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v92, v90, v86
	v_div_fixup_f32 v45, v0, v80, v45
	v_fma_f32 v94, -v87, v89, 1.0
	v_fma_f32 v0, -v93, v83, v88
	v_div_fixup_f32 v44, v81, v80, v44
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v81, s61, v52, v80, v52
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v85, -v91, v84, 1.0
	v_div_scale_f32 v88, null, v80, v80, v43
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v96, null, v80, v80, v16
	v_div_fmas_f32 v0, v0, v82, v83
	v_fma_f32 v82, -v92, v90, v86
	v_mul_f32_e32 v83, v81, v89
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v86, s62, v51, v80, v51
	v_div_scale_f32 v92, null, v80, v80, v18
	s_mov_b32 vcc_lo, s64
	v_mul_f32_e32 v93, v86, v84
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v87, v83, v81
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v85, 1.0
	v_div_fixup_f32 v19, v0, v80, v19
	v_fma_f32 v0, -v91, v93, v86
	v_fmac_f32_e32 v83, v90, v89
	v_div_fixup_f32 v63, v82, v80, v63
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v82, s63, v43, v80, v43
	v_div_scale_f32 v90, null, v80, v80, v17
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v81, -v87, v83, v81
	v_fmac_f32_e32 v93, v0, v84
	s_mov_b32 vcc_lo, s61
	v_mul_f32_e32 v0, v82, v85
	v_rcp_f32_e32 v87, v90
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s64, v18, v80, v18
	v_div_fmas_f32 v81, v81, v89, v83
	v_fma_f32 v83, -v91, v93, v86
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v86, -v88, v0, v82
	v_mul_f32_e32 v89, v94, v95
	v_div_fixup_f32 v52, v81, v80, v52
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v91, -v90, v87, 1.0
	v_fmac_f32_e32 v0, v86, v85
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v51, v83, v80, v51
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s61, v17, v80, v17
	v_fmac_f32_e32 v89, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v79, v79, v55
	v_fma_f32 v81, -v88, v0, v82
	v_mul_f32_e32 v82, v91, v87
	v_fmac_f32_e32 v84, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v88, s62, v16, v80, v16
	v_div_fmas_f32 v0, v81, v85, v0
	v_fma_f32 v81, -v92, v89, v94
	v_fma_f32 v85, -v90, v82, v91
	v_div_scale_f32 v92, null, v79, v79, v54
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v43, v0, v80, v43
	v_fmac_f32_e32 v82, v85, v87
	v_rcp_f32_e32 v85, v92
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fmas_f32 v81, v81, v95, v89
	v_mul_f32_e32 v89, v88, v84
	v_fma_f32 v0, -v90, v82, v91
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v79, v79, v47
	v_div_fixup_f32 v18, v81, v80, v18
	v_fma_f32 v81, -v96, v89, v88
	v_div_scale_f32 v90, s63, v55, v79, v55
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_fmas_f32 v0, v0, v87, v82
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v89, v81, v84
	v_mul_f32_e32 v81, v90, v83
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v87, s61, v54, v79, v54
	v_div_scale_f32 v91, null, v79, v79, v48
	v_div_fixup_f32 v17, v0, v80, v17
	v_fma_f32 v0, -v96, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v85
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v81, v88, v83
	v_div_fmas_f32 v0, v0, v84, v89
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s62, v47, v79, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v16, v0, v80, v16
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v0, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	v_mul_f32_e32 v80, v88, v82
	v_div_scale_f32 v86, null, v79, v79, v69
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v84, s64, v48, v79, v48
	v_div_fmas_f32 v0, v0, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v80, v88
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v79, v79, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v89, v84, v95 :: v_dual_fmac_f32 v80, v83, v82
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v81, v81, v85, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v91, v89, v84
	v_div_fixup_f32 v55, v0, v79, v55
	v_fma_f32 v92, -v86, v87, 1.0
	v_fma_f32 v0, -v93, v80, v88
	v_div_fixup_f32 v54, v81, v79, v54
	v_fmac_f32_e32 v89, v85, v95
	v_div_scale_f32 v81, s61, v69, v79, v69
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v85, -v90, v83, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v88, null, v79, v79, v57
	v_div_fmas_f32 v0, v0, v82, v80
	v_fma_f32 v80, -v91, v89, v84
	v_mul_f32_e32 v82, v81, v87
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, s62, v68, v79, v68
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v47, v0, v79, v47
	v_div_fmas_f32 v80, v80, v95, v89
	v_fma_f32 v89, -v86, v82, v81
	v_mul_f32_e32 v92, v85, v83
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v95, null, v79, v79, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v89, v87
	v_fma_f32 v0, -v90, v92, v85
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v91, null, v79, v79, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v86, v82, v81
	v_fmac_f32_e32 v92, v0, v83
	v_div_scale_f32 v89, null, v79, v79, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v94, v91
	v_div_fmas_f32 v81, v81, v87, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v90, v92, v85
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v93, -v88, v84, 1.0
	v_div_fixup_f32 v48, v80, v79, v48
	v_div_scale_f32 v80, s63, v57, v79, v57
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v95
	v_rcp_f32_e32 v86, v89
	v_div_fixup_f32 v69, v81, v79, v69
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v68, v82, v79, v68
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v39, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v95, v83, 1.0
	v_fma_f32 v90, -v89, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v83, v82, v83 :: v_dual_fmac_f32 v84, v93, v84
	v_fma_f32 v93, -v91, v94, 1.0
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s61, v15, v79, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v0, v80, v84
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s64, v56, v79, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v81, v90, v86
	v_fma_f32 v85, -v88, v0, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v87, v93, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v0, v85, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v91, v87, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v28, v28
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v88, v0, v80
	v_div_scale_f32 v88, s62, v72, v79, v72
	v_fmac_f32_e32 v87, v85, v94
	v_div_scale_f32 v85, null, v79, v79, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v0, v80, v84, v0
	v_fma_f32 v84, -v89, v81, v90
	v_fma_f32 v80, -v91, v87, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v91, null, v79, v79, v64
	v_fmac_f32_e32 v81, v84, v86
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v0, v0, v79, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v80, v80, v94, v87
	v_mul_f32_e32 v87, v88, v83
	v_fma_f32 v57, -v89, v81, v90
	v_fma_f32 v92, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v56, v80, v79, v56
	v_fma_f32 v80, -v95, v87, v88
	v_div_scale_f32 v89, s63, v65, v79, v65
	v_fmac_f32_e32 v82, v92, v82
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_scale_f32 v92, null, v79, v79, v59
	v_div_fmas_f32 v57, v57, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v80, v83 :: v_dual_fmac_f32 v84, v90, v84
	v_rcp_f32_e32 v81, v92
	v_div_scale_f32 v90, null, v79, v79, v14
	v_mul_f32_e32 v80, v89, v82
	v_div_scale_f32 v86, s61, v64, v79, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v15, v57, v79, v15
	v_fma_f32 v57, -v95, v87, v88
	v_fma_f32 v88, -v85, v80, v89
	v_mul_f32_e32 v93, v86, v84
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v57, v57, v83, v87
	v_fmac_f32_e32 v80, v88, v82
	v_fma_f32 v83, -v91, v93, v86
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v87, s62, v59, v79, v59
	v_fma_f32 v88, -v90, v94, 1.0
	v_div_fixup_f32 v57, v57, v79, v72
	v_fma_f32 v72, -v85, v80, v89
	v_fmac_f32_e32 v93, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v83, v87, v81 :: v_dual_fmac_f32 v94, v88, v94
	v_div_scale_f32 v88, null, v79, v79, v12
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v85, s64, v14, v79, v14
	v_div_fmas_f32 v72, v72, v82, v80
	v_fma_f32 v80, -v91, v93, v86
	v_fma_f32 v82, -v92, v83, v87
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v91, null, v79, v79, v13
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s61
	v_rcp_f32_e32 v82, v91
	v_div_fmas_f32 v80, v80, v84, v93
	v_fma_f32 v84, -v90, v89, v85
	v_div_fixup_f32 v65, v72, v79, v65
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v86, 1.0
	v_fma_f32 v72, -v92, v83, v87
	v_div_fixup_f32 v64, v80, v79, v64
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v80, s61, v12, v79, v12
	v_fmac_f32_e32 v86, v93, v86
	v_fma_f32 v84, -v91, v82, 1.0
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v92, null, v78, v78, v67
	v_div_fmas_f32 v72, v72, v81, v83
	v_fma_f32 v81, -v90, v89, v85
	v_mul_f32_e32 v83, v80, v86
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v78, v78, v71
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v85, s62, v13, v79, v13
	v_div_fmas_f32 v81, v81, v94, v89
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v89, -v88, v83, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v85, v82
	v_div_fixup_f32 v59, v72, v79, v59
	v_div_fixup_f32 v14, v81, v79, v14
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v72, -v91, v90, v85
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v94, null, v78, v78, v61
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v80, -v88, v83, v80
	v_div_scale_f32 v88, null, v78, v78, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v72, v82 :: v_dual_fmac_f32 v87, v89, v87
	v_div_fmas_f32 v80, v80, v86, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v89, v88
	v_div_scale_f32 v72, s63, v71, v78, v71
	v_fma_f32 v83, -v91, v90, v85
	v_fma_f32 v93, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v72, v87
	v_div_scale_f32 v86, s61, v67, v78, v67
	v_fmac_f32_e32 v81, v93, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v88, v89, 1.0
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v82, v83, v82, v90
	v_fma_f32 v93, -v84, v85, v72
	v_mul_f32_e32 v95, v86, v81
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s64, v66, v78, v66
	v_div_fixup_f32 v12, v80, v79, v12
	v_div_fixup_f32 v13, v82, v79, v13
	v_div_scale_f32 v82, null, v78, v78, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v90, v91, v89 :: v_dual_fmac_f32 v85, v93, v87
	v_fma_f32 v83, -v92, v95, v86
	v_fma_f32 v80, -v94, v96, 1.0
	s_mov_b32 vcc_lo, s63
	v_fma_f32 v79, -v88, v90, v91
	v_fma_f32 v72, -v84, v85, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v95, v83, v81 :: v_dual_fmac_f32 v96, v80, v96
	v_div_scale_f32 v80, s62, v61, v78, v61
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v82
	v_div_fmas_f32 v72, v72, v87, v85
	v_fma_f32 v83, -v92, v95, v86
	v_mul_f32_e32 v84, v80, v96
	v_div_scale_f32 v85, null, v78, v78, v76
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v71, v72, v78, v71
	v_div_fmas_f32 v81, v83, v81, v95
	v_fma_f32 v83, -v88, v90, v91
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v82, v79, 1.0
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v94, v84, v80
	s_mov_b32 vcc_lo, s64
	v_div_fixup_f32 v67, v81, v78, v67
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s61, v77, v78, v77
	v_fmac_f32_e32 v84, v88, v96
	v_div_fmas_f32 v83, v83, v89, v90
	s_mov_b32 vcc_lo, s62
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v72, v86, v79
	v_fma_f32 v81, -v85, v87, 1.0
	v_fma_f32 v80, -v94, v84, v80
	v_div_fixup_f32 v66, v83, v78, v66
	v_div_scale_f32 v83, null, v78, v78, v74
	v_fma_f32 v88, -v82, v72, v86
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s63, v76, v78, v76
	v_div_fmas_f32 v80, v80, v96, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v88, v79
	v_rcp_f32_e32 v89, v83
	v_mul_f32_e32 v84, v81, v87
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v61, v80, v78, v61
	v_fma_f32 v80, -v82, v72, v86
	v_div_scale_f32 v88, null, v78, v78, v73
	v_fma_f32 v82, -v85, v84, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v72, v80, v79, v72
	v_div_scale_f32 v79, null, v78, v78, v11
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v80, s61, v74, v78, v74
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v78, v78, v75
	v_div_fixup_f32 v72, v72, v78, v77
	v_fma_f32 v81, -v85, v84, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v88, v90, 1.0
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v79, v82, 1.0
	v_mul_f32_e32 v85, v80, v89
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v90, v77, v90
	v_div_scale_f32 v77, s62, v73, v78, v73
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v78, v78, v70
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_mul_f32_e32 v87, v77, v90
	v_div_scale_f32 v93, s63, v11, v78, v11
	v_fma_f32 v94, -v86, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v77
	v_mul_f32_e32 v96, v93, v82
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s64, v75, v78, v75
	v_div_fixup_f32 v76, v81, v78, v76
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v81, -v79, v96, v93
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v77, -v88, v87, v77
	v_div_fmas_f32 v80, v80, v89, v85
	v_fmac_f32_e32 v96, v81, v82
	v_fma_f32 v81, -v86, v83, v94
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s61, v70, v78, v70
	v_div_scale_f32 v85, null, v78, v78, v58
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v83, v81, v92
	v_mul_f32_e32 v81, v84, v95
	v_div_fmas_f32 v77, v77, v90, v87
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v79, -v79, v96, v93
	v_div_fixup_f32 v74, v80, v78, v74
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v73, v77, v78, v73
	v_div_scale_f32 v89, null, v78, v78, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v85, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v80, v87
	v_div_fmas_f32 v79, v79, v82, v96
	v_fma_f32 v82, -v86, v83, v94
	v_fma_f32 v86, -v91, v81, v84
	s_mov_b32 vcc_lo, s64
	v_div_scale_f32 v80, null, v78, v78, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v92, v83
	v_fmac_f32_e32 v81, v86, v95
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v11, v79, v78, v11
	v_div_scale_f32 v79, null, v78, v78, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v91, v81, v84
	v_div_fixup_f32 v75, v82, v78, v75
	v_div_scale_f32 v82, null, v78, v78, v9
	v_rcp_f32_e32 v84, v80
	v_div_fmas_f32 v77, v77, v95, v81
	v_div_scale_f32 v83, vcc_lo, v58, v78, v58
	v_rcp_f32_e32 v81, v79
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v70, v77, v78, v70
	v_mul_f32_e32 v88, v83, v87
	v_rcp_f32_e32 v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v80, v84, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v85, v88, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v79, v81, 1.0
	v_fma_f32 v93, -v82, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v92, v87
	v_fma_f32 v95, -v89, v91, 1.0
	v_fmac_f32_e32 v81, v77, v81
	v_div_scale_f32 v77, s61, v53, v78, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v85, v88, v83
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s64, v10, v78, v10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s61
	s_mov_b32 s61, 0xc1000000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v32, v32, s61, 0x40e00000
	v_med3_f32 v22, v22, s61, 0x40e00000
	v_med3_f32 v29, v29, s61, 0x40e00000
	v_med3_f32 v23, v23, s61, 0x40e00000
	v_med3_f32 v42, v42, s61, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v77, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s62, v8, v78, v8
	v_fma_f32 v92, -v79, v94, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s61, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s63, v9, v78, v9
	v_fmac_f32_e32 v94, v92, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s61, 0x40e00000
	v_med3_f32 v55, v55, s61, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v96, v90, v84
	v_fma_f32 v77, -v79, v94, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v47
	v_and_b32_e32 v47, 15, v23
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v93, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v81, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v87, v55
	v_and_b32_e32 v55, 15, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v80, v96, v90
	v_fma_f32 v92, -v82, v97, v93
	v_div_fixup_f32 v53, v77, v78, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v95, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v96, v85, v84 :: v_dual_fmac_f32 v97, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s61, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v89, v98, v95
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v80, -v80, v96, v90
	v_div_fixup_f32 v58, v83, v78, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v79, v91
	v_fma_f32 v79, -v82, v97, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s61, 0x40e00000
	v_med3_f32 v0, v0, s61, 0x40e00000
	v_med3_f32 v64, v64, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v89, v98, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v84, v96
	s_mov_b32 vcc_lo, s63
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v97
	s_mov_b32 vcc_lo, s64
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v12, v12, s61, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v91, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s61, 0x40e00000
	v_med3_f32 v67, v67, s61, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v92, v64
	v_and_b32_e32 v64, 15, v83
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v83, 16, v191
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v80, v78, v8
	v_div_fixup_f32 v9, v79, v78, v9
	v_div_fixup_f32 v10, v81, v78, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v58, v58, s61, 0x40e00000
	v_cvt_i32_f32_e32 v94, v12
	v_cvt_i32_f32_e32 v95, v13
	v_cvt_i32_f32_e32 v97, v67
	v_and_b32_e32 v12, 15, v31
	v_and_b32_e32 v39, 15, v32
	v_and_b32_e32 v67, 15, v33
	v_and_b32_e32 v13, 15, v41
	v_and_b32_e32 v41, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 13, v191
	v_and_b32_e32 v31, 0x2f0, v30
	v_lshlrev_b32_e32 v32, 8, v83
	v_and_b32_e32 v33, 64, v191
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s61, 0x40e00000
	v_med3_f32 v46, v46, s61, 0x40e00000
	v_med3_f32 v71, v71, s61, 0x40e00000
	v_cvt_i32_f32_e32 v103, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v58, 3, v109
	v_and_or_b32 v0, 0xe000, v0, v32
	v_xor_b32_e32 v31, v31, v33
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s61, 0x40e00000
	v_med3_f32 v28, v28, s61, 0x40e00000
	v_med3_f32 v40, v40, s61, 0x40e00000
	v_med3_f32 v60, v60, s61, 0x40e00000
	v_med3_f32 v69, v69, s61, 0x40e00000
	v_med3_f32 v72, v72, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s61, 0x40e00000
	v_med3_f32 v11, v11, s61, 0x40e00000
	v_med3_f32 v8, v8, s61, 0x40e00000
	v_med3_f32 v9, v9, s61, 0x40e00000
	v_med3_f32 v10, v10, s61, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v96, v71
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v0, v0, v58, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s61, 0x40e00000
	v_med3_f32 v43, v43, s61, 0x40e00000
	v_med3_f32 v16, v16, s61, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v98, v72
	v_med3_f32 v61, v61, s61, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v15, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v101, v11
	v_cvt_i32_f32_e32 v105, v8
	v_cvt_i32_f32_e32 v106, v9
	v_cvt_i32_f32_e32 v107, v10
	v_and_b32_e32 v8, 15, v37
	v_and_b32_e32 v9, 15, v46
	v_and_b32_e32 v10, 15, v87
	v_and_b32_e32 v11, 15, v96
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v31, 0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v53, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v20
	v_cvt_i32_f32_e32 v84, v43
	v_cvt_i32_f32_e32 v86, v16
	v_and_b32_e32 v16, 15, v27
	v_and_b32_e32 v20, 15, v28
	v_and_b32_e32 v27, 15, v40
	v_and_b32_e32 v43, 15, v29
	v_and_b32_e32 v28, 15, v60
	v_and_b32_e32 v29, 15, v69
	v_and_b32_e32 v30, 15, v98
	v_cvt_i32_f32_e32 v61, v61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s61, 0x40e00000
	v_med3_f32 v21, v21, s61, 0x40e00000
	v_med3_f32 v36, v36, s61, 0x40e00000
	v_med3_f32 v50, v50, s61, 0x40e00000
	v_med3_f32 v19, v19, s61, 0x40e00000
	v_med3_f32 v54, v54, s61, 0x40e00000
	v_med3_f32 v15, v15, s61, 0x40e00000
	v_and_b32_e32 v69, 15, v59
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v31, v[8:11]
	ds_store_b128 v31, v[27:30] offset:256
	v_cndmask_b32_e64 v11, 0x2010, 0, s3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v59, s3, s66, v62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s61, 0x40e00000
	v_med3_f32 v68, v68, s61, 0x40e00000
	v_med3_f32 v76, v76, s61, 0x40e00000
	v_med3_f32 v70, v70, s61, 0x40e00000
	v_med3_f32 v53, v53, s61, 0x40e00000
	v_and_b32_e32 v23, 15, v61
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v60, null, s67, 0, s3
	v_add_co_u32 v61, s3, s66, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v62, null, s67, 0, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[72:73], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[74:75], v[3:4]
	.loc	1 1240 13 is_stmt 1             ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v75, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s61, 0x40e00000
	v_med3_f32 v14, v14, s61, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v74, v74
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s61, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v90, v68
	v_cvt_i32_f32_e32 v99, v76
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v104, v53
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v73, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s61, 0x40e00000
	v_med3_f32 v52, v52, s61, 0x40e00000
	v_med3_f32 v18, v18, s61, 0x40e00000
	v_med3_f32 v57, v57, s61, 0x40e00000
	v_med3_f32 v65, v65, s61, 0x40e00000
	v_med3_f32 v66, v66, s61, 0x40e00000
	v_med3_f32 v75, v75, s61, 0x40e00000
	v_cvt_i32_f32_e32 v89, v48
	v_cvt_i32_f32_e32 v93, v14
	v_and_b32_e32 v51, 15, v49
	v_and_b32_e32 v48, 15, v19
	v_and_b32_e32 v14, 15, v54
	v_and_b32_e32 v49, 15, v15
	v_and_b32_e32 v15, 15, v97
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v8, v0, 16, 0
	v_lshlrev_b32_e32 v9, 6, v191
	v_lshlrev_b32_e32 v10, 5, v25
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v79, 15, v21
	v_and_b32_e32 v21, 15, v36
	v_and_b32_e32 v36, 15, v50
	v_and_b32_e32 v50, 15, v101
	v_med3_f32 v45, v45, s61, 0x40e00000
	v_med3_f32 v17, v17, s61, 0x40e00000
	v_med3_f32 v74, v74, s61, 0x40e00000
	v_cvt_i32_f32_e32 v80, v35
	v_and_b32_e32 v35, 15, v38
	v_and_b32_e32 v68, 15, v84
	v_and_b32_e32 v37, 15, v90
	v_and_b32_e32 v38, 15, v99
	v_and_b32_e32 v58, 15, v70
	v_and_b32_e32 v70, 15, v104
	v_med3_f32 v44, v44, s61, 0x40e00000
	v_med3_f32 v56, v56, s61, 0x40e00000
	v_med3_f32 v73, v73, s61, 0x40e00000
	v_cvt_i32_f32_e32 v81, v63
	v_cvt_i32_f32_e32 v82, v52
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v65, v65
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
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v85, v17
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v91, v56
	v_cvt_i32_f32_e32 v100, v73
	v_and_b32_e32 v17, 15, v80
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v56, 15, v82
	v_and_b32_e32 v72, 15, v18
	v_and_b32_e32 v18, 15, v88
	v_and_b32_e32 v53, 15, v57
	v_and_b32_e32 v57, 15, v65
	v_and_b32_e32 v19, 15, v66
	v_and_b32_e32 v54, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v12, v0, 32, 0
	v_or3_b32 v25, v10, v9, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v63, 15, v77
	v_and_b32_e32 v71, 15, v22
	v_and_b32_e32 v75, 15, v78
	v_and_b32_e32 v40, 15, v45
	v_and_b32_e32 v76, 15, v85
	v_and_b32_e32 v73, 15, v93
	v_and_b32_e32 v77, 15, v94
	v_and_b32_e32 v42, 15, v74
	v_and_b32_e32 v74, 15, v105
	v_and_b32_e32 v78, 15, v106
	v_and_b32_e32 v22, 15, v89
	v_and_b32_e32 v65, 15, v92
	v_and_b32_e32 v66, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v0, 48, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v44, 15, v44
	v_and_b32_e32 v80, 15, v86
	v_and_b32_e32 v45, 15, v91
	v_and_b32_e32 v81, 15, v95
	v_and_b32_e32 v46, 15, v100
	v_and_b32_e32 v82, 15, v107
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
	v_add_nc_u32_e32 v3, s66, v7
	v_lshl_or_b32 v0, s77, 7, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s63, s[72:73], v[61:62]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[74:75], v[61:62]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[72:73], v[59:60]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, 2, v3
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[74:75], v[59:60]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[6:7], null, v7, s72, v[0:1]
	s_mov_b32 s67, 0x31027000
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(5)
	v_lshl_or_b32 v44, v52, 4, v44
	v_lshl_or_b32 v25, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 4, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 6, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v52, v64, 4, v68
	v_lshl_or_b32 v68, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 8, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v65, 4, v69
	v_lshl_or_b32 v69, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 10, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v60, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 12, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 14, v3
	v_mad_u64_u32 v[7:8], null, v8, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v65, v22, 4, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 16, v3
	v_mad_u64_u32 v[8:9], null, v9, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v59, v35, 4, v27
	v_lshl_or_b32 v46, v54, 4, v46
	v_lshl_or_b32 v54, v66, 4, v70
	v_lshl_or_b32 v66, v23, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 18, v3
	v_add_nc_u32_e32 v27, 36, v3
	v_mad_u64_u32 v[9:10], null, v10, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v55, 4, v47
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v55, v75, 4, v71
	v_lshl_or_b32 v71, v37, 4, v29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 20, v3
	v_add_nc_u32_e32 v29, 38, v3
	v_mad_u64_u32 v[10:11], null, v11, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v76, 4, v72
	v_lshl_or_b32 v72, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 22, v3
	v_add_nc_u32_e32 v30, 40, v3
	v_mad_u64_u32 v[11:12], null, v12, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 24, v3
	v_add_nc_u32_e32 v31, 42, v3
	v_mad_u64_u32 v[12:13], null, v13, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v43, v51, 4, v43
	v_lshl_or_b32 v51, v63, 4, v67
	v_lshl_or_b32 v67, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 26, v3
	v_add_nc_u32_e32 v32, 44, v3
	v_mad_u64_u32 v[13:14], null, v14, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v63, v36, 4, v28
	v_lshl_or_b32 v41, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 28, v3
	v_add_nc_u32_e32 v33, 46, v3
	v_mad_u64_u32 v[14:15], null, v15, s72, v[0:1]
	v_mad_u64_u32 v[27:28], null, v27, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v42, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v21, 30, v3
	v_add_nc_u32_e32 v22, 32, v3
	v_add_nc_u32_e32 v23, 34, v3
	v_add_nc_u32_e32 v34, 48, v3
	v_add_nc_u32_e32 v35, 50, v3
	v_add_nc_u32_e32 v36, 52, v3
	v_add_nc_u32_e32 v37, 54, v3
	v_add_nc_u32_e32 v38, 56, v3
	v_add_nc_u32_e32 v39, 58, v3
	v_add_nc_u32_e32 v40, 60, v3
	v_add_nc_u32_e32 v70, 62, v3
	v_mad_u64_u32 v[3:4], null, v3, s72, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s72, v[0:1]
	v_mad_u64_u32 v[28:29], null, v29, s72, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[0:1]
	v_mad_u64_u32 v[29:30], null, v30, s72, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s72, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[0:1]
	v_mad_u64_u32 v[20:21], null, v21, s72, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[0:1]
	v_mad_u64_u32 v[21:22], null, v22, s72, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[0:1]
	v_mad_u64_u32 v[22:23], null, v23, s72, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[0:1]
	v_mad_u64_u32 v[36:37], null, v37, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v23, 0x80000000, v3, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[3:4], null, v70, s72, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s59, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[38:39], null, v39, s72, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s61
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s57, s58
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s55, s56
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s53, s54
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x5
	buffer_store_b8 v25, v23, s[64:67], 0 offen
	buffer_store_b8 v59, v0, s[64:67], 0 offen
	buffer_store_b8 v43, v4, s[64:67], 0 offen
	buffer_store_b8 v51, v6, s[64:67], 0 offen
	buffer_store_b8 v60, v7, s[64:67], 0 offen
	buffer_store_b8 v61, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s51, s52
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v49, v57, 4, v49
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s49, s50
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v57, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s47, s48
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v50, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s45, s46
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v58, v78, 4, v74
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s43, s44
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v47, v0, s[64:67], 0 offen
	buffer_store_b8 v55, v4, s[64:67], 0 offen
	buffer_store_b8 v62, v6, s[64:67], 0 offen
	buffer_store_b8 v63, v7, s[64:67], 0 offen
	buffer_store_b8 v44, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s41, s42
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s76, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s39, s40
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v26.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s37, s38
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v24.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v19, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s35, s36
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v20, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s33, s34
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v52, v0, s[64:67], 0 offen
	buffer_store_b8 v64, v4, s[64:67], 0 offen
	buffer_store_b8 v67, v6, s[64:67], 0 offen
	buffer_store_b8 v48, v7, s[64:67], 0 offen
	buffer_store_b8 v56, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v21, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s30, s31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v22, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s28, s29
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v27, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s26, s27
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v28, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s24, s25
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v29, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s22, s23
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v68, v0, s[64:67], 0 offen
	buffer_store_b8 v71, v4, s[64:67], 0 offen
	buffer_store_b8 v45, v6, s[64:67], 0 offen
	buffer_store_b8 v53, v7, s[64:67], 0 offen
	buffer_store_b8 v65, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v30, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s20, s21
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v31, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s18, s19
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v32, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s16, s17
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v33, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s14, s15
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v34, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s12, s13
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v41, v0, s[64:67], 0 offen
	buffer_store_b8 v49, v4, s[64:67], 0 offen
	buffer_store_b8 v57, v6, s[64:67], 0 offen
	buffer_store_b8 v69, v7, s[64:67], 0 offen
	buffer_store_b8 v72, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v35, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s10, s11
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v36, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s8, s9
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v37, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v38, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b8 v46, v0, s[64:67], 0 offen
	buffer_store_b8 v54, v4, s[64:67], 0 offen
	buffer_store_b8 v66, v6, s[64:67], 0 offen
	buffer_store_b8 v42, v7, s[64:67], 0 offen
	buffer_store_b8 v50, v8, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v191
	v_lshrrev_b32_e32 v6, 2, v83
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 3, v108
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s76, s76, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v58, v0, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v3
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s76, 8
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
	v_and_b32_e32 v2, 0xc0, v191
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s77, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp75:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1184
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
		.amdhsa_next_free_sgpr 78
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 1184
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 36128
; TotalNumSgprs: 80
; NumVgprs: 256
; ScratchSize: 1184
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 80
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
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 1184
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc256_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 311
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
