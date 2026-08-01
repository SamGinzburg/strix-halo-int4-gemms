	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s74, s[0:1], 0x54
	s_load_b64 s[24:25], s[0:1], 0x5c
	v_mov_b32_e32 v109, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v89, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v164, 7, v109
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s74, 0xff
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
	v_and_b32_e32 v0, 63, v109
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
	s_load_b64 s[64:65], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[72:73], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s2
	v_add_nc_u32_e32 v165, s66, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[72:73], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s24, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, s66, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow798
	s_load_b128 s[68:71], s[0:1], 0x40
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v110, 15, v109
	v_or_b32_e32 v166, 2, v164
	v_or_b32_e32 v167, 4, v164
	v_or_b32_e32 v168, 6, v164
	v_or_b32_e32 v169, 8, v164
	v_or_b32_e32 v170, 10, v164
	v_or_b32_e32 v171, 12, v164
	v_or_b32_e32 v173, 14, v164
	v_or_b32_e32 v174, 16, v164
	v_or_b32_e32 v175, 18, v164
	v_or_b32_e32 v176, 20, v164
	v_or_b32_e32 v177, 22, v164
	v_or_b32_e32 v163, 24, v164
	v_or_b32_e32 v178, 26, v164
	v_or_b32_e32 v179, 28, v164
	v_or_b32_e32 v181, 30, v164
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v111, 0x7f, v109
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v202, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v234, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v209, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v211, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v217, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v225, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v227, 0
	v_mov_b32_e32 v226, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s18, s[0:1], 0x58
	s_load_b32 s25, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s66, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s0
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v237, 6, v109
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v2, vcc_lo, v0, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s0, s6, s4
	s_addc_u32 s1, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[16:17], s[0:1], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[72:73], v[0:1]
	v_dual_mov_b32 v235, 0 :: v_dual_add_nc_u32 v0, s66, v110
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[64:65], v[2:3]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[72:73], v[2:3]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_waitcnt lgkmcnt(0)
	s_lshl_b32 s17, s75, 8
	v_dual_mov_b32 v236, 0 :: v_dual_add_nc_u32 v1, 16, v0
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s24
	v_or_b32_e32 v8, s17, v109
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[4:5]
	v_cmp_le_i64_e64 s4, s[64:65], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[4:5]
	v_cmp_gt_i64_e64 s7, s[72:73], v[6:7]
	v_dual_mov_b32 v233, 0 :: v_dual_add_nc_u32 v180, 0, v110
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:772
	scratch_store_b32 off, v237, off offset:256
	v_mul_lo_u32 v0, v1, s24
	v_dual_mov_b32 v229, 0 :: v_dual_and_b32 v4, 0xf0, v109
	v_dual_mov_b32 v221, 0 :: v_dual_lshlrev_b32 v6, 5, v109
	v_dual_mov_b32 v234, 0 :: v_dual_lshlrev_b32 v7, 1, v109
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v225, 0 :: v_dual_and_b32 v6, 32, v6
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:776
	scratch_store_b32 off, v109, off offset:800
	v_mul_lo_u32 v0, v2, s24
	v_dual_mov_b32 v232, 0 :: v_dual_and_b32 v7, 28, v7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s5, s74, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s6
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s6, s5, s18
	v_mov_b32_e32 v87, 0
	.loc	1 1205 25                       ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:780
	scratch_store_b32 off, v110, off offset:804
	v_mul_lo_u32 v0, v3, s24
	scratch_store_b32 off, v111, off offset:808 ; 4-byte Folded Spill
	v_mov_b32_e32 v227, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v192, v111, 1, s17
	v_dual_mov_b32 v231, 0 :: v_dual_add_nc_u32 v238, 0, v109
	v_or_b32_e32 v1, 0x300, v109
	v_or_b32_e32 v2, 0x700, v109
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_lshrrev_b32_e32 v0, 1, v109
	v_or_b32_e32 v3, 0x3f0, v109
	v_or_b32_e32 v5, 0x7f0, v109
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s6, s6, s16
	v_dual_mov_b32 v217, 0 :: v_dual_add_nc_u32 v240, 0, v1
	v_and_b32_e32 v0, 0x70, v0
	s_add_u32 s27, s6, s74
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v242, 0, v2
	v_add3_u32 v198, s27, v192, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v186, v180, v0
	v_lshlrev_b32_e32 v0, 2, v4
	v_dual_mov_b32 v223, 0 :: v_dual_lshlrev_b32 v4, 1, v4
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v252, 0, v3
	v_add3_u32 v0, 0, v0, v6
	v_dual_mov_b32 v230, 0 :: v_dual_add_nc_u32 v255, 0, v5
	v_dual_mov_b32 v211, 0 :: v_dual_add_nc_u32 v188, v238, v109
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v0, v0, v7
	scratch_store_b32 off, v8, off offset:788 ; 4-byte Folded Spill
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v113, 0
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v0, 0, v4
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v226, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v224, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v210, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v191, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v207, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v185, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v208, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v204, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v148, 0
	v_mov_b32_e32 v122, 0
	v_mov_b32_e32 v106, 0
	v_mov_b32_e32 v120, 0
	v_mov_b32_e32 v104, 0
	v_mov_b32_e32 v98, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v100, 0
	v_mov_b32_e32 v102, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s4, s4, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s7, s24, s16
	.loc	1 1135 13                       ; ragged.py:1135:13
	s_mov_b32 s26, 0
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
	s_mov_b32 s20, s12
	s_mov_b32 s21, s13
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s18
	s_mov_b32 s15, s19
	scratch_store_b32 off, v0, off offset:796 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v236, off offset:768
	scratch_store_b32 off, v235, off offset:764
	scratch_store_b32 off, v84, off offset:760
	scratch_store_b32 off, v234, off offset:756
	scratch_store_b32 off, v85, off offset:752
	scratch_store_b32 off, v233, off offset:748
	scratch_store_b32 off, v232, off offset:744
	scratch_store_b32 off, v231, off offset:740
	scratch_store_b32 off, v230, off offset:736
	scratch_store_b32 off, v86, off offset:732
	scratch_store_b32 off, v87, off offset:728
	scratch_store_b32 off, v229, off offset:724
	scratch_store_b32 off, v228, off offset:720
	scratch_store_b32 off, v227, off offset:716
	scratch_store_b32 off, v226, off offset:712
	scratch_store_b32 off, v225, off offset:708
	scratch_store_b32 off, v224, off offset:704
	scratch_store_b32 off, v223, off offset:700
	scratch_store_b32 off, v222, off offset:696
	scratch_store_b32 off, v221, off offset:692
	scratch_store_b32 off, v220, off offset:688
	scratch_store_b32 off, v219, off offset:684
	scratch_store_b32 off, v218, off offset:680
	scratch_store_b32 off, v217, off offset:676
	scratch_store_b32 off, v216, off offset:672
	scratch_store_b32 off, v215, off offset:668
	scratch_store_b32 off, v214, off offset:664
	scratch_store_b32 off, v213, off offset:660
	scratch_store_b32 off, v212, off offset:656
	scratch_store_b32 off, v211, off offset:652
	scratch_store_b32 off, v210, off offset:648
	scratch_store_b32 off, v209, off offset:644
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v208, off offset:640
	scratch_store_b32 off, v207, off offset:636
	scratch_store_b32 off, v206, off offset:632
	scratch_store_b32 off, v205, off offset:628
	scratch_store_b32 off, v204, off offset:624
	scratch_store_b32 off, v203, off offset:620
	scratch_store_b32 off, v202, off offset:616
	scratch_store_b32 off, v201, off offset:612
	scratch_store_b32 off, v199, off offset:608
	scratch_store_b32 off, v197, off offset:604
	scratch_store_b32 off, v196, off offset:600
	scratch_store_b32 off, v195, off offset:596
	scratch_store_b32 off, v194, off offset:592
	scratch_store_b32 off, v193, off offset:588
	scratch_store_b32 off, v191, off offset:584
	scratch_store_b32 off, v190, off offset:580
	scratch_store_b32 off, v189, off offset:576
	scratch_store_b32 off, v187, off offset:572
	scratch_store_b32 off, v172, off offset:568
	scratch_store_b32 off, v200, off offset:564
	scratch_store_b32 off, v162, off offset:560
	scratch_store_b32 off, v161, off offset:556
	scratch_store_b32 off, v160, off offset:552
	scratch_store_b32 off, v159, off offset:548
	scratch_store_b32 off, v158, off offset:544
	scratch_store_b32 off, v157, off offset:540
	scratch_store_b32 off, v156, off offset:536
	scratch_store_b32 off, v155, off offset:532
	scratch_store_b32 off, v185, off offset:528
	scratch_store_b32 off, v184, off offset:524
	scratch_store_b32 off, v183, off offset:520
	scratch_store_b32 off, v182, off offset:516
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v154, off offset:512
	scratch_store_b32 off, v153, off offset:508
	scratch_store_b32 off, v152, off offset:504
	scratch_store_b32 off, v151, off offset:500
	scratch_store_b32 off, v150, off offset:496
	scratch_store_b32 off, v149, off offset:492
	scratch_store_b32 off, v144, off offset:488
	scratch_store_b32 off, v143, off offset:484
	scratch_store_b32 off, v142, off offset:480
	scratch_store_b32 off, v141, off offset:476
	scratch_store_b32 off, v140, off offset:472
	scratch_store_b32 off, v139, off offset:468
	scratch_store_b32 off, v138, off offset:464
	scratch_store_b32 off, v136, off offset:460
	scratch_store_b32 off, v137, off offset:456
	scratch_store_b32 off, v135, off offset:452
	scratch_store_b32 off, v134, off offset:448
	scratch_store_b32 off, v133, off offset:444
	scratch_store_b32 off, v132, off offset:440
	scratch_store_b32 off, v131, off offset:436
	scratch_store_b32 off, v148, off offset:432
	scratch_store_b32 off, v147, off offset:428
	scratch_store_b32 off, v146, off offset:424
	scratch_store_b32 off, v145, off offset:420
	scratch_store_b32 off, v130, off offset:416
	scratch_store_b32 off, v129, off offset:412
	scratch_store_b32 off, v128, off offset:408
	scratch_store_b32 off, v127, off offset:404
	scratch_store_b32 off, v126, off offset:400
	scratch_store_b32 off, v125, off offset:396
	scratch_store_b32 off, v124, off offset:392
	scratch_store_b32 off, v123, off offset:388
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v122, off offset:384
	scratch_store_b32 off, v107, off offset:380
	scratch_store_b32 off, v106, off offset:376
	scratch_store_b32 off, v105, off offset:372
	scratch_store_b32 off, v104, off offset:368
	scratch_store_b32 off, v121, off offset:364
	scratch_store_b32 off, v120, off offset:360
	scratch_store_b32 off, v115, off offset:356
	scratch_store_b32 off, v103, off offset:352
	scratch_store_b32 off, v99, off offset:348
	scratch_store_b32 off, v98, off offset:344
	scratch_store_b32 off, v97, off offset:340
	scratch_store_b32 off, v119, off offset:336
	scratch_store_b32 off, v118, off offset:332
	scratch_store_b32 off, v117, off offset:328
	scratch_store_b32 off, v116, off offset:324
	scratch_store_b32 off, v96, off offset:320
	scratch_store_b32 off, v88, off offset:316
	scratch_store_b32 off, v95, off offset:312
	scratch_store_b32 off, v94, off offset:308
	scratch_store_b32 off, v114, off offset:304
	scratch_store_b32 off, v113, off offset:300
	scratch_store_b32 off, v112, off offset:296
	scratch_store_b32 off, v93, off offset:292
	scratch_store_b32 off, v92, off offset:288
	scratch_store_b32 off, v91, off offset:284
	scratch_store_b32 off, v90, off offset:280
	scratch_store_b32 off, v108, off offset:276
	scratch_store_b32 off, v102, off offset:272
	scratch_store_b32 off, v101, off offset:268
	scratch_store_b32 off, v100, off offset:264
	scratch_store_b32 off, v89, off offset:260
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s28, s26, 6
	s_mov_b32 s29, -1
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v2, v0
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
	s_mov_b32 s30, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	s_or_b32 s30, s30, s28
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s29
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v0, s30, v237
	s_mov_b32 s29, 0
	v_dual_mov_b32 v172, v174 :: v_dual_mov_b32 v199, v163
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v0, s25, v[165:166]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v0, 0x80000000, v129, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v129, 4, v237
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s25, v[165:166]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v131, 0x80000000, v129, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v129, 8, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s25, v[165:166]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v132, 0x80000000, v129, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v129, 12, v237
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s25, v[165:166]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v133, 0x80000000, v129, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v129, 16, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s25, v[165:166]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v134, 0x80000000, v129, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v129, 20, v237
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s25, v[165:166]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v135, 0x80000000, v129, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v129, 24, v237
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v129
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s25, v[165:166]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v136, 0x80000000, v129, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v129, 28, v237
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v129, s30, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[129:130], null, v129, s25, v[165:166]
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v164
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v231, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v129, 0x80000000, v129, s2
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v212, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v167
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v213, v231, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v211, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v168
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v218, v212, v192
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v225, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v169
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v219, v211, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v223, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v170
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v220, v225, v192
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v205, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v171
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v230, v223, v192
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v216, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v173
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v140, s6, v230
	v_add_nc_u32_e32 v232, v205, v192
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v205, v198, v205
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v202, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v174
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v233, v216, v192
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v248, v140, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v140, s6, v232
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v197, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v175
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v221, v202, v192
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v202, v198, v202
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v254, v140, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v140, s6, v233
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v196, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v176
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v214, v197, v192
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v197, v198, v197
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v246, v140, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v140, s6, v221
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v209, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v177
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v203, v196, v192
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v221, s27, v221
	v_add_nc_u32_e32 v196, v198, v196
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v243, v140, s[8:11], 0 offen
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v208, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v163
	v_dual_mov_b32 v163, v177 :: v_dual_add_nc_u32 v140, s6, v214
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v215, v209, v192
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v207, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v178
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v217, v208, v192
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v244, v140, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v140, s6, v203
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v203, s27, v203
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v206, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v179
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v204, v207, v192
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v207, v198, v207
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v241, v140, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v140, s6, v215
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v195, v130, s5
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s30, v181
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v222, v206, v192
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v206, v198, v206
	s_mov_b32 s30, 32
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v239, v140, s[8:11], 0 offen
	.loc	1 1153 59                       ; ragged.py:1153:59
	v_mul_lo_u32 v194, v130, s5
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v130, v0, s[16:19], 0 offen
	buffer_load_u8 v131, v131, s[16:19], 0 offen
	buffer_load_u8 v132, v132, s[16:19], 0 offen
	buffer_load_u8 v134, v134, s[16:19], 0 offen
	buffer_load_u8 v135, v135, s[16:19], 0 offen
	buffer_load_u8 v136, v136, s[16:19], 0 offen
	buffer_load_u8 v137, v129, s[16:19], 0 offen
	buffer_load_u8 v133, v133, s[16:19], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v0, s6, v213
	v_add_nc_u32_e32 v129, s6, v220
	v_add_nc_u32_e32 v140, s6, v217
	v_add_nc_u32_e32 v210, v195, v192
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v213, s27, v213
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_u16 v138, v0, s[8:11], 0 offen
	buffer_load_u16 v129, v129, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v0, s6, v218
	v_add_nc_u32_e32 v224, v194, v192
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v195, v198, v195
	v_add_nc_u32_e32 v194, v198, v194
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_u16 v237, v140, s[8:11], 0 offen
	buffer_load_u16 v139, v0, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v0, s6, v219
	v_add_nc_u32_e32 v140, s6, v204
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v204, s27, v204
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_u16 v0, v0, s[8:11], 0 offen
	buffer_load_u16 v249, v140, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v140, s6, v222
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v250, v140, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v140, s6, v210
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v210, s27, v210
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v251, v140, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v140, s6, v224
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u16 v235, v140, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(16)
	ds_store_b8 v238, v130
	s_waitcnt vmcnt(15)
	ds_store_b8 v238, v131 offset:256
	s_waitcnt vmcnt(14)
	ds_store_b8 v238, v132 offset:512
	s_waitcnt vmcnt(13)
	ds_store_b8 v238, v134 offset:1024
	s_waitcnt vmcnt(12)
	ds_store_b8 v238, v135 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v240, v133
	ds_store_b8 v238, v136 offset:1536
	ds_store_b8 v242, v137
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v130, v180 offset:320
	ds_load_u8 v131, v180 offset:256
	ds_load_u8 v132, v180 offset:336
	ds_load_u8 v133, v180 offset:272
	ds_load_u8 v134, v180 offset:352
	ds_load_u8 v135, v180 offset:288
	ds_load_u8 v136, v180 offset:368
	ds_load_u8 v137, v180 offset:304
	ds_load_u8 v191, v180 offset:1216
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v180 offset:448
	ds_load_u8 v140, v180 offset:384
	ds_load_u8 v141, v180 offset:464
	ds_load_u8 v142, v180 offset:400
	ds_load_u8 v143, v180 offset:480
	ds_load_u8 v144, v180 offset:416
	ds_load_u8 v145, v180 offset:496
	ds_load_u8 v146, v180 offset:432
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v131, v140, v131, 0xc0c0004
	ds_load_u8 v140, v180 offset:64
	ds_load_u8 v147, v180
	ds_load_u8 v148, v180 offset:80
	ds_load_u8 v149, v180 offset:16
	ds_load_u8 v150, v180 offset:96
	ds_load_u8 v151, v180 offset:32
	ds_load_u8 v152, v180 offset:112
	ds_load_u8 v153, v180 offset:48
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v133, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v135, v144, v143, 0xc0c0004
	v_lshl_or_b32 v131, v131, 16, v130
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v137, v146, v145, 0xc0c0004
	v_lshl_or_b32 v133, v133, 16, v132
	v_lshl_or_b32 v135, v135, 16, v134
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v137, v137, 16, v136
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v140, v147, v140, 0xc0c0004
	ds_load_u8 v147, v180 offset:192
	ds_load_u8 v154, v180 offset:128
	ds_load_u8 v155, v180 offset:208
	ds_load_u8 v156, v180 offset:144
	ds_load_u8 v157, v180 offset:224
	ds_load_u8 v158, v180 offset:160
	ds_load_u8 v159, v180 offset:240
	ds_load_u8 v160, v180 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v147, v154, v147, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v141, v156, v155, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v130, v147, 16, v140
	v_perm_b32 v140, v149, v148, 0xc0c0004
	v_lshl_or_b32 v132, v141, 16, v140
	v_perm_b32 v140, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v141, v158, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v134, v141, 16, v140
	v_perm_b32 v140, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v160, v159, 0xc0c0004
	v_dual_mov_b32 v159, v164 :: v_dual_mov_b32 v164, v255
	v_lshl_or_b32 v136, v141, 16, v140
	ds_load_u8 v227, v180 offset:832
	ds_load_u8 v189, v180 offset:768
	ds_load_u8 v253, v180 offset:848
	ds_load_u8 v245, v180 offset:784
	ds_load_u8 v140, v180 offset:864
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:240 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:800
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:244 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:880
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:816
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:224 ; 4-byte Folded Spill
	ds_load_u8 v161, v180 offset:960
	ds_load_u8 v160, v180 offset:896
	ds_load_u8 v201, v180 offset:976
	ds_load_u8 v187, v180 offset:912
	ds_load_u8 v234, v180 offset:992
	ds_load_u8 v229, v180 offset:928
	ds_load_u8 v140, v180 offset:1024
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:128 ; 4-byte Folded Spill
	ds_load_u8 v158, v180 offset:944
	ds_load_u8 v149, v180 offset:576
	ds_load_u8 v147, v180 offset:512
	ds_load_u8 v154, v180 offset:592
	ds_load_u8 v153, v180 offset:528
	ds_load_u8 v156, v180 offset:608
	ds_load_u8 v155, v180 offset:544
	ds_load_u8 v193, v180 offset:624
	ds_load_u8 v157, v180 offset:560
	ds_load_u8 v144, v180 offset:704
	ds_load_u8 v143, v180 offset:640
	ds_load_u8 v146, v180 offset:720
	ds_load_u8 v145, v180 offset:656
	ds_load_u8 v150, v180 offset:736
	ds_load_u8 v148, v180 offset:672
	ds_load_u8 v152, v180 offset:752
	ds_load_u8 v151, v180 offset:688
	ds_load_u8 v140, v180 offset:1344
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:148 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1360
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:144 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1376
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:140 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1392
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:132 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1408
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1328
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:136 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1296
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1312
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1472
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1488
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1504
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off        ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1456
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1424
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:204 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1440
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1088
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:232 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1104
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:216 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1152
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:252 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1040
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:236 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1056
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:220 ; 4-byte Folded Spill
	ds_load_u8 v185, v180 offset:1280
	ds_load_u8 v140, v180 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v247, v180 offset:1232
	ds_load_u8 v140, v180 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:228 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:212 ; 4-byte Folded Spill
	ds_load_u8 v236, v180 offset:1168
	ds_load_u8 v140, v180 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:248 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:36 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:24 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:12 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:4 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1920
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:56 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:8 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:40 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:28 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:72 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:48 ; 4-byte Folded Spill
	ds_load_u8 v140, v180 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v140, off offset:32 ; 4-byte Folded Spill
	ds_load_u8 v140, v252
	ds_load_u8 v141, v255
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:16 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:20 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:76 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:52 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1600
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:96 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1616
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:80 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1632
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:64 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:44 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1664
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1584
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:60 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1552
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:100 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1568
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:84 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1792
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:124 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:68 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1728
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:120 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:112 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:92 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:88 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:116 ; 4-byte Folded Spill
	ds_load_u8 v141, v180 offset:1696
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v141, off offset:104 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(8)
	ds_store_b16 v188, v138
	s_waitcnt vmcnt(5)
	ds_store_b16 v188, v139 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b16 v188, v0 offset:1024
	ds_store_b16 v188, v129 offset:1536
	ds_store_b16 v188, v248 offset:2048
	ds_store_b16 v188, v254 offset:2560
	ds_store_b16 v188, v246 offset:3072
	ds_store_b16 v188, v243 offset:3584
	ds_store_b16 v188, v244 offset:4096
	ds_store_b16 v188, v241 offset:4608
	ds_store_b16 v188, v239 offset:5120
	ds_store_b16 v188, v237 offset:5632
	s_waitcnt vmcnt(3)
	ds_store_b16 v188, v249 offset:6144
	s_waitcnt vmcnt(2)
	ds_store_b16 v188, v250 offset:6656
	s_waitcnt vmcnt(1)
	ds_store_b16 v188, v251 offset:7168
	s_waitcnt vmcnt(0)
	ds_store_b16 v188, v235 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v186 offset:1280
	ds_load_u8 v129, v186 offset:1024
	ds_load_u8 v235, v186 offset:1920
	ds_load_u8 v237, v186 offset:1664
	ds_load_u8 v239, v186 offset:1408
	ds_load_u8 v241, v186 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	ds_load_u8 v129, v186 offset:1792
	ds_load_u8 v138, v186 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v138, v129, 0xc0c0004
	ds_load_u8 v138, v186 offset:256
	ds_load_u8 v139, v186
	ds_load_u8 v243, v186 offset:896
	ds_load_u8 v244, v186 offset:640
	ds_load_u8 v246, v186 offset:384
	ds_load_u8 v248, v186 offset:128
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v186 offset:768
	ds_load_u8 v249, v186 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v249, v249, v139, 0xc0c0004
	v_lshl_or_b32 v139, v129, 16, v0
	v_perm_b32 v0, v241, v239, 0xc0c0004
	v_perm_b32 v129, v237, v235, 0xc0c0004
	v_perm_b32 v237, v244, v243, 0xc0c0004
	v_lshl_or_b32 v138, v249, 16, v138
	v_perm_b32 v235, v248, v246, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v244, v129, 16, v0
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v0, v198, v231
	v_add_nc_u32_e32 v129, v198, v212
	v_add_nc_u32_e32 v212, v198, v216
	v_add_nc_u32_e32 v216, s27, v218
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[138:139], v[130:131], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[138:139], v[132:133], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[138:139], v[134:135], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[138:139], v[136:137], v[113:120] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v138, v198, v211
	v_add_nc_u32_e32 v139, v198, v225
	v_add_nc_u32_e32 v211, v198, v223
	v_add_nc_u32_e32 v218, s27, v219
	v_add_nc_u32_e32 v219, s27, v220
	v_add_nc_u32_e32 v220, s27, v230
	v_add_nc_u32_e32 v223, s27, v232
	v_add_nc_u32_e32 v225, s27, v233
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xf
	buffer_load_u8 v0, v0, s[8:11], 0 offen
	buffer_load_u8 v213, v213, s[8:11], 0 offen
	buffer_load_u8 v129, v129, s[8:11], 0 offen
	buffer_load_u8 v216, v216, s[8:11], 0 offen
	buffer_load_u8 v138, v138, s[8:11], 0 offen
	buffer_load_u8 v218, v218, s[8:11], 0 offen
	buffer_load_u8 v139, v139, s[8:11], 0 offen
	buffer_load_u8 v219, v219, s[8:11], 0 offen
	buffer_load_u8 v211, v211, s[8:11], 0 offen
	buffer_load_u8 v220, v220, s[8:11], 0 offen
	buffer_load_u8 v205, v205, s[8:11], 0 offen
	buffer_load_u8 v223, v223, s[8:11], 0 offen
	buffer_load_u8 v212, v212, s[8:11], 0 offen
	buffer_load_u8 v225, v225, s[8:11], 0 offen
	buffer_load_u8 v202, v202, s[8:11], 0 offen
	buffer_load_u8 v221, v221, s[8:11], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v243, v237, 16, v235
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[243:244], v[130:131], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[243:244], v[132:133], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[243:244], v[134:135], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[243:244], v[136:137], v[121:128] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v0.l, 8, v0.l
	s_waitcnt vmcnt(13)
	v_lshlrev_b16 v0.h, 8, v129.l
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v129.l, 8, v138.l
	v_or_b16 v0.l, v213.l, v0.l
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v129.h, 8, v139.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v213, s27, v224
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v138.l, 8, v211.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v211, s27, v217
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v138.h, 8, v205.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v205, v198, v208
	v_add_nc_u32_e32 v208, s27, v214
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v139.l, 8, v212.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v139.h, 8, v202.l
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v202, v198, v209
	v_add_nc_u32_e32 v209, s27, v215
	v_add_nc_u32_e32 v212, s27, v222
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xf
	buffer_load_u8 v197, v197, s[8:11], 0 offen
	buffer_load_u8 v208, v208, s[8:11], 0 offen
	buffer_load_u8 v196, v196, s[8:11], 0 offen
	buffer_load_u8 v203, v203, s[8:11], 0 offen
	buffer_load_u8 v202, v202, s[8:11], 0 offen
	buffer_load_u8 v209, v209, s[8:11], 0 offen
	buffer_load_u8 v205, v205, s[8:11], 0 offen
	buffer_load_u8 v211, v211, s[8:11], 0 offen
	buffer_load_u8 v207, v207, s[8:11], 0 offen
	buffer_load_u8 v204, v204, s[8:11], 0 offen
	buffer_load_u8 v206, v206, s[8:11], 0 offen
	buffer_load_u8 v212, v212, s[8:11], 0 offen
	buffer_load_u8 v214, v195, s[8:11], 0 offen
	buffer_load_u8 v210, v210, s[8:11], 0 offen
	buffer_load_u8 v215, v194, s[8:11], 0 offen
	buffer_load_u8 v213, v213, s[8:11], 0 offen
	v_or_b16 v0.h, v216.l, v0.h
	v_or_b16 v129.l, v218.l, v129.l
	v_or_b16 v129.h, v219.l, v129.h
	v_or_b16 v138.l, v220.l, v138.l
	v_or_b16 v138.h, v223.l, v138.h
	v_or_b16 v139.l, v225.l, v139.l
	s_waitcnt vmcnt(16)
	v_or_b16 v139.h, v221.l, v139.h
	s_waitcnt vmcnt(15)
	v_lshlrev_b16 v194.l, 8, v197.l
	s_waitcnt vmcnt(13)
	v_lshlrev_b16 v194.h, 8, v196.l
	s_waitcnt vmcnt(11)
	v_lshlrev_b16 v195.l, 8, v202.l
	v_or_b16 v194.l, v208.l, v194.l
	s_waitcnt vmcnt(9)
	v_lshlrev_b16 v195.h, 8, v205.l
	v_or_b16 v194.h, v203.l, v194.h
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v196.l, 8, v207.l
	v_or_b16 v195.l, v209.l, v195.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v196.h, 8, v206.l
	v_or_b16 v195.h, v211.l, v195.h
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v197.l, 8, v214.l
	v_or_b16 v196.l, v204.l, v196.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b16 v197.h, 8, v215.l
	v_or_b16 v196.h, v212.l, v196.h
	v_or_b16 v197.l, v210.l, v197.l
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b16 v197.h, v213.l, v197.h
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v202, v186 offset:3328
	ds_load_u8 v203, v186 offset:3072
	ds_load_u8 v204, v186 offset:3840
	ds_load_u8 v205, v186 offset:3584
	ds_load_u8 v206, v186 offset:3968
	ds_load_u8 v207, v186 offset:3712
	ds_load_u8 v208, v186 offset:3456
	ds_load_u8 v209, v186 offset:3200
	ds_load_u8 v210, v186 offset:2304
	ds_load_u8 v211, v186 offset:2048
	ds_load_u8 v212, v186 offset:2816
	ds_load_u8 v213, v186 offset:2560
	ds_load_u8 v214, v186 offset:2944
	ds_load_u8 v215, v186 offset:2688
	ds_load_u8 v216, v186 offset:2432
	ds_load_u8 v217, v186 offset:2176
	ds_load_u8 v218, v186 offset:5376
	ds_load_u8 v219, v186 offset:5120
	ds_load_u8 v220, v186 offset:6016
	ds_load_u8 v221, v186 offset:5760
	ds_load_u8 v222, v186 offset:5504
	ds_load_u8 v223, v186 offset:5888
	ds_load_u8 v224, v186 offset:5632
	ds_load_u8 v225, v186 offset:5248
	ds_load_u8 v230, v186 offset:4352
	ds_load_u8 v231, v186 offset:4096
	ds_load_u8 v232, v186 offset:4992
	ds_load_u8 v233, v186 offset:4736
	ds_load_u8 v235, v186 offset:4480
	ds_load_u8 v237, v186 offset:4864
	ds_load_u8 v239, v186 offset:4608
	ds_load_u8 v241, v186 offset:4224
	ds_load_u8 v243, v186 offset:7424
	ds_load_u8 v244, v186 offset:7168
	ds_load_u8 v246, v186 offset:8064
	ds_load_u8 v248, v186 offset:7808
	ds_load_u8 v249, v186 offset:7552
	ds_load_u8 v250, v186 offset:7936
	ds_load_u8 v251, v186 offset:7680
	ds_load_u8 v254, v186 offset:7296
	ds_load_u8 v141, v186 offset:6400
	ds_load_u8 v200, v186 offset:6144
	ds_load_u8 v142, v186 offset:7040
	ds_load_u8 v228, v186 offset:6784
	ds_load_u8 v226, v186 offset:6528
	ds_load_u8 v162, v186 offset:6912
	ds_load_u8 v182, v186 offset:6656
	ds_load_u8 v183, v186 offset:6272
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v188, v0
	ds_store_b16_d16_hi v188, v0 offset:512
	ds_store_b16 v188, v129 offset:1024
	ds_store_b16_d16_hi v188, v129 offset:1536
	ds_store_b16 v188, v138 offset:2048
	ds_store_b16_d16_hi v188, v138 offset:2560
	ds_store_b16 v188, v139 offset:3072
	ds_store_b16_d16_hi v188, v139 offset:3584
	ds_store_b16 v188, v194 offset:4096
	ds_store_b16_d16_hi v188, v194 offset:4608
	ds_store_b16 v188, v195 offset:5120
	ds_store_b16_d16_hi v188, v195 offset:5632
	ds_store_b16 v188, v196 offset:6144
	ds_store_b16_d16_hi v188, v196 offset:6656
	ds_store_b16 v188, v197 offset:7168
	ds_store_b16_d16_hi v188, v197 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v186 offset:1280
	ds_load_u8 v129, v186 offset:1024
	ds_load_u8 v194, v186 offset:1920
	ds_load_u8 v195, v186 offset:1664
	ds_load_u8 v196, v186 offset:1408
	ds_load_u8 v197, v186 offset:1152
	ds_load_u8 v174, v186 offset:640
	ds_load_u8 v177, v186 offset:384
	ds_load_u8 v190, v186 offset:128
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v142, v228, v142, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	ds_load_u8 v129, v186 offset:1792
	ds_load_u8 v138, v186 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v177, v190, v177, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v138, v129, 0xc0c0004
	ds_load_u8 v138, v186 offset:256
	ds_load_u8 v139, v186
	ds_load_u8 v184, v186 offset:896
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v186 offset:768
	ds_load_u8 v255, v186 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v174, v174, v184, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v255, v255, v139, 0xc0c0004
	v_lshl_or_b32 v139, v129, 16, v0
	v_perm_b32 v0, v197, v196, 0xc0c0004
	v_perm_b32 v129, v195, v194, 0xc0c0004
	v_lshl_or_b32 v194, v174, 16, v177
	v_lshl_or_b32 v138, v255, 16, v138
	v_mov_b32_e32 v255, v164
	v_mov_b32_e32 v177, v163
	v_lshl_or_b32 v195, v129, 16, v0
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v189, v227, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[1:8], v[138:139], v[130:131], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[138:139], v[132:133], v[17:24] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v129, v160, v161, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[9:16], v[194:195], v[130:131], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[194:195], v[132:133], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v131, v147, v149, 0xc0c0004
	v_perm_b32 v132, v143, v144, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[138:139], v[134:135], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[194:195], v[134:135], v[41:48] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v130, v129, 16, v0
	v_perm_b32 v0, v245, v253, 0xc0c0004
	v_lshl_or_b32 v129, v132, 16, v131
	v_perm_b32 v131, v187, v201, 0xc0c0004
	v_perm_b32 v133, v153, v154, 0xc0c0004
	v_perm_b32 v134, v145, v146, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[138:139], v[136:137], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[194:195], v[136:137], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v132, v131, 16, v0
	v_perm_b32 v135, v155, v156, 0xc0c0004
	v_lshl_or_b32 v131, v134, 16, v133
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:240
	scratch_load_b32 v133, off, off offset:244
	v_perm_b32 v136, v148, v150, 0xc0c0004
	v_perm_b32 v139, v211, v210, 0xc0c0004
	v_perm_b32 v143, v217, v216, 0xc0c0004
	v_perm_b32 v144, v215, v214, 0xc0c0004
	v_dual_mov_b32 v163, v199 :: v_dual_mov_b32 v174, v172
	v_mov_b32_e32 v164, v159
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v133, v0, 0xc0c0004
	v_perm_b32 v133, v229, v234, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v134, v133, 16, v0
	v_lshl_or_b32 v133, v136, 16, v135
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:208
	scratch_load_b32 v137, off, off offset:224
	v_perm_b32 v0, v157, v193, 0xc0c0004
	v_perm_b32 v135, v151, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v135, v135, 16, v0
	v_perm_b32 v0, v203, v202, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	v_perm_b32 v137, v158, v140, 0xc0c0004
	v_perm_b32 v140, v213, v212, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v136, v137, 16, v136
	v_perm_b32 v137, v205, v204, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v137, v140, 16, v139
	v_perm_b32 v0, v209, v208, 0xc0c0004
	v_perm_b32 v139, v207, v206, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[65:72], v[137:138], v[129:130], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[137:138], v[131:132], v[81:88] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v140, v139, 16, v0
	v_lshl_or_b32 v139, v144, 16, v143
	v_wmma_i32_16x16x16_iu4 v[97:104], v[137:138], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[137:138], v[135:136], v[113:120] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[139:140], v[129:130], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[139:140], v[131:132], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[139:140], v[133:134], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[139:140], v[135:136], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v186 offset:3328
	ds_load_u8 v137, v186 offset:3072
	ds_load_u8 v139, v186 offset:3968
	ds_load_u8 v140, v186 offset:3712
	ds_load_u8 v143, v186 offset:3456
	ds_load_u8 v144, v186 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v186 offset:3840
	ds_load_u8 v138, v186 offset:3584
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v186 offset:2304
	ds_load_u8 v145, v186 offset:2048
	ds_load_u8 v146, v186 offset:2944
	ds_load_u8 v147, v186 offset:2688
	ds_load_u8 v148, v186 offset:2432
	ds_load_u8 v149, v186 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v145, v145, v138, 0xc0c0004
	ds_load_u8 v138, v186 offset:2816
	ds_load_u8 v150, v186 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v150, v138, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v0
	v_perm_b32 v0, v144, v143, 0xc0c0004
	v_perm_b32 v143, v149, v148, 0xc0c0004
	v_perm_b32 v144, v147, v146, 0xc0c0004
	v_lshl_or_b32 v137, v150, 16, v145
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v140, v139, 16, v0
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_load_b32 v0, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v139, v144, 16, v143
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[129:130], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[137:138], v[135:136], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[129:130], v[9:16] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:152
	scratch_load_b32 v130, off, off offset:200
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[139:140], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[139:140], v[135:136], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v140, v239, v237, 0xc0c0004
	v_perm_b32 v134, v236, v247, 0xc0c0004
	v_perm_b32 v139, v231, v230, 0xc0c0004
	v_perm_b32 v143, v241, v235, 0xc0c0004
	v_perm_b32 v144, v233, v232, 0xc0c0004
	scratch_load_b32 v237, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v129, v129, v130, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v130, off, off offset:128
	scratch_load_b32 v131, off, off offset:232
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v130, v131, 0xc0c0004
	scratch_load_b32 v130, off, off offset:252 ; 4-byte Folded Reload
	v_perm_b32 v0, v185, v0, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v132, v130, v191, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v130, v129, 16, v0
	v_lshl_or_b32 v129, v132, 16, v131
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:144
	scratch_load_b32 v131, off, off offset:176
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v131, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v131, off, off offset:184
	scratch_load_b32 v132, off, off offset:204
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v132, off, off offset:216
	scratch_load_b32 v133, off, off offset:236
	s_waitcnt vmcnt(0)
	v_perm_b32 v133, v133, v132, 0xc0c0004
	v_lshl_or_b32 v132, v131, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v131, v134, 16, v133
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:140
	scratch_load_b32 v133, off, off offset:164
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v133, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:168
	scratch_load_b32 v134, off, off offset:188
	s_waitcnt vmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:192
	scratch_load_b32 v135, off, off offset:220
	s_waitcnt vmcnt(0)
	v_perm_b32 v135, v135, v134, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:228
	scratch_load_b32 v136, off, off offset:248
	s_waitcnt vmcnt(0)
	v_perm_b32 v136, v136, v134, 0xc0c0004
	v_lshl_or_b32 v134, v133, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v133, v136, 16, v135
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:132
	scratch_load_b32 v135, off, off offset:136
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v135, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:156
	scratch_load_b32 v136, off, off offset:160
	s_waitcnt vmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:172
	scratch_load_b32 v137, off, off offset:180
	s_waitcnt vmcnt(0)
	v_perm_b32 v137, v137, v136, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:196
	scratch_load_b32 v138, off, off offset:212
	s_waitcnt vmcnt(0)
	v_perm_b32 v138, v138, v136, 0xc0c0004
	v_lshl_or_b32 v136, v135, 16, v0
	v_perm_b32 v0, v219, v218, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v135, v138, 16, v137
	v_perm_b32 v137, v224, v223, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v0
	v_lshl_or_b32 v137, v140, 16, v139
	v_perm_b32 v0, v225, v222, 0xc0c0004
	v_perm_b32 v139, v221, v220, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[137:138], v[129:130], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[137:138], v[131:132], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v140, v139, 16, v0
	v_lshl_or_b32 v139, v144, 16, v143
	v_wmma_i32_16x16x16_iu4 v[97:104], v[137:138], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[137:138], v[135:136], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[139:140], v[129:130], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[139:140], v[131:132], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[139:140], v[133:134], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[139:140], v[135:136], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v186 offset:5376
	ds_load_u8 v137, v186 offset:5120
	ds_load_u8 v139, v186 offset:6016
	ds_load_u8 v140, v186 offset:5760
	ds_load_u8 v143, v186 offset:5504
	ds_load_u8 v144, v186 offset:5248
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v186 offset:5888
	ds_load_u8 v138, v186 offset:5632
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v186 offset:4352
	ds_load_u8 v145, v186 offset:4096
	ds_load_u8 v146, v186 offset:4992
	ds_load_u8 v147, v186 offset:4736
	ds_load_u8 v148, v186 offset:4480
	ds_load_u8 v149, v186 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v145, v145, v138, 0xc0c0004
	ds_load_u8 v138, v186 offset:4864
	ds_load_u8 v150, v186 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v150, v138, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v0
	v_perm_b32 v0, v144, v143, 0xc0c0004
	v_perm_b32 v143, v149, v148, 0xc0c0004
	v_perm_b32 v144, v147, v146, 0xc0c0004
	v_lshl_or_b32 v137, v150, 16, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v140, v139, 16, v0
	v_lshl_or_b32 v139, v144, 16, v143
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[129:130], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[137:138], v[135:136], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[129:130], v[9:16] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:36
	scratch_load_b32 v129, off, off offset:124
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[139:140], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[139:140], v[135:136], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v139, v200, v141, 0xc0c0004
	v_perm_b32 v140, v182, v162, 0xc0c0004
	v_perm_b32 v141, v183, v226, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v129, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:56
	scratch_load_b32 v130, off, off offset:72
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v129, v130, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v130, off, off
	scratch_load_b32 v131, off, off offset:96
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v130, v131, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v130, off, off offset:108
	scratch_load_b32 v132, off, off offset:120
	s_waitcnt vmcnt(0)
	v_perm_b32 v132, v130, v132, 0xc0c0004
	v_lshl_or_b32 v130, v129, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v129, v132, 16, v131
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:24
	scratch_load_b32 v131, off, off offset:40
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v131, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v131, off, off offset:48
	scratch_load_b32 v132, off, off offset:76
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v132, off, off offset:80
	scratch_load_b32 v133, off, off offset:100
	s_waitcnt vmcnt(0)
	v_perm_b32 v133, v133, v132, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v132, off, off offset:112
	scratch_load_b32 v134, off, off offset:116
	s_waitcnt vmcnt(0)
	v_perm_b32 v134, v134, v132, 0xc0c0004
	v_lshl_or_b32 v132, v131, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v131, v134, 16, v133
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:12
	scratch_load_b32 v133, off, off offset:28
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v133, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:32
	scratch_load_b32 v134, off, off offset:52
	s_waitcnt vmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:64
	scratch_load_b32 v135, off, off offset:84
	s_waitcnt vmcnt(0)
	v_perm_b32 v135, v135, v134, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:92
	scratch_load_b32 v136, off, off offset:104
	s_waitcnt vmcnt(0)
	v_perm_b32 v136, v136, v134, 0xc0c0004
	v_lshl_or_b32 v134, v133, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v133, v136, 16, v135
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:44
	scratch_load_b32 v135, off, off offset:60
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v135, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:68
	scratch_load_b32 v136, off, off offset:88
	s_waitcnt vmcnt(0)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v136, off, off offset:4
	scratch_load_b32 v137, off, off offset:8
	v_lshl_or_b32 v135, v135, 16, v0
	v_perm_b32 v0, v244, v243, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v137, off, off offset:16
	scratch_load_b32 v138, off, off offset:20
	s_waitcnt vmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v136, v137, 16, v136
	v_perm_b32 v137, v251, v250, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v0
	v_lshl_or_b32 v137, v140, 16, v139
	v_perm_b32 v0, v254, v249, 0xc0c0004
	v_perm_b32 v139, v248, v246, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[137:138], v[129:130], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[137:138], v[131:132], v[81:88] neg_lo:[1,1,0]
	v_lshl_or_b32 v140, v139, 16, v0
	v_lshl_or_b32 v139, v142, 16, v141
	v_wmma_i32_16x16x16_iu4 v[97:104], v[137:138], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[137:138], v[135:136], v[113:120] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[139:140], v[129:130], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[139:140], v[131:132], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[139:140], v[133:134], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[139:140], v[135:136], v[121:128] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v0, v186 offset:7424
	ds_load_u8 v137, v186 offset:7168
	ds_load_u8 v139, v186 offset:8064
	ds_load_u8 v140, v186 offset:7808
	ds_load_u8 v141, v186 offset:7552
	ds_load_u8 v142, v186 offset:7296
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v137, v0, 0xc0c0004
	ds_load_u8 v137, v186 offset:7936
	ds_load_u8 v138, v186 offset:7680
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v137, v138, v137, 0xc0c0004
	ds_load_u8 v138, v186 offset:6400
	ds_load_u8 v143, v186 offset:6144
	ds_load_u8 v144, v186 offset:7040
	ds_load_u8 v145, v186 offset:6784
	ds_load_u8 v146, v186 offset:6528
	ds_load_u8 v147, v186 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v143, v138, 0xc0c0004
	ds_load_u8 v138, v186 offset:6912
	ds_load_u8 v148, v186 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v138, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v0
	v_perm_b32 v0, v142, v141, 0xc0c0004
	v_perm_b32 v141, v147, v146, 0xc0c0004
	v_perm_b32 v142, v145, v144, 0xc0c0004
	v_lshl_or_b32 v137, v148, 16, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v140, v139, 16, v0
	v_lshl_or_b32 v139, v142, 16, v141
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[129:130], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[131:132], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[137:138], v[135:136], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[129:130], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[139:140], v[133:134], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[139:140], v[135:136], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v73
	v_cvt_f32_i32_e32 v135, v74
	v_cvt_f32_i32_e32 v151, v83
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v74, v22
	v_cvt_f32_i32_e32 v73, v23
	v_cvt_f32_i32_e32 v83, v36
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v22, v43
	v_cvt_f32_i32_e32 v36, v54
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v54, off, off offset:788
	scratch_load_b32 v42, off, off offset:772
	scratch_load_b32 v43, off, off offset:776
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v142, v71
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v5, v30
	v_cvt_f32_i32_e32 v30, v40
	v_cvt_f32_i32_e32 v40, v50
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v143, v70
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v70, v6
	v_cvt_f32_i32_e32 v6, v31
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v39, v51
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s28, s26, s7
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v133, v76
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s28, s28, s5
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v4, v29
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v69
	v_cvt_f32_i32_e32 v152, v84
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v69, v7
	v_cvt_f32_i32_e32 v7, v32
	v_cvt_f32_i32_e32 v84, v35
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v38, v52
	v_cvt_f32_i32_e32 v35, v55
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v153, v85
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v85, v34
	v_cvt_f32_i32_e32 v34, v56
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v145, v65
	v_cvt_f32_i32_e32 v146, v66
	v_cvt_f32_i32_e32 v147, v67
	v_cvt_f32_i32_e32 v148, v68
	v_cvt_f32_i32_e32 v141, v72
	v_cvt_f32_i32_e32 v134, v75
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v68, v8
	v_cvt_f32_i32_e32 v67, v9
	v_cvt_f32_i32_e32 v66, v10
	v_cvt_f32_i32_e32 v65, v11
	v_cvt_f32_i32_e32 v9, v12
	v_cvt_f32_i32_e32 v75, v21
	v_cvt_f32_i32_e32 v72, v24
	v_cvt_f32_i32_e32 v24, v41
	v_cvt_f32_i32_e32 v21, v44
	v_cvt_f32_i32_e32 v8, v45
	v_cvt_f32_i32_e32 v10, v46
	v_cvt_f32_i32_e32 v11, v47
	v_cvt_f32_i32_e32 v12, v48
	v_cvt_f32_i32_e32 v41, v49
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v154, v86
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v33, v37
	v_cvt_f32_i32_e32 v37, v53
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v156, v88
	v_cvt_f32_i32_e32 v88, v95
	v_cvt_f32_i32_e32 v95, v109
	v_cvt_f32_i32_e32 v109, v114
	v_cvt_f32_i32_e32 v139, v89
	v_cvt_f32_i32_e32 v89, v94
	v_cvt_f32_i32_e32 v94, v110
	v_cvt_f32_i32_e32 v110, v115
	v_cvt_f32_i32_e32 v138, v90
	v_cvt_f32_i32_e32 v90, v93
	v_cvt_f32_i32_e32 v93, v111
	v_cvt_f32_i32_e32 v111, v116
	v_cvt_f32_i32_e32 v136, v92
	v_cvt_f32_i32_e32 v92, v112
	v_cvt_f32_i32_e32 v112, v117
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v159, v99
	v_cvt_f32_i32_e32 v160, v100
	v_cvt_f32_i32_e32 v172, v103
	v_cvt_f32_i32_e32 v103, v105
	v_cvt_f32_i32_e32 v100, v108
	v_cvt_f32_i32_e32 v108, v113
	v_cvt_f32_i32_e32 v113, v118
	v_cvt_f32_i32_e32 v105, v123
	v_cvt_f32_i32_e32 v99, v125
	v_cvt_f32_i32_e32 v149, v81
	v_cvt_f32_i32_e32 v150, v82
	v_cvt_f32_i32_e32 v157, v97
	v_cvt_f32_i32_e32 v158, v98
	v_cvt_f32_i32_e32 v187, v104
	v_cvt_f32_i32_e32 v104, v124
	v_cvt_f32_i32_e32 v98, v126
	v_cvt_f32_i32_e32 v155, v87
	v_cvt_f32_i32_e32 v161, v101
	v_cvt_f32_i32_e32 v162, v102
	v_cvt_f32_i32_e32 v101, v107
	v_cvt_f32_i32_e32 v107, v121
	v_cvt_f32_i32_e32 v115, v120
	v_cvt_f32_i32_e32 v137, v91
	v_cvt_f32_i32_e32 v102, v106
	v_cvt_f32_i32_e32 v106, v122
	v_cvt_f32_i32_e32 v131, v78
	v_cvt_f32_i32_e32 v132, v77
	v_cvt_f32_i32_e32 v130, v79
	v_cvt_f32_i32_e32 v129, v80
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v91, v1
	v_cvt_f32_i32_e32 v81, v18
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v87, v96
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v78, v2
	v_cvt_f32_i32_e32 v77, v3
	v_cvt_f32_i32_e32 v82, v17
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v97, v127
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v80, v19
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v96, v128
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v17, v25
	v_cvt_f32_i32_e32 v2, v15
	v_cvt_f32_i32_e32 v15, v27
	v_cvt_f32_i32_e32 v3, v16
	v_cvt_f32_i32_e32 v16, v26
	v_cvt_f32_i32_e32 v0, v13
	v_cvt_f32_i32_e32 v13, v28
	v_cvt_f32_i32_e32 v26, v59
	v_cvt_f32_i32_e32 v25, v60
	v_cvt_f32_i32_e32 v19, v63
	v_cvt_f32_i32_e32 v28, v57
	v_cvt_f32_i32_e32 v27, v58
	v_cvt_f32_i32_e32 v20, v64
	v_cvt_f32_i32_e32 v1, v14
	v_cvt_f32_i32_e32 v14, v61
	v_cvt_f32_i32_e32 v18, v62
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v29, v54, s28, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v42, s26, v42, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v43, s26, v43, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v29, v29, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	s_clause 0x1
	buffer_load_u16 v42, v42, s[20:23], 0 offen
	buffer_load_u16 v50, v43, s[20:23], 0 offen
	scratch_load_b32 v43, off, off offset:780 ; 4-byte Folded Reload
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v50, 16, v50
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v43, s26, v43, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v5, v5, v50 :: v_dual_mul_f32 v4, v50, v4
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v43, 0x80000000, v43, s3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v6, v6, v50
	v_mul_f32_e32 v7, v7, v50
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v51, v43, s[20:23], 0 offen
	scratch_load_b32 v43, off, off offset:784 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v51, 16, v51
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v43, s26, v43, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s26, s26, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s26, s24
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v33, v51, v33
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v43, 0x80000000, v43, s4
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v31, v51, v31
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v52, v43, s[20:23], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v55, off, off offset:792 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v55, v29
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x13                           ; 80-byte Folded Reload
	scratch_load_b32 v56, off, off offset:796
	scratch_load_b32 v222, off, off offset:696
	scratch_load_b32 v211, off, off offset:652
	scratch_load_b32 v201, off, off offset:612
	scratch_load_b32 v204, off, off offset:624
	scratch_load_b32 v216, off, off offset:672
	scratch_load_b32 v191, off, off offset:584
	scratch_load_b32 v202, off, off offset:616
	scratch_load_b32 v225, off, off offset:708
	scratch_load_b32 v214, off, off offset:664
	scratch_load_b32 v193, off, off offset:588
	scratch_load_b32 v120, off, off offset:360
	scratch_load_b32 v203, off, off offset:620
	scratch_load_b32 v182, off, off offset:516
	scratch_load_b32 v183, off, off offset:520
	scratch_load_b32 v185, off, off offset:528
	scratch_load_b32 v190, off, off offset:580
	scratch_load_b32 v215, off, off offset:668
	scratch_load_b32 v194, off, off offset:592
	scratch_load_b32 v184, off, off offset:524
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v29, 16, v42
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(19)
	ds_load_b128 v[42:45], v56
	ds_load_b128 v[46:49], v56 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v29, v145
	s_clause 0xf                            ; 64-byte Folded Reload
	scratch_load_b32 v145, off, off offset:420
	scratch_load_b32 v116, off, off offset:324
	scratch_load_b32 v117, off, off offset:328
	scratch_load_b32 v119, off, off offset:336
	scratch_load_b32 v123, off, off offset:388
	scratch_load_b32 v124, off, off offset:392
	scratch_load_b32 v227, off, off offset:716
	scratch_load_b32 v218, off, off offset:680
	scratch_load_b32 v210, off, off offset:648
	scratch_load_b32 v223, off, off offset:700
	scratch_load_b32 v212, off, off offset:656
	scratch_load_b32 v224, off, off offset:704
	scratch_load_b32 v213, off, off offset:660
	scratch_load_b32 v226, off, off offset:712
	scratch_load_b32 v217, off, off offset:676
	scratch_load_b32 v209, off, off offset:644
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v41, v52, v41
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(32) lgkmcnt(1)
	v_fmac_f32_e32 v201, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v29, v146
	scratch_load_b32 v146, off, off offset:424 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v40, v52, v40
	v_mul_f32_e32 v38, v52, v38
	v_mul_f32_e32 v39, v52, v39
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(29)
	v_fmac_f32_e32 v202, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v29, v147
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v147, off, off offset:428
	scratch_load_b32 v125, off, off offset:396
	scratch_load_b32 v118, off, off offset:332
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v204, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v29, v148
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v148, off, off offset:432
	scratch_load_b32 v126, off, off offset:400
	scratch_load_b32 v121, off, off offset:364
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v29, v9
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(30)
	v_fmac_f32_e32 v203, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v149
	scratch_load_b32 v149, off, off offset:492 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v1, v29
	v_mul_f32_e32 v3, v3, v29
	v_mul_f32_e32 v2, v2, v29
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(30)
	v_fmac_f32_e32 v182, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v150
	scratch_load_b32 v150, off, off offset:496 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(30)
	v_fmac_f32_e32 v183, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v151
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(29)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v185, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v152
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(25)
	v_fmac_f32_e32 v184, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v157
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(24)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v145, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v158
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v146, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v159
	scratch_load_b32 v159, off, off offset:548 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v148, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v160
	scratch_load_b32 v160, off, off offset:552 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v147, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v52, v108
	scratch_load_b32 v108, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v116, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v109
	v_mul_f32_e32 v53, v140, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v117, v42, v43 :: v_dual_mul_f32 v42, v52, v110
	v_dual_fmac_f32 v119, v42, v44 :: v_dual_mul_f32 v42, v52, v111
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v118, v42, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v29, v144
	scratch_load_b32 v144, off, off offset:488 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v190, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v29, v143
	scratch_load_b32 v143, off, off offset:484 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v191, v42, v47 :: v_dual_mul_f32 v42, v29, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v193, v42, v48 :: v_dual_mul_f32 v42, v29, v141
	v_fmac_f32_e32 v194, v42, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v153
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v154
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v144, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v149, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v156
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v150, v42, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v51, v161
	scratch_load_b32 v161, off, off offset:556 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v123, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v51, v162
	scratch_load_b32 v162, off, off offset:560 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v51, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v125, v42, v48 :: v_dual_mul_f32 v42, v51, v187
	v_fmac_f32_e32 v126, v42, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v112
	scratch_load_b32 v112, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v108, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v113
	scratch_load_b32 v113, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v112, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v114
	scratch_load_b32 v114, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v113, v42, v48 :: v_dual_mul_f32 v42, v52, v115
	scratch_load_b32 v115, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v114, v42, v49
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[42:45], v56 offset:512
	ds_load_b128 v[46:49], v56 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v227, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v29, v135
	scratch_load_b32 v135, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v159, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v29, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v160, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v29, v133
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v161, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v139, v50
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v223, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v138
	scratch_load_b32 v138, off, off offset:464 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v135, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v137
	scratch_load_b32 v137, off, off offset:456 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v137, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v50, v136
	scratch_load_b32 v136, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v136, v53, v45 :: v_dual_mul_f32 v53, v103, v51
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v216, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v102
	scratch_load_b32 v102, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v115, v53, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v101
	scratch_load_b32 v101, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v120, v53, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v51, v100
	scratch_load_b32 v100, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v121, v53, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v53, v107, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v212, v53, v42
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v42, v52, v106 :: v_dual_mul_f32 v53, v29, v91
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v100, v42, v43
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v105
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v101, v42, v44
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v52, v104
	scratch_load_b32 v104, off, off offset:368 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v102, v42, v45
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v29, v132
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v162, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v131, v29
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v226, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v130, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v225, v42, v48 :: v_dual_mul_f32 v42, v129, v29
	v_fmac_f32_e32 v224, v42, v49
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v50, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v138, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v89, v50
	scratch_load_b32 v89, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v222, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v88, v50
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v218, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v87, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v217, v42, v49 :: v_dual_mul_f32 v42, v51, v95
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v104, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v94, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v215, v42, v47
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v93, v51
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v214, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v92, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v213, v42, v49 :: v_dual_mul_f32 v42, v52, v99
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v89, v42, v46
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v98, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v211, v42, v47 :: v_dual_mul_f32 v42, v97, v52
	v_fmac_f32_e32 v210, v42, v48
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v96, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v209, v42, v49 :: v_dual_add_nc_u32 v42, s74, v54
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v42, v42, s28, 1
	buffer_load_u16 v42, v42, s[12:15], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v55, v42
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v208, off, off offset:640
	scratch_load_b32 v207, off, off offset:636
	scratch_load_b32 v206, off, off offset:632
	scratch_load_b32 v205, off, off offset:628
	scratch_load_b32 v199, off, off offset:608
	scratch_load_b32 v197, off, off offset:604
	scratch_load_b32 v196, off, off offset:600
	scratch_load_b32 v195, off, off offset:596
	scratch_load_b32 v158, off, off offset:544
	scratch_load_b32 v189, off, off offset:576
	scratch_load_b32 v187, off, off offset:572
	scratch_load_b32 v200, off, off offset:564
	scratch_load_b32 v172, off, off offset:568
	scratch_load_b32 v157, off, off offset:540
	scratch_load_b32 v155, off, off offset:532
	scratch_load_b32 v156, off, off offset:536
	scratch_load_b32 v103, off, off offset:352
	scratch_load_b32 v97, off, off offset:340
	scratch_load_b32 v98, off, off offset:344
	scratch_load_b32 v122, off, off offset:384
	scratch_load_b32 v107, off, off offset:380
	scratch_load_b32 v105, off, off offset:372
	scratch_load_b32 v106, off, off offset:376
	scratch_load_b32 v99, off, off offset:348
	scratch_load_b32 v134, off, off offset:448
	scratch_load_b32 v133, off, off offset:444
	scratch_load_b32 v132, off, off offset:440
	scratch_load_b32 v131, off, off offset:436
	scratch_load_b32 v130, off, off offset:416
	scratch_load_b32 v129, off, off offset:412
	scratch_load_b32 v128, off, off offset:408
	scratch_load_b32 v127, off, off offset:404
	ds_load_b128 v[42:45], v56
	ds_load_b128 v[46:49], v56 offset:16
	s_clause 0x1c                           ; 116-byte Folded Reload
	scratch_load_b32 v94, off, off offset:308
	scratch_load_b32 v96, off, off offset:320
	scratch_load_b32 v88, off, off offset:316
	scratch_load_b32 v95, off, off offset:312
	scratch_load_b32 v90, off, off offset:280
	scratch_load_b32 v91, off, off offset:284
	scratch_load_b32 v92, off, off offset:288
	scratch_load_b32 v93, off, off offset:292
	scratch_load_b32 v154, off, off offset:512
	scratch_load_b32 v153, off, off offset:508
	scratch_load_b32 v151, off, off offset:500
	scratch_load_b32 v152, off, off offset:504
	scratch_load_b32 v142, off, off offset:480
	scratch_load_b32 v141, off, off offset:476
	scratch_load_b32 v140, off, off offset:472
	scratch_load_b32 v139, off, off offset:468
	scratch_load_b32 v230, off, off offset:736
	scratch_load_b32 v228, off, off offset:720
	scratch_load_b32 v87, off, off offset:728
	scratch_load_b32 v229, off, off offset:724
	scratch_load_b32 v221, off, off offset:692
	scratch_load_b32 v220, off, off offset:688
	scratch_load_b32 v219, off, off offset:684
	scratch_load_b32 v236, off, off offset:768
	scratch_load_b32 v235, off, off offset:764
	scratch_load_b32 v234, off, off offset:756
	scratch_load_b32 v233, off, off offset:748
	scratch_load_b32 v232, off, off offset:744
	scratch_load_b32 v231, off, off offset:740
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v51, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(60) lgkmcnt(1)
	v_fmac_f32_e32 v208, v53, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v29, v78
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(59)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v207, v53, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v29, v77
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(58)
	v_fmac_f32_e32 v206, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v29, v76
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(44)
	v_fmac_f32_e32 v103, v41, v42
	s_waitcnt vmcnt(43)
	v_fmac_f32_e32 v97, v40, v43
	v_fmac_f32_e32 v205, v53, v45
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(42)
	v_dual_mul_f32 v53, v50, v82 :: v_dual_fmac_f32 v98, v39, v44
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(37)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v99, v38, v45 :: v_dual_fmac_f32 v158, v53, v42
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v53, v50, v81 :: v_dual_mul_f32 v38, v29, v71
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(32) lgkmcnt(0)
	v_fmac_f32_e32 v130, v33, v46
	v_fmac_f32_e32 v157, v53, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v50, v80
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(29)
	v_fmac_f32_e32 v127, v30, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v30, v52, v37 :: v_dual_fmac_f32 v199, v38, v46
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v31, v48
	v_fmac_f32_e32 v155, v53, v44
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v50, v79
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(28)
	v_fmac_f32_e32 v94, v30, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v52, v36
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v156, v53, v45 :: v_dual_mul_f32 v53, v51, v86
	scratch_load_b32 v86, off, off offset:732 ; 4-byte Folded Reload
	v_dual_fmac_f32 v134, v53, v42 :: v_dual_mul_f32 v53, v51, v85
	scratch_load_b32 v85, off, off offset:752 ; 4-byte Folded Reload
	s_waitcnt vmcnt(29)
	v_fmac_f32_e32 v96, v30, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v52, v35
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v133, v53, v43
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v53, v51, v84
	scratch_load_b32 v84, off, off offset:760 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(29)
	v_fmac_f32_e32 v88, v30, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v30, v52, v34
	v_mul_f32_e32 v32, v51, v32
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v132, v53, v44 :: v_dual_mul_f32 v53, v51, v83
	s_waitcnt vmcnt(28)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v95, v30, v49 :: v_dual_mul_f32 v38, v29, v70
	v_fmac_f32_e32 v129, v32, v47
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[30:33], v56 offset:512
	ds_load_b128 v[34:37], v56 offset:528
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v29, v0
	v_dual_mul_f32 v8, v51, v8 :: v_dual_fmac_f32 v197, v38, v47
	v_mul_f32_e32 v38, v29, v69
	v_dual_mul_f32 v14, v52, v14 :: v_dual_fmac_f32 v131, v53, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v196, v38, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v29, v68
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v195, v38, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v50, v75
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v200, v9, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v17, v50
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(3) lgkmcnt(0)
	v_fmac_f32_e32 v231, v7, v37
	v_fmac_f32_e32 v235, v1, v35
	v_fmac_f32_e32 v139, v4, v34
	v_dual_fmac_f32 v106, v8, v34 :: v_dual_fmac_f32 v233, v5, v35
	v_fmac_f32_e32 v93, v14, v34
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v85, v9, v30
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v50, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v142, v9, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v50, v15
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v154, v38, v46
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v38, v50, v74 :: v_dual_mul_f32 v15, v20, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v232, v6, v36
	v_fmac_f32_e32 v141, v9, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v50, v13
	v_mul_f32_e32 v13, v19, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v219, v15, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v140, v9, v33 :: v_dual_mul_f32 v9, v24, v51
	v_fmac_f32_e32 v153, v38, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v50, v73
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v220, v13, v36
	v_dual_fmac_f32 v230, v9, v30 :: v_dual_mul_f32 v9, v51, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v151, v38, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v38, v50, v72
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v122, v9, v31 :: v_dual_mul_f32 v9, v51, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v152, v38, v49
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v38, v67, v29 :: v_dual_fmac_f32 v107, v9, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v9, v51, v21 :: v_dual_fmac_f32 v236, v38, v30
	v_mul_f32_e32 v38, v29, v66
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v105, v9, v33
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v28, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v189, v38, v31 :: v_dual_mul_f32 v38, v29, v65
	v_dual_fmac_f32 v228, v9, v30 :: v_dual_mul_f32 v9, v52, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v187, v38, v32 :: v_dual_fmac_f32 v90, v9, v31
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v52, v26
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v91, v9, v32
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v9, v52, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v92, v9, v33 :: v_dual_mul_f32 v9, v10, v51
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v10, v11, v51
	v_dual_mul_f32 v11, v12, v51 :: v_dual_mul_f32 v12, v18, v52
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v172, v0, v34
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v84, v2, v36
	v_fmac_f32_e32 v234, v3, v37
	v_dual_fmac_f32 v86, v9, v35 :: v_dual_fmac_f32 v87, v10, v36
	v_fmac_f32_e32 v229, v11, v37
	v_fmac_f32_e32 v221, v12, v35
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v109, off, off offset:800
	scratch_load_b32 v110, off, off offset:804
	scratch_load_b32 v111, off, off offset:808
	v_mov_b32_e32 v5, v165
