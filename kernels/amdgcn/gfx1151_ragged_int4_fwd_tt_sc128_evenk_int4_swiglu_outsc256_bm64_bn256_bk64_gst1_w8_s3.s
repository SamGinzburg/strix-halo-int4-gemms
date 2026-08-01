	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[36:37], s[0:1], 0x5c
	v_dual_mov_b32 v191, v0 :: v_dual_mov_b32 v88, 0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
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
	s_sub_i32 s5, s37, s4
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
	s_sub_i32 s37, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s37, s5
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
	s_load_b64 s[28:29], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[30:31], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s28, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s29, 0, s2
	v_add_nc_u32_e32 v213, s28, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[30:31], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s36, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v191
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s28, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow774
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v96, 15, v191
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v97, 0xf0, v191
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v241, 0 :: v_dual_mov_b32 v242, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v243, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v199, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v248, 0
	v_dual_mov_b32 v247, 0 :: v_dual_mov_b32 v212, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v192, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v201, 0 :: v_dual_mov_b32 v202, 0
	v_mov_b32_e32 v203, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s28, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s29, 0, s3
	s_clause 0x1
	s_load_b32 s26, s[0:1], 0x58
	s_load_b32 s38, s[0:1], 0x50
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[0:1]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s20, s6, s4
	s_addc_u32 s21, s7, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[30:31], v[0:1]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s20, s[20:21], 0x0
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v0, s28, v96
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_lshrrev_b32_e32 v1, 5, v191
	.loc	1 1045 18 is_stmt 0             ; ragged.py:1045:18
	s_lshl_b32 s24, s37, 8
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[2:3]
	v_cmp_le_i64_e64 s3, s[34:35], v[4:5]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[30:31], v[2:3]
	v_cmp_gt_i64_e64 s6, s[30:31], v[4:5]
	v_dual_mov_b32 v247, 0 :: v_dual_add_nc_u32 v2, 16, v0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_add_nc_u32_e32 v3, 32, v0
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v4, 48, v0
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_or_b32_e32 v1, s24, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s36
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[34:35], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[30:31], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s4
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v57, 16, v1
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v64, s33, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s6
	s_and_b32 s4, s5, s7
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s5, s33, 1
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:1104 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s36
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s26, s5
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v62, s33, v57
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s7, s36, s20
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s6, s20
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v36, 0x68, v1
	v_mad_u64_u32 v[210:211], null, v64, s26, s[6:7]
	v_mad_u64_u32 v[211:212], null, v62, s26, s[6:7]
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:1108 ; 4-byte Folded Spill
	v_mov_b32_e32 v212, 0
	v_mul_lo_u32 v0, v3, s36
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v35, 0x70, v1
	v_or_b32_e32 v55, 32, v1
	v_or_b32_e32 v56, 24, v1
	v_or_b32_e32 v34, 0x78, v1
	v_or_b32_e32 v28, 0x80, v1
	v_or_b32_e32 v27, 0x88, v1
	v_or_b32_e32 v26, 0x90, v1
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v0, off offset:1112 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s36
	v_mad_u64_u32 v[221:222], null, s26, v57, s[6:7]
	v_mad_u64_u32 v[228:229], null, s26, v36, s[6:7]
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v25, 0x98, v1
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v60, s33, v55
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v61, s33, v56
	v_mad_u64_u32 v[222:223], null, s26, v56, s[6:7]
	v_mad_u64_u32 v[55:56], null, s26, v55, s[6:7]
	v_mad_u64_u32 v[229:230], null, s26, v35, s[6:7]
	v_or_b32_e32 v24, 0xa0, v1
	v_mad_u64_u32 v[230:231], null, s26, v34, s[6:7]
	v_or_b32_e32 v18, 0xa8, v1
	v_mad_u64_u32 v[231:232], null, s26, v28, s[6:7]
	scratch_store_b32 off, v0, off offset:1116 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0xf8, v1
	v_or_b32_e32 v16, 0xb8, v1
	v_or_b32_e32 v17, 0xb0, v1
	v_or_b32_e32 v54, 40, v1
	v_mad_u64_u32 v[232:233], null, s26, v27, s[6:7]
	v_mad_u64_u32 v[233:234], null, s26, v26, s[6:7]
	v_mad_u64_u32 v[234:235], null, s26, v25, s[6:7]
	v_mad_u64_u32 v[235:236], null, s26, v24, s[6:7]
	v_mad_u64_u32 v[236:237], null, s26, v18, s[6:7]
	v_dual_mov_b32 v248, 0 :: v_dual_add_nc_u32 v3, s33, v0
	v_or_b32_e32 v4, 0xf0, v1
	v_or_b32_e32 v5, 0xe8, v1
	v_or_b32_e32 v6, 0xe0, v1
	v_or_b32_e32 v7, 0xd8, v1
	v_or_b32_e32 v8, 0xd0, v1
	v_or_b32_e32 v14, 0xc8, v1
	v_or_b32_e32 v15, 0xc0, v1
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v21, s33, v16
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v22, s33, v17
	v_or_b32_e32 v37, 0x60, v1
	v_or_b32_e32 v38, 0x58, v1
	v_or_b32_e32 v44, 0x50, v1
	v_or_b32_e32 v45, 0x48, v1
	v_or_b32_e32 v46, 64, v1
	v_or_b32_e32 v47, 56, v1
	v_or_b32_e32 v48, 48, v1
	v_or_b32_e32 v58, 8, v1
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v59, s33, v54
	v_mad_u64_u32 v[215:216], null, v1, s26, s[6:7]
	v_mad_u64_u32 v[237:238], null, s26, v17, s[6:7]
	v_mad_u64_u32 v[16:17], null, s26, v16, s[6:7]
	scratch_store_b64 off, v[55:56], off offset:264 ; 8-byte Folded Spill
	v_mad_u64_u32 v[54:55], null, s26, v54, s[6:7]
	v_mad_u64_u32 v[162:163], null, s26, v0, s[6:7]
	v_mad_u64_u32 v[0:1], null, v60, s26, s[6:7]
	v_or_b32_e32 v75, s24, v191
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v20, s33, v15
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v52, s33, v47
	v_dual_mov_b32 v184, 0 :: v_dual_add_nc_u32 v53, s33, v48
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[16:17], off offset:312
	scratch_store_b32 off, v75, off offset:1120
	scratch_store_b64 off, v[0:1], off offset:360
	v_mad_u64_u32 v[15:16], null, s26, v15, s[6:7]
	scratch_store_b64 off, v[54:55], off offset:272 ; 8-byte Folded Spill
	v_mad_u64_u32 v[54:55], null, s26, v48, s[6:7]
	v_mad_u64_u32 v[47:48], null, s26, v47, s[6:7]
	v_mad_u64_u32 v[0:1], null, v59, s26, s[6:7]
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v19, s33, v14
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v51, s33, v46
	s_clause 0x3                            ; 28-byte Folded Spill
	scratch_store_b64 off, v[54:55], off offset:280
	scratch_store_b64 off, v[15:16], off offset:320
	scratch_store_b32 off, v96, off offset:1136
	scratch_store_b64 off, v[0:1], off offset:368
	v_mad_u64_u32 v[14:15], null, s26, v14, s[6:7]
	scratch_store_b64 off, v[47:48], off offset:288 ; 8-byte Folded Spill
	v_mad_u64_u32 v[46:47], null, s26, v46, s[6:7]
	v_mad_u64_u32 v[0:1], null, v53, s26, s[6:7]
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v12, s33, v7
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v13, s33, v8
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v50, s33, v45
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:328
	scratch_store_b64 off, v[0:1], off offset:376
	v_mad_u64_u32 v[14:15], null, s26, v8, s[6:7]
	scratch_store_b64 off, v[46:47], off offset:296 ; 8-byte Folded Spill
	v_mad_u64_u32 v[45:46], null, s26, v45, s[6:7]
	v_mad_u64_u32 v[7:8], null, s26, v7, s[6:7]
	v_mad_u64_u32 v[0:1], null, v52, s26, s[6:7]
	v_dual_mov_b32 v207, 0 :: v_dual_and_b32 v2, 0xe0, v191
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v66, 1, v191
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v11, s33, v6
	s_clause 0x3                            ; 28-byte Folded Spill
	scratch_store_b64 off, v[45:46], off offset:304
	scratch_store_b64 off, v[7:8], off offset:344
	scratch_store_b32 off, v97, off offset:1140
	scratch_store_b64 off, v[0:1], off offset:384
	v_mad_u64_u32 v[6:7], null, s26, v6, s[6:7]
	v_mad_u64_u32 v[0:1], null, v51, s26, s[6:7]
	v_dual_mov_b32 v95, 0 :: v_dual_lshlrev_b32 v68, 5, v96
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v2, 4, v2
	v_dual_mov_b32 v124, 0 :: v_dual_and_b32 v69, 24, v66
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:336
	scratch_store_b64 off, v[6:7], off offset:352
	scratch_store_b64 off, v[0:1], off offset:392
	v_mad_u64_u32 v[0:1], null, v50, s26, s[6:7]
	v_or3_b32 v220, v68, v69, v2
	v_dual_mov_b32 v122, 0 :: v_dual_lshlrev_b32 v69, 5, v191
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v49, s33, v44
	v_dual_mov_b32 v123, 0 :: v_dual_lshlrev_b32 v74, 2, v97
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v140, 0 :: v_dual_and_b32 v69, 32, v69
	scratch_store_b64 off, v[0:1], off offset:400 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v49, s26, s[6:7]
	v_dual_mov_b32 v119, 0 :: v_dual_and_b32 v66, 28, v66
	v_add3_u32 v69, 0, v74, v69
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v43, s33, v38
	v_mov_b32_e32 v141, 0
	scratch_store_b64 off, v[0:1], off offset:408 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, v69, v66
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v74, 1, v97
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v42, s33, v37
	scratch_store_b32 off, v0, off offset:1124 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v43, s26, s[6:7]
	v_mov_b32_e32 v169, 0
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v41, s33, v36
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v40, s33, v35
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v39, s33, v34
	scratch_store_b64 off, v[0:1], off offset:416 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v74
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v33, s33, v28
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v32, s33, v27
	scratch_store_b32 off, v0, off offset:1128 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v42, s26, s[6:7]
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v31, s33, v26
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v30, s33, v25
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v29, s33, v24
	scratch_store_b64 off, v[0:1], off offset:432 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v41, s26, s[6:7]
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v23, s33, v18
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v10, s33, v5
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v9, s33, v4
	scratch_store_b64 off, v[0:1], off offset:440 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v40, s26, s[6:7]
	v_bfe_i32 v65, v191, 7, 1
	v_dual_mov_b32 v98, 0 :: v_dual_and_b32 v67, 0x7f, v191
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v63, s33, v58
	v_mov_b32_e32 v94, 0
	scratch_store_b64 off, v[0:1], off offset:448 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v39, s26, s[6:7]
	v_and_b32_e32 v65, 0x88, v65
	v_or_b32_e32 v70, 0x300, v191
	v_or_b32_e32 v71, 0x700, v191
	v_or_b32_e32 v2, 0x3f0, v191
	v_xor_b32_e32 v68, 8, v220
	v_xor_b32_e32 v217, v65, v67
	scratch_store_b64 off, v[0:1], off offset:456 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v33, s26, s[6:7]
	v_or_b32_e32 v65, 0x7f0, v191
	v_xor_b32_e32 v67, 0x110, v217
	v_xor_b32_e32 v72, 16, v220
	v_xor_b32_e32 v73, 24, v220
	v_mad_u64_u32 v[223:224], null, s26, v44, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:464 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v32, s26, s[6:7]
	v_mad_u64_u32 v[224:225], null, s26, v38, s[6:7]
	v_mad_u64_u32 v[244:245], null, s26, v5, s[6:7]
	v_mad_u64_u32 v[163:164], null, v63, s26, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:472 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v31, s26, s[6:7]
	v_mad_u64_u32 v[218:219], null, s26, v58, s[6:7]
	v_mad_u64_u32 v[225:226], null, s26, v37, s[6:7]
	v_mad_u64_u32 v[245:246], null, s26, v4, s[6:7]
	scratch_store_b64 off, v[0:1], off offset:480 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v30, s26, s[6:7]
	v_mad_u64_u32 v[164:165], null, v61, s26, s[6:7]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v214, 6, v191
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v239, 0, v96
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v216, 0, v70
	scratch_store_b64 off, v[0:1], off offset:488 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v29, s26, s[6:7]
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v219, 0, v71
	v_dual_mov_b32 v147, 0 :: v_dual_add_nc_u32 v238, 0, v2
	v_dual_mov_b32 v148, 0 :: v_dual_add_nc_u32 v165, 0, v65
	scratch_store_b64 off, v[0:1], off offset:496 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v23, s26, s[6:7]
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v166, 0, v67
	v_dual_mov_b32 v175, 0 :: v_dual_add_nc_u32 v226, 0, v68
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v227, 0, v72
	scratch_store_b64 off, v[0:1], off offset:504 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v22, s26, s[6:7]
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v240, 0, v73
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v181, 0
	scratch_store_b64 off, v[0:1], off offset:512 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v21, s26, s[6:7]
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v182, 0
	v_mov_b32_e32 v167, 0
	scratch_store_b64 off, v[0:1], off offset:520 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v20, s26, s[6:7]
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v243, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v161, 0
	scratch_store_b64 off, v[0:1], off offset:528 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v19, s26, s[6:7]
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v241, 0
	v_dual_mov_b32 v242, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v155, 0
	scratch_store_b64 off, v[0:1], off offset:536 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v13, s26, s[6:7]
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v137, 0
	scratch_store_b64 off, v[0:1], off offset:544 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v12, s26, s[6:7]
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v145, 0
	scratch_store_b64 off, v[0:1], off offset:552 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v11, s26, s[6:7]
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v127, 0
	scratch_store_b64 off, v[0:1], off offset:560 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v10, s26, s[6:7]
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v115, 0
	scratch_store_b64 off, v[0:1], off offset:568 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v9, s26, s[6:7]
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v109, 0
	scratch_store_b64 off, v[0:1], off offset:576 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v3, s26, s[6:7]
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v105, 0
	scratch_store_b64 off, v[0:1], off offset:584 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v191
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v88, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s9, s11, 0xffff
	s_mov_b32 s8, s10
	s_mov_b32 s39, 0
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s24, s14
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x6                            ; 32-byte Folded Spill
	scratch_store_b32 off, v0, off offset:1132
	scratch_store_b64 off, v[213:214], off offset:252
	scratch_store_b32 off, v214, off offset:260
	scratch_store_b32 off, v216, off offset:424
	scratch_store_b32 off, v219, off offset:428
	scratch_store_b32 off, v227, off offset:64
	scratch_store_b32 off, v240, off offset:68
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v212, off offset:1100
	scratch_store_b32 off, v248, off offset:1096
	scratch_store_b32 off, v81, off offset:1092
	scratch_store_b32 off, v247, off offset:1088
	scratch_store_b32 off, v82, off offset:1084
	scratch_store_b32 off, v209, off offset:1080
	scratch_store_b32 off, v208, off offset:1076
	scratch_store_b32 off, v207, off offset:1072
	scratch_store_b32 off, v206, off offset:1068
	scratch_store_b32 off, v83, off offset:1064
	scratch_store_b32 off, v84, off offset:1060
	scratch_store_b32 off, v205, off offset:1056
	scratch_store_b32 off, v204, off offset:1052
	scratch_store_b32 off, v203, off offset:1048
	scratch_store_b32 off, v202, off offset:1044
	scratch_store_b32 off, v201, off offset:1040
	scratch_store_b32 off, v200, off offset:1036
	scratch_store_b32 off, v199, off offset:1032
	scratch_store_b32 off, v198, off offset:1028
	scratch_store_b32 off, v197, off offset:1024
	scratch_store_b32 off, v196, off offset:1020
	scratch_store_b32 off, v195, off offset:1016
	scratch_store_b32 off, v194, off offset:1012
	scratch_store_b32 off, v193, off offset:1008
	scratch_store_b32 off, v192, off offset:1004
	scratch_store_b32 off, v190, off offset:1000
	scratch_store_b32 off, v189, off offset:996
	scratch_store_b32 off, v188, off offset:992
	scratch_store_b32 off, v187, off offset:988
	scratch_store_b32 off, v186, off offset:984
	scratch_store_b32 off, v185, off offset:980
	scratch_store_b32 off, v184, off offset:976
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v183, off offset:972
	scratch_store_b32 off, v182, off offset:968
	scratch_store_b32 off, v181, off offset:964
	scratch_store_b32 off, v180, off offset:960
	scratch_store_b32 off, v179, off offset:956
	scratch_store_b32 off, v178, off offset:952
	scratch_store_b32 off, v177, off offset:948
	scratch_store_b32 off, v176, off offset:944
	scratch_store_b32 off, v175, off offset:940
	scratch_store_b32 off, v174, off offset:936
	scratch_store_b32 off, v173, off offset:932
	scratch_store_b32 off, v172, off offset:928
	scratch_store_b32 off, v171, off offset:924
	scratch_store_b32 off, v170, off offset:920
	scratch_store_b32 off, v169, off offset:916
	scratch_store_b32 off, v168, off offset:912
	scratch_store_b32 off, v167, off offset:908
	scratch_store_b32 off, v246, off offset:904
	scratch_store_b32 off, v243, off offset:900
	scratch_store_b32 off, v242, off offset:896
	scratch_store_b32 off, v241, off offset:892
	scratch_store_b32 off, v161, off offset:888
	scratch_store_b32 off, v160, off offset:884
	scratch_store_b32 off, v159, off offset:880
	scratch_store_b32 off, v158, off offset:876
	scratch_store_b32 off, v157, off offset:872
	scratch_store_b32 off, v156, off offset:868
	scratch_store_b32 off, v155, off offset:864
	scratch_store_b32 off, v154, off offset:860
	scratch_store_b32 off, v153, off offset:856
	scratch_store_b32 off, v152, off offset:852
	scratch_store_b32 off, v151, off offset:848
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v141, off offset:844
	scratch_store_b32 off, v140, off offset:840
	scratch_store_b32 off, v139, off offset:836
	scratch_store_b32 off, v138, off offset:832
	scratch_store_b32 off, v150, off offset:828
	scratch_store_b32 off, v149, off offset:824
	scratch_store_b32 off, v148, off offset:820
	scratch_store_b32 off, v147, off offset:816
	scratch_store_b32 off, v137, off offset:812
	scratch_store_b32 off, v136, off offset:808
	scratch_store_b32 off, v135, off offset:804
	scratch_store_b32 off, v134, off offset:800
	scratch_store_b32 off, v146, off offset:796
	scratch_store_b32 off, v145, off offset:792
	scratch_store_b32 off, v144, off offset:788
	scratch_store_b32 off, v143, off offset:784
	scratch_store_b32 off, v133, off offset:780
	scratch_store_b32 off, v132, off offset:776
	scratch_store_b32 off, v131, off offset:772
	scratch_store_b32 off, v130, off offset:768
	scratch_store_b32 off, v142, off offset:764
	scratch_store_b32 off, v129, off offset:760
	scratch_store_b32 off, v128, off offset:756
	scratch_store_b32 off, v127, off offset:752
	scratch_store_b32 off, v126, off offset:748
	scratch_store_b32 off, v125, off offset:744
	scratch_store_b32 off, v124, off offset:740
	scratch_store_b32 off, v123, off offset:736
	scratch_store_b32 off, v122, off offset:732
	scratch_store_b32 off, v121, off offset:728
	scratch_store_b32 off, v120, off offset:724
	scratch_store_b32 off, v119, off offset:720
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v118, off offset:716
	scratch_store_b32 off, v117, off offset:712
	scratch_store_b32 off, v116, off offset:708
	scratch_store_b32 off, v115, off offset:704
	scratch_store_b32 off, v114, off offset:700
	scratch_store_b32 off, v113, off offset:696
	scratch_store_b32 off, v112, off offset:692
	scratch_store_b32 off, v111, off offset:688
	scratch_store_b32 off, v110, off offset:684
	scratch_store_b32 off, v109, off offset:680
	scratch_store_b32 off, v108, off offset:676
	scratch_store_b32 off, v107, off offset:672
	scratch_store_b32 off, v106, off offset:668
	scratch_store_b32 off, v105, off offset:664
	scratch_store_b32 off, v104, off offset:660
	scratch_store_b32 off, v103, off offset:656
	scratch_store_b32 off, v102, off offset:652
	scratch_store_b32 off, v101, off offset:648
	scratch_store_b32 off, v100, off offset:644
	scratch_store_b32 off, v99, off offset:640
	scratch_store_b32 off, v98, off offset:636
	scratch_store_b32 off, v95, off offset:632
	scratch_store_b32 off, v94, off offset:628
	scratch_store_b32 off, v93, off offset:624
	scratch_store_b32 off, v92, off offset:620
	scratch_store_b32 off, v87, off offset:616
	scratch_store_b32 off, v86, off offset:612
	scratch_store_b32 off, v85, off offset:608
	scratch_store_b32 off, v89, off offset:604
	scratch_store_b32 off, v90, off offset:600
	scratch_store_b32 off, v91, off offset:596
	scratch_store_b32 off, v88, off offset:592
	scratch_load_b32 v167, off, off offset:1132 ; 4-byte Folded Reload
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
	s_lshl_b32 s6, s39, 6
	s_mov_b32 s14, -1
	s_mov_b32 s10, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[1:4], off
	scratch_store_b128 off, v[5:8], off offset:16
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1157 25                       ; ragged.py:1157:25
	scratch_load_b64 v[1:2], off, off offset:264 ; 8-byte Folded Reload
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s15, s10, s6
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s10, s22
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v0, s15, v214
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s11, s23
	v_mov_b32_e32 v11, v232
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[218:219], off offset:80
	scratch_store_b64 off, v[215:216], off offset:72
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s14
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v0, s38, v[213:214]
	s_mov_b32 s14, 0
	v_mov_b32_e32 v24, v244
	v_mov_b32_e32 v10, v235
	v_mov_b32_e32 v16, v223
	v_mov_b32_e32 v12, v224
	v_mov_b32_e32 v22, v211
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v0, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 4, v214
	v_mov_b32_e32 v21, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s15, v130
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[213:214]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v132, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 8, v214
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s15, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[213:214]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v133, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 12, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s15, v130
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[213:214]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v134, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 16, v214
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s15, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[213:214]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v135, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 20, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s15, v130
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[213:214]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v136, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 24, v214
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s15, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[213:214]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v137, 0x80000000, v130, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v130, 28, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v130, s15, v130
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[130:131], null, v130, s38, v[213:214]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_and_b32_e32 v131, 31, v191
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v227, s15, v131
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	v_mov_b32_e32 v23, v225
	v_mov_b32_e32 v15, v233
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v215, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v8, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v218, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v3, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v221, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v13, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v222, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v4, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:272 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v17, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:280 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v5, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:288 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v20, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:296 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v6, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:304 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v254, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:312 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v7, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v223, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v252, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v224, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v9, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v225, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v242, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v228, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v14, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v229, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v208, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v230, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v19, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v231, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v241, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v232, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v255, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v233, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v207, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v234, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v253, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v235, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v209, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v236, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v243, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v237, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v205, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:320 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v212, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:328 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v214, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:336 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v240, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:344 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v215, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	scratch_load_b64 v[1:2], off, off offset:352 ; 8-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v213, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v203, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v244, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v206, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v245, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v202, v131, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_add_nc_u32_e32 v131, v162, v227
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v204, v131, s[8:11], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v0, v0, s[20:23], 0 offen
	buffer_load_u8 v131, v132, s[20:23], 0 offen
	buffer_load_u8 v132, v133, s[20:23], 0 offen
	buffer_load_u8 v133, v135, s[20:23], 0 offen
	buffer_load_u8 v135, v136, s[20:23], 0 offen
	buffer_load_u8 v136, v137, s[20:23], 0 offen
	buffer_load_u8 v130, v130, s[20:23], 0 offen
	buffer_load_u8 v134, v134, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v167, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v167, v131 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v167, v132 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v167, v133 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v167, v135 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v216, v134
	ds_store_b8 v167, v136 offset:1536
	ds_store_b8 v219, v130
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v0, v239 offset:320
	ds_load_u8 v130, v239 offset:256
	ds_load_u8 v131, v239 offset:336
	ds_load_u8 v132, v239 offset:272
	ds_load_u8 v133, v239 offset:352
	ds_load_u8 v134, v239 offset:288
	ds_load_u8 v135, v239 offset:368
	ds_load_u8 v136, v239 offset:304
	ds_load_u8 v233, v239 offset:704
	ds_load_u8 v224, v239 offset:720
	ds_load_u8 v178, v239 offset:1488
	ds_load_u8 v180, v239 offset:1424
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v0, v130, v0, 0xc0c0004
	ds_load_u8 v130, v239 offset:448
	ds_load_u8 v137, v239 offset:384
	ds_load_u8 v138, v239 offset:464
	ds_load_u8 v139, v239 offset:400
	ds_load_u8 v140, v239 offset:480
	ds_load_u8 v141, v239 offset:416
	ds_load_u8 v142, v239 offset:496
	ds_load_u8 v143, v239 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v130, v137, v130, 0xc0c0004
	ds_load_u8 v137, v239 offset:64
	ds_load_u8 v144, v239
	ds_load_u8 v145, v239 offset:80
	ds_load_u8 v146, v239 offset:96
	ds_load_u8 v147, v239 offset:112
	ds_load_u8 v148, v239 offset:16
	ds_load_u8 v149, v239 offset:32
	ds_load_u8 v150, v239 offset:48
	v_lshl_or_b32 v195, v130, 16, v0
	v_perm_b32 v0, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v130, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v197, v130, 16, v0
	v_perm_b32 v0, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v130, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v137, v144, v137, 0xc0c0004
	ds_load_u8 v144, v239 offset:192
	ds_load_u8 v151, v239 offset:128
	ds_load_u8 v152, v239 offset:208
	ds_load_u8 v153, v239 offset:144
	ds_load_u8 v154, v239 offset:224
	ds_load_u8 v155, v239 offset:160
	ds_load_u8 v156, v239 offset:240
	ds_load_u8 v157, v239 offset:176
	v_lshl_or_b32 v199, v130, 16, v0
	v_perm_b32 v0, v136, v135, 0xc0c0004
	v_perm_b32 v130, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v131, v148, v145, 0xc0c0004
	v_mov_b32_e32 v145, v245
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v201, v130, 16, v0
	ds_load_u8 v245, v239 offset:960
	ds_load_u8 v175, v239 offset:896
	ds_load_u8 v0, v239 offset:1024
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v144, v151, v144, 0xc0c0004
	v_mov_b32_e32 v151, v228
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v132, v153, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v194, v144, 16, v137
	v_lshl_or_b32 v196, v132, 16, v131
	v_perm_b32 v131, v149, v146, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v132, v155, v154, 0xc0c0004
	ds_load_u8 v193, v239 offset:832
	ds_load_u8 v216, v239 offset:768
	ds_load_u8 v144, v239 offset:848
	ds_load_u8 v149, v239 offset:784
	ds_load_u8 v176, v239 offset:864
	ds_load_u8 v179, v239 offset:800
	ds_load_u8 v153, v239 offset:880
	ds_load_u8 v169, v239 offset:816
	v_lshl_or_b32 v198, v132, 16, v131
	v_perm_b32 v131, v150, v147, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v132, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	ds_load_u8 v170, v239 offset:976
	ds_load_u8 v173, v239 offset:912
	ds_load_u8 v0, v239 offset:992
	ds_load_u8 v157, v239 offset:1584
	v_lshl_or_b32 v200, v132, 16, v131
	v_mov_b32_e32 v132, v236
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:236 ; 4-byte Folded Spill
	ds_load_u8 v161, v239 offset:928
	ds_load_u8 v0, v239 offset:944
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v18, v239 offset:656
	ds_load_u8 v155, v239 offset:736
	ds_load_u8 v190, v239 offset:672
	ds_load_u8 v147, v239 offset:752
	ds_load_u8 v133, v239 offset:688
	ds_load_u8 v225, v239 offset:576
	ds_load_u8 v130, v239 offset:512
	ds_load_u8 v134, v239 offset:592
	ds_load_u8 v131, v239 offset:528
	ds_load_u8 v136, v239 offset:608
	ds_load_u8 v135, v239 offset:544
	ds_load_u8 v139, v239 offset:624
	ds_load_u8 v140, v239 offset:560
	ds_load_u8 v0, v239 offset:1216
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v130, v130, v225, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v131, v131, v134, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1280
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:228 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1232
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1168
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1248
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1184
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1264
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1200
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	ds_load_u8 v148, v239 offset:1152
	ds_load_u8 v171, v239 offset:1088
	ds_load_u8 v0, v239 offset:1104
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:232 ; 4-byte Folded Spill
	ds_load_u8 v160, v239 offset:1040
	ds_load_u8 v0, v239 offset:1120
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:208 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1056
	ds_load_u8 v236, v239 offset:640
	s_waitcnt lgkmcnt(1)
	scratch_store_b32 off, v0, off offset:220 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1136
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1072
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	ds_load_u8 v143, v239 offset:1472
	ds_load_u8 v0, v239 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	ds_load_u8 v228, v239 offset:1504
	ds_load_u8 v219, v239 offset:1440
	ds_load_u8 v0, v239 offset:1520
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:248 ; 4-byte Folded Spill
	ds_load_u8 v154, v239 offset:1456
	ds_load_u8 v138, v239 offset:1408
	ds_load_u8 v137, v239 offset:1344
	ds_load_u8 v141, v239 offset:1360
	ds_load_u8 v156, v239 offset:1296
	ds_load_u8 v142, v239 offset:1376
	ds_load_u8 v192, v239 offset:1312
	ds_load_u8 v181, v239 offset:1392
	ds_load_u8 v150, v239 offset:1328
	ds_load_u8 v0, v239 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v129, v238
	ds_load_u8 v0, v165
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1920
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:204 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:212 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1728
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
	ds_load_u8 v172, v239 offset:1792
	ds_load_u8 v0, v239 offset:1744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:216 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:224 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v0, v239 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v177, v239 offset:1664
	ds_load_u8 v146, v239 offset:1600
	ds_load_u8 v218, v239 offset:1616
	ds_load_u8 v174, v239 offset:1552
	ds_load_u8 v152, v239 offset:1632
	ds_load_u8 v168, v239 offset:1568
	ds_load_u8 v0, v239 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v0, 0, v217
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v0, v8
	ds_store_b8 v0, v13 offset:512
	ds_store_b8 v0, v17 offset:1024
	ds_store_b8 v0, v20 offset:1536
	ds_store_b8 v0, v254 offset:2048
	ds_store_b8 v0, v252 offset:2560
	ds_store_b8 v0, v242 offset:3072
	ds_store_b8 v0, v208 offset:3584
	ds_store_b8 v0, v241 offset:4096
	ds_store_b8 v0, v207 offset:4608
	ds_store_b8 v0, v209 offset:5120
	ds_store_b8 v0, v205 offset:5632
	ds_store_b8 v0, v214 offset:6144
	ds_store_b8 v0, v215 offset:6656
	ds_store_b8 v0, v203 offset:7168
	ds_store_b8 v0, v202 offset:7680
	ds_store_b8 v166, v3
	ds_store_b8 v166, v4 offset:512
	ds_store_b8 v166, v5 offset:1024
	ds_store_b8 v166, v6 offset:1536
	ds_store_b8 v166, v7 offset:2048
	ds_store_b8 v166, v9 offset:2560
	ds_store_b8 v166, v14 offset:3072
	ds_store_b8 v166, v19 offset:3584
	ds_store_b8 v166, v255 offset:4096
	ds_store_b8 v166, v253 offset:4608
	ds_store_b8 v166, v243 offset:5120
	ds_store_b8 v166, v212 offset:5632
	ds_store_b8 v166, v240 offset:6144
	ds_store_b8 v166, v213 offset:6656
	ds_store_b8 v166, v206 offset:7168
	ds_store_b8 v166, v204 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[1:2], off, off offset:360
	scratch_load_b64 v[5:6], off, off offset:560
	v_mov_b32_e32 v3, v234
	v_dual_mov_b32 v19, v162 :: v_dual_mov_b32 v162, v217
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_add_nc_u32_e32 v240, 0, v220
	v_dual_mov_b32 v4, v164 :: v_dual_mov_b32 v17, v237
	v_dual_mov_b32 v14, v230 :: v_dual_mov_b32 v13, v229
	ds_load_2addr_stride64_b64 v[202:205], v240 offset1:8
	v_mov_b32_e32 v20, v210
	v_mov_b32_e32 v9, v222
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[202:203], v[194:195], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[202:203], v[196:197], v[81:88] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[202:203], v[198:199], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[202:203], v[200:201], v[113:120] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v202, v210, v227
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[73:80], v[204:205], v[194:195], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[89:96], v[204:205], v[196:197], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[204:205], v[198:199], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[121:128], v[204:205], v[200:201], v[121:128] neg_lo:[1,1,0]
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v204, v211, v227
	v_add_nc_u32_e32 v205, v164, v227
	v_dual_mov_b32 v164, v238 :: v_dual_add_nc_u32 v203, v163, v227
	v_mov_b32_e32 v163, v220
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v225, v23 :: v_dual_add_nc_u32 v206, v1, v227
	scratch_load_b64 v[1:2], off, off offset:368 ; 8-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v232, v5, v227
	scratch_load_b64 v[5:6], off, off offset:568 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_u8 v229, v204, s[8:11], 0 offen
	buffer_load_u8 v230, v206, s[8:11], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	scratch_load_b32 v206, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v207, v1, v227
	scratch_load_b64 v[1:2], off, off offset:376 ; 8-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v234, v5, v227
	scratch_load_b64 v[5:6], off, off offset:576 ; 8-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v208, v1, v227
	scratch_load_b64 v[1:2], off, off offset:384 ; 8-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v238, v5, v227
	scratch_load_b64 v[5:6], off, off offset:584 ; 8-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v209, v1, v227
	scratch_load_b64 v[1:2], off, off offset:392 ; 8-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v217, v209, s[8:11], 0 offen
	.loc	1 1186 29                       ; ragged.py:1186:29
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v212, v1, v227
	scratch_load_b64 v[1:2], off, off offset:400 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v213, v1, v227
	scratch_load_b64 v[1:2], off, off offset:408 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v214, v1, v227
	scratch_load_b64 v[1:2], off, off offset:416 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v215, v1, v227
	scratch_load_b64 v[1:2], off, off offset:432 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v241, v1, v227
	scratch_load_b64 v[1:2], off, off offset:440 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v242, v1, v227
	scratch_load_b64 v[1:2], off, off offset:448 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v243, v1, v227
	scratch_load_b64 v[1:2], off, off offset:456 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v252, v1, v227
	scratch_load_b64 v[1:2], off, off offset:464 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v253, v1, v227
	scratch_load_b64 v[1:2], off, off offset:472 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v254, v1, v227
	scratch_load_b64 v[1:2], off, off offset:480 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v255, v1, v227
	scratch_load_b64 v[1:2], off, off offset:488 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v246, v1, v227
	scratch_load_b64 v[1:2], off, off offset:496 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v251, v1, v227
	scratch_load_b64 v[1:2], off, off offset:504 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v250, v1, v227
	scratch_load_b64 v[1:2], off, off offset:512 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v249, v1, v227
	scratch_load_b64 v[1:2], off, off offset:520 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v248, v1, v227
	scratch_load_b64 v[1:2], off, off offset:528 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v247, v1, v227
	scratch_load_b64 v[1:2], off, off offset:536 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v244, v1, v227
	scratch_load_b64 v[1:2], off, off offset:544 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v235, v1, v227
	scratch_load_b64 v[1:2], off, off offset:552 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v2, v231
	.loc	1 1185 39                       ; ragged.py:1185:39
	buffer_load_u8 v231, v202, s[8:11], 0 offen
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v237, v1, v227
	v_mov_b32_e32 v1, v221
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xc
	buffer_load_u8 v222, v208, s[8:11], 0 offen
	buffer_load_u8 v223, v212, s[8:11], 0 offen
	buffer_load_u8 v221, v214, s[8:11], 0 offen
	buffer_load_u8 v241, v241, s[8:11], 0 offen
	buffer_load_u8 v243, v243, s[8:11], 0 offen
	buffer_load_u8 v253, v253, s[8:11], 0 offen
	buffer_load_u8 v255, v255, s[8:11], 0 offen
	buffer_load_u8 v251, v251, s[8:11], 0 offen
	buffer_load_u8 v249, v249, s[8:11], 0 offen
	buffer_load_u8 v247, v247, s[8:11], 0 offen
	buffer_load_u8 v235, v235, s[8:11], 0 offen
	buffer_load_u8 v232, v232, s[8:11], 0 offen
	buffer_load_u8 v238, v238, s[8:11], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	scratch_load_b32 v212, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1186 29                       ; ragged.py:1186:29
	v_add_nc_u32_e32 v227, v5, v227
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xe
	buffer_load_u8 v220, v207, s[8:11], 0 offen
	buffer_load_u8 v210, v205, s[8:11], 0 offen
	buffer_load_u8 v211, v203, s[8:11], 0 offen
	buffer_load_u8 v252, v252, s[8:11], 0 offen
	buffer_load_u8 v242, v242, s[8:11], 0 offen
	buffer_load_u8 v158, v215, s[8:11], 0 offen
	buffer_load_u8 v159, v213, s[8:11], 0 offen
	buffer_load_u8 v248, v248, s[8:11], 0 offen
	buffer_load_u8 v250, v250, s[8:11], 0 offen
	buffer_load_u8 v246, v246, s[8:11], 0 offen
	buffer_load_u8 v254, v254, s[8:11], 0 offen
	buffer_load_u8 v227, v227, s[8:11], 0 offen
	buffer_load_u8 v234, v234, s[8:11], 0 offen
	buffer_load_u8 v237, v237, s[8:11], 0 offen
	buffer_load_u8 v244, v244, s[8:11], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[202:205], v226 offset1:8
	ds_load_2addr_stride64_b64 v[206:209], v206 offset1:8
	s_mov_b32 s10, 32
	s_waitcnt vmcnt(15)
	ds_load_2addr_stride64_b64 v[212:215], v212 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v0, v231
	ds_store_b8 v0, v229 offset:512
	ds_store_b8 v0, v230 offset:1024
	ds_store_b8 v0, v222 offset:1536
	ds_store_b8 v0, v223 offset:2048
	v_mov_b32_e32 v222, v9
	ds_store_b8 v0, v221 offset:2560
	ds_store_b8 v0, v238 offset:7680
	ds_store_b8 v166, v217 offset:1536
	s_waitcnt vmcnt(6)
	ds_store_b8 v166, v250 offset:5120
	ds_store_b8 v166, v248 offset:5632
	s_waitcnt vmcnt(2)
	ds_store_b8 v166, v234 offset:7168
	ds_store_b8 v166, v227 offset:7680
	ds_store_b8 v0, v241 offset:3072
	ds_store_b8 v0, v243 offset:3584
	ds_store_b8 v0, v253 offset:4096
	ds_store_b8 v0, v255 offset:4608
	ds_store_b8 v0, v251 offset:5120
	ds_store_b8 v0, v249 offset:5632
	ds_store_b8 v0, v247 offset:6144
	ds_store_b8 v0, v235 offset:6656
	ds_store_b8 v0, v232 offset:7168
	ds_store_b8 v166, v211
	ds_store_b8 v166, v210 offset:512
	ds_store_b8 v166, v220 offset:1024
	ds_store_b8 v166, v159 offset:2048
	ds_store_b8 v166, v158 offset:2560
	ds_store_b8 v166, v242 offset:3072
	ds_store_b8 v166, v252 offset:3584
	ds_store_b8 v166, v254 offset:4096
	ds_store_b8 v166, v246 offset:4608
	s_waitcnt vmcnt(0)
	ds_store_b8 v166, v244 offset:6144
	ds_store_b8 v166, v237 offset:6656
	scratch_load_b32 v227, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	scratch_load_b32 v9, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[240:243], v240 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_perm_b32 v0, v216, v193, 0xc0c0004
	v_perm_b32 v158, v175, v245, 0xc0c0004
	v_perm_b32 v159, v236, v233, 0xc0c0004
	v_mov_b32_e32 v236, v132
	v_perm_b32 v132, v18, v224, 0xc0c0004
	v_mov_b32_e32 v235, v10
	v_mov_b32_e32 v221, v1
	v_dual_mov_b32 v231, v2 :: v_dual_mov_b32 v238, v164
	v_mov_b32_e32 v164, v4
	v_mov_b32_e32 v234, v3
	s_clause 0x3                            ; 64-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:32
	scratch_load_b128 v[5:8], off, off offset:48
	scratch_load_b128 v[246:249], off, off
	scratch_load_b128 v[250:253], off, off offset:16
	v_dual_mov_b32 v230, v14 :: v_dual_mov_b32 v229, v13
	v_dual_mov_b32 v220, v163 :: v_dual_mov_b32 v217, v162
	v_dual_mov_b32 v162, v19 :: v_dual_mov_b32 v211, v22
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[240:241], v[198:199], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[242:243], v[198:199], v[41:48] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v199, v158, 16, v0
	v_lshl_or_b32 v198, v159, 16, v130
	v_perm_b32 v0, v149, v144, 0xc0c0004
	v_perm_b32 v130, v173, v170, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[240:241], v[200:201], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[242:243], v[200:201], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_lshl_or_b32 v200, v132, 16, v131
	v_perm_b32 v131, v135, v136, 0xc0c0004
	v_lshl_or_b32 v201, v130, 16, v0
	v_perm_b32 v0, v179, v176, 0xc0c0004
	v_perm_b32 v132, v190, v155, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[182:189], v[240:241], v[194:195], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[242:243], v[196:197], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[65:72], v[202:203], v[198:199], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[204:205], v[198:199], v[73:80] neg_lo:[1,1,0]
	v_lshl_or_b32 v175, v132, 16, v131
	v_perm_b32 v131, v169, v153, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[89:96], v[204:205], v[200:201], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[202:203], v[200:201], v[81:88] neg_lo:[1,1,0]
	v_dual_mov_b32 v163, v21 :: v_dual_mov_b32 v210, v20
	v_mov_b32_e32 v237, v17
	v_dual_mov_b32 v245, v145 :: v_dual_mov_b32 v244, v24
	v_mov_b32_e32 v233, v15
	v_mov_b32_e32 v232, v11
	v_mov_b32_e32 v224, v12
	v_mov_b32_e32 v223, v16
	s_waitcnt vmcnt(4)
	v_perm_b32 v130, v161, v9, 0xc0c0004
	scratch_load_b32 v9, off, off offset:196 ; 4-byte Folded Reload
	v_lshl_or_b32 v176, v130, 16, v0
	v_perm_b32 v0, v140, v139, 0xc0c0004
	v_perm_b32 v130, v133, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[202:203], v[175:176], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[204:205], v[175:176], v[105:112] neg_lo:[1,1,0]
	v_lshl_or_b32 v169, v130, 16, v0
	scratch_load_b32 v0, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt vmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[242:243], v[194:195], v[1:8] neg_lo:[1,1,0]
	s_waitcnt vmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[246:253], v[240:241], v[196:197], v[246:253] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[194:197], v226 offset1:8
	scratch_load_b32 v240, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[182:189], v[194:195], v[198:199], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[196:197], v[198:199], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[194:195], v[175:176], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[196:197], v[175:176], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[246:253], v[194:195], v[200:201], v[246:253] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[196:197], v[200:201], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(2)
	v_perm_b32 v129, v9, v129, 0xc0c0004
	scratch_load_b32 v9, off, off offset:88 ; 4-byte Folded Reload
	v_lshl_or_b32 v170, v129, 16, v131
	v_perm_b32 v129, v138, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[204:205], v[169:170], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[202:203], v[169:170], v[113:120] neg_lo:[1,1,0]
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v0, v137, 0xc0c0004
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[194:195], v[169:170], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[196:197], v[169:170], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v9, v171, 0xc0c0004
	scratch_load_b32 v9, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v148, v9, 0xc0c0004
	scratch_load_b32 v9, off, off offset:232 ; 4-byte Folded Reload
	v_lshl_or_b32 v148, v129, 16, v0
	v_perm_b32 v0, v156, v141, 0xc0c0004
	v_perm_b32 v129, v180, v178, 0xc0c0004
	v_lshl_or_b32 v147, v131, 16, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v156, v129, 16, v0
	v_perm_b32 v0, v192, v142, 0xc0c0004
	v_perm_b32 v129, v219, v228, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[65:72], v[206:207], v[147:148], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[208:209], v[147:148], v[73:80] neg_lo:[1,1,0]
	v_mov_b32_e32 v228, v151
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v134, v129, 16, v0
	v_perm_b32 v0, v150, v181, 0xc0c0004
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[178:181], v227 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[182:189], v[178:179], v[147:148], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[180:181], v[147:148], v[1:8] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v160, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:156
	scratch_load_b32 v10, off, off offset:164
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:208
	scratch_load_b32 v10, off, off offset:220
	v_lshl_or_b32 v155, v131, 16, v130
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[208:209], v[155:156], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[206:207], v[155:156], v[81:88] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[246:253], v[178:179], v[155:156], v[246:253] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[180:181], v[155:156], v[25:32] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:140
	scratch_load_b32 v10, off, off offset:144
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v10, v9, 0xc0c0004
	scratch_load_b32 v9, off, off offset:248 ; 4-byte Folded Reload
	v_lshl_or_b32 v133, v131, 16, v130
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[206:207], v[133:134], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[105:112], v[208:209], v[133:134], v[105:112] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[33:40], v[178:179], v[133:134], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[180:181], v[133:134], v[41:48] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v154, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:172
	scratch_load_b32 v10, off, off offset:188
	v_lshl_or_b32 v161, v129, 16, v0
	scratch_load_b32 v0, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v130, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:124
	scratch_load_b32 v10, off, off offset:132
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:136
	scratch_load_b32 v10, off, off offset:204
	v_lshl_or_b32 v160, v131, 16, v130
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[121:128], v[208:209], v[160:161], v[121:128] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[113:120], v[206:207], v[160:161], v[113:120] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[49:56], v[178:179], v[160:161], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[180:181], v[160:161], v[57:64] neg_lo:[1,1,0]
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v10, v9, 0xc0c0004
	scratch_load_b32 v9, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v9, v146, 0xc0c0004
	scratch_load_b32 v9, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v177, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v147, v131, 16, v130
	v_perm_b32 v130, v174, v218, 0xc0c0004
	scratch_load_b64 v[218:219], off, off offset:80 ; 8-byte Folded Reload
	v_perm_b32 v0, v172, v0, 0xc0c0004
	v_lshl_or_b32 v148, v129, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:168
	scratch_load_b32 v9, off, off offset:180
	v_wmma_i32_16x16x16_iu4 v[73:80], v[214:215], v[147:148], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[65:72], v[212:213], v[147:148], v[65:72] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:112
	scratch_load_b32 v10, off, off offset:120
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v10, v9, 0xc0c0004
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v219, off, off offset:428
	scratch_load_b32 v9, off, off offset:216
	scratch_load_b32 v10, off, off offset:224
	v_lshl_or_b32 v140, v129, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:148
	scratch_load_b32 v9, off, off offset:152
	v_lshl_or_b32 v139, v131, 16, v130
	v_perm_b32 v130, v168, v152, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[89:96], v[214:215], v[139:140], v[89:96] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[81:88], v[212:213], v[139:140], v[81:88] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v9, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:104
	scratch_load_b32 v10, off, off offset:108
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:184
	scratch_load_b32 v10, off, off offset:192
	v_lshl_or_b32 v135, v129, 16, v0
	scratch_load_b32 v0, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_perm_b32 v131, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:160
	scratch_load_b32 v10, off, off offset:176
	v_lshl_or_b32 v134, v131, 16, v130
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v157, v0, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[105:112], v[214:215], v[134:135], v[105:112] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[212:213], v[134:135], v[97:104] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_perm_b32 v129, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:116
	scratch_load_b32 v10, off, off offset:128
	v_lshl_or_b32 v136, v129, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v130, v10, v9, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:96
	scratch_load_b32 v10, off, off offset:100
	s_waitcnt vmcnt(0)
	v_perm_b32 v131, v10, v9, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v131, 16, v130
	v_wmma_i32_16x16x16_iu4 v[121:128], v[214:215], v[136:137], v[121:128] neg_lo:[1,1,0]
	scratch_load_b64 v[215:216], off, off offset:72 ; 8-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[113:120], v[212:213], v[136:137], v[113:120] neg_lo:[1,1,0]
	s_clause 0x2                            ; 16-byte Folded Reload
	scratch_load_b32 v216, off, off offset:424
	scratch_load_b64 v[213:214], off, off offset:252
	scratch_load_b32 v214, off, off offset:260
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[130:133], v240 offset1:8
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[182:189], v[130:131], v[147:148], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[132:133], v[147:148], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[246:253], v[130:131], v[139:140], v[246:253] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[132:133], v[139:140], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[130:131], v[134:135], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[132:133], v[134:135], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[130:131], v[136:137], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[132:133], v[136:137], v[57:64] neg_lo:[1,1,0]
	s_clause 0x3                            ; 64-byte Folded Spill
	scratch_store_b128 off, v[1:4], off offset:32
	scratch_store_b128 off, v[5:8], off offset:48
	scratch_store_b128 off, v[246:249], off
	scratch_store_b128 off, v[250:253], off offset:16
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[17:20], off, off
	scratch_load_b128 v[21:24], off, off offset:16
	.loc	1 1201 27 is_stmt 1             ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v146, v108
	v_cvt_f32_i32_e32 v147, v109
	scratch_load_b32 v192, off, off offset:1120 ; 4-byte Folded Reload
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v170, v40
	v_cvt_f32_i32_e32 v171, v42
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s6, s39, s7
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v144, v106
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s6, s6, s5
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[9:12], off, off offset:32
	scratch_load_b128 v[13:16], off, off offset:48
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v1, v182
	v_cvt_f32_i32_e32 v172, v43
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v138, v84
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
	v_cvt_f32_i32_e32 v142, v104
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
	v_cvt_f32_i32_e32 v193, v124
	v_cvt_f32_i32_e32 v194, v125
	v_cvt_f32_i32_e32 v195, v126
	v_cvt_f32_i32_e32 v197, v127
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v2, v183
	v_cvt_f32_i32_e32 v8, v189
	v_cvt_f32_i32_e32 v169, v39
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
	v_cvt_f32_i32_e32 v100, v100
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v167, v37
	v_cvt_f32_i32_e32 v168, v38
	v_cvt_f32_i32_e32 v37, v41
	v_cvt_f32_i32_e32 v38, v46
	v_cvt_f32_i32_e32 v41, v48
	v_cvt_f32_i32_e32 v176, v51
	v_cvt_f32_i32_e32 v177, v52
	v_cvt_f32_i32_e32 v174, v49
	v_cvt_f32_i32_e32 v175, v50
	v_cvt_f32_i32_e32 v173, v44
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v128, v128
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v35, v35
	s_waitcnt vmcnt(4)
	v_cvt_f32_i32_e32 v108, v18
	v_cvt_f32_i32_e32 v109, v19
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v18, off, off offset:1104
	scratch_load_b32 v19, off, off offset:1108
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
	buffer_load_u16 v17, v17, s[24:27], 0 offen
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
	v_add_lshl_u32 v18, s39, v18, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v19, s39, v19, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	v_cndmask_b32_e64 v19, 0x80000000, v19, s1
	s_clause 0x1
	buffer_load_u16 v18, v18, s[12:15], 0 offen
	buffer_load_u16 v40, v19, s[12:15], 0 offen
	scratch_load_b32 v19, off, off offset:1112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v18
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v19, s39, v19, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v84, v43, v1 :: v_dual_lshlrev_b32 v1, 16, v40
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v104, v89, v1
	.loc	1 1204 40                       ; ragged.py:1204:40
	buffer_load_u16 v42, v19, s[12:15], 0 offen
	scratch_load_b32 v19, off, off offset:1116 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v120, v69, v43 :: v_dual_lshlrev_b32 v17, 16, v17
	v_dual_mul_f32 v117, v70, v43 :: v_dual_mul_f32 v0, v43, v0
	v_dual_mul_f32 v118, v71, v43 :: v_dual_mul_f32 v101, v94, v1
	v_dual_mul_f32 v119, v72, v43 :: v_dual_mul_f32 v82, v43, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v72, v9, v43
	v_dual_mul_f32 v70, v15, v43 :: v_dual_mul_f32 v103, v96, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v127, v43, v65 :: v_dual_mul_f32 v114, v1, v136
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v73, v43, v4 :: v_dual_mul_f32 v116, v1, v135
	v_mul_f32_e32 v75, v43, v3
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v18, v43, v131 :: v_dual_mul_f32 v53, v30, v1
	v_mul_f32_e32 v123, v43, v129
	v_mul_f32_e32 v125, v43, v68
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v76, v43, v7 :: v_dual_mul_f32 v55, v32, v1
	v_dual_mul_f32 v78, v43, v6 :: v_dual_mul_f32 v107, v1, v137
	v_dual_mul_f32 v80, v43, v5 :: v_dual_mul_f32 v105, v1, v138
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v121, v43, v77
	v_dual_mul_f32 v122, v43, v134 :: v_dual_mul_f32 v59, v1, v109
	v_dual_mul_f32 v124, v43, v133 :: v_dual_mul_f32 v57, v1, v110
	v_dual_mul_f32 v126, v43, v132 :: v_dual_mul_f32 v109, v1, v93
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v77, v43, v13 :: v_dual_mul_f32 v110, v1, v86
	v_dual_mul_f32 v79, v43, v12 :: v_dual_mul_f32 v112, v1, v85
	v_dual_mul_f32 v81, v43, v11 :: v_dual_mul_f32 v58, v1, v24
	v_dual_mul_f32 v83, v43, v10 :: v_dual_mul_f32 v60, v1, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v102, v95, v1 :: v_dual_mul_f32 v111, v1, v92
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v54, v31, v1 :: v_dual_mul_f32 v113, v1, v91
	v_mul_f32_e32 v68, v1, v106
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v106, v1, v88
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v62, v1, v22
	v_mul_f32_e32 v64, v1, v21
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
	v_add_lshl_u32 v19, s39, v19, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s39, s39, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s39, s36
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	buffer_load_u16 v190, v19, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v196, off, off offset:1124 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v19, v43, v66 :: v_dual_mul_f32 v66, v1, v108
	v_mul_f32_e32 v108, v1, v87
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v61, v1, v29 :: v_dual_lshlrev_b32 v28, 16, v190
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v196, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v43, v67
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v67, v1, v26 :: v_dual_mul_f32 v22, v188, v28
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v2, v28, v155 :: v_dual_lshlrev_b32 v1, 16, v42
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v155, off, off offset:1128
	scratch_load_b32 v203, off, off offset:1048
	scratch_load_b32 v202, off, off offset:1044
	scratch_load_b32 v201, off, off offset:1040
	scratch_load_b32 v198, off, off offset:1028
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v1, v142
	v_dual_mul_f32 v11, v149, v1 :: v_dual_mul_f32 v8, v28, v152
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v40, v37, v1 :: v_dual_mul_f32 v5, v159, v28
	v_dual_mul_f32 v37, v38, v1 :: v_dual_mul_f32 v14, v1, v100
	v_mul_f32_e32 v38, v39, v1
	v_mul_f32_e32 v39, v41, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v100, v1, v97 :: v_dual_mul_f32 v25, v182, v28
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v41, v1, v36 :: v_dual_mul_f32 v4, v28, v153
	v_dual_mul_f32 v50, v1, v34 :: v_dual_mul_f32 v23, v187, v28
	v_dual_mul_f32 v52, v1, v33 :: v_dual_mul_f32 v3, v28, v154
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v92, v1, v141 :: v_dual_mul_f32 v9, v28, v151
	v_dual_mul_f32 v94, v1, v140 :: v_dual_mul_f32 v33, v28, v177
	v_dual_mul_f32 v97, v1, v145 :: v_dual_mul_f32 v32, v28, v178
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v49, v1, v172 :: v_dual_mul_f32 v90, v28, v161
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v86, v197, v28 :: v_dual_mul_f32 v31, v28, v179
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v34, v28, v176
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v176, off, off offset:944
	scratch_load_b32 v177, off, off offset:948
	scratch_load_b32 v179, off, off offset:956
	scratch_load_b32 v178, off, off offset:952
	scratch_load_b32 v159, off, off offset:880
	scratch_load_b32 v151, off, off offset:848
	scratch_load_b32 v152, off, off offset:852
	scratch_load_b32 v161, off, off offset:888
	scratch_load_b32 v241, off, off offset:892
	scratch_load_b32 v153, off, off offset:856
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(14)
	ds_load_b128 v[130:133], v155
	ds_load_b128 v[134:137], v155 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v91, v28, v160
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v160, off, off offset:884
	scratch_load_b32 v154, off, off offset:860
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v42, v1, v170
	v_mul_f32_e32 v44, v1, v169
	v_dual_mul_f32 v46, v1, v168 :: v_dual_mul_f32 v29, v28, v181
	v_dual_mul_f32 v51, v1, v171 :: v_dual_mul_f32 v26, v28, v185
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v168, off, off offset:912
	scratch_load_b32 v169, off, off offset:916
	scratch_load_b32 v170, off, off offset:920
	scratch_load_b32 v171, off, off offset:924
	v_mul_f32_e32 v21, v189, v28
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v13, v143, v1
	v_mul_f32_e32 v10, v148, v1
	v_mul_f32_e32 v12, v150, v1
	v_dual_mul_f32 v16, v1, v99 :: v_dual_mul_f32 v87, v195, v28
	v_dual_mul_f32 v98, v1, v98 :: v_dual_mul_f32 v85, v128, v28
	v_dual_mul_f32 v96, v1, v139 :: v_dual_mul_f32 v7, v28, v157
	v_dual_mul_f32 v93, v1, v147 :: v_dual_mul_f32 v6, v28, v158
	v_dual_mul_f32 v95, v1, v146 :: v_dual_mul_f32 v30, v28, v180
	v_dual_mul_f32 v99, v1, v144 :: v_dual_mul_f32 v88, v28, v194
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v147, off, off offset:816
	scratch_load_b32 v148, off, off offset:820
	scratch_load_b32 v149, off, off offset:824
	scratch_load_b32 v150, off, off offset:828
	scratch_load_b32 v143, off, off offset:784
	scratch_load_b32 v144, off, off offset:788
	scratch_load_b32 v145, off, off offset:792
	scratch_load_b32 v146, off, off offset:796
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(22) lgkmcnt(1)
	v_dual_fmac_f32 v176, v0, v130 :: v_dual_fmac_f32 v177, v127, v131
	s_waitcnt vmcnt(20)
	v_dual_fmac_f32 v179, v19, v132 :: v_dual_fmac_f32 v178, v17, v133
	scratch_load_b32 v197, off, off offset:1024 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v48, v1, v167 :: v_dual_mul_f32 v89, v28, v193
	v_dual_mul_f32 v45, v1, v45 :: v_dual_mul_f32 v24, v28, v186
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(18)
	v_dual_fmac_f32 v152, v114, v131 :: v_dual_mul_f32 v27, v28, v184
	v_fmac_f32_e32 v151, v116, v130
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v43, v1, v35 :: v_dual_mul_f32 v36, v28, v174
	v_mul_f32_e32 v47, v1, v173
	v_mul_f32_e32 v35, v28, v175
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v1, v28, v156
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v28, v28, v183 :: v_dual_fmac_f32 v153, v105, v133
	v_add_nc_u32_e32 v0, s33, v192
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v0, v0, s6, 1
	buffer_load_u16 v0, v0, s[24:27], 0 offen
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(14)
	v_fmac_f32_e32 v154, v107, v132
	s_waitcnt vmcnt(13) lgkmcnt(0)
	v_fmac_f32_e32 v168, v125, v134
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v170, v20, v136 :: v_dual_fmac_f32 v171, v18, v137
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[138:141], v155 offset:512
	ds_load_b128 v[17:20], v155 offset:528
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0xa                            ; 44-byte Folded Reload
	scratch_load_b32 v127, off, off offset:752
	scratch_load_b32 v128, off, off offset:756
	scratch_load_b32 v142, off, off offset:764
	scratch_load_b32 v192, off, off offset:1004
	scratch_load_b32 v190, off, off offset:1000
	scratch_load_b32 v189, off, off offset:996
	scratch_load_b32 v188, off, off offset:992
	scratch_load_b32 v129, off, off offset:760
	scratch_load_b32 v195, off, off offset:1016
	scratch_load_b32 v194, off, off offset:1012
	scratch_load_b32 v193, off, off offset:1008
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v169, v123, v135
	s_waitcnt vmcnt(20)
	v_fmac_f32_e32 v147, v112, v134
	scratch_load_b32 v112, off, off offset:692 ; 4-byte Folded Reload
	s_waitcnt vmcnt(19)
	v_fmac_f32_e32 v149, v108, v136
	v_fmac_f32_e32 v203, v120, v138
	s_waitcnt vmcnt(16)
	v_dual_fmac_f32 v161, v122, v141 :: v_dual_fmac_f32 v144, v113, v140
	v_dual_fmac_f32 v241, v121, v17 :: v_dual_fmac_f32 v148, v110, v135
	v_fmac_f32_e32 v198, v119, v20
	s_waitcnt vmcnt(15)
	v_fmac_f32_e32 v145, v111, v141
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v119, off, off offset:720
	scratch_load_b32 v120, off, off offset:724
	scratch_load_b32 v121, off, off offset:728
	scratch_load_b32 v122, off, off offset:732
	scratch_load_b32 v111, off, off offset:688
	scratch_load_b32 v113, off, off offset:696
	scratch_load_b32 v114, off, off offset:700
	v_fmac_f32_e32 v160, v124, v140
	s_waitcnt vmcnt(20)
	v_fmac_f32_e32 v197, v104, v138
	v_dual_fmac_f32 v202, v117, v18 :: v_dual_fmac_f32 v201, v118, v19
	v_fmac_f32_e32 v146, v109, v17
	v_fmac_f32_e32 v150, v106, v137
	v_fmac_f32_e32 v159, v126, v139
	s_waitcnt vmcnt(19)
	v_dual_fmac_f32 v143, v115, v139 :: v_dual_lshlrev_b32 v0, 16, v0
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v196, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1f                           ; 128-byte Folded Reload
	scratch_load_b32 v187, off, off offset:988
	scratch_load_b32 v186, off, off offset:984
	scratch_load_b32 v185, off, off offset:980
	scratch_load_b32 v184, off, off offset:976
	scratch_load_b32 v183, off, off offset:972
	scratch_load_b32 v182, off, off offset:968
	scratch_load_b32 v180, off, off offset:960
	scratch_load_b32 v181, off, off offset:964
	scratch_load_b32 v0, off, off offset:596
	scratch_load_b32 v104, off, off offset:660
	scratch_load_b32 v124, off, off offset:740
	scratch_load_b32 v116, off, off offset:708
	scratch_load_b32 v108, off, off offset:676
	scratch_load_b32 v105, off, off offset:664
	scratch_load_b32 v125, off, off offset:744
	scratch_load_b32 v117, off, off offset:712
	scratch_load_b32 v109, off, off offset:680
	scratch_load_b32 v106, off, off offset:668
	scratch_load_b32 v126, off, off offset:748
	scratch_load_b32 v118, off, off offset:716
	scratch_load_b32 v110, off, off offset:684
	scratch_load_b32 v175, off, off offset:940
	scratch_load_b32 v174, off, off offset:936
	scratch_load_b32 v172, off, off offset:928
	scratch_load_b32 v173, off, off offset:932
	scratch_load_b32 v167, off, off offset:908
	scratch_load_b32 v246, off, off offset:904
	scratch_load_b32 v243, off, off offset:900
	scratch_load_b32 v242, off, off offset:896
	scratch_load_b32 v212, off, off offset:1100
	scratch_load_b32 v248, off, off offset:1096
	scratch_load_b32 v247, off, off offset:1088
	s_clause 0xe                            ; 60-byte Folded Reload
	scratch_load_b32 v209, off, off offset:1080
	scratch_load_b32 v208, off, off offset:1076
	scratch_load_b32 v207, off, off offset:1072
	scratch_load_b32 v123, off, off offset:736
	scratch_load_b32 v115, off, off offset:704
	scratch_load_b32 v107, off, off offset:672
	scratch_load_b32 v158, off, off offset:876
	scratch_load_b32 v157, off, off offset:872
	scratch_load_b32 v156, off, off offset:868
	scratch_load_b32 v206, off, off offset:1068
	scratch_load_b32 v205, off, off offset:1056
	scratch_load_b32 v204, off, off offset:1052
	scratch_load_b32 v200, off, off offset:1036
	scratch_load_b32 v199, off, off offset:1032
	scratch_load_b32 v196, off, off offset:1020
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(62)
	v_fmac_f32_e32 v127, v100, v130
	scratch_load_b32 v100, off, off offset:644 ; 4-byte Folded Reload
	v_fmac_f32_e32 v128, v98, v131
	scratch_load_b32 v98, off, off offset:636 ; 4-byte Folded Reload
	v_fmac_f32_e32 v142, v16, v132
	v_fmac_f32_e32 v192, v13, v138
	s_waitcnt vmcnt(62)
	v_fmac_f32_e32 v190, v10, v18
	s_waitcnt vmcnt(60)
	v_fmac_f32_e32 v129, v14, v133
	s_waitcnt vmcnt(59)
	v_fmac_f32_e32 v195, v101, v18
	scratch_load_b32 v101, off, off offset:648 ; 4-byte Folded Reload
	s_waitcnt vmcnt(58)
	v_fmac_f32_e32 v193, v103, v20
	scratch_load_b32 v103, off, off offset:656 ; 4-byte Folded Reload
	v_fmac_f32_e32 v194, v102, v19
	scratch_load_b32 v102, off, off offset:652 ; 4-byte Folded Reload
	s_waitcnt vmcnt(59)
	v_dual_fmac_f32 v189, v11, v19 :: v_dual_fmac_f32 v112, v97, v140
	v_fmac_f32_e32 v188, v12, v20
	s_waitcnt vmcnt(57)
	v_fmac_f32_e32 v120, v94, v135
	scratch_load_b32 v94, off, off offset:628 ; 4-byte Folded Reload
	s_waitcnt vmcnt(57)
	v_fmac_f32_e32 v121, v92, v136
	scratch_load_b32 v92, off, off offset:620 ; 4-byte Folded Reload
	s_waitcnt vmcnt(55)
	v_fmac_f32_e32 v113, v95, v141
	scratch_load_b32 v95, off, off offset:632 ; 4-byte Folded Reload
	s_waitcnt vmcnt(55)
	v_fmac_f32_e32 v114, v93, v17
	scratch_load_b32 v93, off, off offset:624 ; 4-byte Folded Reload
	v_fmac_f32_e32 v122, v15, v137
	v_fmac_f32_e32 v111, v99, v139
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[13:16], v155
	scratch_load_b32 v99, off, off offset:640 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(54)
	v_dual_fmac_f32 v186, v87, v18 :: v_dual_fmac_f32 v185, v86, v19
	scratch_load_b32 v86, off, off offset:612 ; 4-byte Folded Reload
	v_fmac_f32_e32 v187, v5, v138
	scratch_load_b32 v87, off, off offset:616 ; 4-byte Folded Reload
	s_waitcnt vmcnt(55)
	v_dual_fmac_f32 v119, v96, v134 :: v_dual_fmac_f32 v184, v85, v20
	s_waitcnt vmcnt(50)
	v_fmac_f32_e32 v0, v91, v139
	scratch_load_b32 v85, off, off offset:608 ; 4-byte Folded Reload
	s_waitcnt vmcnt(50)
	v_fmac_f32_e32 v104, v8, v131
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v139, off, off offset:836
	scratch_load_b32 v138, off, off offset:832
	v_mov_b32_e32 v91, v0
	scratch_load_b32 v0, off, off offset:600 ; 4-byte Folded Reload
	s_waitcnt vmcnt(49)
	v_fmac_f32_e32 v105, v3, v133
	scratch_load_b32 v131, off, off offset:772 ; 4-byte Folded Reload
	s_waitcnt vmcnt(46)
	v_fmac_f32_e32 v106, v4, v132
	scratch_load_b32 v132, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(16)
	v_fmac_f32_e32 v98, v6, v137
	scratch_load_b32 v137, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(15)
	v_fmac_f32_e32 v103, v9, v130
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[9:12], v155 offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v183, v84, v13 :: v_dual_fmac_f32 v182, v82, v14
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v82, off, off offset:1084
	scratch_load_b32 v130, off, off offset:768
	scratch_load_b32 v84, off, off offset:1060
	v_fmac_f32_e32 v180, v75, v15
	v_dual_fmac_f32 v158, v68, v13 :: v_dual_fmac_f32 v157, v66, v14
	v_dual_fmac_f32 v110, v36, v13 :: v_dual_fmac_f32 v109, v35, v14
	v_dual_fmac_f32 v108, v34, v15 :: v_dual_fmac_f32 v107, v33, v16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(16)
	v_fmac_f32_e32 v94, v1, v135
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v135, off, off offset:804
	scratch_load_b32 v133, off, off offset:780
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v181, v73, v16
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v175, v80, v9
	v_dual_fmac_f32 v172, v76, v11 :: v_dual_fmac_f32 v173, v74, v12
	v_fmac_f32_e32 v125, v46, v10
	v_dual_fmac_f32 v123, v44, v11 :: v_dual_fmac_f32 v124, v42, v12
	v_dual_fmac_f32 v102, v32, v9 :: v_dual_fmac_f32 v101, v31, v10
	s_waitcnt vmcnt(14)
	v_dual_fmac_f32 v100, v30, v11 :: v_dual_fmac_f32 v99, v29, v12
	s_waitcnt vmcnt(8)
	v_dual_fmac_f32 v139, v60, v11 :: v_dual_fmac_f32 v0, v90, v140
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v95, v7, v136
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[5:8], v155 offset:528
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v140, off, off offset:840
	scratch_load_b32 v136, off, off offset:808
	v_mov_b32_e32 v90, v0
	scratch_load_b32 v0, off, off offset:604 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v132, v50, v14 :: v_dual_fmac_f32 v131, v41, v16
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v115, v45, v5
	v_fmac_f32_e32 v85, v24, v5
	v_fmac_f32_e32 v247, v71, v8
	v_dual_fmac_f32 v209, v53, v6 :: v_dual_fmac_f32 v208, v54, v7
	v_fmac_f32_e32 v207, v55, v8
	v_fmac_f32_e32 v205, v39, v8
	v_dual_fmac_f32 v200, v23, v6 :: v_dual_fmac_f32 v199, v22, v7
	v_fmac_f32_e32 v196, v21, v8
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v130, v43, v15
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v84, v38, v7 :: v_dual_fmac_f32 v135, v61, v5
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v133, v52, v13 :: v_dual_fmac_f32 v140, v62, v10
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v0, v89, v141
	scratch_load_b32 v141, off, off offset:844 ; 4-byte Folded Reload
	v_mov_b32_e32 v89, v0
	scratch_load_b32 v0, off, off offset:592 ; 4-byte Folded Reload
	v_fmac_f32_e32 v93, v2, v134
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[1:4], v155 offset:512
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v155, off, off offset:864
	scratch_load_b32 v134, off, off offset:800
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v174, v78, v10
	v_fmac_f32_e32 v156, v59, v15
	v_fmac_f32_e32 v138, v58, v12
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v126, v48, v9 :: v_dual_fmac_f32 v117, v49, v3
	v_dual_fmac_f32 v212, v72, v1 :: v_dual_fmac_f32 v167, v83, v2
	v_fmac_f32_e32 v246, v81, v3
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v81, off, off offset:1092
	scratch_load_b32 v83, off, off offset:1064
	v_dual_fmac_f32 v243, v79, v4 :: v_dual_fmac_f32 v242, v77, v5
	v_fmac_f32_e32 v248, v69, v6
	v_dual_fmac_f32 v82, v56, v1 :: v_dual_fmac_f32 v137, v67, v2
	v_fmac_f32_e32 v136, v65, v3
	v_fmac_f32_e32 v206, v40, v1
	v_fmac_f32_e32 v118, v51, v2
	v_fmac_f32_e32 v116, v47, v4
	v_dual_fmac_f32 v204, v25, v1 :: v_dual_fmac_f32 v87, v27, v3
	v_fmac_f32_e32 v92, v28, v2
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v86, v26, v4 :: v_dual_fmac_f32 v141, v64, v9
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v0, v88, v17 :: v_dual_fmac_f32 v155, v57, v16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v134, v63, v4
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v88, v0 :: v_dual_fmac_f32 v81, v70, v7
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v83, v37, v6
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v96, off, off offset:1136
	scratch_load_b32 v97, off, off offset:1140
	v_and_b32_e32 v1, 0x80, v191
	v_mov_b32_e32 v3, v213