.LBB0_9:                                ; %Flow799
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 62, v164
	v_or_b32_e32 v2, 60, v164
	v_or_b32_e32 v4, 58, v164
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v10, 0xbfb8aa3b, v235 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v208
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s66, v0
	v_add_co_ci_u32_e64 v1, null, s67, 0, s0
	v_add_co_u32 v2, s1, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v3, null, s67, 0, s1
	v_add_co_u32 v7, s1, s66, v4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[64:65], v[0:1]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, s67, 0, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[72:73], v[0:1]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 56, v164
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[64:65], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[72:73], v[2:3]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v2, 54, v164
	v_or_b32_e32 v4, 52, v164
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s6
	v_add_co_u32 v2, s6, s66, v2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[64:65], v[7:8]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v3, null, s67, 0, s6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[72:73], v[7:8]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v7, 50, v164
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[72:73], v[0:1]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s10, s66, v4
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s67, 0, s10
	v_add_co_u32 v7, s10, s66, v7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[64:65], v[2:3]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v8, null, s67, 0, s10
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[72:73], v[2:3]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v2, 48, v164
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s11, s[64:65], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[72:73], v[0:1]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v0, 46, v164
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s13, s[64:65], v[7:8]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s14, s66, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v4, null, s67, 0, s14
	v_add_co_u32 v1, s14, s66, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s14
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[72:73], v[7:8]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v7, 0xbfb8aa3b, v236 :: v_dual_mul_f32 v0, 0xbfb8aa3b, v206
	v_dual_mul_f32 v12, 0xbfb8aa3b, v84 :: v_dual_mul_f32 v13, 0xbfb8aa3b, v234
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s15, s[64:65], v[3:4]
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[72:73], v[3:4]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v12
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v13
	v_mul_f32_e32 v29, 0xbfb8aa3b, v197
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v14, 0, 0x42800000, s18
	v_cndmask_b32_e64 v16, 0, 0x42800000, s19
	v_mul_f32_e32 v25, 0xbfb8aa3b, v195
	v_cndmask_b32_e64 v13, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v236
	v_fmac_f32_e32 v14, 0xbfb8aa3b, v84
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v234
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v235
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s19
	v_exp_f32_e32 v12, v12
	v_dual_mul_f32 v30, 0xbfb8aa3b, v200 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v231
	v_mul_f32_e32 v47, 0xbfb8aa3b, v158
	v_dual_mul_f32 v39, 0xbfb8aa3b, v153 :: v_dual_mul_f32 v42, 0xbfb8aa3b, v139
	v_ldexp_f32 v4, v11, v4
	v_mul_f32_e32 v11, 0xbfb8aa3b, v85
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v17
	v_dual_mul_f32 v60, 0xbfb8aa3b, v142 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v229
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v10, v12, v10
	v_ldexp_f32 v12, v14, v13
	v_ldexp_f32 v13, v16, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_mul_f32_e32 v16, 0xbfb8aa3b, v232
	v_mul_f32_e32 v14, 0xbfb8aa3b, v233
	v_cndmask_b32_e64 v20, 0, 0x42800000, s19
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s19
	v_cndmask_b32_e64 v15, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v16
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v14
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v231
	v_cmp_gt_f32_e64 s19, 0xc2fc0000, v21
	v_cndmask_b32_e64 v18, 0, 0x42800000, s18
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v33, 0xbfb8aa3b, v152
	v_exp_f32_e32 v20, v20
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v232
	v_exp_f32_e32 v15, v15
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v233
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s18
	v_exp_f32_e32 v18, v18
	v_mul_f32_e32 v45, 0xbfb8aa3b, v127
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v24, 0, 0x42800000, s19
	v_mul_f32_e32 v57, 0xbfb8aa3b, v98
	v_mul_f32_e32 v63, 0xbfb8aa3b, v107
	v_ldexp_f32 v11, v15, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v15, 0xbfb8aa3b, v230 :: v_dual_fmac_f32 v24, 0xbfb8aa3b, v229
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s19
	v_mul_f32_e32 v52, 0xbfb8aa3b, v129
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_ldexp_f32 v14, v16, v14
	v_ldexp_f32 v16, v18, v17
	v_ldexp_f32 v17, v20, v19
	v_mul_f32_e32 v18, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v20, 0xbfb8aa3b, v87
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v68, v68, v236
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v230
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	v_cndmask_b32_e64 v22, 0, 0x42800000, s18
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, s18
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v86
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	s_waitcnt vmcnt(2)
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_and_b32 v6, 0x80, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v15, v19, v15
	v_dual_mul_f32 v28, 0xbfb8aa3b, v95 :: v_dual_add_f32 v13, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, s19, v84, v12, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v83, null, v11, v11, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v19, v22, v21
	v_mul_f32_e32 v21, 0xbfb8aa3b, v228
	v_exp_f32_e32 v24, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v18, v20, v18
	v_dual_mul_f32 v22, 0xbfb8aa3b, v221 :: v_dual_add_f32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v20, v24, v23
	v_mul_f32_e32 v23, 0xbfb8aa3b, v220
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0x42800000, s18
	v_mul_f32_e32 v24, 0xbfb8aa3b, v219
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s18
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v228
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v221
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v24
	v_dual_mul_f32 v7, 0xbfb8aa3b, v205 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v207
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v62, 0xbfb8aa3b, v103
	v_exp_f32_e32 v69, v56
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v22, v22
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v220
	v_cndmask_b32_e64 v24, 0, 0x42800000, s18
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s18
	v_dual_mul_f32 v38, 0xbfb8aa3b, v199 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v172
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v71, v23
	v_dual_mul_f32 v26, 0xbfb8aa3b, v196 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v189
	v_ldexp_f32 v65, v69, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v70, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v32, 0xbfb8aa3b, v88
	v_ldexp_f32 v21, v22, v21
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v219
	v_dual_mul_f32 v56, 0xbfb8aa3b, v94 :: v_dual_add_f32 v65, 1.0, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_ldexp_f32 v66, v71, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, null, v10, v10, v235
	v_fmac_f32_e32 v73, v69, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v36, 0xbfb8aa3b, v187 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v156
	v_dual_mul_f32 v31, 0xbfb8aa3b, v155 :: v_dual_mul_f32 v40, 0xbfb8aa3b, v157
	v_dual_mul_f32 v44, 0xbfb8aa3b, v154 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v132
	v_dual_mul_f32 v34, 0xbfb8aa3b, v151 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v140
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v67, v72, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v71, v69, 1.0
	v_div_scale_f32 v72, null, v12, v12, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v22, 0xbfb8aa3b, v92 :: v_dual_add_f32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v77, v69
	v_div_scale_f32 v74, vcc_lo, v236, v68, v236
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v75, v72
	v_div_scale_f32 v77, s18, v235, v10, v235
	v_mul_f32_e32 v76, v74, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v48, 0xbfb8aa3b, v141 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v131
	v_dual_mul_f32 v58, 0xbfb8aa3b, v134 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v70, v76, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v50, 0xbfb8aa3b, v133 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v130
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v79, -v72, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v4, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v78, v73
	v_mul_f32_e32 v78, v77, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v46, 0xbfb8aa3b, v128 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v99
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v79, v75
	v_div_scale_f32 v79, null, v13, v13, v234
	v_fma_f32 v70, -v70, v76, v74
	v_fma_f32 v74, -v71, v78, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v82, v80, v75
	v_rcp_f32_e32 v81, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v64, 0xbfb8aa3b, v122 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v70, v70, v73, v76
	v_rcp_f32_e32 v73, v83
	v_fmac_f32_e32 v78, v74, v69
	v_fma_f32 v74, -v72, v82, v80
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v68, v70, v68, v236
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v54, 0xbfb8aa3b, v106 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v79, v81, 1.0
	v_fma_f32 v70, -v71, v78, v77
	v_fmac_f32_e32 v82, v74, v75
	v_fma_f32 v74, -v83, v73, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v24, 0xbfb8aa3b, v90 :: v_dual_fmac_f32 v81, v76, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, s20, v234, v13, v234
	v_div_fmas_f32 v69, v70, v69, v78
	v_fma_f32 v70, -v72, v82, v80
	v_fmac_f32_e32 v73, v74, v73
	v_div_scale_f32 v74, null, v14, v14, v233
	s_mov_b32 vcc_lo, s19
	v_mul_f32_e32 v72, v71, v81
	v_div_fmas_f32 v70, v70, v75, v82
	v_rcp_f32_e32 v75, v74
	v_div_scale_f32 v80, null, v16, v16, v232
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v79, v72, v71
	v_div_scale_f32 v76, s18, v85, v11, v85
	v_div_fixup_f32 v10, v69, v10, v235
	s_mov_b32 vcc_lo, s20
	v_fmac_f32_e32 v72, v77, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v78, v76, v73
	v_fma_f32 v77, -v74, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v91
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp4:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v79, v72, v71
	v_div_scale_f32 v79, null, v17, v17, v231
	v_fmac_f32_e32 v75, v77, v75
	v_div_fixup_f32 v12, v70, v12, v84
	v_rcp_f32_e32 v70, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v77, v79
	v_fma_f32 v69, -v83, v78, v76
	v_div_fmas_f32 v71, v71, v81, v72
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v81, s20, v232, v16, v232
	v_fmac_f32_e32 v78, v69, v73
	v_div_scale_f32 v84, s18, v231, v17, v231
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v80, v70, 1.0
	v_div_fixup_f32 v13, v71, v13, v234
	v_fma_f32 v72, -v83, v78, v76
	v_div_scale_f32 v83, null, v15, v15, v230
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v82, v70
	v_fma_f32 v82, -v79, v77, 1.0
	v_div_fmas_f32 v72, v72, v73, v78
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp6:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 44, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v78, v81, v70 :: v_dual_fmac_f32 v77, v82, v77
	v_div_scale_f32 v69, s19, v233, v14, v233
	v_rcp_f32_e32 v82, v83
	v_div_fixup_f32 v11, v72, v11, v85
	v_fma_f32 v71, -v80, v78, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v76, v69, v75
	v_mul_f32_e32 v72, v84, v77
	s_mov_b32 vcc_lo, s19
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s17, s[64:65], v[1:2]
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v71, v70
	v_fma_f32 v73, -v74, v76, v69
	v_fma_f32 v71, -v79, v72, v84
	v_fma_f32 v85, -v83, v82, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v73, v75
	v_div_scale_f32 v73, null, v18, v18, v86
	v_fmac_f32_e32 v72, v71, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v85, v82
	v_fma_f32 v69, -v74, v76, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v74, v73
	v_div_scale_f32 v85, s21, v230, v15, v230
	v_div_fmas_f32 v69, v69, v75, v76
	v_fma_f32 v75, -v80, v78, v81
	s_mov_b32 vcc_lo, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v71, v85, v82
	v_div_fixup_f32 v14, v69, v14, v233
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v76, -v73, v74, 1.0
	v_div_fmas_f32 v70, v75, v70, v78
	v_fma_f32 v75, -v79, v72, v84
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v78, -v83, v71, v85
	v_fmac_f32_e32 v74, v76, v74
	v_div_scale_f32 v76, null, v19, v19, v87
	v_div_fmas_f32 v72, v75, v77, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_fmac_f32 v71, v78, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v76
	v_div_fixup_f32 v69, v70, v16, v232
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v70, v72, v17, v231
	v_div_scale_f32 v72, null, v20, v20, v229
	v_fma_f32 v16, -v83, v71, v85
	s_mov_b32 vcc_lo, s21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v78, -v76, v75, 1.0
	v_div_fmas_f32 v16, v16, v82, v71
	v_rcp_f32_e32 v71, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v78, v75
	v_div_scale_f32 v79, s19, v86, v18, v86
	v_div_scale_f32 v78, null, v21, v21, v228
	v_div_fixup_f32 v80, v16, v15, v230
	v_mul_f32_e32 v77, v79, v74
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v73, v77, v79
	v_fmac_f32_e32 v77, v17, v74
	v_div_scale_f32 v17, s18, v87, v19, v87
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v15, -v73, v77, v79
	v_fma_f32 v73, -v72, v71, 1.0
	v_rcp_f32_e32 v79, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v16, v17, v75
	v_div_fmas_f32 v15, v15, v74, v77
	v_fmac_f32_e32 v71, v73, v71
	v_div_scale_f32 v73, null, v65, v65, v221
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v74, -v76, v16, v17
	v_div_scale_f32 v77, s19, v229, v20, v229
	v_fma_f32 v81, -v78, v79, 1.0
	v_div_fixup_f32 v82, v15, v18, v86
	v_rcp_f32_e32 v15, v73
	v_fmac_f32_e32 v16, v74, v75
	v_mul_f32_e32 v18, v77, v71
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v74, s20, v228, v21, v228
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v17, -v76, v16, v17
	v_fma_f32 v76, -v72, v18, v77
	v_div_scale_f32 v81, null, v66, v66, v220
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v83, v74, v79
	v_fma_f32 v84, -v73, v15, 1.0
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v86, null, v67, v67, v219
	v_div_fmas_f32 v16, v17, v75, v16
	v_fmac_f32_e32 v18, v76, v71
	v_fma_f32 v17, -v78, v83, v74
	v_fmac_f32_e32 v15, v84, v15
	v_div_scale_f32 v76, s18, v221, v65, v221
	v_rcp_f32_e32 v85, v81
	v_rcp_f32_e32 v75, v86
	v_div_fixup_f32 v87, v16, v19, v87
	v_fma_f32 v16, -v72, v18, v77
	v_fmac_f32_e32 v83, v17, v79
	v_mul_f32_e32 v17, v76, v15
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v19, s21, v220, v66, v220
	v_div_fmas_f32 v16, v16, v71, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v71, -v73, v17, v76
	v_fma_f32 v84, -v81, v85, 1.0
	v_fma_f32 v72, -v86, v75, 1.0
	v_fma_f32 v18, -v78, v83, v74
	s_mov_b32 vcc_lo, s20
	v_fmac_f32_e32 v17, v71, v15
	v_fmac_f32_e32 v85, v84, v85
	v_fmac_f32_e32 v75, v72, v75
	v_div_scale_f32 v72, s19, v219, v67, v219
	v_div_fixup_f32 v78, v16, v20, v229
	v_fma_f32 v16, -v73, v17, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v19, v85
	v_div_fmas_f32 v18, v18, v79, v83
	s_mov_b32 vcc_lo, s18
	v_mul_f32_e32 v77, v72, v75
	v_div_fmas_f32 v9, v16, v15, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v81, v74, v19
	v_div_fixup_f32 v79, v18, v21, v228
	v_fma_f32 v18, -v86, v77, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v208 :: v_dual_fmac_f32 v74, v71, v85
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v18, v75
	s_mov_b32 vcc_lo, s21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v17, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v15, -v81, v74, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, s18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v18, -v86, v77, v72
	v_div_fixup_f32 v65, v9, v65, v221
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v227, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v85, v74
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v207
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v18, v75, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_ldexp_f32 v7, v17, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v66, v15, v66, v220
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v225, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v8, v8, v67, v219
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v19
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s18
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v226, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v205
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v67, v67, v208
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v7, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v68
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v9, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v218, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, vcc_lo, v208, v67, v208
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v206
	v_ldexp_f32 v0, v7, v10
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v68, v72, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v223, v11
	v_mul_f32_e32 v11, v213, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v9
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v72, v7, v72 :: v_dual_mul_f32 v9, v212, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v224, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v75, v75, v205
	v_mul_f32_e32 v78, v76, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v216, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v71, v73, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v222, v14
	v_mul_f32_e32 v14, v217, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v69, v69, v207
	v_fma_f32 v79, -v68, v78, v76
	v_div_scale_f32 v80, s18, v207, v69, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v74, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v7, v210, v66 :: v_dual_fmac_f32 v78, v79, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, s19, v205, v75, v205
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v68, v78, v76
	v_fma_f32 v0, -v70, v74, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v68, v72, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s20
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v0, v74
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v38, v38, v67, v208
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v0, v211, v65 :: v_dual_add_f32 v65, 1.0, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v77, v73, 1.0
	v_mul_f32_e32 v66, v80, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v65, v65, v206
	v_fmac_f32_e32 v73, v71, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v70, v66, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v79
	v_fmac_f32_e32 v66, v76, v74
	v_mul_f32_e32 v76, v81, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v70, v66, v80
	v_fma_f32 v70, -v77, v76, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v78, -v79, v71, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v68, v72, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v67, v74, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v78, v71
	v_div_scale_f32 v78, s20, v206, v65, v206
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v70, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v197
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v78, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v77, v76, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v79, v66, v78
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v196
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v73, v77, v73, v76
	v_fmac_f32_e32 v66, v26, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v68, v68, v199
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v79, v66, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v76, v74
	v_div_fixup_f32 v29, v29, v69, v207
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s21, 0xc2fc0000, v48
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v26, v26, v67
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v202, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v25, v71, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v72, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v74, v76, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v195
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v65, v206
	v_div_scale_f32 v71, null, v66, v66, v197
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v70, v76
	v_div_scale_f32 v70, vcc_lo, v199, v68, v199
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v77, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v71
	v_mul_f32_e32 v80, v70, v76
	v_div_fixup_f32 v26, v73, v75, v205
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v12, v215, v82 :: v_dual_mul_f32 v25, v204, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v72, v72, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v69, -v74, v80, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v77, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v79
	v_fma_f32 v73, -v71, v78, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v80, v69, v76 :: v_dual_add_f32 v67, 1.0, v67
	v_div_scale_f32 v69, s18, v197, v66, v197
	v_fmac_f32_e32 v78, v73, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v74, v80, v70
	v_div_scale_f32 v75, null, v67, v67, v195
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v79, v65, 1.0
	v_mul_f32_e32 v74, v69, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v70, v70, v76, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v10, v214, v87 :: v_dual_fmac_f32 v65, v73, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s19, v196, v72, v196
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v71, v74, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v201, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v70, v68, v199
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v189
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v75, v76, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v80, v73, v65
	v_fmac_f32_e32 v74, v77, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v79, v80, v73
	v_fma_f32 v69, -v71, v74, v69
	v_div_scale_f32 v71, s20, v195, v67, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v68, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v36, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v69, v69, v78, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_exp_f32_e32 v30, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v71, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v79, v80, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v75, v74, v71
	v_div_scale_f32 v79, null, v70, v70, v189
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v73, v65, v80
	v_rcp_f32_e32 v68, v79
	v_fmac_f32_e32 v74, v36, v76
	v_div_fixup_f32 v36, v69, v66, v197
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v200
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v65, v72, v196
	v_fma_f32 v65, -v75, v74, v71
	s_mov_b32 vcc_lo, s20
	v_div_scale_f32 v71, null, v66, v66, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v79, v68, 1.0
	v_div_fmas_f32 v65, v65, v76, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v72, v68
	v_div_scale_f32 v72, s18, v189, v70, v189
	v_div_fixup_f32 v27, v65, v67, v195
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v69, v69, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v72, v68
	v_fma_f32 v75, -v71, v73, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v209, v8
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v172
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v79, v74, v72
	v_fmac_f32_e32 v73, v75, v73
	v_div_scale_f32 v75, s19, v187, v66, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v69, v69, v200
	v_fmac_f32_e32 v74, v76, v68
	v_mul_f32_e32 v76, v75, v73
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v78, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v194, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v79, v74, v72
	v_fma_f32 v79, -v71, v76, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v67, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v72, v68, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v79, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v77, v78, 1.0
	v_div_fixup_f32 v67, v67, v70, v189
	v_fma_f32 v70, -v71, v76, v75
	v_div_scale_f32 v71, null, v65, v65, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v68, v78
	v_div_scale_f32 v47, s18, v200, v69, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v68, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v158
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_mul_f32_e32 v75, v47, v78
	v_div_fmas_f32 v40, v70, v73, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s20
	v_exp_f32_e32 v74, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v71, v68, 1.0
	v_div_fixup_f32 v40, v40, v66, v187
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v77, v75, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v76, v68
	v_div_scale_f32 v76, s19, v172, v65, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v66, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v74, v72
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v76, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v77, v75, v47
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v71, v66, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v156
	v_ldexp_f32 v70, v73, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v73, null, v77, v77, v158
	v_fmac_f32_e32 v66, v37, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v73
	v_div_fmas_f32 v31, v47, v78, v75
	v_fma_f32 v47, -v71, v66, v76
	v_div_scale_f32 v79, null, v70, v70, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v76, v79
	v_div_fmas_f32 v47, v47, v68, v66
	v_fma_f32 v78, -v73, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, vcc_lo, v158, v77, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v37, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v78, v74
	v_div_fixup_f32 v47, v47, v65, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v79, v76, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v72, 1.0, v37 :: v_dual_mul_f32 v75, v66, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v37, v31, v69, v200
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v31, v162, v47 :: v_dual_fmac_f32 v76, v68, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, s18, v157, v70, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v47, -v73, v75, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v72, v72, v156
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v69, v68, v76
	v_fmac_f32_e32 v75, v47, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v80, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v159, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v79, v69, v68
	v_fma_f32 v66, -v73, v75, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v161, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v71, v76
	v_div_scale_f32 v71, null, v65, v65, v155
	v_div_fmas_f32 v66, v66, v74, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v78, v80, 1.0
	v_rcp_f32_e32 v44, v71
	v_fma_f32 v68, -v79, v69, v68
	v_div_fixup_f32 v66, v66, v77, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v80, v67, v80
	v_div_scale_f32 v67, s19, v156, v72, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v154
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v68, v76, v69
	v_fma_f32 v75, -v71, v44, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v67, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v68, v68, v70, v157
	v_fmac_f32_e32 v44, v75, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v78, v69, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, s18, v155, v65, v155
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v153
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v34, v39, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v26, v203, v26 :: v_dual_fmac_f32 v69, v70, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v39, v76, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v75, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v78, v69, v67
	v_fma_f32 v34, -v71, v39, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v151
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v77, v77, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v34, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v73
	v_ldexp_f32 v34, v75, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v193, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v67, v80, v69
	v_fma_f32 v69, -v71, v39, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v70
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v152
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v78, v73, 1.0
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v70, null, v71, v71, v153
	v_div_fmas_f32 v39, v69, v44, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v34, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v69, v70
	v_div_scale_f32 v76, vcc_lo, v154, v77, v154
	v_div_fixup_f32 v34, v67, v72, v156
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v39, v65, v155
	v_mul_f32_e32 v67, v76, v73
	v_div_scale_f32 v79, s18, v153, v71, v153
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v44, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v70, v69, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v74, -v78, v67, v76
	v_div_scale_f32 v65, null, v75, v75, v151
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v185, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v39, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v183, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v68, 1.0, v44 :: v_dual_fmac_f32 v67, v74, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v182, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v79, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v81, null, v68, v68, v152
	v_fma_f32 v66, -v78, v67, v76
	v_fma_f32 v76, -v70, v74, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v78, v81
	v_div_fmas_f32 v60, v66, v73, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v80, -v65, v72, 1.0
	v_fmac_f32_e32 v74, v76, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v67, 0xbfb8aa3b, v142 :: v_dual_fmac_f32 v72, v80, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, s19, v151, v75, v151
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v81, v78, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v70, v74, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v73, v80, v72
	v_div_fixup_f32 v60, v60, v77, v154
	v_fmac_f32_e32 v78, v76, v78
	v_div_scale_f32 v76, s20, v152, v68, v152
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v191, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v65, v73, v80
	v_div_fmas_f32 v48, v70, v69, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v69, v76, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, s21
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_ldexp_f32 v66, v67, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v77, v72
	v_fma_f32 v43, -v81, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v141
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v190, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v65, v73, v80
	v_fmac_f32_e32 v69, v43, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v74
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v140
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v66, v66, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v65, v72, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v77
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v74
	v_fma_f32 v42, -v81, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v48, v48, v71, v153
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	v_div_fmas_f32 v42, v42, v78, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v72, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v74, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v68, v152
	v_div_scale_f32 v72, null, v69, v69, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v73, v67, v73
	v_div_scale_f32 v67, vcc_lo, v142, v66, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v78, v72
	v_mul_f32_e32 v80, v67, v73
	v_div_fixup_f32 v43, v65, v75, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v79, null, v77, v77, v140
	v_fma_f32 v68, -v74, v80, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v149, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v76, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v79
	v_fma_f32 v71, -v72, v78, 1.0
	v_fmac_f32_e32 v80, v68, v73
	v_div_scale_f32 v68, s18, v141, v69, v141
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v71, v78
	v_fma_f32 v67, -v74, v80, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v75, null, v70, v70, v139
	v_div_fmas_f32 v67, v67, v73, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v79, v65, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v73, v75
	v_mul_f32_e32 v74, v68, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v143, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v71, v65
	v_div_scale_f32 v71, s19, v140, v77, v140
	v_fma_f32 v76, -v72, v74, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v81, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v60, v67, v66, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v75, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v80, v71, v65
	v_fmac_f32_e32 v74, v76, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v67, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v79, v80, v71
	v_fma_f32 v68, -v72, v74, v68
	v_div_scale_f32 v72, s20, v139, v70, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v80, v66, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v68, v68, v78, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	v_exp_f32_e32 v49, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v74, v72, v73 :: v_dual_add_f32 v67, 1.0, v50
	v_fma_f32 v71, -v79, v80, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v75, v74, v72
	v_div_scale_f32 v79, null, v67, v67, v134
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v49, v49, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v71, v65, v80
	v_rcp_f32_e32 v66, v79
	v_fmac_f32_e32 v74, v50, v73
	v_div_fixup_f32 v50, v68, v69, v141
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v49, v65, v77, v140
	v_fma_f32 v65, -v75, v74, v72
	s_mov_b32 vcc_lo, s20
	v_div_scale_f32 v71, null, v68, v68, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v79, v66, 1.0
	v_div_fmas_f32 v65, v65, v73, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v72, v66
	v_div_scale_f32 v72, s18, v134, v67, v134
	v_div_fixup_f32 v41, v65, v70, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v69, v69, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v74, v72, v66
	v_fma_f32 v75, -v71, v73, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v160, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v70, 0xbfb8aa3b, v132 :: v_dual_add_f32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v79, v74, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v73, v75, v73
	v_div_scale_f32 v75, s19, v133, v68, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v69, v69, v131
	v_fmac_f32_e32 v74, v76, v66
	v_mul_f32_e32 v76, v75, v73
	s_mov_b32 vcc_lo, s18
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v78, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v138, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v79, v74, v72
	v_fma_f32 v79, -v71, v76, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v70, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v136, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v72, v66, v74
	v_fmac_f32_e32 v76, v79, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v77, v78, 1.0
	v_div_fixup_f32 v66, v66, v67, v134
	v_fma_f32 v67, -v71, v76, v75
	v_div_scale_f32 v71, null, v65, v65, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v70, v78
	v_div_scale_f32 v53, s18, v131, v69, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v130
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_mul_f32_e32 v75, v53, v78
	v_div_fmas_f32 v52, v67, v73, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s20
	v_exp_f32_e32 v74, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v184, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v71, v70, 1.0
	v_div_fixup_f32 v52, v52, v68, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v77, v75, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v76, v70
	v_div_scale_f32 v76, s19, v132, v65, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v68, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v74, v72
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v76, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v77, v75, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v77, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v71, v68, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v128
	v_ldexp_f32 v67, v73, v67
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v77, v77, v130
	v_fmac_f32_e32 v68, v46, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v73
	s_mov_b32 vcc_lo, s18
	v_div_fmas_f32 v45, v53, v78, v75
	v_div_scale_f32 v79, null, v67, v67, v129
	v_fma_f32 v53, -v71, v68, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v76, v79
	v_fma_f32 v78, -v73, v74, 1.0
	v_div_fmas_f32 v53, v53, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, vcc_lo, v130, v77, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v74, v78, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v46, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v53, v53, v65, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v79, v76, 1.0
	v_mul_f32_e32 v75, v68, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v45, v69, v131
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v148, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v73, v75, v68
	v_fmac_f32_e32 v76, v70, v76
	v_div_scale_f32 v70, s18, v129, v67, v129
	v_div_scale_f32 v78, null, v72, v72, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v53, v74
	v_mul_f32_e32 v69, v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v80, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v145, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v73, v75, v68
	v_fma_f32 v71, -v79, v69, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v65, 1.0, v65 :: v_dual_mul_f32 v42, v150, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v74, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v71, v76
	v_fma_f32 v68, -v78, v80, 1.0
	v_div_scale_f32 v71, null, v65, v65, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v79, v69, v70
	v_fmac_f32_e32 v80, v68, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v64, v71
	v_div_scale_f32 v68, s19, v128, v72, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v122
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v66, v66, v77, v130
	v_div_fmas_f32 v69, v70, v76, v69
	v_mul_f32_e32 v70, v68, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v74
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v71, v64, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v67, v69, v67, v129
	v_fma_f32 v69, -v78, v70, v68
	v_div_scale_f32 v63, s18, v127, v65, v127
	v_fmac_f32_e32 v64, v75, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v69, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	v_ldexp_f32 v69, v74, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v55, v63, v64 :: v_dual_fmac_f32 v76, 0xbfb8aa3b, v107
	v_fma_f32 v68, -v78, v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v71, v55, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v76, v76
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v105
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v69, v69, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v77, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v78
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v123, v66
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v75, v76, v75
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v63, -v71, v55, v63
	v_div_fmas_f32 v68, v68, v80, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v54, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v78, v77, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v48, v144, v48 :: v_dual_fmac_f32 v79, 0xbfb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v70, v70, v107
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v76, 1.0, v54 :: v_dual_fmac_f32 v77, v71, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, s19, v122, v69, v122
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_rcp_f32_e32 v79, v75
	v_div_fmas_f32 v54, v63, v64, v55
	v_div_scale_f32 v63, null, v76, v76, v105
	v_mul_f32_e32 v64, v71, v77
	v_div_fixup_f32 v55, v68, v72, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v54, v54, v65, v127
	v_rcp_f32_e32 v68, v63
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v73, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v78, v64, v71
	v_fma_f32 v73, -v75, v79, 1.0
	s_mov_b32 vcc_lo, s19
	v_div_scale_f32 v80, s20, v105, v76, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v64, v72, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v74, 1.0, v65 :: v_dual_fmac_f32 v79, v73, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s18, v107, v70, v107
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v65, -v63, v68, 1.0
	v_fma_f32 v71, -v78, v64, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v73, null, v74, v74, v106
	v_mul_f32_e32 v78, v72, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v68, v65, v68
	v_div_fmas_f32 v64, v71, v77, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v81, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v124, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v75, v78, v72
	v_mul_f32_e32 v71, v80, v68
	v_div_fixup_f32 v64, v64, v69, v122
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v67, v79
	v_fma_f32 v67, -v63, v71, v80
	v_fma_f32 v62, -v73, v81, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v103
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v75, v78, v72
	v_fmac_f32_e32 v71, v67, v68
	v_fmac_f32_e32 v81, v62, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v77
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v97
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s18
	v_div_scale_f32 v61, s19, v106, v74, v106
	v_div_fmas_f32 v72, v72, v79, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	v_exp_f32_e32 v59, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v61, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v63, v71, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v73, v75, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v99
	v_ldexp_f32 v59, v59, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v63, v68, v71
	v_fmac_f32_e32 v75, v77, v81
	v_div_scale_f32 v68, null, v67, v67, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_exp_f32_e32 v57, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v73, v75, v61
	v_rcp_f32_e32 v71, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v59, v59, v97
	s_mov_b32 vcc_lo, s19
	v_div_fixup_f32 v70, v72, v70, v107
	v_div_fmas_f32 v61, v61, v81, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v98
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v68, v71, 1.0
	v_div_scale_f32 v79, vcc_lo, v103, v67, v103
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v57, v61, v74, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v69, v71
	v_div_fixup_f32 v62, v63, v76, v105
	v_div_scale_f32 v78, null, v72, v72, v99
	v_fma_f32 v61, -v77, v75, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v76, v79, v71
	v_div_scale_f32 v80, s18, v97, v59, v97
	v_rcp_f32_e32 v63, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v75, v61, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v121, v62
	v_mul_f32_e32 v62, v120, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v74, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v68, v76, v79
	v_dual_mul_f32 v74, v80, v75 :: v_dual_mul_f32 v69, v115, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v81, -v78, v63, 1.0
	v_fmac_f32_e32 v76, v73, v71
	v_fma_f32 v70, -v77, v74, v80
	v_div_scale_f32 v73, s19, v99, v72, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v81, v63
	v_fma_f32 v68, -v68, v76, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v74, v70, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v82, 0, 0x42800000, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v81, null, v64, v64, v98
	v_mul_f32_e32 v56, v73, v63
	v_div_fmas_f32 v68, v68, v71, v76
	v_fma_f32 v71, -v77, v74, v80
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v78, v56, v73
	v_rcp_f32_e32 v70, v81
	v_div_fmas_f32 v71, v71, v75, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v51
	v_exp_f32_e32 v74, v82
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v76, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v67, v68, v67, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v81, v70, 1.0
	v_fma_f32 v73, -v78, v56, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v96
	v_ldexp_f32 v74, v74, v79
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v51, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v76, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, s18, v98, v64, v98
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v56, v73, v63, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v78, v32, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v75, v76, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v135, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v77, null, v74, v74, v94
	v_fma_f32 v63, -v81, v78, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v56, v56, v72, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v72, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v73, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v63, v70
	v_div_scale_f32 v51, null, v75, v75, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v81, v78, v32
	v_rcp_f32_e32 v76, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v77, v72, 1.0
	s_mov_b32 vcc_lo, s18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s20, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v32, v70, v78
	v_div_scale_f32 v70, null, v28, v28, v88
	v_fmac_f32_e32 v72, v73, v72
	v_div_scale_f32 v73, vcc_lo, v94, v74, v94
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v51, v76, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v95
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v64, v98
	v_rcp_f32_e32 v80, v70
	v_mul_f32_e32 v81, v73, v72
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, s18, v96, v75, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v79, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v71, v59, v97
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v119, v32
	v_mul_f32_e32 v59, v118, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v77, v81, v73
	v_mul_f32_e32 v56, v78, v76
	v_fma_f32 v71, -v70, v80, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v50, v137, v50 :: v_dual_mul_f32 v57, v104, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v32, v72
	v_fma_f32 v32, -v51, v56, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v80, v71, v80
	v_div_scale_f32 v71, s19, v88, v28, v88
	v_fma_f32 v73, -v77, v81, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v32, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v79, v79, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v32, v71, v80
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v116, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v72, v73, v72, v81
	v_fma_f32 v51, -v51, v56, v78
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v73, -v70, v32, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s18, 0xc2fc0000, v4
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v24, v51, v76, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0x42800000, s20
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v73, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v67, v67, v95
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v90
	v_cndmask_b32_e64 v76, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v70, v32, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v56
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v22, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v147, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v4, v70, v80, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v76
	v_cndmask_b32_e64 v76, 0, 0x42800000, s18
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v92
	v_ldexp_f32 v51, v56, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v4, v28, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s18
	v_fmac_f32_e32 v76, 0xbfb8aa3b, v93
	v_exp_f32_e32 v56, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v28, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v78, -v23, v22, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v73
	v_exp_f32_e32 v51, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v24, v75, v96
	v_div_scale_f32 v73, null, v28, v28, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v22, v78, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v56, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v95, v67, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v76, null, v32, v32, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v51, v70
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v146, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v73
	v_rcp_f32_e32 v78, v76
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v56, v56, v92
	v_mul_f32_e32 v77, v71, v22
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v126, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v51, v51, v93
	v_rcp_f32_e32 v80, v70
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v73, v75, 1.0
	v_fma_f32 v81, -v23, v77, v71
	v_rcp_f32_e32 v84, v82
	v_fma_f32 v83, -v76, v78, 1.0
	v_div_fixup_f32 v72, v72, v74, v94
	v_fmac_f32_e32 v75, v79, v75
	v_div_scale_f32 v79, s18, v90, v28, v90
	v_fmac_f32_e32 v77, v81, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v81, -v70, v80, 1.0
	v_fmac_f32_e32 v78, v83, v78
	v_div_scale_f32 v83, s19, v91, v32, v91
	v_fma_f32 v86, -v82, v84, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v85, v79, v75 :: v_dual_fmac_f32 v80, v81, v80
	v_div_scale_f32 v81, s20, v92, v56, v92
	v_fma_f32 v23, -v23, v77, v71
	v_dual_mul_f32 v87, v83, v78 :: v_dual_fmac_f32 v84, v86, v84
	v_div_scale_f32 v86, s21, v93, v51, v93
	v_fma_f32 v71, -v73, v85, v79
	v_mul_f32_e32 v88, v81, v80
	v_div_fmas_f32 v22, v23, v22, v77
	v_fma_f32 v23, -v76, v87, v83
	v_mul_f32_e32 v77, v86, v84
	v_fmac_f32_e32 v85, v71, v75
	v_fma_f32 v71, -v70, v88, v81
	v_div_fixup_f32 v22, v22, v67, v95
	v_fmac_f32_e32 v87, v23, v78
	v_fma_f32 v23, -v82, v77, v86
	v_fma_f32 v67, -v73, v85, v79
	v_fmac_f32_e32 v88, v71, v80
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v71, -v76, v87, v83
	v_fmac_f32_e32 v77, v23, v84
	v_div_fmas_f32 v67, v67, v75, v85
	v_fma_f32 v23, -v70, v88, v81
	s_mov_b32 vcc_lo, s19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v112, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v82, v77, v86
	v_div_fmas_f32 v75, v71, v78, v87
	s_mov_b32 vcc_lo, s20
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v113, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v23, v23, v80, v88
	s_mov_b32 vcc_lo, s21
	v_div_fixup_f32 v24, v67, v28, v90
	v_div_fmas_f32 v76, v70, v84, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v114, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v23, v56, v92
	v_div_fixup_f32 v23, v75, v32, v91
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v74, v108, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v4, v76, v51, v93
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v100, v24
	v_mul_f32_e32 v56, v102, v22
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, |v26|, |v38|, |v36|
	v_max3_f32 v24, |v47|, |v40|, |v37|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v89, v4
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v4, |v35|, |v29|
	v_max3_f32 v28, |v31|, |v20|, |v18|
	v_max_f32_e64 v32, |v44|, |v39|
	v_max3_f32 v75, |v34|, |v58|, |v48|
	v_max3_f32 v76, |v60|, |v50|, |v49|
	v_max3_f32 v77, |v41|, |v16|, |v15|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v125, v55
	v_mul_f32_e32 v67, v101, v23
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, |v30|, |v27|, |v21|
	v_max3_f32 v4, v4, |v25|, v22
	v_max3_f32 v22, v24, v28, |v19|
	v_max3_f32 v24, |v43|, |v42|, |v17|
	v_max3_f32 v28, v32, |v33|, v75
	v_max3_f32 v32, v76, v77, |v14|
	v_max_f32_e64 v75, |v53|, |v52|
	v_max3_f32 v77, |v69|, |v62|, |v61|
	v_max3_f32 v78, |v57|, |v12|, |v10|
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v81, 4, v109
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v76, |v46|, |v66|, |v65|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v117, v64
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v4, v23, v22
	v_max3_f32 v23, v28, v24, v32
	v_max3_f32 v4, |v55|, |v54|, |v13|
	v_max3_f32 v24, v75, |v45|, v76
	v_max3_f32 v28, v77, v78, |v11|
	s_mov_b32 s18, 0x76543210
	v_max_f32_e64 v32, |v68|, |v64|
	v_max3_f32 v75, |v59|, |v74|, |v73|
	v_max3_f32 v76, |v72|, |v67|, |v56|
	v_max3_f32 v77, |v51|, |v0|, |v7|
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v78, v22, s18, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v24, v24, v4, v28
	v_max3_f32 v28, |v71|, |v70|, |v9|
	v_max3_f32 v32, v32, |v63|, v75
	v_max3_f32 v75, v76, v77, |v8|
	v_max_f32_e32 v76, v78, v78
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v77, v23, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v78, v24, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v82, 8, v109
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v32, v32, v28, v75
	v_max_f32_e32 v75, v22, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v78, v78, v78
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v22, 3, v109
	v_lshlrev_b32_e32 v28, 4, v109
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v76, v23, v77 :: v_dual_lshlrev_b32 v83, 1, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v77, v24, v78
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v78, v22, 9, 0
	v_lshlrev_b32_e32 v79, 5, v22
	v_permlanex16_b32 v24, v32, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v23, 0x60, v109
	v_lshrrev_b32_e32 v85, 3, v6
	v_lshl_add_u32 v78, v81, 2, v78
	v_and_or_b32 v80, 0x680, v28, v79
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v24, v24, v24
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v79, v79, v23
	v_lshl_add_u32 v86, v81, 6, 0
	v_lshl_add_u32 v84, v82, 4, v78
	v_xor_b32_e32 v80, v80, v23
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v78, v32, v24
.Ltmp26:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v32, 42, v164
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v3, s19, s66, v3
.Ltmp27:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v24, v84, v83, v79
	v_add3_u32 v79, v86, v85, v80
.Ltmp28:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s67, 0, s19
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v85.h, 0
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v24, v[75:78]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[75:78], v79
.Ltmp30:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s18, s66, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v80, null, s67, 0, s18
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[72:73], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 40, v164
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s19, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[72:73], v[3:4]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v3, 38, v164
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s21, s[64:65], v[79:80]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s23, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s23
	v_add_co_u32 v3, s23, s66, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s67, 0, s23
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s23, s[64:65], v[1:2]
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v24, v75
.Ltmp32:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s24, s[72:73], v[1:2]
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 36, v164
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s25, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s26, s[72:73], v[3:4]
.Ltmp33:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v24, v24 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v32, v77
.Ltmp34:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s27, s66, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s27
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v24, v24
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v24, v76 :: v_dual_max_f32 v3, v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s27, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s28, s[72:73], v[1:2]
.Ltmp38:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v32, v32 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v24, v24 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v78, v78
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v78, v78 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v4
	v_max_f32_e32 v2, v76, v76
	v_max_f32_e32 v4, v24, v24
	v_max_f32_e32 v24, v77, v77
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v75, v78, v78
.Ltmp42:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v76, 34, v164
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v77, v3 :: v_dual_max_f32 v4, v2, v4
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v24, v24, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v32, v1, v75
.Ltmp45:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s29, s66, v76
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v75, v4
	v_mov_b32_e32 v76, v24
	v_mov_b32_e32 v78, v32