.LBB0_9:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v212 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v181
	v_dual_mul_f32 v6, 0xbfb8aa3b, v247 :: v_dual_mul_f32 v35, 0xbfb8aa3b, v246
	v_dual_mul_f32 v2, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v242
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v6
	v_dual_mul_f32 v24, 0xbfb8aa3b, v172 :: v_dual_mul_f32 v15, 0xbfb8aa3b, v207
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_mul_f32_e32 v0, 0xbfb8aa3b, v248
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0x42800000, s0
	v_dual_fmac_f32 v10, 0xbfb8aa3b, v212 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v155
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v247
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v81 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v156
	v_exp_f32_e32 v10, v10
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v14, v6
	v_exp_f32_e32 v13, v13
	v_mul_f32_e32 v39, 0xbfb8aa3b, v157
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v2, 0xbfb8aa3b, v248
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	v_mul_f32_e32 v45, 0xbfb8aa3b, v137
	v_ldexp_f32 v9, v10, v9
	v_mul_f32_e32 v10, 0xbfb8aa3b, v82
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v11, v14, v11
	v_dual_mul_f32 v14, 0xbfb8aa3b, v208 :: v_dual_mul_f32 v19, 0xbfb8aa3b, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_dual_mul_f32 v10, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v132
	v_ldexp_f32 v12, v13, v12
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v14
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v0, v2, v0
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v15
	v_dual_mul_f32 v6, 0xbfb8aa3b, v175 :: v_dual_fmac_f32 v13, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	v_cndmask_b32_e64 v14, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v18, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v19
	v_exp_f32_e32 v13, v13
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v124
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v207
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v208
	v_exp_f32_e32 v14, v14
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v18, v18
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v205
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s0
	v_ldexp_f32 v13, v13, v2
	v_dual_mul_f32 v2, 0xbfb8aa3b, v206 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v99
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v10, v14, v10
	v_exp_f32_e32 v23, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v14, v16, v15
	v_ldexp_f32 v15, v18, v17
	v_mul_f32_e32 v16, 0xbfb8aa3b, v83
	v_mul_f32_e32 v18, 0xbfb8aa3b, v84
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v42, 0xbfb8aa3b, v130
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v18
	v_dual_mul_f32 v56, 0xbfb8aa3b, v126 :: v_dual_add_f32 v11, 1.0, v11
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v206
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v20, 0, 0x42800000, s0
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s0
	v_exp_f32_e32 v17, v17
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v83
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v9, v9, v212
	v_div_scale_f32 v77, s1, v81, v11, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v17, v17, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v54, 0xbfb8aa3b, v115 :: v_dual_add_f32 v13, 1.0, v13
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v60, 0xbfb8aa3b, v117 :: v_dual_add_f32 v15, 1.0, v15
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v16, v18, v16
	v_ldexp_f32 v18, v20, v19
	v_mul_f32_e32 v20, 0xbfb8aa3b, v200
	v_ldexp_f32 v19, v23, v22
	v_mul_f32_e32 v23, 0xbfb8aa3b, v196
	v_mul_f32_e32 v2, 0xbfb8aa3b, v204
	v_mul_f32_e32 v22, 0xbfb8aa3b, v199
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v80, null, v13, v13, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v49, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v23
	v_dual_mul_f32 v62, 0xbfb8aa3b, v118 :: v_dual_add_f32 v17, 1.0, v17
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v23, 0, 0x42800000, s0
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_dual_fmac_f32 v49, 0xbfb8aa3b, v200 :: v_dual_mul_f32 v8, 0xbfb8aa3b, v183
	v_mul_f32_e32 v21, 0xbfb8aa3b, v173
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v196
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v65, v49
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v212, v9, v212
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v23
	v_dual_mul_f32 v4, 0xbfb8aa3b, v180 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v182
	v_dual_mul_f32 v28, 0xbfb8aa3b, v174 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v136
	v_dual_mul_f32 v36, 0xbfb8aa3b, v167 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v134
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_ldexp_f32 v32, v65, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v66, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v30, 0xbfb8aa3b, v243 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v138
	v_ldexp_f32 v64, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v11, v11, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v65, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v46, 0xbfb8aa3b, v108
	v_dual_mul_f32 v48, 0xbfb8aa3b, v158 :: v_dual_mul_f32 v59, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v73, v71, v70 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v55, 0xbfb8aa3b, v116
	v_dual_mul_f32 v40, 0xbfb8aa3b, v140 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v66, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v58, 0xbfb8aa3b, v109
	v_dual_mul_f32 v34, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v125
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v68, v72, 1.0
	v_dual_fmac_f32 v73, v75, v70 :: v_dual_mul_f32 v38, 0xbfb8aa3b, v135
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v61, 0xbfb8aa3b, v110 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v27, 0xbfb8aa3b, v101 :: v_dual_fmac_f32 v72, v76, v72
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v199
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v73, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v44, 0xbfb8aa3b, v123 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v79, v77, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v70, v73
	v_rcp_f32_e32 v70, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v49, 0xbfb8aa3b, v102
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v9, v66, v9, v212
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v67, v63
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v0, v0, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v20, 0xbfb8aa3b, v204 :: v_dual_add_f32 v63, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v20, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v67, v65, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v20, v2
	v_dual_mul_f32 v26, 0xbfb8aa3b, v100 :: v_dual_fmac_f32 v65, v74, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, s0, v248, v0, v248
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v75, v74, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v67, v75, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v20, 0xbfb8aa3b, v86 :: v_dual_fmac_f32 v75, v71, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v68, v79, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v2, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v67, v75, v74
	v_fmac_f32_e32 v79, v71, v72
	v_fma_f32 v71, -v80, v70, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v65, v66, v65, v75
	v_fma_f32 v66, -v68, v79, v77
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v77, null, v14, v14, v208
	v_fmac_f32_e32 v70, v71, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v66, v66, v72, v79
	v_div_scale_f32 v71, null, v10, v10, v209
	v_div_fixup_f32 v0, v65, v0, v248
	v_div_fixup_f32 v11, v66, v11, v81
	v_rcp_f32_e32 v66, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v72, v71
	v_fma_f32 v79, -v77, v66, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v66, v79, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v12, v12, v247
	v_div_scale_f32 v67, s3, v247, v12, v247
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v78, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v76, v78, 1.0
	v_fmac_f32_e32 v78, v73, v78
	v_div_scale_f32 v73, s0, v82, v13, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v67, v78
	v_mul_f32_e32 v75, v73, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v74, -v76, v68, v67
	v_fma_f32 v65, -v80, v75, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v74, v78
	v_fma_f32 v74, -v71, v72, 1.0
	v_fmac_f32_e32 v75, v65, v70
	v_div_scale_f32 v65, s1, v209, v10, v209
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v76, v68, v67
	v_div_scale_f32 v76, null, v15, v15, v207
	v_fmac_f32_e32 v72, v74, v72
	v_div_fmas_f32 v67, v67, v78, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v74, v76
	v_fma_f32 v68, -v80, v75, v73
	v_mul_f32_e32 v73, v65, v72
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v80, null, v17, v17, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v68, v68, v70, v75
	v_fma_f32 v70, -v71, v73, v65
	v_div_scale_f32 v81, s0, v207, v15, v207
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v76, v74, 1.0
	v_div_fixup_f32 v13, v68, v13, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v73, v70, v72
	v_div_scale_f32 v78, s3, v208, v14, v208
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v65, -v71, v73, v65
	v_mul_f32_e32 v75, v78, v66
	v_div_fixup_f32 v12, v67, v12, v247
	v_fmac_f32_e32 v74, v79, v74
	v_rcp_f32_e32 v79, v80
	v_div_fmas_f32 v65, v65, v72, v73
	v_fma_f32 v67, -v77, v75, v78
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v16, 1.0, v16
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v81, v74
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v65, v10, v209
	v_fmac_f32_e32 v75, v67, v66
	v_div_scale_f32 v70, null, v16, v16, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v80, v79, 1.0
	v_fma_f32 v67, -v76, v68, v81
	v_fma_f32 v72, -v77, v75, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v71, v70
	v_fmac_f32_e32 v79, v82, v79
	v_div_scale_f32 v82, s4, v206, v17, v206
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v67, v74
	v_div_fmas_f32 v66, v72, v66, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v67, v82, v79
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v73, -v70, v71, 1.0
	v_fma_f32 v72, -v76, v68, v81
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v80, v67, v82
	v_div_scale_f32 v76, s1, v83, v16, v83
	v_fmac_f32_e32 v71, v73, v71
	v_div_fmas_f32 v68, v72, v74, v68
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v67, v75, v79
	v_div_fixup_f32 v65, v66, v14, v208
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v74, v76, v71
	v_div_fixup_f32 v66, v68, v15, v207
	v_fma_f32 v14, -v80, v67, v82
	v_div_scale_f32 v68, null, v19, v19, v205
	v_div_scale_f32 v73, null, v18, v18, v84
	v_fma_f32 v15, -v70, v74, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v14, v14, v79, v67
	v_rcp_f32_e32 v67, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v72, v73
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v74, v15, v71
	v_div_fixup_f32 v77, v14, v17, v206
	v_div_scale_f32 v15, s0, v84, v18, v84
	v_fma_f32 v14, -v70, v74, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v70, -v68, v67, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v73, v72, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v14, v14, v71, v74
	v_div_scale_f32 v74, s1, v205, v19, v205
	v_fmac_f32_e32 v67, v70, v67
	v_div_scale_f32 v70, null, v32, v32, v200
	v_fmac_f32_e32 v72, v75, v72
	v_div_fixup_f32 v79, v14, v16, v83
	v_div_scale_f32 v75, null, v69, v69, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v14, v70
	v_mul_f32_e32 v17, v15, v72
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v76, v75
	v_div_scale_f32 v83, null, v64, v64, v196
	v_fma_f32 v71, -v73, v17, v15
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v70, v14, 1.0
	v_fmac_f32_e32 v17, v71, v72
	v_div_scale_f32 v71, s3, v204, v69, v204
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v75, v76, 1.0
	v_fmac_f32_e32 v14, v81, v14
	v_mul_f32_e32 v16, v74, v67
	v_fma_f32 v15, -v73, v17, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, null, v63, v63, v199
	v_fma_f32 v73, -v68, v16, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v15, v15, v72, v17
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v82, v78
	v_rcp_f32_e32 v72, v83
	v_fmac_f32_e32 v16, v73, v67
	v_div_fixup_f32 v84, v15, v18, v84
	v_div_scale_f32 v73, s0, v200, v32, v200
	v_div_scale_f32 v18, s4, v199, v63, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v15, -v68, v16, v74
	v_fma_f32 v81, -v78, v82, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v68, -v83, v72, 1.0
	v_div_fmas_f32 v15, v15, v67, v16
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v82, v81, v82
	v_div_fixup_f32 v74, v15, v19, v205
	v_mul_f32_e32 v80, v71, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v75, v80, v71
	v_fmac_f32_e32 v80, v17, v76
	v_mul_f32_e32 v17, v73, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v16, -v75, v80, v71
	v_mul_f32_e32 v71, v18, v82
	v_fma_f32 v67, -v70, v17, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v15, -v78, v71, v18
	v_fmac_f32_e32 v17, v67, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v15, v82
	v_div_fmas_f32 v16, v16, v76, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v70, v17, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v67, v16, v69, v204
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v8, v8, v14, v17
	v_fma_f32 v14, -v78, v71, v18
	s_mov_b32 vcc_lo, s4
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v69, 0xbfb8aa3b, v183 :: v_dual_mul_f32 v18, v202, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v8, v32, v200
	v_div_fmas_f32 v14, v14, v82, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v17, v69
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v14, v63, v199
	v_fmac_f32_e32 v72, v68, v72
	v_div_scale_f32 v68, s1, v196, v64, v196
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v14, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v19, v68, v72 :: v_dual_fmac_f32 v14, 0xbfb8aa3b, v182
	v_fma_f32 v15, -v83, v19, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, v15, v72
	v_fma_f32 v15, -v83, v19, v68
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v7, v15, v72, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	v_ldexp_f32 v5, v17, v16
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v203, v9
	v_mul_f32_e32 v15, v197, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v7, v64, v196
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v5
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v5, v14
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v181
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v0, v0, v183
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v13, v194, v65 :: v_dual_mul_f32 v16, v201, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v9, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v68
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v5, v8
	v_cndmask_b32_e64 v8, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, vcc_lo, v183, v0, v183
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v180
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v198, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v4, v9, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v7, -v68, v69, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v193, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v11, v192, v77 :: v_dual_add_f32 v70, 1.0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v7, v69
	v_div_scale_f32 v66, null, v65, v65, v182
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v188, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v70, v70, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v76, v71, v69
	v_rcp_f32_e32 v72, v66
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v4, v186, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v73, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v77, -v68, v76, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v5, v185, v63 :: v_dual_mul_f32 v14, v195, v10
	v_mul_f32_e32 v10, v190, v79
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v77, v69
	v_fma_f32 v78, -v66, v72, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v187, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v75, v74, 1.0
	v_div_scale_f32 v67, s0, v182, v65, v182
	v_fma_f32 v63, -v68, v76, v71
	v_fmac_f32_e32 v72, v78, v72
	v_fmac_f32_e32 v74, v73, v74
	v_div_scale_f32 v73, null, v32, v32, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v63, v63, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v67, v72
	v_rcp_f32_e32 v69, v73
	v_div_scale_f32 v71, s1, v181, v70, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v76, -v66, v68, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v184, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v71, v74
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v64, -v73, v69, 1.0
	v_fmac_f32_e32 v68, v76, v72
	v_div_fixup_f32 v0, v63, v0, v183
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v75, v77, v71
	v_fmac_f32_e32 v69, v64, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v68, v67
	v_div_scale_f32 v67, s3, v180, v32, v180
	v_fmac_f32_e32 v77, v63, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v174
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v28, v28, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v71, -v75, v77, v71
	v_div_fmas_f32 v66, v66, v72, v68
	v_mul_f32_e32 v68, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_exp_f32_e32 v24, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v73, v68, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v64, v64, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v68, v28, v69
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v24, v63
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v76
	v_div_fmas_f32 v71, v71, v74, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v172
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v28, v66, v65, v182
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v73, v68, v67
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v24, v71, v70, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, null, v65, v65, v174
	v_fma_f32 v71, -v76, v63, 1.0
	v_div_fmas_f32 v66, v66, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v70
	v_div_scale_f32 v69, s0, v175, v64, v175
	v_fmac_f32_e32 v63, v71, v63
	v_div_fixup_f32 v21, v66, v32, v180
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v67, v67, v72
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v69, v63
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v70, v68, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v76, v71, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v35
	v_exp_f32_e32 v66, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v72, v68
	v_div_scale_f32 v72, s1, v174, v65, v174
	v_div_scale_f32 v74, null, v67, v67, v172
	v_fmac_f32_e32 v71, v73, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v73, v72, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v179, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v71, v69
	v_fma_f32 v76, -v70, v73, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v176, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v69, v63, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v76, v68
	v_fma_f32 v66, -v74, v75, 1.0
	v_div_scale_f32 v69, null, v0, v0, v173
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v8, v189, v84 :: v_dual_fmac_f32 v75, v66, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v63, v63, v64, v175
	v_fma_f32 v64, -v70, v73, v72
	v_div_scale_f32 v36, s0, v172, v67, v172
	v_rcp_f32_e32 v66, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v167
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v72, v36, v75
	v_div_fmas_f32 v35, v64, v68, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s3
	v_exp_f32_e32 v71, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v69, v66, 1.0
	v_div_fixup_f32 v35, v35, v65, v174
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v246
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v74, v72, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v73, v66
	v_div_scale_f32 v73, s1, v173, v0, v173
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v65, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v71, v70
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v73, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v74, v72, v36
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v69, v65, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v243
	v_ldexp_f32 v64, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v68, null, v74, v74, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v65, v30, v66 :: v_dual_add_f32 v64, 1.0, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v68
	v_div_fmas_f32 v29, v36, v75, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v69, v65, v73
	v_div_scale_f32 v76, null, v64, v64, v246
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v73, v76
	v_div_fmas_f32 v36, v36, v66, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v68, v71, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v70
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v242
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, vcc_lo, v167, v74, v167
	v_fmac_f32_e32 v71, v75, v71
	v_div_fixup_f32 v0, v36, v0, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v73, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v65, v71
	v_div_fixup_f32 v30, v29, v67, v172
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v171, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v66, v73
	v_div_scale_f32 v66, s0, v246, v64, v246
	v_div_scale_f32 v75, null, v70, v70, v243
	v_fma_f32 v0, -v68, v72, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v67, v66, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v69, v36, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v168, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v0, v71
	v_fma_f32 v0, -v76, v67, v66
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v63, 1.0, v69 :: v_dual_mul_f32 v24, v178, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v68, v72, v65
	v_fmac_f32_e32 v67, v0, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v68, null, v63, v63, v242
	v_fma_f32 v0, -v75, v77, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v65, v65, v71, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v177, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v67, v66
	v_fmac_f32_e32 v77, v0, v77
	v_rcp_f32_e32 v0, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v48, s1, v243, v70, v243
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v158
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v66, v66, v73, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v67, v48, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v72, -v68, v0, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v66, v64, v246
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v75, v67, v48
	v_fmac_f32_e32 v0, v72, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s0, v242, v63, v242
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v65, v74, v167
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v157
	v_ldexp_f32 v37, v39, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v66, v77
	v_mul_f32_e32 v39, v73, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v72, v72
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v68, v39, v73
	v_fma_f32 v48, -v75, v67, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v74, v74, v158
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v37, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v31, v69
	v_ldexp_f32 v37, v72, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v169, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v48, v48, v77, v67
	v_fma_f32 v67, -v68, v39, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v31, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v75, v69, 1.0
	v_div_scale_f32 v66, null, v68, v68, v157
	v_div_fmas_f32 v0, v67, v0, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v37, v69
	v_rcp_f32_e32 v67, v66
	v_div_scale_f32 v73, vcc_lo, v158, v74, v158
	v_div_fixup_f32 v0, v0, v63, v242
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v37, v48, v70, v243
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v70, v73, v69
	v_div_scale_f32 v77, s0, v157, v68, v157
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v241, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v39, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v72, v72, v155
	v_fma_f32 v48, -v66, v67, 1.0
	v_fma_f32 v76, -v75, v70, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v160, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v48, v67
	v_fmac_f32_e32 v70, v76, v69
	v_div_scale_f32 v78, null, v0, v0, v156
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v159, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v77, v67
	v_fma_f32 v65, -v75, v70, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v75, v78
	v_fma_f32 v76, -v63, v71, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v170, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v66, v64, v77
	v_div_fmas_f32 v52, v65, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v76, v71
	v_div_scale_f32 v76, s1, v155, v72, v155
	v_fmac_f32_e32 v64, v73, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v73, -v78, v75, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v141
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v76, v71
	v_fma_f32 v66, -v66, v64, v77
	v_fmac_f32_e32 v75, v73, v75
	v_div_scale_f32 v73, s3, v156, v0, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v52, v52, v74, v158
	v_fma_f32 v74, -v63, v70, v76
	v_div_fmas_f32 v40, v66, v67, v64
	v_mul_f32_e32 v64, v73, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v74, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v78, v64, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v69, v65
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v140
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v63, v70, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v64, v34, v75 :: v_dual_add_f32 v65, 1.0, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v139
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v67, null, v65, v65, v141
	v_div_fmas_f32 v63, v63, v71, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v67
	v_fma_f32 v33, -v78, v64, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v66
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v60
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v161, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v75, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v70, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v67, v71, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v33, v0, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v74, 1.0, v34 :: v_dual_fmac_f32 v71, v69, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, vcc_lo, v141, v65, v141
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v154, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v74, v74, v139
	v_mul_f32_e32 v77, v69, v71
	v_div_fixup_f32 v34, v63, v72, v155
	v_div_fixup_f32 v40, v40, v68, v157
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v63, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v67, v77, v69
	v_fmac_f32_e32 v77, v68, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v68, -v76, v63, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v73, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v67, v77, v69
	v_fmac_f32_e32 v63, v68, v63
	v_div_scale_f32 v68, s1, v139, v74, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v67, v67, v71, v77
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v68, v63
	v_div_scale_f32 v70, null, v64, v64, v140
	v_div_scale_f32 v66, s0, v140, v64, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v75, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v151, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v67, v65, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v76, v77, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v79, 0xbfb8aa3b, v137 :: v_dual_mul_f32 v40, v152, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v65, v63
	v_fma_f32 v72, -v70, v75, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v47, v79
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v76, v77, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v75, v72, v75
	v_div_scale_f32 v72, null, v0, v0, v138
	v_mul_f32_e32 v69, v66, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v71, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v47, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v70, v69, v66
	v_fmac_f32_e32 v69, v73, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v72, v71, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v153, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v70, v69, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v67, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v70, s3, v138, v0, v138
	v_div_fmas_f32 v66, v66, v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v136
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v70, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v67
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v63, v68, v63, v77
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v75, 0xbfb8aa3b, v134
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v51
	v_ldexp_f32 v41, v41, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v72, v69, v70
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v69, v47, v71
	v_div_fixup_f32 v47, v66, v64, v140
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v67, v67, v137
	v_div_fixup_f32 v41, v63, v74, v139
	v_fma_f32 v63, -v72, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v76
	v_div_scale_f32 v68, null, v64, v64, v136
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v148, v47
	v_mul_f32_e32 v41, v149, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v76, v65, 1.0
	v_fmac_f32_e32 v65, v70, v65
	v_div_scale_f32 v70, s0, v137, v67, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v72, v70, v65
	v_div_fmas_f32 v63, v63, v71, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v68
	v_div_fixup_f32 v0, v63, v0, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v38, v150, v0 :: v_dual_fmac_f32 v71, 0xbfb8aa3b, v135
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v72, v70
	v_fma_f32 v73, -v68, v69, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v0, v0, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v73, v69
	v_div_scale_f32 v73, s1, v136, v64, v136
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v71, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v72, v66, v65 :: v_dual_add_f32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v76, v72, v70
	v_div_fmas_f32 v65, v70, v65, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v74, v75, 1.0
	v_mul_f32_e32 v66, v73, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, s0, v134, v0, v134
	v_fmac_f32_e32 v75, v70, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v76, -v68, v66, v73
	v_div_fixup_f32 v65, v65, v67, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v66, v76, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v133
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v68, v66, v73
	v_div_scale_f32 v68, null, v63, v63, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v67, v69, v66
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v70, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v59, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v64, v136
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v74, v69, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v52, v147, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v72, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v68, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v64, v75
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v144, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v73, v70
	v_div_scale_f32 v73, s1, v135, v63, v135
	v_fma_f32 v59, -v74, v69, v59
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v73, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v67, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v59, v75, v69
	v_fma_f32 v50, -v68, v64, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v131
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v50, v70
	v_div_scale_f32 v76, null, v66, v66, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v72
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v68, v64, v73
	v_rcp_f32_e32 v73, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v42, v0, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v59, v59, v70, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v59, v59, v63, v135
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v76, v73, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v50 :: v_dual_mul_f32 v42, v146, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v70, v73
	v_div_scale_f32 v70, s0, v132, v66, v132
	v_mul_f32_e32 v77, v70, v73
	v_div_scale_f32 v67, null, v74, v74, v133
	v_div_scale_f32 v64, vcc_lo, v133, v74, v133
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v145, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v63, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v76, v77, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v77, v63, v73
	v_fma_f32 v75, -v67, v72, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v72, v75, v72
	v_div_scale_f32 v75, null, v69, v69, v131
	v_mul_f32_e32 v71, v64, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v78, v75
	v_fma_f32 v59, -v67, v71, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v71, v59, v72
	v_fma_f32 v63, -v75, v78, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v143, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v67, v71, v64
	v_fmac_f32_e32 v78, v63, v78
	v_div_scale_f32 v63, s1, v131, v69, v131
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v64, v64, v72, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v63, v78
	v_fma_f32 v67, -v76, v77, v70
	v_div_scale_f32 v65, null, v0, v0, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v56, v65
	v_div_fmas_f32 v67, v67, v73, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, s0, v130, v0, v130
	v_div_fixup_f32 v64, v64, v74, v133
	v_div_fixup_f32 v66, v67, v66, v132
	v_fma_f32 v67, -v75, v71, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v65, v56, 1.0
	v_fmac_f32_e32 v56, v72, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v126
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v53, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v72, v72
	v_ldexp_f32 v44, v53, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v73, v56
	v_fmac_f32_e32 v71, v67, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v65, v53, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v75, v71, v63
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v53, v44, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v72, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v65, -v65, v53, v73
	v_div_fmas_f32 v63, v63, v78, v71
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v65, v56, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v76, s0, v125, v71, v125
	v_div_fixup_f32 v0, v53, v0, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v123
	v_exp_f32_e32 v56, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v43, v68
	v_ldexp_f32 v43, v43, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v71, v71, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v67
	v_fma_f32 v53, -v67, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v65, v53, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v53, v128, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v74, v74, v126
	v_div_scale_f32 v73, vcc_lo, v126, v74, v126
	v_mul_f32_e32 v66, v76, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v75
	v_fma_f32 v44, -v75, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v68, v44, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v72, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v63, v69, v131
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v142, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v56, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v73, v68
	v_div_scale_f32 v63, null, v72, v72, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v75, v69, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v70, v63
	v_div_scale_f32 v78, null, v0, v0, v124
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v77, -v63, v70, 1.0
	v_fmac_f32_e32 v69, v56, v68
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v127, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v77, v70
	v_fma_f32 v64, -v75, v69, v73
	v_rcp_f32_e32 v75, v78
	v_fma_f32 v73, -v67, v66, v76
	v_div_scale_f32 v77, s1, v123, v72, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v66, v73, v65
	v_fma_f32 v73, -v78, v75, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v67, v66, v76
	v_fmac_f32_e32 v75, v73, v75
	v_div_fmas_f32 v62, v64, v68, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s3
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v77, v70
	v_div_scale_f32 v73, s3, v124, v0, v124
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v118
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v62, v62, v74, v126
	v_fma_f32 v74, -v63, v69, v77
	v_div_fmas_f32 v60, v67, v65, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v68, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v73, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v44, v129, v44 :: v_dual_fmac_f32 v69, v74, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v78, v65, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v117
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v64, v68, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v63, v69, v77
	v_fmac_f32_e32 v65, v55, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v67
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v116
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v60, v60, v71, v125
	v_div_fmas_f32 v63, v63, v70, v69
	v_div_scale_f32 v67, null, v64, v64, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v74
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v78, v65, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v70, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v66
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v54, v54, v75, v65
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v65, 1.0, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v69, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v67, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v54, v0, v124
	v_div_scale_f32 v69, null, v65, v65, v117
	v_fmac_f32_e32 v70, v68, v70
	v_div_scale_f32 v68, vcc_lo, v118, v64, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v75, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v73, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v68, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v71, -v67, v77, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v74, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v55, v63, v72, v123
	v_fma_f32 v72, -v69, v75, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v54, v122, v0 :: v_dual_fmac_f32 v77, v71, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v74, v74, v116
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v73, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v75, v72, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v67, -v67, v77, v68
	v_rcp_f32_e32 v63, v76
	v_div_scale_f32 v66, s0, v117, v65, v117
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v121, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v63, 1.0
	v_fmac_f32_e32 v63, v71, v63
	v_div_fmas_f32 v67, v67, v70, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v71, s1, v116, v74, v116
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v120, v60
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v67, v64, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v79, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v77, v71, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v79, 0xbfb8aa3b, v110
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v0, v0, v115
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v119, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v76, v77, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v73
	v_fmac_f32_e32 v77, v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v76, v77, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v58, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v73, v61, 1.0
	v_dual_mul_f32 v72, v66, v75 :: v_dual_fmac_f32 v61, v67, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v69, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v72, v70, v75 :: v_dual_fmac_f32 v67, 0xbfb8aa3b, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v69, v72, v66
	v_div_scale_f32 v69, s3, v115, v0, v115
	v_div_fmas_f32 v66, v66, v75, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	v_exp_f32_e32 v57, v67
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v66, v65, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v75, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v69, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v63, v71, v63, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v58, 1.0, v58 :: v_dual_fmac_f32 v75, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v73, v70, v69
	v_div_fixup_f32 v62, v63, v74, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, null, v58, v58, v110
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v75
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v76
	v_fmac_f32_e32 v70, v67, v61
	v_div_scale_f32 v67, null, v57, v57, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v73, v70, v69
	v_rcp_f32_e32 v73, v67
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v66, v66, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v71, v69, v71
	v_div_fmas_f32 v61, v63, v61, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s0, v110, v58, v110
	v_fma_f32 v72, -v67, v73, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v0, v61, v0, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v69, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v73, v72, v73 :: v_dual_mul_f32 v46, v114, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v108 :: v_dual_add_f32 v0, 1.0, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v76, v70, v69
	v_div_scale_f32 v72, s1, v109, v57, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v74, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v63, v112, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v0, v0, v107
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v65, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v61, v74, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v66, v71
	v_mul_f32_e32 v66, v72, v73
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v76, v70, v69
	v_fma_f32 v76, -v67, v66, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v71, v70
	v_fmac_f32_e32 v66, v76, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, s0, v107, v0, v107
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v70, v111, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v75, v65, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v113, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v69, v69, v58, v110
	v_fma_f32 v58, -v67, v66, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v64, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v67, null, v61, v61, v108
	v_div_fmas_f32 v27, v58, v73, v66
	v_mul_f32_e32 v73, v49, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v57, v109
	v_fma_f32 v57, -v75, v73, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v102
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v101
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v73, v57, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v67, v64, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v75, v73, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v72, v71
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v66, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v49, v49, v65, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v74, v64
	v_div_scale_f32 v74, s1, v108, v61, v108
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_fmac_f32 v73, 0xbfb8aa3b, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v74, v64
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v66, null, v26, v26, v102
	v_div_fixup_f32 v0, v49, v0, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v75, -v67, v57, v74
	v_rcp_f32_e32 v25, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v57, v75, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v67, v57, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_scale_f32 v72, null, v75, v75, v101
	v_fma_f32 v76, -v66, v25, 1.0
	v_div_scale_f32 v77, s0, v101, v75, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v74, v72
	v_div_fmas_f32 v57, v65, v64, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v58, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v76, v25
	v_div_scale_f32 v71, vcc_lo, v102, v26, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v57, v57, v61, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v73
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s3
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v72, v74, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v106, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v23
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v105, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v78, null, v73, v73, v100
	v_fmac_f32_e32 v74, v64, v74
	v_mul_f32_e32 v76, v71, v25
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v65, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v103, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v57, v77, v74
	v_fma_f32 v49, -v66, v76, v71
	v_rcp_f32_e32 v79, v78
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v69, 0xbfb8aa3b, v92 :: v_dual_fmac_f32 v76, v49, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v72, v57, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v104, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v66, v76, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v57, v49, v74
	v_fma_f32 v49, -v78, v79, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v27, v25, v76
	v_fma_f32 v27, -v72, v57, v77
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v79, v49, v79
	v_div_scale_f32 v49, s1, v100, v73, v100
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v23, v27, v74, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v26, v102
	v_div_scale_f32 v66, null, v0, v0, v99
	v_div_scale_f32 v74, s0, v99, v0, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v66
	v_div_fixup_f32 v23, v23, v75, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v87
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v27, v49, v79 :: v_dual_fmac_f32 v72, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v22, -v78, v27, v49
	v_fma_f32 v20, -v66, v57, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v27, v22, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v22, v69
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_exp_f32_e32 v2, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v20, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v22, v22, v67
	v_exp_f32_e32 v67, v72
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v85
	v_ldexp_f32 v2, v2, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v78, v27, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v22, v22, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v27, v49, v79, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v67, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v69, v72
	v_div_scale_f32 v80, s0, v87, v2, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v26, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v75, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v73, v100
	v_div_scale_f32 v26, null, v2, v2, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_mul_f32 v49, v74, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v75, v75, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v72, v69, 1.0
	v_div_scale_f32 v83, s3, v85, v20, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v66, v49, v74
	v_rcp_f32_e32 v76, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v49, v71, v57
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v94, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v49, v74
	v_rcp_f32_e32 v74, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v49, v66, v57, v49
	v_div_scale_f32 v57, null, v20, v20, v85
	v_div_scale_f32 v77, vcc_lo, v92, v22, v92
	v_div_fixup_f32 v0, v49, v0, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v78, v57
	v_fma_f32 v49, -v73, v76, 1.0
	v_fma_f32 v66, -v26, v74, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v76, v49, v76
	v_div_scale_f32 v49, s1, v86, v75, v86
	v_fmac_f32_e32 v69, v67, v69
	v_fma_f32 v67, -v57, v78, 1.0
	v_fmac_f32_e32 v74, v66, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v82, v49, v76
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v98, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v78, v67, v78 :: v_dual_mul_f32 v79, v77, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v84, v83, v78
	v_fma_f32 v0, -v72, v79, v77
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v95, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v73, v82, v49
	v_mul_f32_e32 v81, v80, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v79, v0, v69 :: v_dual_fmac_f32 v82, v27, v76
	v_fma_f32 v0, -v26, v81, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v72, v79, v77
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v77, |v46|, |v10|, |v8|
	v_max3_f32 v72, |v42|, |v14|, |v13|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v81, v0, v74
	v_fma_f32 v0, -v57, v84, v83
	v_div_fmas_f32 v23, v23, v69, v79
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0x76543210
	v_fma_f32 v26, -v26, v81, v80
	v_fmac_f32_e32 v84, v0, v78
	v_fma_f32 v0, -v73, v82, v49
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v73, v93, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v23, v22, v92
	v_div_fmas_f32 v26, v26, v74, v81
	v_fma_f32 v27, -v57, v84, v83
	s_mov_b32 vcc_lo, s1
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v23, |v32|, |v28|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v76, v82
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v2, v26, v2, v87
	v_div_fmas_f32 v27, v27, v78, v84
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v24|, |v36|, |v35|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v75, v86
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v48|, |v39|, |v37|
	v_max_f32_e64 v74, |v56|, |v53|
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v20, v27, v20, v85
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, |v31|, |v18|, |v16|
	v_max3_f32 v75, |v44|, |v68|, |v60|
	v_max3_f32 v76, |v70|, |v63|, |v62|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v89, v0
	v_mul_f32_e32 v49, v88, v20
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v30|, |v29|, |v19|
	v_max3_f32 v20, v23, |v21|, v25
	v_max3_f32 v23, v26, v27, |v17|
	v_max3_f32 v78, |v55|, |v54|, |v11|
	v_max3_f32 v74, v74, |v43|, v75
	v_max3_f32 v75, v76, v77, |v9|
	v_max_f32_e64 v25, |v45|, |v40|
	v_max3_f32 v0, v20, v0, v23
	v_max3_f32 v26, |v34|, |v52|, |v47|
	v_max3_f32 v69, |v59|, |v51|, |v50|
	v_max3_f32 v20, v74, v78, v75
	v_max3_f32 v27, |v41|, |v38|, |v15|
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v74, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v25, |v33|, v26
	v_max3_f32 v26, v69, v72, |v12|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v75, v20, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v90, v2
	v_mul_f32_e32 v72, v91, v22
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v22, |v65|, |v64|
	v_max3_f32 v2, v25, v27, v26
	v_max_f32_e32 v76, v75, v75
	v_max3_f32 v27, |v49|, |v4|, |v5|
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v78, 8, v191
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v67|, |v66|, |v7|
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v81, 3, v1
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v20, v76
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v20, 4, v191
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, |v72|, |v69|, |v57|
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v82, v20, 6, 0
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v26, v27, |v6|
	v_max_f32_e32 v27, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v74, v0, v27
	v_max3_f32 v23, |v58|, |v73|, |v71|
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v191
	v_and_b32_e32 v27, 0x60, v191
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v22, |v61|, v23
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v23, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, v22, v25, v26
	v_max_f32_e32 v23, v23, v23
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v25, v0, 9, 0
	v_lshlrev_b32_e32 v26, 4, v191
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v2, v23
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v23, 5, v0
	v_permlanex16_b32 v2, v22, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v77, v20, 2, v25
	v_lshlrev_b32_e32 v25, 1, v1
	v_add_nc_u32_e32 v1, 0, v1
	v_and_or_b32 v26, 0x680, v26, v23
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v79, v23, v27
	v_lshl_add_u32 v80, v78, 4, v77
	v_lshlrev_b32_e32 v78, 3, v78
	v_xor_b32_e32 v26, v26, v27
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v22, v2
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v0, v0, 4, 0
	v_add3_u32 v2, v80, v25, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v22, v82, v81, v26
	ds_store_b128 v2, v[74:77]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v74
	v_mov_b32_e32 v22, v75
	v_mov_b32_e32 v26, v76
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v74, v74 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v22, v22 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v77, v77
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v22, v22, v22
	v_max_f32_e32 v26, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v74, v2
	v_max_f32_e32 v74, v76, v76
	v_max_f32_e32 v26, v74, v26
	v_dual_max_f32 v22, v75, v22 :: v_dual_max_f32 v75, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v74, v79, v75 :: v_dual_mov_b32 v75, v26
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v75, v75 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v76, v2 :: v_dual_max_f32 v75, v75, v75
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v77, v22 :: v_dual_max_f32 v76, v76, v76
	v_mov_b32_dpp v77, v77 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v76 :: v_dual_max_f32 v77, v77, v77
	v_max_f32_e32 v22, v22, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v77, v2
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v79, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v76, v79, v79 :: v_dual_mov_b32 v79, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v80, v74, v76
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v74, v77, v77 :: v_dual_mov_b32 v81, v80
	v_max_f32_e32 v26, v26, v75
	v_dual_max_f32 v75, v79, v79 :: v_dual_max_f32 v74, v2, v74
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v79, 1, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v75, v22, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v1, v79, v78
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v81, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v76, v26 :: v_dual_max_f32 v77, v80, v22
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v22, 4, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v76, v76
	v_max_f32_e32 v76, v26, v2
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v2, 5, v20
	ds_store_b128 v1, v[74:77]
	v_add3_u32 v0, v0, v2, v78
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp61:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v78, 32, v22
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[74:77], v0
.Ltmp63:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v74, v74
	v_dual_max_f32 v74, v76, v76 :: v_dual_max_f32 v75, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v77, v77, v77 :: v_dual_max_f32 v2, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v75, 0x2b8cbccc, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v77, 0x2b8cbccc, v77
	v_div_scale_f32 v20, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s28, v0
	v_add_co_ci_u32_e64 v1, null, s29, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v26, v20
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s0, s28, v78
	v_add_co_ci_u32_e64 v79, null, s29, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[34:35], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[30:31], v[0:1]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_scale_f32 v84, null, 0x40e00000, 0x40e00000, v75
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 16, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v76, -v20, v26, 1.0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[78:79]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v26, v76, v26
	v_div_scale_f32 v76, vcc_lo, v2, 0x40e00000, v2
	v_mul_f32_e32 v81, v76, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v20, v81, v76
	v_fmac_f32_e32 v81, v0, v26
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s4, s28, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s29, 0, s4
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v20, -v20, v81, v76
	v_rcp_f32_e32 v76, v84
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[30:31], v[78:79]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[34:35], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v20, v20, v26, v81
	v_rcp_f32_e32 v81, v85
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[30:31], v[0:1]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v20, 0x40e00000, v2
	v_fma_f32 v78, -v84, v76, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v76, v78, v76
	v_div_scale_f32 v78, s8, v75, 0x40e00000, v75
	v_max_f32_e32 v74, 0x2b8cbccc, v74
	v_fma_f32 v86, -v85, v81, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v87, v78, v76
	v_div_scale_f32 v80, null, 0x40e00000, 0x40e00000, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v86, v81
	v_div_scale_f32 v86, s9, v77, 0x40e00000, v77
	v_rcp_f32_e32 v82, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v80, v82, 1.0
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, s7, v74, 0x40e00000, v74
	s_mov_b32 vcc_lo, s7
	v_mul_f32_e32 v26, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v80, v26, v83
	v_fmac_f32_e32 v26, v20, v82
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v20.l, v2.h
	v_mov_b16_e32 v20.h, v79.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v80, v26, v83
	v_fma_f32 v80, -v84, v87, v78
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v83, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v80, v76
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v20, v2, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v26, v0, v82, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v2, -v85, v83, v86
	s_mov_b32 vcc_lo, s8
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s28, v22
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v20
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v26, v26, 0x40e00000, v74
	v_fma_f32 v74, -v84, v87, v78
	v_fmac_f32_e32 v83, v2, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s29, 0, s7
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v78, null, v80, v80, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v74, v76, v87
	v_fma_f32 v74, -v85, v83, v86
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v78
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v79.l, v26.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v75
	v_div_fmas_f32 v74, v74, v81, v83
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v84, vcc_lo, v32, v80, v32
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[34:35], v[0:1]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v75, 1, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v74, v74, 0x40e00000, v77
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v77.l, v2.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v76, -v78, v82, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v77.h, v79.h
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[30:31], v[0:1]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v26, v75, 0x7fff
	v_mov_b16_e32 v79.l, v74.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v76, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v77, v84, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v26, v2, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v78, v77, v84
	v_fmac_f32_e32 v77, v0, v82
	v_div_scale_f32 v81, null, v80, v80, v28
	v_div_scale_f32 v86, null, v80, v80, v24
	v_div_scale_f32 v87, s9, v28, v80, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v83, v81
	v_rcp_f32_e32 v0, v86
	v_div_scale_f32 v85, null, v80, v80, v21
	v_fma_f32 v78, -v78, v77, v84
	v_div_scale_f32 v91, null, v80, v80, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v75, -v81, v83, 1.0
	v_fma_f32 v90, -v86, v0, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v83, v75, v83 :: v_dual_fmac_f32 v0, v90, v0
	v_div_scale_f32 v90, null, v80, v80, v35
	v_dual_mul_f32 v88, v87, v83 :: v_dual_and_b32 v75, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v92, v90
	v_fma_f32 v84, -v81, v88, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v88, v84, v83
	v_div_scale_f32 v84, s11, v24, v80, v24
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v76, 1, v79
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v79, v85
	v_fma_f32 v89, -v85, v79, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, s10, v21, v80, v21
	v_div_fmas_f32 v77, v78, v82, v77
	v_rcp_f32_e32 v82, v91
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v78, v89, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v32, v77, v80, v32
	v_fma_f32 v77, -v81, v88, v87
	v_mul_f32_e32 v87, v84, v0
	v_fma_f32 v81, -v85, v78, v89
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v74, v76, 0x7fff
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v93, -v91, v82, 1.0
	v_div_fmas_f32 v77, v77, v83, v88
	v_fmac_f32_e32 v78, v81, v79
	v_fma_f32 v81, -v86, v87, v84
	v_fma_f32 v88, -v90, v92, 1.0
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v76, 0xffff0000, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v93, v82
	v_div_scale_f32 v83, s9, v36, v80, v36
	v_div_fixup_f32 v28, v77, v80, v28
	v_fma_f32 v77, -v85, v78, v89
	v_fmac_f32_e32 v87, v81, v0
	v_fmac_f32_e32 v92, v88, v92
	v_div_scale_f32 v88, null, v80, v80, v30
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v81, v83, v82
	v_div_scale_f32 v85, s12, v35, v80, v35
	v_div_fmas_f32 v77, v77, v79, v78
	v_fma_f32 v78, -v86, v87, v84
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v89, null, v80, v80, v29
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v79, -v91, v81, v83
	v_mul_f32_e32 v86, v85, v92
	v_div_fmas_f32 v0, v78, v0, v87
	v_rcp_f32_e32 v78, v89
	v_div_fixup_f32 v21, v77, v80, v21
	v_fmac_f32_e32 v81, v79, v82
	v_fma_f32 v79, -v90, v86, v85
	v_fma_f32 v87, -v88, v84, 1.0
	v_div_fixup_f32 v24, v0, v80, v24
	v_div_scale_f32 v77, s10, v30, v80, v30
	v_fma_f32 v0, -v91, v81, v83
	v_fmac_f32_e32 v86, v79, v92
	v_fmac_f32_e32 v84, v87, v84
	v_fma_f32 v79, -v89, v78, 1.0
	v_div_scale_f32 v83, null, v80, v80, v19
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v87, null, v80, v80, v48
	v_div_fmas_f32 v0, v0, v82, v81
	v_fma_f32 v81, -v90, v86, v85
	v_mul_f32_e32 v82, v77, v84
	v_fmac_f32_e32 v78, v79, v78
	v_rcp_f32_e32 v79, v83
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v85, s9, v29, v80, v29
	v_div_fmas_f32 v81, v81, v92, v86
	v_fma_f32 v86, -v88, v82, v77
	v_rcp_f32_e32 v92, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v90, v85, v78
	v_div_fixup_f32 v36, v0, v80, v36
	v_div_fixup_f32 v35, v81, v80, v35
	v_fma_f32 v91, -v83, v79, 1.0
	v_fmac_f32_e32 v82, v86, v84
	v_div_scale_f32 v86, null, v80, v80, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v79, v91, v79 :: v_dual_and_b32 v74, 0xffff0000, v2
	v_fma_f32 v0, -v89, v90, v85
	v_div_scale_f32 v81, s11, v19, v80, v19
	v_fma_f32 v91, -v87, v92, 1.0
	v_fma_f32 v77, -v88, v82, v77
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v90, v0, v78
	v_mul_f32_e32 v0, v81, v79
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s12, v48, v80, v48
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v93, null, v80, v80, v37
	v_div_fmas_f32 v77, v77, v84, v82
	v_fma_f32 v82, -v89, v90, v85
	v_fma_f32 v84, -v83, v0, v81
	v_mul_f32_e32 v85, v91, v92
	v_fma_f32 v89, -v86, v88, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v30, v77, v80, v30
	v_div_fmas_f32 v78, v82, v78, v90
	v_fmac_f32_e32 v0, v84, v79
	v_rcp_f32_e32 v82, v93
	v_fma_f32 v84, -v87, v85, v91
	v_fmac_f32_e32 v88, v89, v88
	v_div_scale_f32 v89, s9, v39, v80, v39
	v_div_fixup_f32 v29, v78, v80, v29
	v_fma_f32 v77, -v83, v0, v81
	v_fmac_f32_e32 v85, v84, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v78, v89, v88
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v81, -v93, v82, 1.0
	v_div_scale_f32 v83, null, v80, v80, v31
	v_div_fmas_f32 v0, v77, v79, v0
	v_fma_f32 v77, -v87, v85, v91
	v_fma_f32 v79, -v86, v78, v89
	v_div_scale_f32 v87, null, v80, v80, v18
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v79, v88
	v_rcp_f32_e32 v79, v87
	v_div_scale_f32 v84, s10, v37, v80, v37
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v19, v0, v80, v19
	v_div_fmas_f32 v77, v77, v92, v85
	v_mul_f32_e32 v85, v84, v82
	v_fma_f32 v0, -v86, v78, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v90, -v83, v81, 1.0
	v_div_scale_f32 v86, s11, v31, v80, v31
	v_fma_f32 v89, -v87, v79, 1.0
	v_div_fixup_f32 v48, v77, v80, v48
	v_fma_f32 v77, -v93, v85, v84
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v90, null, v80, v80, v16
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v80, v80, v17
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v85, v77, v82
	v_div_fmas_f32 v0, v0, v88, v78
	v_mul_f32_e32 v77, v86, v81
	v_rcp_f32_e32 v78, v90
	v_div_scale_f32 v88, s9, v18, v80, v18
	v_rcp_f32_e32 v92, v89
	v_div_fixup_f32 v39, v0, v80, v39
	v_fma_f32 v0, -v93, v85, v84
	v_fma_f32 v84, -v83, v77, v86
	v_mul_f32_e32 v91, v88, v79
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v90, v78, 1.0
	v_div_fmas_f32 v0, v0, v82, v85
	v_fmac_f32_e32 v77, v84, v81
	v_fma_f32 v82, -v87, v91, v88
	v_fma_f32 v85, -v89, v92, 1.0
	v_fmac_f32_e32 v78, v93, v78
	v_div_scale_f32 v84, s10, v16, v80, v16
	v_div_fixup_f32 v37, v0, v80, v37
	v_fma_f32 v0, -v83, v77, v86
	v_dual_fmac_f32 v91, v82, v79 :: v_dual_fmac_f32 v92, v85, v92
	v_div_scale_f32 v85, null, v76, v76, v45
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v82, v84, v78
	v_div_scale_f32 v83, s12, v17, v80, v17
	v_div_fmas_f32 v0, v0, v81, v77
	v_fma_f32 v77, -v87, v91, v88
	v_rcp_f32_e32 v86, v85
	v_div_scale_f32 v88, null, v76, v76, v40
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v81, -v90, v82, v84
	v_mul_f32_e32 v87, v83, v92
	v_div_fmas_f32 v77, v77, v79, v91
	v_rcp_f32_e32 v79, v88
	v_div_fixup_f32 v31, v0, v80, v31
	v_fmac_f32_e32 v82, v81, v78
	v_fma_f32 v81, -v89, v87, v83
	v_fma_f32 v91, -v85, v86, 1.0
	v_div_fixup_f32 v18, v77, v80, v18
	v_div_scale_f32 v77, s9, v45, v76, v45
	v_fma_f32 v0, -v90, v82, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v87, v81, v92 :: v_dual_fmac_f32 v86, v91, v86
	v_fma_f32 v81, -v88, v79, 1.0
	v_div_scale_f32 v84, null, v76, v76, v33
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v78, v82
	v_fma_f32 v78, -v89, v87, v83
	v_mul_f32_e32 v82, v77, v86
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v83, s10, v40, v76, v40
	v_div_scale_f32 v89, null, v76, v76, v34
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v90, v83, v79
	v_div_fmas_f32 v78, v78, v92, v87
	v_fma_f32 v87, -v85, v82, v77
	v_rcp_f32_e32 v92, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v84, v81, 1.0
	v_div_fixup_f32 v16, v0, v80, v16
	v_fma_f32 v0, -v88, v90, v83
	v_fmac_f32_e32 v82, v87, v86
	v_div_fixup_f32 v17, v78, v80, v17
	v_fmac_f32_e32 v81, v91, v81
	v_div_scale_f32 v78, s11, v33, v76, v33
	v_div_scale_f32 v80, null, v76, v76, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v89, v92, 1.0
	v_fma_f32 v77, -v85, v82, v77
	v_fmac_f32_e32 v90, v0, v79
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v0, v78, v81
	v_rcp_f32_e32 v85, v80
	v_fmac_f32_e32 v92, v87, v92
	v_div_scale_f32 v87, s12, v34, v76, v34
	v_div_fmas_f32 v77, v77, v86, v82
	v_fma_f32 v82, -v88, v90, v83
	v_div_scale_f32 v91, null, v76, v76, v47
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v83, -v84, v0, v78
	v_mul_f32_e32 v86, v87, v92
	v_div_fmas_f32 v79, v82, v79, v90
	v_rcp_f32_e32 v82, v91
	v_fma_f32 v88, -v80, v85, 1.0
	v_fmac_f32_e32 v0, v83, v81
	v_fma_f32 v83, -v89, v86, v87
	v_div_fixup_f32 v40, v79, v76, v40
	v_div_fixup_f32 v45, v77, v76, v45
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s9, v52, v76, v52
	v_fmac_f32_e32 v86, v83, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v91, v82, 1.0
	v_div_scale_f32 v83, null, v76, v76, v41
	v_fma_f32 v77, -v84, v0, v78
	v_mul_f32_e32 v78, v88, v85
	v_fmac_f32_e32 v82, v79, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v83
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s10, v47, v76, v47
	v_div_fmas_f32 v0, v77, v81, v0
	v_fma_f32 v77, -v89, v86, v87
	v_fma_f32 v81, -v80, v78, v88
	v_div_scale_f32 v87, null, v76, v76, v38
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v83, v79, 1.0
	v_fmac_f32_e32 v78, v81, v85
	v_rcp_f32_e32 v81, v87
	v_div_fmas_f32 v77, v77, v92, v86
	v_mul_f32_e32 v86, v84, v82
	v_div_fixup_f32 v33, v0, v76, v33
	v_fma_f32 v0, -v80, v78, v88
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v76, v76, v15
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v34, v77, v76, v34
	v_fma_f32 v77, -v91, v86, v84
	v_div_scale_f32 v80, s11, v41, v76, v41
	v_fma_f32 v88, -v87, v81, 1.0
	v_div_fmas_f32 v0, v0, v85, v78
	v_rcp_f32_e32 v78, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v77, v82 :: v_dual_mul_f32 v77, v80, v79
	v_fmac_f32_e32 v81, v88, v81
	v_div_scale_f32 v85, s9, v38, v76, v38
	v_div_scale_f32 v88, null, v76, v76, v59
	v_div_fixup_f32 v52, v0, v76, v52
	v_fma_f32 v0, -v91, v86, v84
	v_fma_f32 v84, -v83, v77, v80
	v_mul_f32_e32 v90, v85, v81
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v77, v84, v79
	v_div_fmas_f32 v0, v0, v82, v86
	v_fma_f32 v82, -v87, v90, v85
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s10, v15, v76, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v47, v0, v76, v47
	v_fma_f32 v86, -v88, v91, 1.0
	v_fma_f32 v0, -v83, v77, v80
	v_fmac_f32_e32 v90, v82, v81
	v_mul_f32_e32 v80, v84, v78
	v_div_scale_f32 v83, null, v76, v76, v51
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v91, v86, v91
	v_div_scale_f32 v82, s12, v59, v76, v59
	v_div_fmas_f32 v0, v0, v79, v77
	v_fma_f32 v77, -v87, v90, v85
	v_fma_f32 v79, -v89, v80, v84
	v_rcp_f32_e32 v85, v83
	v_div_scale_f32 v87, null, v76, v76, v50
	v_mul_f32_e32 v86, v82, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v79, v78
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v79, v87
	v_div_fmas_f32 v77, v77, v81, v90
	v_fma_f32 v81, -v88, v86, v82
	v_div_fixup_f32 v41, v0, v76, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v83, v85, 1.0
	v_fma_f32 v0, -v89, v80, v84
	v_div_fixup_f32 v38, v77, v76, v38
	v_fmac_f32_e32 v86, v81, v91
	v_div_scale_f32 v77, s9, v51, v76, v51
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v81, -v87, v79, 1.0
	v_div_scale_f32 v84, null, v76, v76, v42
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v92, null, v76, v76, v12
	v_div_fmas_f32 v0, v0, v78, v80
	v_fma_f32 v78, -v88, v86, v82
	v_mul_f32_e32 v80, v77, v85
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v82, s10, v50, v76, v50
	v_div_scale_f32 v88, null, v76, v76, v14
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v89, v82, v79
	v_div_fmas_f32 v78, v78, v91, v86
	v_fma_f32 v86, -v83, v80, v77
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v84, v81, 1.0
	v_div_fixup_f32 v15, v0, v76, v15
	v_fma_f32 v0, -v87, v89, v82
	v_fmac_f32_e32 v80, v86, v85
	v_div_fixup_f32 v59, v78, v76, v59
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v78, s11, v42, v76, v42
	v_div_scale_f32 v86, null, v76, v76, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v90, -v88, v91, 1.0
	v_fma_f32 v77, -v83, v80, v77
	v_fmac_f32_e32 v89, v0, v79
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v0, v78, v81
	v_rcp_f32_e32 v83, v86
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s12, v14, v76, v14
	v_div_fmas_f32 v77, v77, v85, v80
	v_fma_f32 v80, -v87, v89, v82
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v84, v0, v78
	v_mul_f32_e32 v85, v90, v91
	v_div_fixup_f32 v51, v77, v76, v51
	v_div_fmas_f32 v79, v80, v79, v89
	v_rcp_f32_e32 v80, v92
	v_fma_f32 v87, -v86, v83, 1.0
	v_fmac_f32_e32 v0, v82, v81
	v_fma_f32 v82, -v88, v85, v90
	v_div_fixup_f32 v50, v79, v76, v50
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v83, v87, v83
	v_div_scale_f32 v87, s9, v13, v76, v13
	v_fmac_f32_e32 v85, v82, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v92, v80, 1.0
	v_div_scale_f32 v82, null, v75, v75, v56
	v_fma_f32 v77, -v84, v0, v78
	v_mul_f32_e32 v78, v87, v83
	v_fmac_f32_e32 v80, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v84, s10, v12, v76, v12
	v_div_fmas_f32 v0, v77, v81, v0
	v_fma_f32 v77, -v88, v85, v90
	v_fma_f32 v81, -v86, v78, v87
	v_div_scale_f32 v88, null, v75, v75, v53
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v42, v0, v76, v42
	v_fmac_f32_e32 v78, v81, v83
	v_rcp_f32_e32 v81, v88
	v_fma_f32 v89, -v82, v79, 1.0
	v_div_fmas_f32 v77, v77, v91, v85
	v_mul_f32_e32 v85, v84, v80
	v_fma_f32 v0, -v86, v78, v87
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v75, v75, v43
	v_div_fixup_f32 v14, v77, v76, v14
	v_fma_f32 v77, -v92, v85, v84
	v_div_scale_f32 v86, s11, v56, v75, v56
	v_fma_f32 v87, -v88, v81, 1.0
	v_div_fmas_f32 v0, v0, v83, v78
	v_rcp_f32_e32 v78, v89
	v_fmac_f32_e32 v85, v77, v80
	v_mul_f32_e32 v77, v86, v79
	v_fmac_f32_e32 v81, v87, v81
	v_div_scale_f32 v83, s9, v53, v75, v53
	v_div_scale_f32 v87, null, v75, v75, v44
	v_div_fixup_f32 v13, v0, v76, v13
	v_fma_f32 v0, -v92, v85, v84
	v_fma_f32 v84, -v82, v77, v86
	v_mul_f32_e32 v90, v83, v81
	v_rcp_f32_e32 v91, v87
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v77, v84, v79
	v_div_fmas_f32 v0, v0, v80, v85
	v_fma_f32 v80, -v88, v90, v83
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s10, v43, v75, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v12, v0, v76, v12
	v_fma_f32 v85, -v87, v91, 1.0
	v_fma_f32 v0, -v82, v77, v86
	v_fmac_f32_e32 v90, v80, v81
	v_mul_f32_e32 v76, v84, v78
	v_div_scale_f32 v82, null, v75, v75, v68
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v91, v85, v91
	v_div_scale_f32 v80, s12, v44, v75, v44
	v_div_fmas_f32 v0, v0, v79, v77
	v_fma_f32 v77, -v88, v90, v83
	v_fma_f32 v79, -v89, v76, v84
	v_rcp_f32_e32 v83, v82
	v_div_scale_f32 v86, null, v75, v75, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v85, v80, v91 :: v_dual_fmac_f32 v76, v79, v78
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v79, v86
	v_div_fmas_f32 v77, v77, v81, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v81, -v87, v85, v80
	v_div_fixup_f32 v56, v0, v75, v56
	v_fma_f32 v88, -v82, v83, 1.0
	v_fma_f32 v0, -v89, v76, v84
	v_div_fixup_f32 v53, v77, v75, v53
	v_fmac_f32_e32 v85, v81, v91
	v_div_scale_f32 v77, s9, v68, v75, v68
	v_fmac_f32_e32 v83, v88, v83
	v_fma_f32 v81, -v86, v79, 1.0
	v_div_scale_f32 v84, null, v75, v75, v55
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v78, v76
	v_fma_f32 v76, -v87, v85, v80
	v_mul_f32_e32 v78, v77, v83
	v_fmac_f32_e32 v79, v81, v79
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v81, s10, v60, v75, v60
	v_div_scale_f32 v87, null, v75, v75, v54
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v88, v81, v79
	v_div_fmas_f32 v76, v76, v91, v85
	v_fma_f32 v85, -v82, v78, v77
	v_rcp_f32_e32 v90, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v80, 1.0
	v_div_fixup_f32 v43, v0, v75, v43
	v_fma_f32 v0, -v86, v88, v81
	v_fmac_f32_e32 v78, v85, v83
	v_div_scale_f32 v85, null, v75, v75, v11
	v_div_fixup_f32 v44, v76, v75, v44
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v76, s11, v55, v75, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v77, -v82, v78, v77
	v_fmac_f32_e32 v88, v0, v79
	v_rcp_f32_e32 v82, v85
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v0, v76, v80
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s12, v54, v75, v54
	v_div_fmas_f32 v77, v77, v83, v78
	v_fma_f32 v78, -v86, v88, v81
	v_div_scale_f32 v91, null, v75, v75, v70
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v81, -v84, v0, v76
	v_mul_f32_e32 v83, v89, v90
	v_fma_f32 v86, -v85, v82, 1.0
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	v_fmac_f32_e32 v0, v81, v80
	v_fma_f32 v81, -v87, v83, v89
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s9, v11, v75, v11
	v_div_fixup_f32 v68, v77, v75, v68
	v_div_fixup_f32 v60, v78, v75, v60
	v_fma_f32 v76, -v84, v0, v76
	v_fmac_f32_e32 v83, v81, v90
	v_mul_f32_e32 v77, v86, v82
	v_fma_f32 v78, -v91, v79, 1.0
	v_div_scale_f32 v81, null, v75, v75, v63
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v84, s10, v70, v75, v70
	v_div_fmas_f32 v0, v76, v80, v0
	v_fma_f32 v76, -v87, v83, v89
	v_fma_f32 v80, -v85, v77, v86
	v_fmac_f32_e32 v79, v78, v79
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v87, null, v75, v75, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v77, v80, v82
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v0, v0, v75, v55
	v_rcp_f32_e32 v80, v87
	v_div_fmas_f32 v76, v76, v90, v83
	v_mul_f32_e32 v83, v84, v79
	v_fma_f32 v55, -v85, v77, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v78, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v54, v76, v75, v54
	v_fma_f32 v76, -v91, v83, v84
	v_div_scale_f32 v85, s11, v63, v75, v63
	v_fmac_f32_e32 v78, v88, v78
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v88, null, v75, v75, v46
	v_div_fmas_f32 v55, v55, v82, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v83, v76, v79 :: v_dual_fmac_f32 v80, v86, v80
	v_rcp_f32_e32 v77, v88
	v_div_scale_f32 v86, null, v75, v75, v10
	v_mul_f32_e32 v76, v85, v78
	v_div_scale_f32 v82, s9, v62, v75, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v90, v86
	v_div_fixup_f32 v11, v55, v75, v11
	v_fma_f32 v55, -v91, v83, v84
	v_fma_f32 v84, -v81, v76, v85
	v_mul_f32_e32 v89, v82, v80
	v_fma_f32 v91, -v88, v77, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v55, v55, v79, v83
	v_fmac_f32_e32 v76, v84, v78
	v_fma_f32 v79, -v87, v89, v82
	v_fmac_f32_e32 v77, v91, v77
	v_div_scale_f32 v83, s10, v46, v75, v46
	v_fma_f32 v84, -v86, v90, 1.0
	v_div_fixup_f32 v55, v55, v75, v70
	v_fma_f32 v70, -v81, v76, v85
	v_fmac_f32_e32 v89, v79, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v79, v83, v77 :: v_dual_fmac_f32 v90, v84, v90
	v_div_scale_f32 v84, null, v75, v75, v8
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v81, s12, v10, v75, v10
	v_div_fmas_f32 v70, v70, v78, v76
	v_fma_f32 v76, -v87, v89, v82
	v_fma_f32 v78, -v88, v79, v83
	v_rcp_f32_e32 v82, v84
	v_div_scale_f32 v87, null, v75, v75, v9
	v_mul_f32_e32 v85, v81, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v78, v77
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v78, v87
	v_div_fmas_f32 v76, v76, v80, v89
	v_fma_f32 v80, -v86, v85, v81
	v_div_fixup_f32 v63, v70, v75, v63
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v84, v82, 1.0
	v_fma_f32 v70, -v88, v79, v83
	v_div_fixup_f32 v62, v76, v75, v62
	v_fmac_f32_e32 v85, v80, v90
	v_div_scale_f32 v76, s9, v8, v75, v8
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v80, -v87, v78, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, null, v74, v74, v64
	v_div_fmas_f32 v70, v70, v77, v79
	v_fma_f32 v77, -v86, v85, v81
	v_mul_f32_e32 v79, v76, v82
	v_fmac_f32_e32 v78, v80, v78
	v_div_scale_f32 v80, null, v74, v74, v65
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v81, s10, v9, v75, v9
	v_div_fmas_f32 v77, v77, v90, v85
	v_rcp_f32_e32 v83, v80
	v_fma_f32 v85, -v84, v79, v76
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v86, v81, v78
	v_div_fixup_f32 v46, v70, v75, v46
	v_div_fixup_f32 v10, v77, v75, v10
	v_rcp_f32_e32 v77, v88
	v_fmac_f32_e32 v79, v85, v82
	v_fma_f32 v70, -v87, v86, v81
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v74, v74, v58
	v_fma_f32 v85, -v80, v83, 1.0
	v_fma_f32 v76, -v84, v79, v76
	v_div_scale_f32 v84, null, v74, v74, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v70, v78 :: v_dual_fmac_f32 v83, v85, v83
	v_div_fmas_f32 v76, v76, v82, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v84
	v_div_scale_f32 v70, s11, v65, v74, v65
	v_fma_f32 v79, -v87, v86, v81
	v_fma_f32 v89, -v88, v77, 1.0
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v70, v83
	v_div_scale_f32 v82, s9, v64, v74, v64
	v_fmac_f32_e32 v77, v89, v77
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v87, -v84, v85, 1.0
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v78, v79, v78, v86
	v_fma_f32 v89, -v80, v81, v70
	v_mul_f32_e32 v91, v82, v77
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s12, v61, v74, v61
	v_div_fixup_f32 v8, v76, v75, v8
	v_div_fixup_f32 v9, v78, v75, v9
	v_div_scale_f32 v78, null, v74, v74, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v86, v87, v85 :: v_dual_fmac_f32 v81, v89, v83
	v_fma_f32 v79, -v88, v91, v82
	v_fma_f32 v76, -v90, v92, 1.0
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v75, -v84, v86, v87
	v_fma_f32 v70, -v80, v81, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v91, v79, v77 :: v_dual_fmac_f32 v92, v76, v92
	v_div_scale_f32 v76, s10, v58, v74, v58
	v_fmac_f32_e32 v86, v75, v85
	v_rcp_f32_e32 v75, v78
	v_div_fmas_f32 v70, v70, v83, v81
	v_fma_f32 v79, -v88, v91, v82
	v_mul_f32_e32 v80, v76, v92
	v_div_scale_f32 v81, null, v74, v74, v71
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v65, v70, v74, v65
	v_div_fmas_f32 v77, v79, v77, v91
	v_fma_f32 v79, -v84, v86, v87
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v78, v75, 1.0
	v_rcp_f32_e32 v83, v81
	v_fma_f32 v84, -v90, v80, v76
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v64, v77, v74, v64
	v_fmac_f32_e32 v75, v82, v75
	v_div_scale_f32 v82, s9, v73, v74, v73
	v_fmac_f32_e32 v80, v84, v92
	v_div_fmas_f32 v79, v79, v85, v86
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v70, v82, v75
	v_fma_f32 v77, -v81, v83, 1.0
	v_fma_f32 v76, -v90, v80, v76
	v_div_fixup_f32 v61, v79, v74, v61
	v_div_scale_f32 v79, null, v74, v74, v67
	v_fma_f32 v84, -v78, v70, v82
	v_fmac_f32_e32 v83, v77, v83
	v_div_scale_f32 v77, s11, v71, v74, v71
	v_div_fmas_f32 v76, v76, v92, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v84, v75
	v_rcp_f32_e32 v85, v79
	v_mul_f32_e32 v80, v77, v83
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v58, v76, v74, v58
	v_fma_f32 v76, -v78, v70, v82
	v_div_scale_f32 v84, null, v74, v74, v66
	v_fma_f32 v78, -v81, v80, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v76, v75, v70
	v_div_scale_f32 v75, null, v74, v74, v7
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v75
	v_div_scale_f32 v76, s9, v67, v74, v67
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v74, v74, v72
	v_div_fixup_f32 v70, v70, v74, v73
	v_fma_f32 v77, -v81, v80, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v75, v78, 1.0
	v_mul_f32_e32 v81, v76, v85
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v73, v86
	v_div_scale_f32 v73, s10, v66, v74, v66
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v74, v74, v69
	v_div_fmas_f32 v77, v77, v83, v80
	v_fma_f32 v80, -v79, v81, v76
	v_mul_f32_e32 v83, v73, v86
	v_div_scale_f32 v89, s11, v7, v74, v7
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v73
	v_mul_f32_e32 v92, v89, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s12, v72, v74, v72
	v_div_fixup_f32 v71, v77, v74, v71
	v_fma_f32 v76, -v79, v81, v76
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v77, -v75, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v73, -v84, v83, v73
	v_fmac_f32_e32 v92, v77, v78
	v_fma_f32 v77, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s9, v69, v74, v69
	v_div_fmas_f32 v76, v76, v85, v81
	v_fma_f32 v75, -v75, v92, v89
	v_fmac_f32_e32 v79, v77, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v77, v80, v91
	v_div_scale_f32 v81, null, v74, v74, v57
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v67, v76, v74, v67
	v_div_fmas_f32 v73, v73, v86, v83
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v83, v81
	v_div_fmas_f32 v75, v75, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	v_fma_f32 v82, -v87, v77, v80
	v_div_fixup_f32 v66, v73, v74, v66
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v7, v75, v74, v7
	v_div_fmas_f32 v78, v78, v88, v79
	v_fmac_f32_e32 v77, v82, v91
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v76, -v81, v83, 1.0
	v_div_scale_f32 v75, null, v74, v74, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v87, v77, v80
	v_div_fixup_f32 v72, v78, v74, v72
	v_fmac_f32_e32 v83, v76, v83
	v_div_scale_f32 v78, null, v74, v74, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v73, v73, v91, v77
	v_div_scale_f32 v79, vcc_lo, v57, v74, v57
	v_rcp_f32_e32 v77, v75
	v_div_scale_f32 v85, null, v74, v74, v6
	v_mul_f32_e32 v84, v79, v83
	v_div_fixup_f32 v69, v73, v74, v69
	v_rcp_f32_e32 v82, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v87, v85
	v_div_scale_f32 v76, null, v74, v74, v4
	v_fma_f32 v88, -v81, v84, v79
	v_fma_f32 v73, -v75, v77, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v80, v76
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v84, v88, v83 :: v_dual_fmac_f32 v77, v73, v77
	v_div_scale_f32 v73, s9, v49, v74, v49
	v_fma_f32 v89, -v78, v82, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v79, -v81, v84, v79
	v_fma_f32 v91, -v85, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v76, v80, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fmac_f32_e32 v87, v91, v87
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v91, s12, v6, v74, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s9, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cvt_i32_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v73, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s11, v5, v74, v5
	v_fma_f32 v88, -v75, v90, v73
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v94, v91, v87 :: v_dual_mul_f32 v93, v89, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v88, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v78, v93, v89
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v75, v90, v73
	v_fma_f32 v75, -v85, v94, v91
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v12, v12, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v88, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s9, 0x40e00000
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s10, v4, v74, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v75, v87
	v_div_fmas_f32 v73, v73, v77, v90
	v_fma_f32 v75, -v78, v93, v89
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v85, v94, v91
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_cvt_i32_f32_e32 v78, v12
	v_cvt_i32_f32_e32 v85, v9
	v_and_b32_e32 v9, 15, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v92, v86, v80 :: v_dual_and_b32 v35, 15, v38
	v_div_fixup_f32 v57, v79, v74, v57
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_cvt_i32_f32_e32 v79, v43
	v_and_b32_e32 v43, 15, v78
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v76, v92, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v81, v80
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v38, 15, v51
	v_and_b32_e32 v51, 15, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v76, -v76, v92, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v80, v92
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v21, v21, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v82, v93
	s_mov_b32 vcc_lo, s12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v87, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v0, v0, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v6, v77, v74, v6
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v14, v14, s9, 0x40e00000
	v_med3_f32 v7, v7, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v0, v0
	v_med3_f32 v6, v6, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v49, v73, v74, v49
	v_div_fixup_f32 v4, v76, v74, v4
	v_div_fixup_f32 v5, v75, v74, v5
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v58, v58
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_cvt_i32_f32_e32 v76, v14
	v_cvt_i32_f32_e32 v89, v7
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v95, v6
	v_and_b32_e32 v6, 15, v21
	v_and_b32_e32 v7, 15, v24
	v_and_b32_e32 v14, 15, v39
	v_and_b32_e32 v39, 15, v50
	v_and_b32_e32 v50, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v191
	v_and_b32_e32 v21, 16, v191
	v_lshlrev_b32_e32 v24, 4, v96
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v5, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_cvt_i32_f32_e32 v90, v69
	v_and_b32_e32 v69, 15, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v72, 6, v21
	v_xor_b32_e32 v24, v24, v27
	v_lshlrev_b32_e32 v27, 6, v191
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v11, v11, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v10, v10, s9, 0x40e00000
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v4, v4, s9, 0x40e00000
	v_med3_f32 v5, v5, s9, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v80, v44
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v86, v61
	v_cvt_i32_f32_e32 v87, v58
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v72
	v_and_or_b32 v23, 0x1b00, v27, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s9, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v73, v16
	v_cvt_i32_f32_e32 v74, v17
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v75, v15
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v81, v11
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v91, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v46
	v_cvt_i32_f32_e32 v83, v10
	v_cvt_i32_f32_e32 v84, v8
	v_cvt_i32_f32_e32 v92, v49
	v_cvt_i32_f32_e32 v93, v4
	v_cvt_i32_f32_e32 v94, v5
	v_and_b32_e32 v4, 15, v32
	v_and_b32_e32 v5, 15, v28
	v_and_b32_e32 v8, 15, v36
	v_and_b32_e32 v10, 15, v30
	v_and_b32_e32 v11, 15, v29
	v_and_b32_e32 v16, 15, v31
	v_and_b32_e32 v28, 15, v45
	v_and_b32_e32 v29, 15, v40
	v_and_b32_e32 v30, 15, v33
	v_and_b32_e32 v31, 15, v34
	v_and_b32_e32 v33, 15, v47
	v_and_b32_e32 v44, 15, v56
	v_and_b32_e32 v45, 15, v53
	v_and_b32_e32 v46, 15, v79
	v_and_b32_e32 v47, 15, v80
	v_and_b32_e32 v49, 15, v60
	v_and_b32_e32 v54, 15, v63
	v_and_b32_e32 v60, 15, v65
	v_and_b32_e32 v61, 15, v64
	v_and_b32_e32 v63, 15, v87
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v24, v25
	v_xad_u32 v23, v23, v97, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v53, 15, v55
	v_and_b32_e32 v55, 15, v62
	v_and_b32_e32 v62, 15, v86
	v_cvt_i32_f32_e32 v77, v13
	v_and_b32_e32 v12, 15, v19
	v_and_b32_e32 v13, 15, v48
	v_and_b32_e32 v15, 15, v37
	v_and_b32_e32 v17, 15, v18
	v_and_b32_e32 v18, 15, v73
	v_and_b32_e32 v19, 15, v74
	v_and_b32_e32 v32, 15, v52
	v_and_b32_e32 v36, 15, v75
	v_and_b32_e32 v37, 15, v59
	v_and_b32_e32 v48, 15, v68
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v64, 15, v70
	v_and_b32_e32 v65, 15, v71
	v_and_b32_e32 v68, 15, v89
	v_and_b32_e32 v70, 15, v90
	v_and_b32_e32 v71, 15, v91
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[4:7]
	ds_store_b128 v0, v[12:15] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v23
	ds_load_b128 v[12:15], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[28:31]
	ds_store_b128 v0, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v23
	ds_load_b128 v[36:39], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[44:47]
	ds_store_b128 v0, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v23
	ds_load_b128 v[52:55], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[60:63]
	ds_store_b128 v0, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[60:63], v23
	ds_load_b128 v[68:71], v23 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[8:11]
	ds_store_b128 v0, v[16:19] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v23
	ds_load_b128 v[16:19], v23 offset:1024
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_and_b32_e32 v34, 15, v41
	v_and_b32_e32 v40, 15, v42
	v_and_b32_e32 v41, 15, v76
	v_and_b32_e32 v42, 15, v77
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v88, v66
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v23
	ds_load_b128 v[40:43], v23 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v56, 15, v82
	v_and_b32_e32 v57, 15, v83
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v66, 15, v67
	v_and_b32_e32 v67, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[48:51]
	ds_store_b128 v0, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v23
	ds_load_b128 v[56:59], v23 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v72, 15, v92
	v_and_b32_e32 v73, 15, v93
	v_and_b32_e32 v74, 15, v94
	v_and_b32_e32 v75, 15, v95
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v11, v19, 4, v11
	v_lshl_or_b32 v19, v38, 4, v29
	v_lshl_or_b32 v29, v52, 4, v44
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v44, 3, v96
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v4, v12, 4, v4
	v_lshl_or_b32 v12, v14, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v6, s28, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v23
	ds_load_b128 v[72:75], v23 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s37, 7, v44
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v14, v16, 4, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, 16, v6
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	v_lshl_or_b32 v15, v17, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 32, v6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v18, 4, v10
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 48, v6
	v_mad_u64_u32 v[6:7], null, v6, s9, v[0:1]
	v_mad_u64_u32 v[7:8], null, v8, s9, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s9, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v17, v36, 4, v27
	v_lshl_or_b32 v18, v37, 4, v28
	v_lshl_or_b32 v24, v40, 4, v31
	v_lshl_or_b32 v25, v41, 4, v32
	v_lshl_or_b32 v27, v42, 4, v33
	v_lshl_or_b32 v28, v43, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[9:10], null, v10, s9, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v0.h, 0xff, v12.l
	v_lshlrev_b16 v1.l, 8, v5.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v11.l
	v_and_b16 v4.h, 0xff, v16.l
	v_lshlrev_b16 v5.l, 8, v15.l
	v_and_b16 v5.h, 0xff, v14.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v23, v39, 4, v30
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	v_lshl_or_b32 v35, v58, 4, v50
	v_lshl_or_b32 v36, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_lshlrev_b16 v4.l, 8, v28.l
	v_and_b16 v4.h, 0xff, v27.l
	v_lshlrev_b16 v5.l, 8, v25.l
	v_and_b16 v5.h, 0xff, v24.l
	s_mov_b32 s12, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v53, 4, v45
	v_lshl_or_b32 v31, v54, 4, v46
	v_lshl_or_b32 v32, v55, 4, v47
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v41, v72, 4, v64
	v_lshl_or_b32 v42, v73, 4, v65
	v_lshl_or_b32 v43, v74, 4, v66
	v_lshl_or_b32 v22, v75, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v23.l
	v_and_b16 v0.h, 0xff, v19.l
	v_lshlrev_b16 v1.l, 8, v18.l
	v_and_b16 v2.l, 0xff, v17.l
	buffer_store_b64 v[10:11], v6, s[12:15], 0 offen
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v36.l
	v_and_b16 v4.h, 0xff, v35.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v5.h, 0xff, v33.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v37, v68, 4, v60
	v_lshl_or_b32 v38, v69, 4, v61
	v_lshl_or_b32 v39, v70, 4, v62
	v_lshl_or_b32 v40, v71, 4, v63
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v6, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v0.l, 8, v32.l
	v_and_b16 v0.h, 0xff, v31.l
	v_lshlrev_b16 v1.l, 8, v30.l
	v_and_b16 v2.l, 0xff, v29.l
	v_or_b16 v7.h, v4.h, v4.l
	v_or_b16 v7.l, v5.h, v5.l
	v_lshlrev_b16 v4.l, 8, v22.l
	v_and_b16 v4.h, 0xff, v43.l
	v_lshlrev_b16 v5.l, 8, v42.l
	v_and_b16 v5.h, 0xff, v41.l
	buffer_store_b64 v[10:11], v6, s[12:15], 0 offen
	v_or_b16 v6.h, v0.h, v0.l
	v_or_b16 v6.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v40.l
	v_and_b16 v0.h, 0xff, v39.l
	v_lshlrev_b16 v1.l, 8, v38.l
	v_and_b16 v2.l, 0xff, v37.l
	v_or_b16 v11.h, v4.h, v4.l
	v_or_b16 v11.l, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v191
	v_lshrrev_b32_e32 v5, 2, v21
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.h, v0.h, v0.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v10.l, v2.l, v1.l
	v_cndmask_b32_e32 v0, 0x80000000, v9, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[6:7], v8, s[12:15], 0 offen
	buffer_store_b64 v[10:11], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v44
	v_mov_b16_e32 v2.l, v26.h
	v_mov_b16_e32 v1.l, v20.h
	v_add3_u32 v4, v5, v4, v44
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v191
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s37, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp64:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 1148
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
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 1148
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 34708
; TotalNumSgprs: 42
; NumVgprs: 256
; ScratchSize: 1148
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
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
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 1148
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc128_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 302
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