.Ltmp47:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s29
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v77, v77
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v78, v78 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s29, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s30, s[72:73], v[1:2]
.Ltmp51:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v77
	v_dual_max_f32 v1, v75, v75 :: v_dual_max_f32 v2, v76, v76
	v_max_f32_e32 v75, v78, v78
.Ltmp52:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v76, 32, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v77, v3 :: v_dual_max_f32 v4, v4, v1
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v24, v24, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v75, v32, v75
.Ltmp55:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s31, s66, v76
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v32, v4
	v_mov_b32_e32 v76, v24
	v_mov_b32_e32 v78, v75
.Ltmp57:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s31
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v77, v77
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v32, v32 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v78, v78 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[72:73], v[79:80]
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s31, s[64:65], v[1:2]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s33, s[72:73], v[1:2]
.Ltmp61:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v3, v77 :: v_dual_max_f32 v2, v32, v32
	v_dual_max_f32 v3, v76, v76 :: v_dual_max_f32 v76, v78, v78
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v77, 1, v23
	v_lshlrev_b32_e32 v78, 3, v82
	v_add_nc_u32_e32 v79, 0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v24, v3 :: v_dual_lshlrev_b32 v32, 4, v22
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v24, 5, v81
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v4, v2
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v22, v79, v77, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v77, 0, v32
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v75, v76
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp69:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v75, s34, s66, v181
.Ltmp70:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v24, v77, v24, v78
	ds_store_b128 v22, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp71:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v76, null, s67, 0, s34
.Ltmp72:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[1:4], v24
.Ltmp73:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v77, s34, s66, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v78, null, s67, 0, s34
	v_add_co_u32 v79, s34, s66, v178
	v_add_co_ci_u32_e64 v80, null, s67, 0, s34
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s34, s[64:65], v[75:76]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s35, s[72:73], v[75:76]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v75, s39, s66, v163
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s36, s[64:65], v[77:78]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s37, s[72:73], v[77:78]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v76, null, s67, 0, s39
	v_add_co_u32 v77, s39, s66, v177
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v78, null, s67, 0, s39
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v1, v1, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s40, s[64:65], v[75:76]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s41, s[72:73], v[75:76]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v75, s44, s66, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v22, 0x2b8cbccc, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s42, s[64:65], v[77:78]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s43, s[72:73], v[77:78]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v76, null, s67, 0, s44
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v1, null, 0x40e00000, 0x40e00000, v22
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v77, s44, s66, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v78, null, s67, 0, s44
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v24, v1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s38, s[64:65], v[79:80]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s39, s[72:73], v[79:80]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v79, s44, s66, v174
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_add_co_ci_u32_e64 v80, null, s67, 0, s44
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s46, s[64:65], v[77:78]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s47, s[72:73], v[77:78]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_max_f32_e32 v3, v3, v3
	v_fma_f32 v77, -v1, v24, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s48, s[64:65], v[79:80]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s49, s[72:73], v[79:80]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v79, vcc_lo, v22, 0x40e00000, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_fmac_f32 v24, v77, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s44, s[64:65], v[75:76]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s45, s[72:73], v[75:76]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v75, s50, s66, v173
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v80, v79, v24
	v_div_scale_f32 v81, null, 0x40e00000, 0x40e00000, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v76, null, s67, 0, s50
	v_add_co_u32 v77, s50, s66, v171
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v78, null, s67, 0, s50
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v82, -v1, v80, v79
	v_rcp_f32_e32 v83, v81
	v_max_f32_e32 v2, v2, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s50, s[64:65], v[75:76]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s51, s[72:73], v[75:76]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v75, s53, s66, v170
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s52, s[64:65], v[77:78]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v76, null, s67, 0, s53
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v80, v82, v24
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s53, s[72:73], v[77:78]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v77, 0x2b8cbccc, v2
	v_fma_f32 v2, -v81, v83, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v1, -v1, v80, v79
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s54, s[64:65], v[75:76]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	v_div_scale_f32 v79, null, 0x40e00000, 0x40e00000, v77
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v24, v1, v24, v80
	v_fmac_f32_e32 v83, v2, v83
	v_div_scale_f32 v78, vcc_lo, v3, 0x40e00000, v3
	v_div_scale_f32 v80, null, 0x40e00000, 0x40e00000, v4
	v_rcp_f32_e32 v82, v79
	v_div_fixup_f32 v22, v24, 0x40e00000, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v24, v78, v83
	v_rcp_f32_e32 v84, v80
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s55, s66, v169
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s67, 0, s55
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s55, s[72:73], v[75:76]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v75, -v81, v24, v78
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v76.l, v22.h
	v_mov_b16_e32 v76.h, v85.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v86, -v79, v82, 1.0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s56, s[64:65], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s57, s[72:73], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v24, v75, v83
	v_fma_f32 v1, -v80, v84, 1.0
	v_dual_fmac_f32 v82, v86, v82 :: v_dual_and_b32 v75, 1, v76
	v_div_scale_f32 v76, s60, v77, 0x40e00000, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v1, v84
	v_div_scale_f32 v86, s61, v4, 0x40e00000, v4
	v_fma_f32 v78, -v81, v24, v78
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_add3_u32 v22, v22, v75, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v75, v76, v82
	v_mul_f32_e32 v81, v86, v84
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s58, s66, v168
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v24, v78, v83, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v79, v75, v76
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v83, 0xffff0000, v22
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s67, 0, s58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v87, -v80, v81, v86
	v_fmac_f32_e32 v75, v78, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v78, null, v83, v83, v35
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s58, s[64:65], v[1:2]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v81, v87, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s59, s[72:73], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v79, v75, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v79, v78
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v24, v24, 0x40e00000, v3
	v_fma_f32 v2, -v80, v81, v86
	v_div_fmas_f32 v1, v1, v82, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v80, null, v83, v83, v29
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s61
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v24.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v84, v81
	v_div_fixup_f32 v76, v1, 0x40e00000, v77
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v1, -v78, v79, 1.0
	v_rcp_f32_e32 v81, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v75, 1, v85
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v4
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v77.l, v76.h
	v_mov_b16_e32 v77.h, v85.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v1, v79
	v_div_scale_f32 v82, vcc_lo, v35, v83, v35
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v24, v75, 0x7fff
	v_mov_b16_e32 v85.l, v2.h
	v_and_b32_e32 v24, 1, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v84, v82, v79
	v_fma_f32 v75, -v80, v81, 1.0
	v_div_scale_f32 v86, null, v83, v83, v25
	v_div_scale_f32 v87, null, v83, v83, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s60, s66, v167
	v_add_co_ci_u32_e64 v4, null, s67, 0, s60
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v77, 1, v85
	v_add3_u32 v24, v76, v24, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v78, v84, v82
	v_fmac_f32_e32 v81, v75, v81
	v_rcp_f32_e32 v85, v86
	v_div_scale_f32 v88, s60, v29, v83, v29
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v84, v76, v79
	v_div_scale_f32 v93, null, v83, v83, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v88, v81
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v2, v77, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v78, v84, v82
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v91, -v86, v85, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v77, 0xffff0000, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v80, v90, v88
	v_fma_f32 v92, -v87, v89, 1.0
	v_div_fmas_f32 v78, v78, v79, v84
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v91, s61, v25, v83, v25
	v_fmac_f32_e32 v90, v82, v81
	v_fmac_f32_e32 v89, v92, v89
	v_rcp_f32_e32 v82, v93
	v_div_scale_f32 v92, null, v83, v83, v36
	v_mul_f32_e32 v79, v91, v85
	v_div_scale_f32 v84, s62, v26, v83, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v92
	v_div_fixup_f32 v35, v78, v83, v35
	v_fma_f32 v78, -v80, v90, v88
	v_fma_f32 v80, -v86, v79, v91
	v_mul_f32_e32 v88, v84, v89
	v_fma_f32 v95, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v76, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v81, v90
	v_fmac_f32_e32 v79, v80, v85
	v_fma_f32 v80, -v87, v88, v84
	v_fmac_f32_e32 v82, v95, v82
	v_div_scale_f32 v81, s60, v38, v83, v38
	v_fma_f32 v90, -v92, v94, 1.0
	v_div_fixup_f32 v29, v78, v83, v29
	v_fma_f32 v78, -v86, v79, v91
	v_fmac_f32_e32 v88, v80, v89
	v_mul_f32_e32 v80, v81, v82
	v_fmac_f32_e32 v94, v90, v94
	v_div_scale_f32 v90, null, v83, v83, v30
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v86, s63, v36, v83, v36
	v_div_fmas_f32 v78, v78, v85, v79
	v_fma_f32 v79, -v87, v88, v84
	v_fma_f32 v84, -v93, v80, v81
	v_rcp_f32_e32 v85, v90
	v_div_scale_f32 v91, null, v83, v83, v27
	v_mul_f32_e32 v87, v86, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v84, v82
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v79, v79, v89, v88
	v_fma_f32 v88, -v92, v87, v86
	v_div_fixup_f32 v25, v78, v83, v25
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v90, v85, 1.0
	v_fma_f32 v78, -v93, v80, v81
	v_div_fixup_f32 v26, v79, v83, v26
	v_fmac_f32_e32 v87, v88, v94
	v_div_scale_f32 v79, s61, v30, v83, v30
	v_fmac_f32_e32 v85, v89, v85
	v_fma_f32 v81, -v91, v84, 1.0
	v_div_scale_f32 v88, null, v83, v83, v21
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v89, null, v83, v83, v47
	v_div_fmas_f32 v78, v78, v82, v80
	v_fma_f32 v80, -v92, v87, v86
	v_mul_f32_e32 v82, v79, v85
	v_fmac_f32_e32 v84, v81, v84
	v_rcp_f32_e32 v81, v88
	v_div_scale_f32 v86, s60, v27, v83, v27
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v38, v78, v83, v38
	v_div_fmas_f32 v80, v80, v94, v87
	v_fma_f32 v87, -v90, v82, v79
	v_mul_f32_e32 v92, v86, v84
	v_rcp_f32_e32 v94, v89
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v81, 1.0
	v_fmac_f32_e32 v82, v87, v85
	v_fma_f32 v78, -v91, v92, v86
	v_div_scale_f32 v87, null, v83, v83, v40
	v_div_fixup_f32 v36, v80, v83, v36
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v80, s62, v21, v83, v21
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v89, v94, 1.0
	v_fma_f32 v79, -v90, v82, v79
	v_fmac_f32_e32 v92, v78, v84
	v_rcp_f32_e32 v90, v87
	v_mul_f32_e32 v78, v80, v81
	v_fmac_f32_e32 v94, v93, v94
	v_div_scale_f32 v93, s63, v47, v83, v47
	v_div_fmas_f32 v79, v79, v85, v82
	v_fma_f32 v82, -v91, v92, v86
	v_div_scale_f32 v95, null, v83, v83, v37
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v85, -v88, v78, v80
	v_mul_f32_e32 v86, v93, v94
	v_fma_f32 v91, -v87, v90, 1.0
	v_div_fmas_f32 v82, v82, v84, v92
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v78, v85, v81
	v_fma_f32 v85, -v89, v86, v93
	v_fmac_f32_e32 v90, v91, v90
	v_div_scale_f32 v91, s60, v40, v83, v40
	v_div_fixup_f32 v30, v79, v83, v30
	v_div_fixup_f32 v27, v82, v83, v27
	v_fma_f32 v79, -v88, v78, v80
	v_fmac_f32_e32 v86, v85, v94
	v_mul_f32_e32 v80, v91, v90
	v_fma_f32 v82, -v95, v84, 1.0
	v_div_scale_f32 v85, null, v83, v83, v31
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v88, s61, v37, v83, v37
	v_div_fmas_f32 v78, v79, v81, v78
	v_fma_f32 v79, -v89, v86, v93
	v_fma_f32 v81, -v87, v80, v91
	v_fmac_f32_e32 v84, v82, v84
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v89, null, v83, v83, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v81, v90
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v21, v78, v83, v21
	v_rcp_f32_e32 v81, v89
	v_div_fmas_f32 v79, v79, v94, v86
	v_mul_f32_e32 v86, v88, v84
	v_fma_f32 v78, -v87, v80, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v85, v82, 1.0
	v_div_scale_f32 v87, s62, v31, v83, v31
	v_div_fixup_f32 v47, v79, v83, v47
	v_fma_f32 v79, -v95, v86, v88
	v_fmac_f32_e32 v82, v92, v82
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v89, v81, 1.0
	v_div_scale_f32 v92, null, v83, v83, v18
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v86, v79, v84
	v_div_fmas_f32 v78, v78, v90, v80
	v_mul_f32_e32 v79, v87, v82
	v_fmac_f32_e32 v81, v91, v81
	v_rcp_f32_e32 v80, v92
	v_div_scale_f32 v90, s60, v20, v83, v20
	v_div_scale_f32 v91, null, v83, v83, v19
	v_div_fixup_f32 v40, v78, v83, v40
	v_fma_f32 v78, -v95, v86, v88
	v_fma_f32 v88, -v85, v79, v87
	v_mul_f32_e32 v93, v90, v81
	v_rcp_f32_e32 v94, v91
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v92, v80, 1.0
	v_div_fmas_f32 v78, v78, v84, v86
	v_fmac_f32_e32 v79, v88, v82
	v_fma_f32 v84, -v89, v93, v90
	v_div_scale_f32 v86, s61, v18, v83, v18
	v_fmac_f32_e32 v80, v95, v80
	v_div_fixup_f32 v37, v78, v83, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v91, v94, 1.0
	v_fma_f32 v78, -v85, v79, v87
	v_fmac_f32_e32 v93, v84, v81
	v_div_scale_f32 v87, null, v77, v77, v44
	s_mov_b32 vcc_lo, s62
	v_mul_f32_e32 v84, v86, v80
	v_fmac_f32_e32 v94, v88, v94
	v_div_scale_f32 v85, s63, v19, v83, v19
	v_div_fmas_f32 v78, v78, v82, v79
	v_fma_f32 v79, -v89, v93, v90
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v90, null, v77, v77, v39
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v82, -v92, v84, v86
	v_mul_f32_e32 v89, v85, v94
	v_div_fmas_f32 v79, v79, v81, v93
	v_rcp_f32_e32 v81, v90
	v_div_fixup_f32 v31, v78, v83, v31
	v_fmac_f32_e32 v84, v82, v80
	v_fma_f32 v82, -v91, v89, v85
	v_fma_f32 v93, -v87, v88, 1.0
	v_div_fixup_f32 v20, v79, v83, v20
	v_div_scale_f32 v79, s60, v44, v77, v44
	v_fma_f32 v78, -v92, v84, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v89, v82, v94 :: v_dual_fmac_f32 v88, v93, v88
	v_fma_f32 v82, -v90, v81, 1.0
	v_div_scale_f32 v86, null, v77, v77, v33
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v75, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v80, v84
	v_fma_f32 v80, -v91, v89, v85
	v_dual_mul_f32 v84, v79, v88 :: v_dual_fmac_f32 v81, v82, v81
	v_rcp_f32_e32 v82, v86
	v_div_scale_f32 v85, s61, v39, v77, v39
	v_div_scale_f32 v91, null, v77, v77, v34
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v92, v85, v81
	v_div_fmas_f32 v80, v80, v94, v89
	v_fma_f32 v89, -v87, v84, v79
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v86, v82, 1.0
	v_div_fixup_f32 v18, v78, v83, v18
	v_fma_f32 v78, -v90, v92, v85
	v_fmac_f32_e32 v84, v89, v88
	v_div_fixup_f32 v19, v80, v83, v19
	v_fmac_f32_e32 v82, v93, v82
	v_div_scale_f32 v80, s62, v33, v77, v33
	v_div_scale_f32 v83, null, v77, v77, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v91, v94, 1.0
	v_fma_f32 v79, -v87, v84, v79
	v_fmac_f32_e32 v92, v78, v81
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v78, v80, v82
	v_rcp_f32_e32 v87, v83
	v_fmac_f32_e32 v94, v89, v94
	v_div_scale_f32 v89, s63, v34, v77, v34
	v_div_fmas_f32 v79, v79, v88, v84
	v_fma_f32 v84, -v90, v92, v85
	v_div_scale_f32 v93, null, v77, v77, v48
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v85, -v86, v78, v80
	v_mul_f32_e32 v88, v89, v94
	v_div_fmas_f32 v81, v84, v81, v92
	v_rcp_f32_e32 v84, v93
	v_fma_f32 v90, -v83, v87, 1.0
	v_fmac_f32_e32 v78, v85, v82
	v_fma_f32 v85, -v91, v88, v89
	v_div_fixup_f32 v39, v81, v77, v39
	v_div_fixup_f32 v44, v79, v77, v44
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s60, v58, v77, v58
	v_fmac_f32_e32 v88, v85, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v93, v84, 1.0
	v_div_scale_f32 v85, null, v77, v77, v43
	v_fma_f32 v79, -v86, v78, v80
	v_mul_f32_e32 v80, v90, v87
	v_fmac_f32_e32 v84, v81, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v85
	s_mov_b32 vcc_lo, s62
	v_div_scale_f32 v86, s61, v48, v77, v48
	v_div_fmas_f32 v78, v79, v82, v78
	v_fma_f32 v79, -v91, v88, v89
	v_fma_f32 v82, -v83, v80, v90
	v_div_scale_f32 v89, null, v77, v77, v42
	s_mov_b32 vcc_lo, s63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v85, v81, 1.0
	v_fmac_f32_e32 v80, v82, v87
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v79, v79, v94, v88
	v_mul_f32_e32 v88, v86, v84
	v_div_fixup_f32 v33, v78, v77, v33
	v_fma_f32 v78, -v83, v80, v90
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v77, v77, v17
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v34, v79, v77, v34
	v_fma_f32 v79, -v93, v88, v86
	v_div_scale_f32 v83, s62, v43, v77, v43
	v_fma_f32 v90, -v89, v82, 1.0
	v_div_fmas_f32 v78, v78, v87, v80
	v_rcp_f32_e32 v80, v91
	v_fmac_f32_e32 v88, v79, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v79, v83, v81 :: v_dual_fmac_f32 v82, v90, v82
	v_div_scale_f32 v87, s60, v42, v77, v42
	v_div_scale_f32 v90, null, v77, v77, v60
	v_div_fixup_f32 v58, v78, v77, v58
	v_fma_f32 v78, -v93, v88, v86
	v_fma_f32 v86, -v85, v79, v83
	v_mul_f32_e32 v92, v87, v82
	v_rcp_f32_e32 v93, v90
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v79, v86, v81
	v_div_fmas_f32 v78, v78, v84, v88
	v_fma_f32 v84, -v89, v92, v87
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s61, v17, v77, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v48, v78, v77, v48
	v_fma_f32 v88, -v90, v93, 1.0
	v_fma_f32 v78, -v85, v79, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v92, v84, v82 :: v_dual_mul_f32 v83, v86, v80
	v_div_scale_f32 v85, null, v77, v77, v50
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v93, v88, v93
	v_div_scale_f32 v84, s63, v60, v77, v60
	v_div_fmas_f32 v78, v78, v81, v79
	v_fma_f32 v79, -v89, v92, v87
	v_fma_f32 v81, -v91, v83, v86
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v89, null, v77, v77, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v88, v84, v93 :: v_dual_fmac_f32 v83, v81, v80
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v81, v89
	v_div_fmas_f32 v79, v79, v82, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v90, v88, v84
	v_div_fixup_f32 v43, v78, v77, v43
	v_fma_f32 v92, -v85, v87, 1.0
	v_fma_f32 v78, -v91, v83, v86
	v_div_fixup_f32 v42, v79, v77, v42
	v_fmac_f32_e32 v88, v82, v93
	v_div_scale_f32 v79, s60, v50, v77, v50
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v82, -v89, v81, 1.0
	v_div_scale_f32 v86, null, v77, v77, v41
	s_mov_b32 vcc_lo, s61
	v_div_scale_f32 v94, null, v77, v77, v14
	v_div_fmas_f32 v78, v78, v80, v83
	v_fma_f32 v80, -v90, v88, v84
	v_mul_f32_e32 v83, v79, v87
	v_fmac_f32_e32 v81, v82, v81
	v_rcp_f32_e32 v82, v86
	v_div_scale_f32 v84, s61, v49, v77, v49
	v_div_scale_f32 v90, null, v77, v77, v16
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v91, v84, v81
	v_div_fmas_f32 v80, v80, v93, v88
	v_fma_f32 v88, -v85, v83, v79
	v_rcp_f32_e32 v93, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v86, v82, 1.0
	v_div_fixup_f32 v17, v78, v77, v17
	v_fma_f32 v78, -v89, v91, v84
	v_fmac_f32_e32 v83, v88, v87
	v_div_fixup_f32 v60, v80, v77, v60
	v_fmac_f32_e32 v82, v92, v82
	v_div_scale_f32 v80, s62, v41, v77, v41
	v_div_scale_f32 v88, null, v77, v77, v15
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v90, v93, 1.0
	v_fma_f32 v79, -v85, v83, v79
	v_fmac_f32_e32 v91, v78, v81
	s_mov_b32 vcc_lo, s60
	v_mul_f32_e32 v78, v80, v82
	v_rcp_f32_e32 v85, v88
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s63, v16, v77, v16
	v_div_fmas_f32 v79, v79, v87, v83
	v_fma_f32 v83, -v89, v91, v84
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v84, -v86, v78, v80
	v_mul_f32_e32 v87, v92, v93
	v_div_fixup_f32 v50, v79, v77, v50
	v_div_fmas_f32 v81, v83, v81, v91
	v_rcp_f32_e32 v83, v94
	v_fma_f32 v89, -v88, v85, 1.0
	v_fmac_f32_e32 v78, v84, v82
	v_fma_f32 v84, -v90, v87, v92
	v_div_fixup_f32 v49, v81, v77, v49
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s60, v15, v77, v15
	v_fmac_f32_e32 v87, v84, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v94, v83, 1.0
	v_div_scale_f32 v84, null, v76, v76, v53
	v_fma_f32 v79, -v86, v78, v80
	v_mul_f32_e32 v80, v89, v85
	v_fmac_f32_e32 v83, v81, v83
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v86, s61, v14, v77, v14
	v_div_fmas_f32 v78, v79, v82, v78
	v_fma_f32 v79, -v90, v87, v92
	v_fma_f32 v82, -v88, v80, v89
	v_div_scale_f32 v90, null, v76, v76, v52
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v41, v78, v77, v41
	v_fmac_f32_e32 v80, v82, v85
	v_rcp_f32_e32 v82, v90
	v_fma_f32 v91, -v84, v81, 1.0
	v_div_fmas_f32 v79, v79, v93, v87
	v_mul_f32_e32 v87, v86, v83
	v_fma_f32 v78, -v88, v80, v89
	s_mov_b32 vcc_lo, s60
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v91, null, v76, v76, v45
	v_div_fixup_f32 v16, v79, v77, v16
	v_fma_f32 v79, -v94, v87, v86
	v_div_scale_f32 v88, s62, v53, v76, v53
	v_fma_f32 v89, -v90, v82, 1.0
	v_div_fmas_f32 v78, v78, v85, v80
	v_rcp_f32_e32 v80, v91
	v_fmac_f32_e32 v87, v79, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v79, v88, v81 :: v_dual_fmac_f32 v82, v89, v82
	v_div_scale_f32 v85, s60, v52, v76, v52
	v_div_scale_f32 v89, null, v76, v76, v46
	v_div_fixup_f32 v15, v78, v77, v15
	v_fma_f32 v78, -v94, v87, v86
	v_fma_f32 v86, -v84, v79, v88
	v_mul_f32_e32 v92, v85, v82
	v_rcp_f32_e32 v93, v89
	v_fma_f32 v94, -v91, v80, 1.0
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v79, v86, v81
	v_div_fmas_f32 v78, v78, v83, v87
	v_fma_f32 v83, -v90, v92, v85
	v_fmac_f32_e32 v80, v94, v80
	v_div_scale_f32 v86, s61, v45, v76, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v14, v78, v77, v14
	v_fma_f32 v87, -v89, v93, 1.0
	v_fma_f32 v77, -v84, v79, v88
	v_fmac_f32_e32 v92, v83, v82
	v_mul_f32_e32 v78, v86, v80
	v_div_scale_f32 v84, null, v76, v76, v66
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v93, v87, v93
	v_div_scale_f32 v83, s63, v46, v76, v46
	v_div_fmas_f32 v77, v77, v81, v79
	v_fma_f32 v79, -v90, v92, v85
	v_fma_f32 v81, -v91, v78, v86
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v88, null, v76, v76, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v87, v83, v93 :: v_dual_fmac_f32 v78, v81, v80
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v81, v88
	v_div_fmas_f32 v79, v79, v82, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v82, -v89, v87, v83
	v_div_fixup_f32 v53, v77, v76, v53
	v_fma_f32 v90, -v84, v85, 1.0
	v_fma_f32 v77, -v91, v78, v86
	v_div_fixup_f32 v52, v79, v76, v52
	v_fmac_f32_e32 v87, v82, v93
	v_div_scale_f32 v79, s60, v66, v76, v66
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v82, -v88, v81, 1.0
	v_div_scale_f32 v86, null, v76, v76, v55
	s_mov_b32 vcc_lo, s61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v89, v87, v83
	v_mul_f32_e32 v80, v79, v85
	v_fmac_f32_e32 v81, v82, v81
	v_rcp_f32_e32 v82, v86
	v_div_scale_f32 v89, null, v76, v76, v54
	s_mov_b32 vcc_lo, s63
	v_div_scale_f32 v83, s61, v65, v76, v65
	v_div_fmas_f32 v78, v78, v93, v87
	v_fma_f32 v87, -v84, v80, v79
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v83, v81
	v_fma_f32 v91, -v86, v82, 1.0
	v_div_fixup_f32 v45, v77, v76, v45
	v_fmac_f32_e32 v80, v87, v85
	v_div_scale_f32 v87, null, v76, v76, v13
	v_div_fixup_f32 v46, v78, v76, v46
	v_fma_f32 v77, -v88, v90, v83
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v78, s62, v55, v76, v55
	v_fma_f32 v91, -v89, v92, 1.0
	v_fma_f32 v79, -v84, v80, v79
	v_rcp_f32_e32 v84, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v77, v81 :: v_dual_mul_f32 v77, v78, v82
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s63, v54, v76, v54
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v85, v80
	v_fma_f32 v80, -v88, v90, v83
	v_fma_f32 v83, -v86, v77, v78
	v_mul_f32_e32 v85, v91, v92
	v_fma_f32 v88, -v87, v84, 1.0
	v_div_fixup_f32 v66, v79, v76, v66
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v77, v83, v82
	v_fma_f32 v83, -v89, v85, v91
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s60, v13, v76, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v86, v77, v78
	v_fmac_f32_e32 v85, v83, v92
	v_div_fmas_f32 v80, v80, v81, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v79, v88, v84
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v78, v82, v77
	v_fma_f32 v78, -v89, v85, v91
	v_fma_f32 v82, -v87, v79, v88
	v_div_scale_f32 v89, null, v76, v76, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v55, v77, v76, v55
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v79, v82, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v82, v89
	v_div_fmas_f32 v78, v78, v92, v85
	s_mov_b32 vcc_lo, s60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v87, v79, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v84, v79
	v_fma_f32 v88, -v89, v82, 1.0
	v_div_scale_f32 v84, s60, v61, v76, v61
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v88, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v91, v84, v82
	v_div_scale_f32 v93, null, v76, v76, v69
	v_div_fixup_f32 v65, v80, v76, v65
	v_div_scale_f32 v83, null, v76, v76, v62
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v81, v93
	v_div_scale_f32 v86, s61, v69, v76, v69
	v_div_fixup_f32 v54, v78, v76, v54
	v_div_scale_f32 v87, s62, v62, v76, v62
	v_div_scale_f32 v88, null, v76, v76, v12
	v_div_fixup_f32 v13, v77, v76, v13
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v93, v81, 1.0
	v_rcp_f32_e32 v92, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v58, v58
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v80, v81
	v_rcp_f32_e32 v80, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v13, v13
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v85, v86, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v93, v85, v86
	v_fma_f32 v90, -v83, v80, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v78, v81
	v_fmac_f32_e32 v80, v90, v80
	v_div_scale_f32 v90, null, v76, v76, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v93, v85, v86
	v_mul_f32_e32 v78, v87, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v81, v85
	v_fma_f32 v86, -v83, v78, v87
	v_fma_f32 v81, -v89, v91, v84
	v_div_scale_f32 v85, s61, v57, v76, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v69, v77, v76, v69
	v_fmac_f32_e32 v78, v86, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v90, v79, 1.0
	v_fma_f32 v86, -v88, v92, 1.0
	v_fmac_f32_e32 v91, v81, v82
	s_mov_b32 vcc_lo, s62
	v_fma_f32 v77, -v83, v78, v87
	v_dual_fmac_f32 v79, v93, v79 :: v_dual_fmac_f32 v92, v86, v92
	v_div_scale_f32 v86, null, v76, v76, v10
	v_div_scale_f32 v83, s63, v12, v76, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v81, v85, v79
	v_div_fmas_f32 v77, v77, v80, v78
	v_fma_f32 v78, -v89, v91, v84
	v_rcp_f32_e32 v84, v86
	v_div_scale_f32 v89, null, v76, v76, v11
	v_fma_f32 v80, -v90, v81, v85
	v_mul_f32_e32 v87, v83, v92
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v62, v77, v76, v62
	v_div_fmas_f32 v78, v78, v82, v91
	v_fmac_f32_e32 v81, v80, v79
	v_rcp_f32_e32 v80, v89
	v_fma_f32 v82, -v88, v87, v83
	v_fma_f32 v91, -v86, v84, 1.0
	v_div_fixup_f32 v61, v78, v76, v61
	v_fma_f32 v77, -v90, v81, v85
	v_div_scale_f32 v78, s60, v10, v76, v10
	v_fmac_f32_e32 v87, v82, v92
	v_fmac_f32_e32 v84, v91, v84
	s_mov_b32 vcc_lo, s61
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v89, v80, 1.0
	v_div_fmas_f32 v77, v77, v79, v81
	v_fma_f32 v79, -v88, v87, v83
	v_mul_f32_e32 v81, v78, v84
	s_mov_b32 vcc_lo, s63
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, null, v75, v75, v68
	v_div_fmas_f32 v79, v79, v92, v87
	v_fma_f32 v87, -v86, v81, v78
	v_div_scale_f32 v83, s61, v11, v76, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v82
	v_div_scale_f32 v90, null, v75, v75, v64
	v_fmac_f32_e32 v81, v87, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v88, v83, v80
	v_div_fixup_f32 v57, v77, v76, v57
	v_div_fixup_f32 v12, v79, v76, v12
	v_rcp_f32_e32 v79, v90
	v_fma_f32 v78, -v86, v81, v78
	v_div_scale_f32 v86, null, v75, v75, v63
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v87, -v82, v85, 1.0
	v_fma_f32 v77, -v89, v88, v83
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v92, null, v75, v75, v59
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v87, v86
	v_fmac_f32_e32 v88, v77, v80
	v_div_scale_f32 v77, s62, v68, v75, v68
	v_fma_f32 v91, -v90, v79, 1.0
	v_div_fmas_f32 v78, v78, v84, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v89, v88, v83
	v_mul_f32_e32 v83, v77, v85
	s_mov_b32 vcc_lo, s61
	v_fmac_f32_e32 v79, v91, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v86, v87, 1.0
	v_div_scale_f32 v84, s60, v64, v75, v64
	v_fma_f32 v91, -v82, v83, v77
	v_rcp_f32_e32 v94, v92
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, s63, v63, v75, v63
	v_div_fmas_f32 v80, v81, v80, v88
	v_fmac_f32_e32 v83, v91, v85
	v_mul_f32_e32 v93, v84, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v88, v89, v87
	v_div_fixup_f32 v10, v78, v76, v10
	v_div_fixup_f32 v11, v80, v76, v11
	v_fma_f32 v76, -v82, v83, v77
	v_div_scale_f32 v80, null, v75, v75, v74
	v_fma_f32 v77, -v86, v88, v89
	v_fma_f32 v81, -v90, v93, v84
	v_fma_f32 v78, -v92, v94, 1.0
	s_mov_b32 vcc_lo, s62
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v77, v87
	v_rcp_f32_e32 v77, v80
	v_dual_fmac_f32 v93, v81, v79 :: v_dual_fmac_f32 v94, v78, v94
	v_div_scale_f32 v78, s61, v59, v75, v59
	v_div_fmas_f32 v76, v76, v85, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v90, v93, v84
	v_div_scale_f32 v83, null, v75, v75, v73
	v_mul_f32_e32 v82, v78, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v80, v77, 1.0
	s_mov_b32 vcc_lo, s60
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v79, v81, v79, v93
	v_fma_f32 v81, -v86, v88, v89
	v_fma_f32 v86, -v92, v82, v78
	v_fmac_f32_e32 v77, v84, v77
	v_div_scale_f32 v84, s60, v74, v75, v74
	v_div_fixup_f32 v68, v76, v75, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v86, v94
	s_mov_b32 vcc_lo, s63
	v_mul_f32_e32 v76, v84, v77
	v_div_fmas_f32 v81, v81, v87, v88
	v_div_fixup_f32 v64, v79, v75, v64
	v_fma_f32 v79, -v83, v85, 1.0
	v_fma_f32 v78, -v92, v82, v78
	v_fma_f32 v86, -v80, v76, v84
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v63, v81, v75, v63
	v_div_scale_f32 v81, null, v75, v75, v71
	v_fmac_f32_e32 v85, v79, v85
	v_div_scale_f32 v79, s62, v73, v75, v73
	v_div_fmas_f32 v78, v78, v94, v82
	v_fmac_f32_e32 v76, v86, v77
	v_rcp_f32_e32 v87, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v82, v79, v85
	s_mov_b32 vcc_lo, s60
	v_div_fixup_f32 v59, v78, v75, v59
	v_fma_f32 v78, -v80, v76, v84
	v_div_scale_f32 v86, null, v75, v75, v70
	v_fma_f32 v80, -v83, v82, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v78, v77, v76
	v_div_scale_f32 v77, null, v75, v75, v9
	v_fma_f32 v84, -v81, v87, 1.0
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v82, v80, v85
	v_rcp_f32_e32 v80, v77
	v_div_scale_f32 v78, s60, v71, v75, v71
	v_fmac_f32_e32 v87, v84, v87
	v_div_scale_f32 v84, null, v75, v75, v72
	v_div_fixup_f32 v74, v76, v75, v74
	v_fma_f32 v79, -v83, v82, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v76, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v84
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v77, v80, 1.0
	v_mul_f32_e32 v83, v78, v87
	s_mov_b32 vcc_lo, s62
	v_fmac_f32_e32 v88, v76, v88
	v_div_scale_f32 v76, s61, v70, v75, v70
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v89, null, v75, v75, v67
	v_div_fmas_f32 v79, v79, v85, v82
	v_fma_f32 v82, -v81, v83, v78
	v_mul_f32_e32 v85, v76, v88
	v_div_scale_f32 v91, s62, v9, v75, v9
	v_fma_f32 v92, -v84, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v83, v82, v87
	v_fma_f32 v82, -v86, v85, v76
	v_mul_f32_e32 v94, v91, v80
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s63, v72, v75, v72
	v_div_fixup_f32 v73, v79, v75, v73
	v_fma_f32 v78, -v81, v83, v78
	v_fmac_f32_e32 v85, v82, v88
	v_fma_f32 v79, -v77, v94, v91
	v_mul_f32_e32 v81, v92, v90
	v_fma_f32 v82, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s60
	v_fma_f32 v76, -v86, v85, v76
	v_fmac_f32_e32 v94, v79, v80
	v_fma_f32 v79, -v84, v81, v92
	v_fmac_f32_e32 v93, v82, v93
	v_div_scale_f32 v82, s60, v67, v75, v67
	v_div_fmas_f32 v78, v78, v87, v83
	v_fma_f32 v77, -v77, v94, v91
	v_fmac_f32_e32 v81, v79, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v79, v82, v93
	v_div_scale_f32 v83, null, v75, v75, v56
	s_mov_b32 vcc_lo, s61
	v_div_fixup_f32 v71, v78, v75, v71
	v_div_fmas_f32 v76, v76, v88, v85
	s_mov_b32 vcc_lo, s62
	v_rcp_f32_e32 v85, v83
	v_div_fmas_f32 v77, v77, v80, v94
	v_fma_f32 v80, -v84, v81, v92
	v_fma_f32 v84, -v89, v79, v82
	v_div_fixup_f32 v70, v76, v75, v70
	s_mov_b32 vcc_lo, s63
	v_div_fixup_f32 v9, v77, v75, v9
	v_div_scale_f32 v77, null, v75, v75, v51
	v_fmac_f32_e32 v79, v84, v93
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v78, -v83, v85, 1.0
	v_div_fmas_f32 v80, v80, v90, v81
	s_mov_b32 vcc_lo, s60
	v_div_scale_f32 v87, null, v75, v75, v8
	v_fma_f32 v76, -v89, v79, v82
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v78, null, v75, v75, v0
	v_div_fixup_f32 v72, v80, v75, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v76, v76, v93, v79
	v_rcp_f32_e32 v79, v77
	v_div_scale_f32 v80, null, v75, v75, v7
	v_rcp_f32_e32 v82, v78
	v_div_scale_f32 v81, vcc_lo, v56, v75, v56
	v_rcp_f32_e32 v84, v80
	v_div_fixup_f32 v67, v76, v75, v67
	v_rcp_f32_e32 v89, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v86, v81, v85
	v_fma_f32 v76, -v77, v79, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v78, v82, 1.0
	v_fma_f32 v90, -v83, v86, v81
	v_fmac_f32_e32 v79, v76, v79
	v_div_scale_f32 v76, s60, v51, v75, v51
	v_fma_f32 v91, -v80, v84, 1.0
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v88, s61, v0, v75, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v92, v76, v79
	v_fma_f32 v93, -v87, v89, 1.0
	v_fmac_f32_e32 v84, v91, v84
	v_div_scale_f32 v91, s62, v7, v75, v7
	v_fmac_f32_e32 v86, v90, v85
	v_fma_f32 v90, -v77, v92, v76
	v_dual_mul_f32 v94, v88, v82 :: v_dual_fmac_f32 v89, v93, v89
	v_div_scale_f32 v93, s63, v8, v75, v8
	v_mul_f32_e32 v95, v91, v84
	v_fma_f32 v81, -v83, v86, v81
	v_fmac_f32_e32 v92, v90, v79
	v_fma_f32 v83, -v78, v94, v88
	v_mul_f32_e32 v96, v93, v89
	v_fma_f32 v90, -v80, v95, v91
	v_div_fmas_f32 v81, v81, v85, v86
	v_fma_f32 v76, -v77, v92, v76
	v_fmac_f32_e32 v94, v83, v82
	v_fma_f32 v77, -v87, v96, v93
	v_fmac_f32_e32 v95, v90, v84
	s_mov_b32 vcc_lo, s60
	s_mov_b32 s60, 0xc1000000
	v_fma_f32 v78, -v78, v94, v88
	v_fmac_f32_e32 v96, v77, v89
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v41, v41, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v79, v92
	v_fma_f32 v77, -v80, v95, v91
	s_mov_b32 vcc_lo, s61
	v_fma_f32 v79, -v87, v96, v93
	v_div_fmas_f32 v78, v78, v82, v94
	v_div_fixup_f32 v56, v81, v75, v56
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s60, 0x40e00000
	v_med3_f32 v21, v21, s60, 0x40e00000
	v_med3_f32 v20, v20, s60, 0x40e00000
	v_med3_f32 v19, v19, s60, 0x40e00000
	v_med3_f32 v66, v66, s60, 0x40e00000
	v_cvt_i32_f32_e32 v81, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s62
	v_div_fixup_f32 v0, v78, v75, v0
	v_div_fmas_f32 v77, v77, v84, v95
	s_mov_b32 vcc_lo, s63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s60, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v89, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s60, 0x40e00000
	v_med3_f32 v69, v69, s60, 0x40e00000
	v_med3_f32 v11, v11, s60, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v87, v66
	v_and_b32_e32 v66, 15, v81
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v81, 16, v109
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v51, v76, v75, v51
	v_div_fixup_f32 v7, v77, v75, v7
	v_div_fixup_f32 v8, v79, v75, v8
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	v_rndne_f32_e32 v0, v0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v80, v49
	v_cvt_i32_f32_e32 v91, v69
	v_cvt_i32_f32_e32 v96, v11
	v_and_b32_e32 v11, 15, v29
	v_and_b32_e32 v49, 15, v21
	v_and_b32_e32 v69, 15, v20
	v_and_b32_e32 v77, 15, v19
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v19, 13, v109
	v_and_b32_e32 v20, 0x2f0, v28
	v_lshlrev_b32_e32 v21, 8, v81
	v_and_b32_e32 v29, 64, v109
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s60, 0x40e00000
	v_med3_f32 v37, v37, s60, 0x40e00000
	v_med3_f32 v44, v44, s60, 0x40e00000
	v_med3_f32 v53, v53, s60, 0x40e00000
	v_med3_f32 v10, v10, s60, 0x40e00000
	v_med3_f32 v68, v68, s60, 0x40e00000
	v_med3_f32 v72, v72, s60, 0x40e00000
	v_med3_f32 v0, v0, s60, 0x40e00000
	v_and_b32_e32 v41, 15, v30
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v30, 3, v6
	v_and_or_b32 v19, 0xe000, v19, v21
	v_xor_b32_e32 v20, v20, v29
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v25, v25, s60, 0x40e00000
	v_med3_f32 v26, v26, s60, 0x40e00000
	v_med3_f32 v38, v38, s60, 0x40e00000
	v_med3_f32 v27, v27, s60, 0x40e00000
	v_med3_f32 v58, v58, s60, 0x40e00000
	v_med3_f32 v74, v74, s60, 0x40e00000
	v_med3_f32 v17, v17, s60, 0x40e00000
	v_med3_f32 v52, v52, s60, 0x40e00000
	v_med3_f32 v13, v13, s60, 0x40e00000
	v_med3_f32 v9, v9, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v31, v31, s60, 0x40e00000
	v_med3_f32 v57, v57, s60, 0x40e00000
	v_med3_f32 v51, v51, s60, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v64, v64
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s60, 0x40e00000
	v_med3_f32 v56, v56, s60, 0x40e00000
	v_med3_f32 v7, v7, s60, 0x40e00000
	v_med3_f32 v8, v8, s60, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v75, v37
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v84, v53
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v19, v19, v30, v20
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v73, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s60, 0x40e00000
	v_med3_f32 v15, v15, s60, 0x40e00000
	v_med3_f32 v45, v45, s60, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v99, v74
	v_med3_f32 v50, v50, s60, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v90, v13
	v_cvt_i32_f32_e32 v103, v9
	v_med3_f32 v65, v65, s60, 0x40e00000
	v_med3_f32 v67, v67, s60, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v94, v57
	v_cvt_i32_f32_e32 v106, v51
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v63, v63
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s60, 0x40e00000
	v_med3_f32 v39, v39, s60, 0x40e00000
	v_med3_f32 v43, v43, s60, 0x40e00000
	v_med3_f32 v42, v42, s60, 0x40e00000
	v_med3_f32 v60, v60, s60, 0x40e00000
	v_med3_f32 v14, v14, s60, 0x40e00000
	v_med3_f32 v55, v55, s60, 0x40e00000
	v_med3_f32 v64, v64, s60, 0x40e00000
	v_cvt_i32_f32_e32 v93, v61
	v_cvt_i32_f32_e32 v105, v56
	v_cvt_i32_f32_e32 v107, v7
	v_cvt_i32_f32_e32 v108, v8
	v_and_b32_e32 v7, 15, v35
	v_and_b32_e32 v61, 15, v75
	v_and_b32_e32 v8, 15, v44
	v_and_b32_e32 v9, 15, v84
	v_and_b32_e32 v75, 15, v10
	v_and_b32_e32 v10, 15, v68
	v_and_b32_e32 v56, 15, v72
	v_and_b32_e32 v72, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v0, 0, v19
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v70, v70
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s60, 0x40e00000
	v_med3_f32 v40, v40, s60, 0x40e00000
	v_med3_f32 v48, v48, s60, 0x40e00000
	v_med3_f32 v16, v16, s60, 0x40e00000
	v_med3_f32 v12, v12, s60, 0x40e00000
	v_med3_f32 v73, v73, s60, 0x40e00000
	v_cvt_i32_f32_e32 v76, v33
	v_cvt_i32_f32_e32 v83, v15
	v_cvt_i32_f32_e32 v85, v45
	v_and_b32_e32 v15, 15, v25
	v_and_b32_e32 v33, 15, v26
	v_and_b32_e32 v25, 15, v38
	v_and_b32_e32 v45, 15, v27
	v_and_b32_e32 v26, 15, v58
	v_and_b32_e32 v27, 15, v87
	v_and_b32_e32 v28, 15, v99
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v59, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v50
	v_and_b32_e32 v50, 15, v17
	v_and_b32_e32 v13, 15, v52
	v_and_b32_e32 v51, 15, v90
	v_and_b32_e32 v52, 15, v103
	v_cvt_i32_f32_e32 v88, v65
	v_cvt_i32_f32_e32 v104, v67
	v_and_b32_e32 v65, 15, v31
	v_and_b32_e32 v67, 15, v94
	v_and_b32_e32 v68, 15, v106
	v_med3_f32 v18, v18, s60, 0x40e00000
	v_med3_f32 v46, v46, s60, 0x40e00000
	v_med3_f32 v54, v54, s60, 0x40e00000
	v_med3_f32 v62, v62, s60, 0x40e00000
	v_med3_f32 v63, v63, s60, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v78, v42
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v64, v64
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[7:10]
	ds_store_b128 v0, v[25:28] offset:256
	ds_store_b128 v0, v[49:52] offset:2048
	ds_store_b128 v0, v[65:68] offset:2304
	v_lshlrev_b32_e32 v7, 6, v109
	v_lshlrev_b32_e32 v8, 5, v23
	v_cndmask_b32_e64 v6, 0x2010, 0, vcc_lo
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v71, v71, s60, 0x40e00000
	v_med3_f32 v70, v70, s60, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v82, v16
	v_cvt_i32_f32_e32 v95, v12
	v_cvt_i32_f32_e32 v100, v73
	v_med3_f32 v34, v34, s60, 0x40e00000
	v_med3_f32 v59, v59, s60, 0x40e00000
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v86, v46
	v_cvt_i32_f32_e32 v89, v54
	v_cvt_i32_f32_e32 v92, v62
	v_cvt_i32_f32_e32 v97, v63
	v_and_b32_e32 v53, 15, v47
	v_and_b32_e32 v12, 15, v39
	v_and_b32_e32 v42, 15, v43
	v_and_b32_e32 v46, 15, v78
	v_and_b32_e32 v54, 15, v60
	v_and_b32_e32 v78, 15, v14
	v_and_b32_e32 v43, 15, v55
	v_and_b32_e32 v55, 15, v91
	v_and_b32_e32 v14, 15, v64
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v0, v19, 16, 0
	v_lshlrev_b32_e32 v10, 2, v81
	v_and_or_b32 v7, 0x300, v7, v8
	v_xor_b32_e32 v6, v6, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v101, v71
	v_cvt_i32_f32_e32 v102, v70
	v_and_b32_e32 v37, 15, v36
	v_and_b32_e32 v57, 15, v40
	v_and_b32_e32 v38, 15, v48
	v_and_b32_e32 v70, 15, v82
	v_and_b32_e32 v39, 15, v88
	v_and_b32_e32 v71, 15, v95
	v_and_b32_e32 v40, 15, v100
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v98, v59
	v_and_b32_e32 v73, 15, v18
	v_and_b32_e32 v16, 15, v76
	v_and_b32_e32 v58, 15, v79
	v_and_b32_e32 v62, 15, v80
	v_and_b32_e32 v17, 15, v85
	v_and_b32_e32 v59, 15, v92
	v_and_b32_e32 v63, 15, v93
	v_and_b32_e32 v18, 15, v97
	v_and_b32_e32 v60, 15, v104
	v_and_b32_e32 v64, 15, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[11:14]
	ds_store_b128 v0, v[37:40] offset:256
	v_xad_u32 v9, v19, 32, 0
	ds_store_b128 v0, v[53:56] offset:2048
	ds_store_b128 v0, v[69:72] offset:2304
	v_xad_u32 v0, v19, 48, 0
	v_or3_b32 v23, v6, v7, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v83
	v_and_b32_e32 v79, 15, v96
	v_and_b32_e32 v44, 15, v101
	v_and_b32_e32 v76, 15, v107
	v_and_b32_e32 v80, 15, v108
	v_and_b32_e32 v34, 15, v34
	v_and_b32_e32 v35, 15, v86
	v_and_b32_e32 v36, 15, v98
	v_and_b32_e32 v47, 15, v89
	v_and_b32_e32 v48, 15, v102
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v9, v[15:18]
	ds_store_b128 v9, v[41:44] offset:256
	ds_store_b128 v9, v[57:60] offset:2048
	ds_store_b128 v9, v[73:76] offset:2304
	ds_store_b128 v0, v[33:36]
	ds_store_b128 v0, v[45:48] offset:256
	ds_store_b128 v0, v[61:64] offset:2048
	ds_store_b128 v0, v[77:80] offset:2304
	v_xad_u32 v0, 0x4020, v23, 0
	v_add_nc_u32_e32 v18, 0, v23
	v_xad_u32 v53, 0x8040, v23, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v0
	ds_load_b128 v[29:32], v0 offset:128
	ds_load_b128 v[33:36], v0 offset:4096
	ds_load_b128 v[37:40], v0 offset:4224
	v_xad_u32 v0, 0xc060, v23, 0
	ds_load_b128 v[6:9], v18
	ds_load_b128 v[10:13], v18 offset:128
	ds_load_b128 v[14:17], v18 offset:4096
	ds_load_b128 v[18:21], v18 offset:4224
	ds_load_b128 v[41:44], v53
	ds_load_b128 v[45:48], v53 offset:128
	ds_load_b128 v[49:52], v53 offset:4096
	ds_load_b128 v[53:56], v53 offset:4224
	ds_load_b128 v[57:60], v0 offset:4096
	ds_load_b128 v[61:64], v0
	ds_load_b128 v[65:68], v0 offset:128
	ds_load_b128 v[69:72], v0 offset:4224
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v73, s60, s66, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v74, null, s67, 0, s60
	v_add_co_u32 v75, s60, s66, v164
	v_add_co_ci_u32_e64 v76, null, s67, 0, s60
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[64:65], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[72:73], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v3, s66, v164
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[64:65], v[73:74]
	v_cmp_le_i64_e64 s63, s[64:65], v[75:76]
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s74, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v0, s75, 7, v111
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v46, v54, 4, v46
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s65, s74, s65
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v14, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, 2, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v54, v70, 4, v66
	v_lshl_or_b32 v66, v16, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 4, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v55, 4, v47
	v_lshl_or_b32 v55, v71, 4, v67
	v_lshl_or_b32 v67, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 6, v3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[72:73], v[73:74]
	v_cmp_gt_i64_e64 s64, s[72:73], v[75:76]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v49, 4, v41
	v_lshl_or_b32 v49, v57, 4, v61
	v_lshl_or_b32 v57, v18, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s72, s65, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 8, v3
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v73, v33, 4, v25
	v_lshl_or_b32 v42, v50, 4, v42
	v_lshl_or_b32 v50, v58, 4, v62
	v_lshl_or_b32 v58, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 10, v3
	v_add_nc_u32_e32 v25, 32, v3
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v53, 4, v45
	v_lshl_or_b32 v53, v69, 4, v65
	v_lshl_or_b32 v65, v15, 4, v7
	v_lshl_or_b32 v70, v35, 4, v27
	v_lshl_or_b32 v43, v51, 4, v43
	v_lshl_or_b32 v51, v59, 4, v63
	v_lshl_or_b32 v59, v20, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 12, v3
	v_add_nc_u32_e32 v27, 34, v3
	v_mad_u64_u32 v[6:7], null, v6, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v71, v36, 4, v28
	v_lshl_or_b32 v44, v52, 4, v44
	v_lshl_or_b32 v52, v60, 4, v64
	v_lshl_or_b32 v60, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 14, v3
	v_add_nc_u32_e32 v28, 36, v3
	v_mad_u64_u32 v[7:8], null, v8, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v37, 4, v29
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 16, v3
	v_add_nc_u32_e32 v29, 38, v3
	v_mad_u64_u32 v[8:9], null, v9, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v62, v38, 4, v30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 18, v3
	v_add_nc_u32_e32 v30, 40, v3
	v_mad_u64_u32 v[9:10], null, v10, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v69, v34, 4, v26
	v_lshl_or_b32 v63, v39, 4, v31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 20, v3
	v_add_nc_u32_e32 v31, 42, v3
	v_mad_u64_u32 v[10:11], null, v11, s72, v[0:1]
	v_mad_u64_u32 v[25:26], null, v25, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v40, 4, v32
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 22, v3
	v_add_nc_u32_e32 v32, 44, v3
	v_mad_u64_u32 v[11:12], null, v12, s72, v[0:1]
	v_mad_u64_u32 v[26:27], null, v27, s72, v[0:1]
	v_add_nc_u32_e32 v18, 24, v3
	v_add_nc_u32_e32 v33, 46, v3
	v_mad_u64_u32 v[12:13], null, v13, s72, v[0:1]
	v_mad_u64_u32 v[27:28], null, v28, s72, v[0:1]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v48, v56, 4, v48
	v_lshl_or_b32 v56, v72, 4, v68
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v19, 26, v3
	v_add_nc_u32_e32 v20, 28, v3
	v_add_nc_u32_e32 v21, 30, v3
	v_add_nc_u32_e32 v34, 48, v3
	v_add_nc_u32_e32 v35, 50, v3
	v_add_nc_u32_e32 v36, 52, v3
	v_add_nc_u32_e32 v37, 54, v3
	v_add_nc_u32_e32 v38, 56, v3
	v_add_nc_u32_e32 v39, 58, v3
	v_add_nc_u32_e32 v40, 60, v3
	v_add_nc_u32_e32 v68, 62, v3
	v_mad_u64_u32 v[3:4], null, v3, s72, v[0:1]
	v_mad_u64_u32 v[13:14], null, v14, s72, v[0:1]
	v_mad_u64_u32 v[28:29], null, v29, s72, v[0:1]
	v_mad_u64_u32 v[14:15], null, v15, s72, v[0:1]
	v_mad_u64_u32 v[29:30], null, v30, s72, v[0:1]
	v_mad_u64_u32 v[15:16], null, v16, s72, v[0:1]
	v_mad_u64_u32 v[30:31], null, v31, s72, v[0:1]
	v_mad_u64_u32 v[16:17], null, v17, s72, v[0:1]
	v_mad_u64_u32 v[31:32], null, v32, s72, v[0:1]
	v_mad_u64_u32 v[17:18], null, v18, s72, v[0:1]
	v_mad_u64_u32 v[32:33], null, v33, s72, v[0:1]
	v_mad_u64_u32 v[18:19], null, v19, s72, v[0:1]
	v_mad_u64_u32 v[33:34], null, v34, s72, v[0:1]
	v_mad_u64_u32 v[19:20], null, v20, s72, v[0:1]
	v_mad_u64_u32 v[34:35], null, v35, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[20:21], null, v21, s72, v[0:1]
	v_mad_u64_u32 v[35:36], null, v36, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s60
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[36:37], null, v37, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v21, 0x80000000, v3, s63
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[3:4], null, v68, s72, v[0:1]
	v_mad_u64_u32 v[37:38], null, v38, s72, v[0:1]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v7, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s58, s59
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[38:39], null, v39, s72, v[0:1]
	v_mad_u64_u32 v[39:40], null, v40, s72, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v0, 0x80000000, v6, s61
	v_cndmask_b32_e32 v6, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s56, s57
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s54, s55
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	v_cndmask_b32_e32 v8, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s52, s53
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x5
	buffer_store_b8 v23, v21, s[64:67], 0 offen
	buffer_store_b8 v73, v0, s[64:67], 0 offen
	buffer_store_b8 v41, v4, s[64:67], 0 offen
	buffer_store_b8 v49, v6, s[64:67], 0 offen
	buffer_store_b8 v57, v7, s[64:67], 0 offen
	buffer_store_b8 v61, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s50, s51
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v24.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v12, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s48, s49
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v22.h
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s46, s47
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v7, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s44, s45
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s42, s43
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x4
	buffer_store_b8 v45, v0, s[64:67], 0 offen
	buffer_store_b8 v53, v4, s[64:67], 0 offen
	buffer_store_b8 v65, v6, s[64:67], 0 offen
	buffer_store_b8 v69, v7, s[64:67], 0 offen
	buffer_store_b8 v42, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v16, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s40, s41
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v17, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s38, s39
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v6, 0x80000000, v18, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s36, s37
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
	buffer_store_b8 v50, v0, s[64:67], 0 offen
	buffer_store_b8 v58, v4, s[64:67], 0 offen
	buffer_store_b8 v62, v6, s[64:67], 0 offen
	buffer_store_b8 v46, v7, s[64:67], 0 offen
	buffer_store_b8 v54, v8, s[64:67], 0 offen
	v_cndmask_b32_e32 v0, 0x80000000, v25, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s29, s30
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v4, 0x80000000, v26, vcc_lo
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
	buffer_store_b8 v66, v0, s[64:67], 0 offen
	buffer_store_b8 v70, v4, s[64:67], 0 offen
	buffer_store_b8 v43, v6, s[64:67], 0 offen
	buffer_store_b8 v51, v7, s[64:67], 0 offen
	buffer_store_b8 v59, v8, s[64:67], 0 offen
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
	buffer_store_b8 v63, v0, s[64:67], 0 offen
	buffer_store_b8 v47, v4, s[64:67], 0 offen
	buffer_store_b8 v55, v6, s[64:67], 0 offen
	buffer_store_b8 v67, v7, s[64:67], 0 offen
	buffer_store_b8 v71, v8, s[64:67], 0 offen
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
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s3, s74, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v8, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b8 v44, v0, s[64:67], 0 offen
	buffer_store_b8 v52, v4, s[64:67], 0 offen
	buffer_store_b8 v60, v6, s[64:67], 0 offen
	buffer_store_b8 v64, v7, s[64:67], 0 offen
	buffer_store_b8 v48, v8, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v109
	v_lshrrev_b32_e32 v6, 2, v81
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s3, 24
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_dual_cndmask_b32 v0, 0x80000000, v3 :: v_dual_lshlrev_b32 v3, 3, v110
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s74, s74, s0
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v56, v0, s[64:67], 0 offen
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
	v_and_b32_e32 v2, 0xc0, v109
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s75, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp74:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 816
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
		.amdhsa_next_free_sgpr 76
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 816
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 36632
; TotalNumSgprs: 78
; NumVgprs: 256
; ScratchSize: 816
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 78
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 816
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 203
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
