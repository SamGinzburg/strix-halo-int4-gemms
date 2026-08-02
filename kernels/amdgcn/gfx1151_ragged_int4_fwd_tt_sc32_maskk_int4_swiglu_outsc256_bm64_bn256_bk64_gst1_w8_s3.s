	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
	v_mov_b32_e32 v203, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v77, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v201, 4, v203
	v_lshlrev_b32_e32 v38, 4, v203
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
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
	s_sub_i32 s5, s41, s4
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
	v_and_b32_e32 v0, 63, v203
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
	s_sub_i32 s41, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s41, s5
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
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[36:37], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s34, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s2
	v_add_nc_u32_e32 v17, s34, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[1:2]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v203
	v_and_b32_e32 v2, 0x80, v203
	v_lshlrev_b32_e32 v13, 4, v203
.Ltmp4:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v4, 16, v203
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr13
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow695
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v211, 15, v203
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v204, 0xf0, v203
	v_or_b32_e32 v74, 16, v201
	v_or_b32_e32 v75, 32, v201
	v_or_b32_e32 v76, 48, v201
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v202, 0xc0, v203
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v181, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v205, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v213, 0
	v_dual_mov_b32 v212, 0 :: v_dual_mov_b32 v215, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v223, 0
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v222, 0 :: v_dual_mov_b32 v219, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v209, 0
	v_mov_b32_e32 v208, 0
	v_mov_b32_e32 v210, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s42, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	v_mov_b32_e32 v68, 0
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[1:2]
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s2, s4
	s_addc_u32 s7, s3, s5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[1:2]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_add_nc_u32_e32 v1, s34, v211
	v_bfe_i32 v34, v203, 3, 1
	s_clause 0x1
	s_load_b32 s43, s[0:1], 0x58
	s_load_b32 s44, s[0:1], 0x50
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[3:4]
	v_dual_mov_b32 v219, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v218, 0 :: v_dual_add_nc_u32 v3, 32, v1
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v4, 48, v1
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v1, v1, s40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v2, v2, s40
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s7, s[6:7], 0x0
	v_dual_mov_b32 v177, 0 :: v_dual_and_b32 v34, 0x88, v34
	v_dual_mov_b32 v220, 0 :: v_dual_and_b32 v37, 0x70, v38
	v_bfe_i32 v35, v203, 4, 1
	v_dual_mov_b32 v175, 0 :: v_dual_lshlrev_b32 v36, 3, v203
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v40, 4, v202
	.loc	1 1045 36                       ; ragged.py:1045:36
	scratch_store_b32 off, v1, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v41, v34, v37
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v2, off offset:160 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, v3, s40
	v_dual_mov_b32 v208, 0 :: v_dual_and_b32 v35, 0x108, v35
	v_bfe_i32 v39, v203, 7, 1
	v_dual_mov_b32 v171, 0 :: v_dual_and_b32 v36, 0x700, v36
	scratch_store_b32 off, v38, off offset:488 ; 4-byte Folded Spill
	v_dual_mov_b32 v173, 0 :: v_dual_and_b32 v38, 0x270, v38
	scratch_store_b32 off, v40, off offset:152 ; 4-byte Folded Spill
	v_xor3_b32 v35, v35, v40, v34
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v40, 0x7f, v203
	v_dual_mov_b32 v118, 0 :: v_dual_and_b32 v39, 0x88, v39
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[38:39], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[7:8]
	v_or3_b32 v42, v37, v36, v34
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	scratch_store_b32 off, v2, off offset:164 ; 4-byte Folded Spill
	v_mul_lo_u32 v2, v4, s40
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s3, s41, 8
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s45, s33, 1
	.loc	1 1045 36                       ; ragged.py:1045:36
	v_or_b32_e32 v1, s3, v201
	v_dual_mov_b32 v179, 0 :: v_dual_add_nc_u32 v0, 0, v0
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v34, 0, v38
	v_xor_b32_e32 v38, v39, v40
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v40, 2, v202
	v_or_b32_e32 v45, s3, v203
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s43, s45
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s6
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s6, s4, s7
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v2, off offset:168 ; 4-byte Folded Spill
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v0, v0, v40
	scratch_store_b32 off, v45, off offset:180 ; 4-byte Folded Spill
	v_mad_u64_u32 v[45:46], null, v1, s43, s[6:7]
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v26, s3, v75
	v_or_b32_e32 v27, s3, v74
	scratch_store_b32 off, v41, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v2, 0xf0, v1
	v_or_b32_e32 v25, s3, v76
	v_dual_mov_b32 v172, 0 :: v_dual_add_nc_u32 v31, s33, v26
	v_dual_mov_b32 v183, 0 :: v_dual_add_nc_u32 v32, s33, v27
	scratch_store_b64 off, v[45:46], off offset:184 ; 8-byte Folded Spill
	v_mad_u64_u32 v[45:46], null, v27, s43, s[6:7]
	v_mad_u64_u32 v[26:27], null, v26, s43, s[6:7]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[5:6]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xe0, v1
	v_or_b32_e32 v4, 0xd0, v1
	v_or_b32_e32 v5, 0xc0, v1
	v_or_b32_e32 v6, 0xb0, v1
	v_dual_mov_b32 v222, 0 :: v_dual_add_nc_u32 v7, s33, v2
	v_or_b32_e32 v12, 0xa0, v1
	v_or_b32_e32 v13, 0x90, v1
	v_or_b32_e32 v14, 0x80, v1
	v_or_b32_e32 v15, 0x70, v1
	v_or_b32_e32 v16, 0x60, v1
	v_or_b32_e32 v23, 0x50, v1
	v_or_b32_e32 v24, 64, v1
	v_dual_mov_b32 v221, 0 :: v_dual_add_nc_u32 v30, s33, v25
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v33, s33, v1
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b32 off, v42, off offset:176
	scratch_store_b64 off, v[45:46], off offset:192
	scratch_store_b64 off, v[26:27], off offset:200
	v_mad_u64_u32 v[25:26], null, v25, s43, s[6:7]
	v_mad_u64_u32 v[1:2], null, s43, v2, s[6:7]
	v_xor_b32_e32 v36, 8, v41
	v_xor_b32_e32 v37, 0x108, v41
	v_dual_mov_b32 v112, 0 :: v_dual_lshlrev_b32 v41, 5, v203
	v_xor_b32_e32 v39, 8, v42
	v_or_b32_e32 v42, 0x3f0, v203
	v_dual_mov_b32 v180, 0 :: v_dual_lshlrev_b32 v43, 2, v204
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v44, 1, v203
	v_dual_mov_b32 v178, 0 :: v_dual_and_b32 v41, 32, v41
	v_dual_mov_b32 v176, 0 :: v_dual_add_nc_u32 v29, s33, v24
	scratch_store_b64 off, v[25:26], off offset:208 ; 8-byte Folded Spill
	v_mad_u64_u32 v[24:25], null, s43, v24, s[6:7]
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_dual_mov_b32 v119, 0 :: v_dual_add_nc_u32 v0, 0, v42
	scratch_store_b64 off, v[1:2], off offset:304 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v33, s43, s[6:7]
	v_dual_mov_b32 v73, 0 :: v_dual_and_b32 v44, 28, v44
	v_add3_u32 v41, 0, v43, v41
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v28, s33, v23
	scratch_store_b64 off, v[24:25], off offset:216 ; 8-byte Folded Spill
	v_mad_u64_u32 v[23:24], null, s43, v23, s[6:7]
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v0, v41, v44
	scratch_store_b64 off, v[1:2], off offset:312 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v32, s43, s[6:7]
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v21, s33, v15
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v22, s33, v16
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[23:24], off offset:224
	scratch_store_b32 off, v203, off offset:468
	scratch_store_b64 off, v[1:2], off offset:320
	v_mad_u64_u32 v[23:24], null, s43, v16, s[6:7]
	v_mad_u64_u32 v[15:16], null, s43, v15, s[6:7]
	v_mad_u64_u32 v[1:2], null, v31, s43, s[6:7]
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v20, s33, v14
	scratch_store_b64 off, v[23:24], off offset:232 ; 8-byte Folded Spill
	v_dual_mov_b32 v212, 0 :: v_dual_add_nc_u32 v19, s33, v13
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[15:16], off offset:240
	scratch_store_b32 off, v204, off offset:472
	scratch_store_b64 off, v[1:2], off offset:328
	v_mad_u64_u32 v[14:15], null, s43, v14, s[6:7]
	v_mad_u64_u32 v[1:2], null, v30, s43, s[6:7]
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v18, s33, v12
	v_dual_mov_b32 v215, 0 :: v_dual_add_nc_u32 v10, s33, v5
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[14:15], off offset:248
	scratch_store_b32 off, v74, off offset:476
	scratch_store_b64 off, v[1:2], off offset:336
	v_mad_u64_u32 v[13:14], null, s43, v13, s[6:7]
	v_mad_u64_u32 v[1:2], null, v29, s43, s[6:7]
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v11, s33, v6
	v_dual_mov_b32 v214, 0 :: v_dual_add_nc_u32 v9, s33, v4
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[13:14], off offset:256
	scratch_store_b32 off, v75, off offset:480
	scratch_store_b64 off, v[1:2], off offset:344
	v_mad_u64_u32 v[12:13], null, s43, v12, s[6:7]
	v_mad_u64_u32 v[1:2], null, v28, s43, s[6:7]
	v_dual_mov_b32 v223, 0 :: v_dual_add_nc_u32 v8, s33, v3
	v_dual_mov_b32 v96, 0 :: v_dual_lshlrev_b32 v43, 1, v204
	v_mov_b32_e32 v174, 0
	s_clause 0x2                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[12:13], off offset:264
	scratch_store_b32 off, v76, off offset:484
	scratch_store_b64 off, v[1:2], off offset:352
	v_mad_u64_u32 v[12:13], null, s43, v6, s[6:7]
	v_mad_u64_u32 v[5:6], null, s43, v5, s[6:7]
	v_mad_u64_u32 v[1:2], null, v22, s43, s[6:7]
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v197, 0, v38
	v_mov_b32_e32 v120, 0
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[12:13], off offset:272
	scratch_store_b64 off, v[5:6], off offset:280
	v_mad_u64_u32 v[4:5], null, s43, v4, s[6:7]
	scratch_store_b64 off, v[1:2], off offset:360 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v21, s43, s[6:7]
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v226, 0, v43
	v_mov_b32_e32 v94, 0
	scratch_store_b64 off, v[4:5], off offset:288 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s43, v3, s[6:7]
	scratch_store_b64 off, v[1:2], off offset:368 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v20, s43, s[6:7]
	v_mov_b32_e32 v182, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v139, 0
	scratch_store_b64 off, v[3:4], off offset:296 ; 8-byte Folded Spill
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v137, 0
	scratch_store_b64 off, v[1:2], off offset:376 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v19, s43, s[6:7]
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v161, 0
	scratch_store_b64 off, v[1:2], off offset:384 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v18, s43, s[6:7]
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v159, 0
	scratch_store_b64 off, v[1:2], off offset:392 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v11, s43, s[6:7]
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v165, 0
	scratch_store_b64 off, v[1:2], off offset:400 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v10, s43, s[6:7]
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v129, 0
	scratch_store_b64 off, v[1:2], off offset:408 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v9, s43, s[6:7]
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v147, 0
	scratch_store_b64 off, v[1:2], off offset:416 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v8, s43, s[6:7]
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v143, 0
	scratch_store_b64 off, v[1:2], off offset:424 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, v7, s43, s[6:7]
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v105, 0
	scratch_store_b64 off, v[1:2], off offset:432 ; 8-byte Folded Spill
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v1, v34, v35
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v106, 0
	v_mov_b32_e32 v127, 0
	scratch_store_b32 off, v1, off offset:440 ; 4-byte Folded Spill
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v1, 0, v36
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v128, 0
	v_mov_b32_e32 v123, 0
	scratch_store_b32 off, v1, off offset:444 ; 4-byte Folded Spill
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v1, 0, v37
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v126, 0
	v_mov_b32_e32 v117, 0
	scratch_store_b32 off, v1, off offset:448 ; 4-byte Folded Spill
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v1, 0, v39
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v116, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_mov_b32_e32 v80, 0
	s_mov_b32 s4, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s46, s40, s7
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_mov_b32 s47, s4
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b32 off, v1, off offset:452
	scratch_store_b32 off, v0, off offset:464
	scratch_store_b32 off, v211, off offset:140
	scratch_store_b64 off, v[17:18], off offset:144
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v0, off, off offset:152 ; 4-byte Folded Reload
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s14, s47, 4
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_clause 0xc                            ; 52-byte Folded Spill
	scratch_store_b32 off, v69, off offset:48
	scratch_store_b32 off, v213, off offset:44
	scratch_store_b32 off, v68, off offset:40
	scratch_store_b32 off, v70, off offset:36
	scratch_store_b32 off, v71, off offset:32
	scratch_store_b32 off, v206, off offset:28
	scratch_store_b32 off, v98, off offset:24
	scratch_store_b32 off, v148, off offset:20
	scratch_store_b32 off, v205, off offset:16
	scratch_store_b32 off, v126, off offset:12
	scratch_store_b32 off, v135, off offset:8
	scratch_store_b32 off, v73, off offset:4
	scratch_store_b32 off, v154, off
	v_mov_b32_e32 v184, v168
	v_dual_mov_b32 v168, v153 :: v_dual_mov_b32 v213, v155
	v_mov_b32_e32 v153, v133
	v_mov_b32_e32 v133, v125
	v_dual_mov_b32 v155, v136 :: v_dual_mov_b32 v136, v127
	v_mov_b32_e32 v127, v119
	v_mov_b32_e32 v119, v115
	v_mov_b32_e32 v115, v101
	v_dual_mov_b32 v101, v94 :: v_dual_mov_b32 v94, v80
	v_mov_b32_e32 v207, v158
	v_mov_b32_e32 v158, v138
	v_mov_b32_e32 v138, v97
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s15, s23
	v_dual_mov_b32 v135, v181 :: v_dual_mov_b32 v154, v182
	v_mov_b32_e32 v126, v72
	v_mov_b32_e32 v182, v166
	v_mov_b32_e32 v166, v147
	v_dual_mov_b32 v147, v107 :: v_dual_mov_b32 v216, v208
	v_mov_b32_e32 v208, v175
	v_mov_b32_e32 v175, v159
	v_mov_b32_e32 v159, v139
	v_mov_b32_e32 v139, v82
	v_mov_b32_e32 v217, v209
	v_mov_b32_e32 v209, v177
	v_dual_mov_b32 v177, v160 :: v_dual_mov_b32 v160, v142
	v_mov_b32_e32 v142, v130
	v_dual_mov_b32 v130, v89 :: v_dual_mov_b32 v199, v132
	v_dual_mov_b32 v132, v91 :: v_dual_mov_b32 v125, v92
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v2, s14, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_mad_u64_u32 v[0:1], null, v2, s44, v[17:18]
	v_cmp_gt_i32_e64 s3, s43, v2
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v3, 0x80000000, v0, s3
	v_or_b32_e32 v0, 1, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s3, s43, v0
	v_mad_u64_u32 v[0:1], null, v0, s44, v[17:18]
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v4, 0x80000000, v0, s3
	v_or_b32_e32 v0, 2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s3, s43, v0
	v_mad_u64_u32 v[0:1], null, v0, s44, v[17:18]
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v5, 0x80000000, v0, s3
	v_or_b32_e32 v0, 3, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_cmp_gt_i32_e64 s3, s43, v0
	v_mad_u64_u32 v[0:1], null, v0, s44, v[17:18]
	s_and_b32 s3, s42, s3
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v233, v3, s[20:23], 0 offen
	buffer_load_u8 v234, v4, s[20:23], 0 offen
	buffer_load_u8 v235, v0, s[20:23], 0 offen
	buffer_load_u8 v236, v5, s[20:23], 0 offen
	s_clause 0xf                            ; 128-byte Folded Reload
	scratch_load_b64 v[2:3], off, off offset:184
	scratch_load_b64 v[3:4], off, off offset:192
	scratch_load_b64 v[4:5], off, off offset:200
	scratch_load_b64 v[5:6], off, off offset:208
	scratch_load_b64 v[6:7], off, off offset:216
	scratch_load_b64 v[7:8], off, off offset:224
	scratch_load_b64 v[8:9], off, off offset:232
	scratch_load_b64 v[9:10], off, off offset:240
	scratch_load_b64 v[10:11], off, off offset:248
	scratch_load_b64 v[11:12], off, off offset:256
	scratch_load_b64 v[12:13], off, off offset:264
	scratch_load_b64 v[13:14], off, off offset:272
	scratch_load_b64 v[14:15], off, off offset:280
	scratch_load_b64 v[15:16], off, off offset:288
	scratch_load_b64 v[16:17], off, off offset:296
	scratch_load_b64 v[17:18], off, off offset:304
	s_waitcnt vmcnt(18)
	v_lshlrev_b16 v0.l, 8, v234.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v1.l, v233.l, v0.l
	s_waitcnt vmcnt(17)
	v_lshlrev_b16 v0.l, 8, v235.l
	s_waitcnt vmcnt(16)
	v_or_b16 v1.h, v236.l, v0.l
	v_or_b32_e32 v0, s14, v211
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s14, s22
	s_waitcnt vmcnt(15)
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v2, v2, v0
	v_cmp_gt_i32_e64 s3, s43, v0
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v3, v3, v0
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v4, v4, v0
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v5, v5, v0
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v6, v6, v0
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v7, v7, v0
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v8, v8, v0
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v9, v9, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v18, v17, v0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_nc_u32_e32 v10, v10, v0
	v_add_nc_u32_e32 v11, v11, v0
	v_add_nc_u32_e32 v12, v12, v0
	v_add_nc_u32_e32 v13, v13, v0
	v_add_nc_u32_e32 v14, v14, v0
	v_add_nc_u32_e32 v15, v15, v0
	v_add_nc_u32_e32 v16, v16, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0xf
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	buffer_load_u8 v19, v9, s[24:27], 0 offen
	buffer_load_u8 v20, v10, s[24:27], 0 offen
	buffer_load_u8 v21, v11, s[24:27], 0 offen
	buffer_load_u8 v22, v12, s[24:27], 0 offen
	buffer_load_u8 v23, v13, s[24:27], 0 offen
	buffer_load_u8 v24, v14, s[24:27], 0 offen
	buffer_load_u8 v25, v15, s[24:27], 0 offen
	buffer_load_u8 v26, v16, s[24:27], 0 offen
	buffer_load_u8 v18, v18, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b32 v9, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_2addr_b64 v[9:12], v1 offset1:32
	ds_load_2addr_b64 v[185:188], v1 offset0:64 offset1:96
	scratch_load_b32 v1, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[13:16], v1 offset1:1
	scratch_load_b32 v1, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[189:192], v1 offset1:1
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v197, v2
	ds_store_b8 v197, v3 offset:256
	ds_store_b8 v197, v4 offset:512
	ds_store_b8 v197, v5 offset:768
	ds_store_b8 v197, v6 offset:1024
	ds_store_b8 v197, v7 offset:1280
	ds_store_b8 v197, v8 offset:1536
	ds_store_b8 v197, v19 offset:1792
	ds_store_b8 v197, v20 offset:2048
	ds_store_b8 v197, v21 offset:2304
	ds_store_b8 v197, v22 offset:2560
	ds_store_b8 v197, v23 offset:2816
	ds_store_b8 v197, v24 offset:3072
	ds_store_b8 v197, v25 offset:3328
	ds_store_b8 v197, v26 offset:3584
	ds_store_b8 v197, v18 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:176
	scratch_load_b32 v42, off, off offset:452
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v75, 0, v1
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[203:206], v42 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_mov_b32_e32 v3, s6
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_load_2addr_stride64_b64 v[193:196], v75 offset1:4
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v4, s7 :: v_dual_mov_b32 v5, s8
	v_dual_mov_b32 v6, s9 :: v_dual_mov_b32 v7, s10
	v_mov_b32_e32 v8, s11
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[193:194], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[193:194], v[189:190], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[195:196], v[189:190], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[43:50], v[195:196], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[51:58], v[193:194], v[185:186], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[59:66], v[195:196], v[185:186], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[18:25], v[203:204], v[13:14], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[26:33], v[203:204], v[11:12], v[26:33] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[34:41], v[205:206], v[11:12], v[34:41] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[43:50], v[205:206], v[13:14], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[51:58], v[203:204], v[15:16], v[51:58] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[59:66], v[205:206], v[15:16], v[59:66] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[195:196], v[191:192], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[67:74], v[193:194], v[191:192], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v231, v19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[9:16], v[205:206], v[187:188], v[9:16] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v19, v53
	v_cvt_f32_i32_e32 v53, v54
	v_cvt_f32_i32_e32 v54, v57
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[67:74], v[203:204], v[187:188], v[67:74] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v249, v9
	v_cvt_f32_i32_e32 v57, v10
	scratch_load_b64 v[9:10], off, off offset:312 ; 8-byte Folded Reload
	v_mov_b32_e32 v203, v164
	v_cvt_f32_i32_e32 v164, v11
	scratch_load_b64 v[10:11], off, off offset:320 ; 8-byte Folded Reload
	v_mov_b32_e32 v204, v172
	v_cvt_f32_i32_e32 v172, v12
	scratch_load_b64 v[11:12], off, off offset:328 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v244, v13
	scratch_load_b64 v[12:13], off, off offset:336 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v232, v14
	scratch_load_b64 v[13:14], off, off offset:344 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v205, v15
	scratch_load_b64 v[14:15], off, off offset:352 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v206, v16
	v_cvt_f32_i32_e32 v148, v22
	v_cvt_f32_i32_e32 v17, v23
	v_cvt_f32_i32_e32 v247, v28
	v_cvt_f32_i32_e32 v242, v31
	v_cvt_f32_i32_e32 v241, v32
	v_cvt_f32_i32_e32 v240, v33
	scratch_store_b32 off, v17, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v24
	v_cvt_f32_i32_e32 v98, v18
	v_mov_b32_e32 v18, v180
	v_dual_mov_b32 v180, v163 :: v_dual_mov_b32 v163, v145
	scratch_store_b32 off, v17, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v25
	v_mov_b32_e32 v145, v128
	v_mov_b32_e32 v128, v120
	v_mov_b32_e32 v120, v116
	v_mov_b32_e32 v116, v103
	scratch_store_b32 off, v17, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v43
	v_mov_b32_e32 v103, v95
	v_mov_b32_e32 v95, v81
	v_cvt_f32_i32_e32 v228, v21
	v_cvt_f32_i32_e32 v21, v51
	scratch_store_b32 off, v17, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v48
	v_cvt_f32_i32_e32 v189, v55
	v_cvt_f32_i32_e32 v188, v56
	v_cvt_f32_i32_e32 v186, v58
	v_cvt_f32_i32_e32 v229, v59
	scratch_store_b32 off, v17, off offset:60 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v49
	v_cvt_f32_i32_e32 v239, v60
	v_cvt_f32_i32_e32 v238, v61
	v_cvt_f32_i32_e32 v237, v62
	v_cvt_f32_i32_e32 v227, v63
	scratch_store_b32 off, v17, off offset:56 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v50
	v_cvt_f32_i32_e32 v255, v26
	v_cvt_f32_i32_e32 v253, v27
	v_cvt_f32_i32_e32 v245, v29
	v_cvt_f32_i32_e32 v243, v30
	scratch_store_b32 off, v17, off offset:52 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v44
	v_cvt_f32_i32_e32 v30, v71
	v_cvt_f32_i32_e32 v29, v72
	v_cvt_f32_i32_e32 v27, v73
	v_cvt_f32_i32_e32 v26, v74
	scratch_store_b32 off, v17, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v45
	v_cvt_f32_i32_e32 v230, v20
	v_cvt_f32_i32_e32 v20, v52
	scratch_store_b32 off, v17, off offset:84 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v46
	scratch_store_b32 off, v17, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v47
	scratch_store_b32 off, v17, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v34
	scratch_store_b32 off, v17, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v39
	scratch_store_b32 off, v17, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v40
	v_cvt_f32_i32_e32 v40, v68
	scratch_store_b32 off, v17, off offset:72 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v41
	v_cvt_f32_i32_e32 v41, v67
	scratch_store_b32 off, v17, off offset:68 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v35
	scratch_store_b32 off, v17, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v36
	v_cvt_f32_i32_e32 v36, v70
	scratch_store_b32 off, v17, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v37
	scratch_store_b32 off, v17, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v38
	v_cvt_f32_i32_e32 v38, v69
	scratch_store_b32 off, v17, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v64
	scratch_store_b32 off, v17, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v65
	scratch_store_b32 off, v17, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v17, v66
	scratch_store_b32 off, v17, off offset:104 ; 4-byte Folded Spill
	v_mov_b32_e32 v17, v173
	v_mov_b32_e32 v173, v157
	v_mov_b32_e32 v157, v137
	v_mov_b32_e32 v137, v121
	v_mov_b32_e32 v121, v109
	v_mov_b32_e32 v109, v104
	v_mov_b32_e32 v104, v96
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v96, v84 :: v_dual_add_nc_u32 v9, v9, v0
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v10, v10, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v11, v11, v0
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v12, v12, v0
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, v13, v0
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, v14, v0
	scratch_load_b64 v[14:15], off, off offset:360 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, v14, v0
	scratch_load_b64 v[14:15], off, off offset:368 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v23, v14, v0
	scratch_load_b64 v[14:15], off, off offset:376 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v24, v14, v0
	scratch_load_b64 v[14:15], off, off offset:384 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, v14, v0
	scratch_load_b64 v[14:15], off, off offset:392 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v25, 0x80000000, v25, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v28, v14, v0
	scratch_load_b64 v[14:15], off, off offset:400 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v28, 0x80000000, v28, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v31, v14, v0
	scratch_load_b64 v[14:15], off, off offset:408 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v32, v14, v0
	scratch_load_b64 v[14:15], off, off offset:416 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, v14, v0
	scratch_load_b64 v[14:15], off, off offset:424 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v34, v14, v0
	scratch_load_b64 v[14:15], off, off offset:432 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v15, v170
	v_mov_b32_e32 v170, v150
	v_mov_b32_e32 v150, v140
	v_cndmask_b32_e64 v31, 0x80000000, v31, s3
	v_cndmask_b32_e64 v34, 0x80000000, v34, s3
	v_mov_b32_e32 v140, v124
	v_cndmask_b32_e64 v33, 0x80000000, v33, s3
	v_mov_b32_e32 v124, v83
	v_add_nc_u32_e32 v0, v14, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0xf
	buffer_load_u8 v35, v9, s[24:27], 0 offen
	buffer_load_u8 v37, v10, s[24:27], 0 offen
	buffer_load_u8 v39, v11, s[24:27], 0 offen
	buffer_load_u8 v43, v12, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	buffer_load_u8 v22, v22, s[24:27], 0 offen
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	buffer_load_u8 v24, v24, s[24:27], 0 offen
	buffer_load_u8 v25, v25, s[24:27], 0 offen
	buffer_load_u8 v28, v28, s[24:27], 0 offen
	buffer_load_u8 v31, v31, s[24:27], 0 offen
	buffer_load_u8 v32, v32, s[24:27], 0 offen
	buffer_load_u8 v33, v33, s[24:27], 0 offen
	buffer_load_u8 v34, v34, s[24:27], 0 offen
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v9, v233
	ds_store_b8 v9, v234 offset:64
	ds_store_b8 v9, v236 offset:128
	ds_store_b8 v9, v235 offset:192
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1190 36                       ; ragged.py:1190:36
	scratch_load_b32 v14, off, off offset:460 ; 4-byte Folded Reload
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_add_nc_u32_e32 v11, 0, v211
	.loc	1 1190 36                       ; ragged.py:1190:36
	ds_load_u8 v9, v11 offset:320
	ds_load_u8 v10, v11 offset:256
	ds_load_u8 v51, v11 offset:336
	ds_load_u8 v55, v11 offset:272
	ds_load_u8 v56, v11 offset:352
	ds_load_u8 v66, v11 offset:288
	ds_load_u8 v81, v11 offset:368
	ds_load_u8 v83, v11 offset:416
	ds_load_u8 v91, v11 offset:624
	ds_load_u8 v107, v11 offset:752
	ds_load_u8 v97, v11 offset:688
	ds_load_u8 v92, v11 offset:560
	ds_load_u8 v82, v11 offset:304
	ds_load_u8 v84, v11 offset:496
	ds_load_u8 v192, v11 offset:432
	ds_load_u8 v80, v11 offset:656
	ds_load_u8 v202, v11 offset:736
	ds_load_u8 v181, v11 offset:672
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s47, s46
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s3, s3, s45
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v11 offset:448
	ds_load_u8 v12, v11 offset:384
	ds_load_u8 v58, v11 offset:464
	ds_load_u8 v59, v11 offset:400
	ds_load_u8 v67, v11 offset:480
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v10, v12, v10, 0xc0c0004
	ds_load_u8 v12, v11 offset:64
	ds_load_u8 v44, v11
	ds_load_u8 v60, v11 offset:80
	ds_load_u8 v185, v11 offset:96
	ds_load_u8 v195, v11 offset:112
	ds_load_u8 v61, v11 offset:16
	ds_load_u8 v187, v11 offset:32
	ds_load_u8 v196, v11 offset:48
	v_lshl_or_b32 v10, v10, 16, v9
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v44, v12, 0xc0c0004
	ds_load_u8 v44, v11 offset:192
	ds_load_u8 v45, v11 offset:128
	ds_load_u8 v62, v11 offset:208
	ds_load_u8 v63, v11 offset:144
	ds_load_u8 v191, v11 offset:224
	ds_load_u8 v193, v11 offset:160
	ds_load_u8 v200, v11 offset:240
	ds_load_u8 v76, v11 offset:176
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v9, v44, 16, v12
	ds_load_u8 v12, v11 offset:832
	ds_load_u8 v44, v11 offset:768
	ds_load_u8 v64, v11 offset:848
	ds_load_u8 v65, v11 offset:784
	ds_load_u8 v198, v11 offset:864
	ds_load_u8 v201, v11 offset:800
	ds_load_u8 v211, v11 offset:880
	ds_load_u8 v225, v11 offset:816
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v44, v12, 0xc0c0004
	ds_load_u8 v44, v11 offset:960
	ds_load_u8 v45, v11 offset:896
	ds_load_u8 v194, v11 offset:976
	ds_load_u8 v234, v11 offset:912
	ds_load_u8 v250, v11 offset:992
	ds_load_u8 v251, v11 offset:928
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	ds_load_u8 v45, v11 offset:576
	ds_load_u8 v46, v11 offset:512
	ds_load_u8 v246, v11 offset:592
	ds_load_u8 v248, v11 offset:528
	ds_load_u8 v252, v11 offset:608
	ds_load_u8 v224, v11 offset:544
	v_lshl_or_b32 v12, v44, 16, v12
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v11 offset:704
	ds_load_u8 v47, v11 offset:640
	ds_load_u8 v254, v11 offset:720
	s_waitcnt vmcnt(0)
	ds_load_u8 v89, v14
	v_mov_b32_e32 v14, v169
	v_mov_b32_e32 v169, v129
	ds_load_u8 v129, v11 offset:944
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v197, v35
	ds_store_b8 v197, v37 offset:256
	ds_store_b8 v197, v39 offset:512
	ds_store_b8 v197, v43 offset:768
	ds_store_b8 v197, v13 offset:1024
	ds_store_b8 v197, v16 offset:1280
	ds_store_b8 v197, v22 offset:1536
	ds_store_b8 v197, v23 offset:1792
	ds_store_b8 v197, v24 offset:2048
	ds_store_b8 v197, v25 offset:2304
	ds_store_b8 v197, v28 offset:2560
	ds_store_b8 v197, v31 offset:2816
	ds_store_b8 v197, v32 offset:3072
	ds_store_b8 v197, v33 offset:3328
	ds_store_b8 v197, v34 offset:3584
	ds_store_b8 v197, v0 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[68:71], v75 offset1:4
	ds_load_2addr_stride64_b64 v[72:75], v42 offset1:4
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v11, v47, v46, 0xc0c0004
	v_perm_b32 v0, v55, v51, 0xc0c0004
	v_perm_b32 v13, v59, v58, 0xc0c0004
	v_perm_b32 v16, v61, v60, 0xc0c0004
	v_perm_b32 v28, v63, v62, 0xc0c0004
	v_lshl_or_b32 v11, v11, 16, v45
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[43:50], v[68:69], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[43:50], v[72:73], v[11:12], v[43:50] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v22, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v39, v44
	v_cvt_f32_i32_e32 v37, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v35, v46
	v_cvt_f32_i32_e32 v25, v47
	v_cvt_f32_i32_e32 v24, v48
	v_cvt_f32_i32_e32 v23, v49
	v_cvt_f32_i32_e32 v52, v50
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[43:50], v[70:71], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[43:50], v[74:75], v[11:12], v[43:50] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v190, v43
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v236, v44
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v44, v13, 16, v0
	v_lshl_or_b32 v43, v28, 16, v16
	v_perm_b32 v0, v65, v64, 0xc0c0004
	v_perm_b32 v13, v234, v194, 0xc0c0004
	v_perm_b32 v16, v248, v246, 0xc0c0004
	v_perm_b32 v28, v80, v254, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v235, v45
	v_cvt_f32_i32_e32 v233, v46
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v46, v13, 16, v0
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[43:44], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v45, v28, 16, v16
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v9, v48
	v_cvt_f32_i32_e32 v10, v49
	v_cvt_f32_i32_e32 v12, v47
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v0, v66, v56, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[58:65], v[72:73], v[45:46], v[58:65] neg_lo:[1,1,0]
	v_perm_b32 v28, v83, v67, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v11, v50
	v_mov_b32_e32 v80, v94
	v_mov_b32_e32 v94, v101
	v_cvt_f32_i32_e32 v194, v58
	v_cvt_f32_i32_e32 v49, v59
	v_cvt_f32_i32_e32 v48, v60
	v_cvt_f32_i32_e32 v47, v61
	v_cvt_f32_i32_e32 v34, v62
	v_cvt_f32_i32_e32 v33, v63
	v_cvt_f32_i32_e32 v32, v64
	v_cvt_f32_i32_e32 v31, v65
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[58:65], v[70:71], v[43:44], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v43, v187, v185, 0xc0c0004
	v_perm_b32 v44, v193, v191, 0xc0c0004
	v_lshl_or_b32 v51, v28, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[74:75], v[45:46], v[58:65] neg_lo:[1,1,0]
	v_perm_b32 v0, v201, v198, 0xc0c0004
	v_perm_b32 v28, v251, v250, 0xc0c0004
	v_lshl_or_b32 v50, v44, 16, v43
	v_perm_b32 v43, v224, v252, 0xc0c0004
	v_perm_b32 v44, v181, v202, 0xc0c0004
	v_mov_b32_e32 v101, v115
	v_mov_b32_e32 v115, v119
	v_mov_b32_e32 v119, v127
	v_dual_mov_b32 v127, v136 :: v_dual_mov_b32 v136, v155
	v_mov_b32_e32 v155, v213
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v246, v58
	v_cvt_f32_i32_e32 v13, v63
	v_cvt_f32_i32_e32 v16, v64
	v_cvt_f32_i32_e32 v213, v65
	v_cvt_f32_i32_e32 v55, v59
	v_cvt_f32_i32_e32 v254, v60
	v_cvt_f32_i32_e32 v248, v61
	v_cvt_f32_i32_e32 v234, v62
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v67, v28, 16, v0
	v_lshl_or_b32 v66, v44, 16, v43
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[50:51], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v28, v82, v81, 0xc0c0004
	v_mov_b32_e32 v181, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[72:73], v[66:67], v[58:65] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v201, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v198, v59
	v_cvt_f32_i32_e32 v193, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v191, v61
	v_cvt_f32_i32_e32 v46, v62
	v_cvt_f32_i32_e32 v45, v63
	v_cvt_f32_i32_e32 v44, v64
	v_cvt_f32_i32_e32 v43, v65
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[58:65], v[70:71], v[50:51], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v50, v192, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[58:65], v[74:75], v[66:67], v[58:65] neg_lo:[1,1,0]
	v_lshl_or_b32 v82, v50, 16, v28
	v_perm_b32 v50, v129, v89, 0xc0c0004
	v_mov_b32_e32 v129, v169
	v_mov_b32_e32 v169, v14
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v14, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v185, v58
	v_cvt_f32_i32_e32 v187, v59
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_perm_b32 v58, v196, v195, 0xc0c0004
	v_perm_b32 v59, v76, v200, 0xc0c0004
	v_perm_b32 v28, v225, v211, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v250, v63
	v_cvt_f32_i32_e32 v251, v64
	v_cvt_f32_i32_e32 v252, v65
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v81, v59, 16, v58
	v_perm_b32 v58, v92, v91, 0xc0c0004
	v_perm_b32 v59, v97, v107, 0xc0c0004
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v0, v60
	v_cvt_f32_i32_e32 v51, v61
	v_cvt_f32_i32_e32 v56, v62
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_lshl_or_b32 v84, v50, 16, v28
	v_lshl_or_b32 v83, v59, 16, v58
	v_wmma_i32_16x16x16_iu4 v[60:67], v[68:69], v[81:82], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v89, v130
	v_mov_b32_e32 v130, v142
	v_mov_b32_e32 v142, v160
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[72:73], v[83:84], v[60:67] neg_lo:[1,1,0]
	v_mov_b32_e32 v160, v177
	v_mov_b32_e32 v177, v209
	v_mov_b32_e32 v91, v132
	v_mov_b32_e32 v107, v147
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v59, v61
	v_cvt_f32_i32_e32 v58, v62
	v_cvt_f32_i32_e32 v50, v63
	v_cvt_f32_i32_e32 v200, v64
	v_cvt_f32_i32_e32 v192, v65
	v_cvt_f32_i32_e32 v196, v66
	v_cvt_f32_i32_e32 v195, v67
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[61:68], v[70:71], v[81:82], v[1:8] neg_lo:[1,1,0]
	v_mov_b32_e32 v147, v166
	v_mov_b32_e32 v166, v182
	v_mov_b32_e32 v97, v138
	v_mov_b32_e32 v81, v95
	v_mov_b32_e32 v95, v103
	v_mov_b32_e32 v103, v116
	v_mov_b32_e32 v116, v120
	v_mov_b32_e32 v120, v128
	v_dual_mov_b32 v128, v145 :: v_dual_mov_b32 v145, v163
	v_wmma_i32_16x16x16_iu4 v[61:68], v[74:75], v[83:84], v[61:68] neg_lo:[1,1,0]
	v_mov_b32_e32 v84, v96
	v_mov_b32_e32 v96, v104
	v_mov_b32_e32 v104, v109
	v_mov_b32_e32 v109, v121
	v_mov_b32_e32 v121, v137
	v_mov_b32_e32 v137, v157
	v_mov_b32_e32 v157, v173
	v_mov_b32_e32 v173, v17
	scratch_load_b32 v17, off, off offset:180 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v5, v61
	v_cvt_f32_i32_e32 v8, v62
	v_cvt_f32_i32_e32 v7, v63
	v_cvt_f32_i32_e32 v6, v64
	v_mov_b32_e32 v92, v125
	v_dual_mov_b32 v125, v133 :: v_dual_mov_b32 v72, v126
	v_dual_mov_b32 v133, v153 :: v_dual_mov_b32 v182, v154
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v126, off, off offset:12
	scratch_load_b32 v135, off, off offset:8
	scratch_load_b32 v154, off, off
	scratch_load_b32 v73, off, off offset:4
	v_cvt_f32_i32_e32 v1, v66
	v_cvt_f32_i32_e32 v2, v67
	v_cvt_f32_i32_e32 v3, v68
	v_cvt_f32_i32_e32 v4, v65
	v_dual_mov_b32 v153, v168 :: v_dual_mov_b32 v82, v139
	v_mov_b32_e32 v139, v159
	v_mov_b32_e32 v159, v175
	v_mov_b32_e32 v175, v208
	v_dual_mov_b32 v168, v184 :: v_dual_mov_b32 v209, v217
	v_mov_b32_e32 v138, v158
	v_mov_b32_e32 v158, v207
	v_mov_b32_e32 v132, v199
	v_mov_b32_e32 v208, v216
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v28, s47, v14, 1
	scratch_load_b32 v14, off, off offset:160 ; 4-byte Folded Reload
	v_dual_mov_b32 v163, v180 :: v_dual_mov_b32 v180, v18
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(5)
	v_add_lshl_u32 v64, v17, s3, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v61, s47, v14, 1
	scratch_load_b32 v14, off, off offset:164 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v62, s47, v14, 1
	scratch_load_b32 v14, off, off offset:168 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v62, 0x80000000, v62, s1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v63, s47, v14, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s47, s47, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s47, s40
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v63, 0x80000000, v63, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v64, v64, s[28:31], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v28, v28, s[12:15], 0 offen
	buffer_load_u16 v69, v61, s[12:15], 0 offen
	buffer_load_u16 v70, v62, s[12:15], 0 offen
	buffer_load_u16 v71, v63, s[12:15], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v74, off, off offset:464 ; 4-byte Folded Reload
	v_mov_b32_e32 v83, v124
	v_mov_b32_e32 v124, v140
	v_mov_b32_e32 v140, v150
	v_mov_b32_e32 v150, v170
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v170, v15 :: v_dual_lshlrev_b32 v61, 16, v64
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v28, 16, v28
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v28, v98
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v74, v61
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[61:64], v226
	ds_load_b128 v[65:68], v226 offset:16
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v163, v42, v61 :: v_dual_mul_f32 v42, v28, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v165, v42, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v42, v28, v230
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v167, v42, v63 :: v_dual_mul_f32 v42, v28, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v166, v42, v64
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v42, 16, v69
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v69, v42, v255
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v140, v69, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v69, v42, v253
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v141, v69, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v69, v42, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v143, v69, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v69, v42, v245
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v142, v69, v64 :: v_dual_lshlrev_b32 v69, 16, v70
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v70, 16, v71
	scratch_load_b32 v71, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v69, v53
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v4, v70, v4
	v_mul_f32_e32 v2, v2, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v15, v205, v70
	scratch_load_b32 v205, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v124, v18, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v18, v70, v41 :: v_dual_mul_f32 v1, v1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v3, v3, v70 :: v_dual_fmac_f32 v100, v18, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v21, v69, v21 :: v_dual_mul_f32 v18, v70, v40
	v_mul_f32_e32 v19, v69, v19
	v_mul_f32_e32 v20, v69, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v69, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v97, v21, v61
	v_fmac_f32_e32 v101, v18, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v18, v70, v38 :: v_dual_fmac_f32 v125, v19, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v123, v20, v62 :: v_dual_fmac_f32 v104, v18, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v70, v36
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v103, v18, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v28, v148
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2) lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v155, v18, v65 :: v_dual_mul_f32 v18, v28, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:132 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v157, v18, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v28, v14
	scratch_load_b32 v14, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v158, v18, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v28, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v159, v18, v68
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v42, v243
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v113, v18, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v42, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v114, v18, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v42, v241
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v135, v18, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v42, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v18, v68
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v69, v189
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v89, v18, v65 :: v_dual_mul_f32 v18, v69, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v90, v18, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v69, v54
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v91, v18, v67 :: v_dual_mul_f32 v18, v69, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v18, v68
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v70, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v18, v65
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v70, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v93, v18, v66
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v70, v27
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v73, v18, v67
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v70, v26
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v94, v18, v68
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:40
	scratch_load_b32 v14, off, off offset:96
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[18:21], v226 offset:512
	ds_load_b128 v[61:64], v226 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v173, v15, v63
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v69, v56
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v26, v14, v28
	scratch_load_b32 v14, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v210, v26, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v26, v28, v14
	scratch_load_b32 v14, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v129, v26, v19 :: v_dual_mul_f32 v26, v28, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v149, v26, v20 :: v_dual_mul_f32 v26, v28, v14
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v14, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v150, v26, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v26, v14, v42
	scratch_load_b32 v14, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v220, v26, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v26, v42, v14
	scratch_load_b32 v14, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v105, v26, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v26, v42, v14
	scratch_load_b32 v14, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v106, v26, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v26, v42, v14
	scratch_load_b32 v14, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v107, v26, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v229, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v180, v26, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v69, v239
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v72, v26, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v69, v238
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v26, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v26, v69, v237
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v83, v26, v21 :: v_dual_mul_f32 v26, v249, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v175, v26, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v70, v57
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v78, v18, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v70, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v164, v203 :: v_dual_fmac_f32 v79, v18, v20
	v_mul_f32_e32 v18, v70, v172
	v_mov_b32_e32 v172, v204
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v80, v18, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v28, v14
	scratch_load_b32 v14, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v151, v18, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v14, v28
	scratch_load_b32 v14, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v209, v18, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v14, v28
	scratch_load_b32 v14, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v208, v18, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v14, v28
	scratch_load_b32 v14, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v221, v18, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v42, v14
	scratch_load_b32 v14, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v130, v18, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v14, v42
	scratch_load_b32 v14, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v183, v18, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v14, v42
	scratch_load_b32 v14, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v18, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v14, v42
	scratch_load_b32 v14, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v18, v64
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v69, v227
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v18, v61
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v14, v69
	scratch_load_b32 v14, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v179, v18, v62
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v14, v69
	scratch_load_b32 v14, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v178, v18, v63
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v18, v14, v69
	v_mul_f32_e32 v14, v206, v70
	scratch_load_b32 v206, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v177, v18, v64
	v_dual_fmac_f32 v171, v14, v64 :: v_dual_add_nc_u32 v14, s33, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v18, v70, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v14, v14, s3, 1
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v77, v18, v61 :: v_dual_mul_f32 v18, v232, v70
	.loc	1 1218 45                       ; ragged.py:1218:45
	buffer_load_u16 v14, v14, s[28:31], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v174, v18, v62
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v74, v14
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v211, off, off offset:140
	scratch_load_b32 v98, off, off offset:24
	scratch_load_b32 v148, off, off offset:20
	ds_load_b128 v[18:21], v226
	ds_load_b128 v[61:64], v226 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v28, v22
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v164, v14, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v28, v39
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v170, v14, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v28, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v168, v14, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v28, v35
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v169, v14, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v42, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v147, v14, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v42, v49
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v146, v14, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v42, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v145, v14, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v42, v47
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v144, v14, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v69, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v128, v14, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v69, v198
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v127, v14, v19 :: v_dual_mul_f32 v14, v69, v193
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v122, v14, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v69, v191
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v126, v14, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v70, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v110, v14, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v70, v59
	scratch_load_b64 v[17:18], off, off offset:144 ; 8-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v109, v14, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v70, v58
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v108, v14, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v70, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v102, v14, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v28, v25
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v162, v14, v61
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v28, v24
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v161, v14, v62 :: v_dual_mul_f32 v14, v28, v23
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt vmcnt(0)
	ds_load_b128 v[18:21], v226 offset:512
	ds_load_b128 v[22:25], v226 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v156, v14, v63
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v28, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v160, v14, v64
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v42, v34
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v139, v14, v61
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v42, v33
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v116, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v0, v69, v51 :: v_dual_fmac_f32 v181, v15, v22
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v138, v14, v62
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v14, v42, v32 :: v_dual_fmac_f32 v81, v4, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v115, v0, v21 :: v_dual_mul_f32 v0, v5, v70
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v5, v10, v28
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v137, v14, v63
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v42, v31
	v_mul_f32_e32 v10, v213, v42
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v206, v0, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v70, v8
	v_mul_f32_e32 v8, v13, v42
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v134, v14, v64
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v69, v46
	scratch_load_b32 v213, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v86, v0, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v70, v7 :: v_dual_mul_f32 v7, v28, v12
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v121, v14, v61
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v69, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v12, v250, v69 :: v_dual_fmac_f32 v85, v0, v20
	v_dual_mul_f32 v0, v70, v6 :: v_dual_mul_f32 v13, v251, v69
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v14, v62
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v69, v44
	v_mul_f32_e32 v6, v11, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v84, v0, v21 :: v_dual_mul_f32 v11, v42, v234
	v_fmac_f32_e32 v218, v5, v24
	v_fmac_f32_e32 v182, v14, v63
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v69, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v222, v8, v23 :: v_dual_fmac_f32 v131, v11, v22
	v_fmac_f32_e32 v71, v13, v24
	v_fmac_f32_e32 v205, v1, v23
	v_fmac_f32_e32 v119, v14, v64
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v70, v200
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v176, v2, v24
	v_fmac_f32_e32 v172, v3, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v99, v14, v61
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v70, v192
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v96, v14, v62
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v70, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v95, v14, v63
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v70, v195
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v88, v14, v64
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v190, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v68, v14, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v28, v236
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v154, v14, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v28, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v153, v14, v20 :: v_dual_mul_f32 v14, v28, v233
	v_fmac_f32_e32 v152, v14, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v246, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v223, v14, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v42, v55
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v133, v14, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v42, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v132, v14, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v42, v248
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v98, v14, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v185, v69
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v148, v7, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v214, v14, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v14, v69, v187
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v117, v14, v19 :: v_dual_mul_f32 v14, v252, v69
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:48
	scratch_load_b32 v70, off, off offset:36
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v9, v28 :: v_dual_mul_f32 v9, v16, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v212, v14, v25 :: v_dual_fmac_f32 v215, v9, v24
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v213, v10, v25
	v_fmac_f32_e32 v219, v0, v23
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v69, v6, v25 :: v_dual_fmac_f32 v70, v12, v23
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v203, off, off offset:468
	scratch_load_b32 v13, off, off offset:488
	scratch_load_b32 v204, off, off offset:472
	scratch_load_b32 v74, off, off offset:476
	scratch_load_b32 v75, off, off offset:480
	scratch_load_b32 v76, off, off offset:484
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v3, v17 :: v_dual_and_b32 v2, 0x80, v203
	v_and_b32_e32 v1, 8, v203
	v_and_b32_e32 v4, 16, v203
	v_lshrrev_b32_e32 v201, 4, v203
	v_and_b32_e32 v202, 0xc0, v203
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v218
	v_dual_mul_f32 v18, 0xbfb8aa3b, v213 :: v_dual_mul_f32 v45, 0xbfb8aa3b, v122
	v_mul_f32_e32 v24, 0xbfb8aa3b, v156
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v0, 0xbfb8aa3b, v219
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	v_mul_f32_e32 v28, 0xbfb8aa3b, v161
	v_mul_f32_e32 v34, 0xbfb8aa3b, v134
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v14, 0, 0x42800000, s0
	v_dual_mul_f32 v42, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v212
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v68 :: v_dual_mul_f32 v37, 0xbfb8aa3b, v153
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v10, 0xbfb8aa3b, v69
	v_dual_fmac_f32 v14, 0xbfb8aa3b, v218 :: v_dual_mul_f32 v29, 0xbfb8aa3b, v148
	v_exp_f32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v219
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v14, v14
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s0
	v_exp_f32_e32 v17, v7
	v_cndmask_b32_e64 v16, 0, 0x42800000, s1
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s1
	v_mul_f32_e32 v39, 0xbfb8aa3b, v144
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	v_ldexp_f32 v11, v12, v11
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v69
	v_ldexp_f32 v10, v14, v10
	v_mul_f32_e32 v198, 0xbfb8aa3b, v132
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_mul_f32_e32 v12, 0xbfb8aa3b, v223
	v_exp_f32_e32 v16, v16
	v_ldexp_f32 v0, v17, v0
	v_mul_f32_e32 v17, 0xbfb8aa3b, v215
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v213
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v14, v16, v15
	v_mul_f32_e32 v15, 0xbfb8aa3b, v222
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_mul_f32_e32 v38, 0xbfb8aa3b, v154
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v15
	v_dual_fmac_f32 v16, 0xbfb8aa3b, v223 :: v_dual_mul_f32 v49, 0xbfb8aa3b, v133
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v215
	v_cndmask_b32_e64 v27, 0, 0x42800000, s1
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v30, 0xbfb8aa3b, v152
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v16, v16
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v222 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v108
	v_mul_f32_e32 v188, 0xbfb8aa3b, v110
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s1
	v_dual_mul_f32 v185, 0xbfb8aa3b, v99 :: v_dual_add_f32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v17, v17
	v_dual_mul_f32 v8, 0xbfb8aa3b, v170 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v164
	v_ldexp_f32 v12, v16, v12
	v_dual_mul_f32 v5, 0xbfb8aa3b, v168 :: v_dual_mul_f32 v6, 0xbfb8aa3b, v169
	v_dual_mul_f32 v7, 0xbfb8aa3b, v162 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v160
	v_dual_mul_f32 v41, 0xbfb8aa3b, v146 :: v_dual_mul_f32 v200, 0xbfb8aa3b, v147
	v_mul_f32_e32 v35, 0xbfb8aa3b, v137
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v15, v17, v15
	v_ldexp_f32 v17, v19, v18
	v_ldexp_f32 v18, v21, v20
	v_mul_f32_e32 v21, 0xbfb8aa3b, v71
	v_dual_mul_f32 v19, 0xbfb8aa3b, v70 :: v_dual_mul_f32 v32, 0xbfb8aa3b, v145
	v_dual_mul_f32 v199, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v98
	v_mul_f32_e32 v197, 0xbfb8aa3b, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	v_dual_mul_f32 v40, 0xbfb8aa3b, v131 :: v_dual_mul_f32 v195, 0xbfb8aa3b, v126
	v_dual_mul_f32 v193, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v194, 0xbfb8aa3b, v121
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	v_mul_f32_e32 v16, 0xbfb8aa3b, v214
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s0
	v_dual_mul_f32 v46, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v212
	v_dual_mul_f32 v191, 0xbfb8aa3b, v116 :: v_dual_mul_f32 v192, 0xbfb8aa3b, v117
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v25, v25
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_exp_f32_e32 v27, v27
	v_dual_mul_f32 v189, 0xbfb8aa3b, v181 :: v_dual_mul_f32 v190, 0xbfb8aa3b, v115
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v214
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v196, 0xbfb8aa3b, v127
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v186, 0xbfb8aa3b, v102 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v109
	v_exp_f32_e32 v20, v20
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v70
	v_mul_f32_e32 v43, 0xbfb8aa3b, v96
	v_dual_mul_f32 v31, 0xbfb8aa3b, v88 :: v_dual_mul_f32 v36, 0xbfb8aa3b, v95
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
.Ltmp6:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v21, v21
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp8:
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v10, 1.0, v10
	v_add_f32_e32 v14, 1.0, v14
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_ldexp_f32 v16, v20, v16
	v_ldexp_f32 v20, v25, v23
	v_mul_f32_e32 v23, 0xbfb8aa3b, v206
	v_dual_mul_f32 v25, 0xbfb8aa3b, v205 :: v_dual_add_f32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v64, s1, v218, v10, v218
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	v_ldexp_f32 v19, v21, v19
	v_ldexp_f32 v21, v27, v26
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_add_f32 v16, 1.0, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v26, 0xbfb8aa3b, v176
	v_cndmask_b32_e64 v50, 0, 0x42800000, s0
	v_mul_f32_e32 v27, 0xbfb8aa3b, v172
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v206
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v205
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v12, v12, v223
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v11, 1.0, v11
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v27, 0, 0x42800000, s0
	v_exp_f32_e32 v50, v50
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v26, 0xbfb8aa3b, v176
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v11, v11, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v172
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v54, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v25, v25
	v_exp_f32_e32 v55, v27
	v_ldexp_f32 v33, v50, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, vcc_lo, v68, v11, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_add_f32 v19, 1.0, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v27, 0xbfb8aa3b, v86
	v_ldexp_f32 v50, v54, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, null, v0, v0, v219
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v55, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v53, v57, 1.0
	v_div_scale_f32 v55, null, v10, v10, v218
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v25, v23
	v_mul_f32_e32 v23, 0xbfb8aa3b, v81
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v52, v57
	v_rcp_f32_e32 v52, v54
	v_rcp_f32_e32 v59, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v25, 0xbfb8aa3b, v84 :: v_dual_add_f32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v60, v58, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v21, 1.0, v21 :: v_dual_add_f32 v56, 1.0, v56
	v_dual_add_f32 v50, 1.0, v50 :: v_dual_add_f32 v51, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v53, v60, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v61, -v54, v52, 1.0
	v_fma_f32 v63, -v55, v59, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v26, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v62, v57
	v_fmac_f32_e32 v52, v61, v52
	v_div_scale_f32 v61, s0, v219, v0, v219
	v_fmac_f32_e32 v59, v63, v59
	v_div_scale_f32 v63, null, v14, v14, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v33, 1.0, v33 :: v_dual_mul_f32 v62, v61, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v53, v60, v58
	v_rcp_f32_e32 v65, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v54, v62, v61
	v_div_fmas_f32 v53, v53, v57, v60
	v_rcp_f32_e32 v57, v67
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v11, v53, v11, v68
	v_fma_f32 v60, -v63, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v62, v58, v52 :: v_dual_fmac_f32 v65, v60, v65
	v_fma_f32 v53, -v54, v62, v61
	v_div_scale_f32 v54, s2, v69, v14, v69
	v_mul_f32_e32 v66, v64, v59
	v_div_scale_f32 v60, s0, v223, v12, v223
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v52, v53, v52, v62
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v58, -v55, v66, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v52, v0, v219
	v_fmac_f32_e32 v66, v58, v59
	v_fma_f32 v58, -v67, v57, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v55, v66, v64
	v_mul_f32_e32 v55, v54, v65
	v_fmac_f32_e32 v57, v58, v57
	v_div_scale_f32 v58, null, v15, v15, v222
	v_div_scale_f32 v64, null, v17, v17, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v61, -v63, v55, v54
	v_fmac_f32_e32 v55, v61, v65
	v_div_fmas_f32 v53, v53, v59, v66
	v_rcp_f32_e32 v59, v58
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v63, v55, v54
	v_div_fixup_f32 v10, v53, v10, v218
	v_rcp_f32_e32 v53, v64
	v_div_scale_f32 v63, null, v18, v18, v213
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v54, v54, v65, v55
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v61, -v58, v59, 1.0
	v_mul_f32_e32 v62, v60, v57
	v_div_scale_f32 v65, s2, v215, v17, v215
	v_div_scale_f32 v68, s0, v213, v18, v213
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v59, v61, v59
	v_fma_f32 v52, -v67, v62, v60
	v_rcp_f32_e32 v61, v63
	v_fma_f32 v66, -v64, v53, 1.0
	v_div_fixup_f32 v14, v54, v14, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v62, v52, v57
	v_div_scale_f32 v52, s1, v222, v15, v222
	v_fma_f32 v55, -v67, v62, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v60, v52, v59
	v_div_scale_f32 v67, null, v16, v16, v214
	v_div_fmas_f32 v55, v55, v57, v62
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v57, -v58, v60, v52
	v_fmac_f32_e32 v53, v66, v53
	v_fma_f32 v66, -v63, v61, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v55, v12, v223
	v_fmac_f32_e32 v60, v57, v59
	v_div_scale_f32 v57, null, v19, v19, v70
	v_fmac_f32_e32 v61, v66, v61
	v_rcp_f32_e32 v66, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v58, v60, v52
	v_rcp_f32_e32 v58, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v52, v52, v59, v60
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v69, -v67, v66, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v15, v52, v15, v222
	v_fma_f32 v60, -v57, v58, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, s3, v214, v16, v214
	v_fmac_f32_e32 v58, v60, v58
	v_mul_f32_e32 v62, v65, v53
	v_mul_f32_e32 v55, v68, v61
	v_div_scale_f32 v60, null, v20, v20, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v64, v62, v65
	v_fmac_f32_e32 v62, v54, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v63, v55, v68
	v_fma_f32 v59, -v64, v62, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v55, v54, v61 :: v_dual_mul_f32 v54, v69, v66
	v_div_fmas_f32 v53, v59, v53, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v63, v55, v68
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v62, -v67, v54, v69
	v_div_scale_f32 v63, s1, v70, v19, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v55, v59, v61, v55
	v_rcp_f32_e32 v59, v60
	v_fmac_f32_e32 v54, v62, v66
	v_div_fixup_f32 v52, v53, v17, v215
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v53, v55, v18, v213
	v_div_scale_f32 v55, null, v21, v21, v212
	v_fma_f32 v17, -v67, v54, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v60, v59, 1.0
	v_div_fmas_f32 v17, v17, v66, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v54, v55
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v59, v62, v59
	v_mul_f32_e32 v61, v63, v58
	v_div_fixup_f32 v64, v17, v16, v214
	v_div_scale_f32 v62, null, v56, v56, v206
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v57, v61, v63
	v_fmac_f32_e32 v61, v18, v58
	v_div_scale_f32 v18, s0, v71, v20, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v57, v61, v63
	v_fma_f32 v57, -v55, v54, 1.0
	v_rcp_f32_e32 v63, v62
	v_div_fmas_f32 v16, v16, v58, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v57, v54
	v_div_scale_f32 v57, null, v33, v33, v205
	v_div_scale_f32 v61, s1, v212, v21, v212
	v_div_fixup_f32 v66, v16, v19, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v16, v57
	v_fma_f32 v65, -v62, v63, 1.0
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v19, v61, v54
	v_div_scale_f32 v70, null, v51, v51, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v63, v65, v63
	v_div_scale_f32 v65, null, v50, v50, v176
	v_fma_f32 v68, -v57, v16, 1.0
	v_mul_f32_e32 v17, v18, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v69, v65
	v_fmac_f32_e32 v16, v68, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v58, -v60, v17, v18
	v_fmac_f32_e32 v17, v58, v59
	v_div_scale_f32 v58, s2, v206, v56, v206
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v68, -v65, v69, 1.0
	v_fma_f32 v18, -v60, v17, v18
	v_fma_f32 v60, -v55, v19, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v68, v69
	v_div_fmas_f32 v17, v18, v59, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v19, v60, v54
	v_div_scale_f32 v60, s0, v205, v33, v205
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v71, v17, v20, v71
	v_div_scale_f32 v20, s3, v176, v50, v176
	v_mul_f32_e32 v67, v58, v63
	v_fma_f32 v17, -v55, v19, v61
	v_rcp_f32_e32 v59, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v18, -v62, v67, v58
	v_div_fmas_f32 v17, v17, v54, v19
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v67, v18, v63 :: v_dual_mul_f32 v18, v60, v16
	v_div_fixup_f32 v61, v17, v21, v212
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v70, v59, 1.0
	v_fma_f32 v19, -v62, v67, v58
	v_mul_f32_e32 v58, v20, v69
	v_fma_f32 v54, -v57, v18, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v65, v58, v20
	v_fmac_f32_e32 v18, v54, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v58, v17, v69
	v_div_fmas_f32 v19, v19, v63, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v57, v18, v60
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v54, v19, v56, v206
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v56, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v9, v9, v16, v18
	v_fma_f32 v16, -v65, v58, v20
	s_mov_b32 vcc_lo, s3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v164
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v209, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v9, v33, v205
	v_div_fmas_f32 v16, v16, v69, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	v_exp_f32_e32 v18, v56
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v16, v50, v176
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v16, 0, 0x42800000, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v55, v59
	v_div_scale_f32 v55, s1, v172, v51, v172
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v16, 0xbfb8aa3b, v170 :: v_dual_mul_f32 v21, v55, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v70, v21, v55
	v_fmac_f32_e32 v21, v17, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v70, v21, v55
	v_div_fmas_f32 v8, v17, v59, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v210, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v18, v19
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v208, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v8, v51, v172
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v16, v183, v15 :: v_dual_fmac_f32 v11, 0xbfb8aa3b, v169
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v55, null, v0, v0, v164
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v15, v118, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v11
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v179, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v55
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v6, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v220, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, vcc_lo, v164, v0, v164
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v10, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v180, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v55, v56, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v9, 0xbfb8aa3b, v168 :: v_dual_mul_f32 v10, v177, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v5
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v19, v221, v14 :: v_dual_mul_f32 v14, v112, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v8, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v175, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, null, v57, v57, v169
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v63, v58, v56
	v_div_scale_f32 v53, null, v52, v52, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v61, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v174, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, s0, v170, v52, v170
	v_rcp_f32_e32 v59, v53
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v60, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v6, v173, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v55, v63, v58
	v_fma_f32 v60, -v62, v61, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v53, v59, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v61, v60, v61
	v_fmac_f32_e32 v63, v64, v56
	v_div_scale_f32 v60, null, v33, v33, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v55, v63, v58
	v_div_scale_f32 v58, s1, v169, v57, v169
	v_mul_f32_e32 v64, v58, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v50, v50, v56, v63
	v_rcp_f32_e32 v56, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v171, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v50, v0, v164
	v_fma_f32 v50, -v62, v64, v58
	v_fmac_f32_e32 v59, v65, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v64, v50, v61
	v_mul_f32_e32 v55, v54, v59
	v_fma_f32 v51, -v60, v56, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v9, v178, v71 :: v_dual_fmac_f32 v66, 0xbfb8aa3b, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v53, v55, v54
	v_fmac_f32_e32 v56, v51, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v28, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v63, v59
	v_fma_f32 v58, -v62, v64, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v53, v55, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v28, v28, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v53, v59, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	v_exp_f32_e32 v24, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v63, null, v51, v51, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v156
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, s2, v168, v33, v168
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v24, v24, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v58, v58, v61, v64
	v_rcp_f32_e32 v50, v63
	v_mul_f32_e32 v55, v54, v56
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v60, v55, v54
	v_fmac_f32_e32 v55, v28, v56
	v_div_fixup_f32 v28, v53, v52, v170
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v24, v58, v57, v169
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v58, -v63, v50, 1.0
	v_fma_f32 v53, -v60, v55, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v52, v52, v161
	v_fmac_f32_e32 v50, v58, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v53, v53, v56, v55
	v_div_scale_f32 v56, s0, v162, v51, v162
	v_rcp_f32_e32 v55, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v53, v33, v168
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v54, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v56, v50
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v24, v166, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v63, v58, v56
	v_fma_f32 v59, -v57, v55, 1.0
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v22, v167, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, null, v54, v54, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v59, v55
	v_div_scale_f32 v59, s1, v161, v52, v161
	v_fmac_f32_e32 v58, v60, v50
	v_rcp_f32_e32 v62, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v60, v59, v55
	v_fma_f32 v56, -v63, v58, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v57, v60, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v160
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v56, v50, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s0, v156, v54, v156
	v_fmac_f32_e32 v60, v63, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v51, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v57, v60, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v37, v51, v55, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v53, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v163, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, s2
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v154
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v61, v62, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v153
	v_exp_f32_e32 v58, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v37, v37, v52, v161
	v_div_scale_f32 v56, null, v0, v0, v160
	v_fmac_f32_e32 v62, v53, v62
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v28, v165, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v53, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v51, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v59, v38, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v58, v57
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v52, -v61, v59, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v29
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v152
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v56, v53, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v51, v55, v51
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v157, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v53, v60, v53
	v_div_scale_f32 v60, s1, v160, v0, v160
	v_fmac_f32_e32 v59, v52, v62
	v_mul_f32_e32 v52, v60, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v61, v59, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v56, v52, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v55, null, v61, v61, v154
	v_fmac_f32_e32 v52, v30, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v29, v38, v62, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v58, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v56, v52, v60
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v38, v38, v53, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, vcc_lo, v154, v61, v154
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v62, -v55, v58, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v38, v0, v160
	v_fmac_f32_e32 v58, v62, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v63, null, v51, v51, v153
	v_rcp_f32_e32 v60, v63
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v53, -v63, v60, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v29, v54, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v148
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v29, v159, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v60, v53, v60
	v_div_scale_f32 v53, s0, v153, v51, v153
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v158, v30
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v59, v52, v58 :: v_dual_mul_f32 v54, v53, v60
	v_div_scale_f32 v62, null, v57, v57, v152
	v_fma_f32 v0, -v55, v59, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v64, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v38, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v0, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v155, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v63, v54, v53
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v55, v59, v52
	v_div_scale_f32 v56, s1, v152, v57, v152
	v_div_scale_f32 v55, null, v50, v50, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v52, v52, v58, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v200
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v52, v61, v154
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v54, v0, v60
	v_fma_f32 v0, -v62, v64, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v147
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v63, v54, v53
	v_fmac_f32_e32 v64, v0, v64
	v_rcp_f32_e32 v0, v55
	v_div_scale_f32 v61, s0, v148, v50, v148
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v53, v53, v60, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	v_exp_f32_e32 v41, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v129, v129, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v53, v51, v153
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v55, v0, 1.0
	v_fmac_f32_e32 v0, v60, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v39, v41, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v41, v61, v0 :: v_dual_fmac_f32 v60, 0xbfb8aa3b, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v63, 1.0, v39 :: v_dual_mul_f32 v54, v56, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v55, v41, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v60
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v62, v54, v56
	v_fmac_f32_e32 v41, v39, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v54, v53, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_exp_f32_e32 v32, v58
	v_ldexp_f32 v39, v60, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v62, v54, v56
	v_div_scale_f32 v62, null, v63, v63, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v58, v62
	v_div_fmas_f32 v54, v56, v64, v54
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v53
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v145
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v55, v41, v61
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v53, null, v56, v56, v146
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v62, v58, 1.0
	v_fmac_f32_e32 v58, v39, v58
	v_div_fixup_f32 v39, v54, v57, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v150, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v55, v0, v41
	v_rcp_f32_e32 v55, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, vcc_lo, v147, v63, v147
	v_div_fixup_f32 v0, v0, v50, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v54, v61, v58
	v_fma_f32 v57, -v53, v55, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v64, -v62, v54, v61
	v_fmac_f32_e32 v55, v57, v55
	v_div_scale_f32 v57, s0, v146, v56, v146
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v60, 1.0, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v151, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v41, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v149, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v51, v57, v55
	v_div_scale_f32 v50, null, v60, v60, v144
	v_fmac_f32_e32 v54, v64, v58
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v59, v50
	v_fma_f32 v52, -v62, v54, v61
	v_fma_f32 v61, -v53, v51, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v65, null, v0, v0, v145
	v_fmac_f32_e32 v51, v61, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v62, v65
	v_fma_f32 v64, -v50, v59, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v53, -v53, v51, v57
	v_fmac_f32_e32 v59, v64, v59
	v_div_scale_f32 v64, s1, v144, v60, v144
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v65, v62, 1.0
	v_dual_mul_f32 v61, v64, v59 :: v_dual_fmac_f32 v62, v66, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v50, v61, v64
	v_fmac_f32_e32 v61, v57, v59
	v_div_fmas_f32 v52, v52, v58, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v53, v55, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v55, 0, 0x42800000, s3
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v139
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v52, v63, v147
	v_div_scale_f32 v63, s2, v145, v0, v145
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v55, 0xbfb8aa3b, v138
	v_exp_f32_e32 v58, v58
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v51, v63, v62
	v_fma_f32 v50, -v50, v61, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v56, v146
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v65, v51, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v191
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_ldexp_f32 v54, v58, v54
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v35, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v137
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v50, v59, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v65, v51, v63
	v_div_scale_f32 v55, null, v54, v54, v139
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v35, v35, v53
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v59, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v42, v141, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v62, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v51, 1.0, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v58, v57
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v34, v0, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v55, v59, 1.0
	v_div_scale_f32 v58, null, v51, v51, v138
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v57, v59
	v_div_scale_f32 v57, vcc_lo, v139, v54, v139
	v_rcp_f32_e32 v63, v58
	v_div_scale_f32 v64, null, v62, v62, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v65, v57, v59 :: v_dual_mul_f32 v34, v143, v0
	v_div_fixup_f32 v35, v50, v60, v144
	v_rcp_f32_e32 v50, v64
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v61, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v55, v65, v57
	v_div_scale_f32 v53, s0, v138, v51, v138
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v58, v63, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v65, v56, v59
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v142, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v60, v63
	v_fma_f32 v56, -v64, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v55, v65, v57
	v_div_scale_f32 v60, null, v0, v0, v134
	v_dual_mul_f32 v57, v53, v63 :: v_dual_fmac_f32 v50, v56, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v55, v55, v59, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v59, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v58, v57, v53
	v_div_scale_f32 v56, s1, v137, v62, v137
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v57, v61, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v198
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v65, v56, v50
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v140, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v55, v54, v139
	v_fma_f32 v53, -v58, v57, v53
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v60, v59, 1.0
	v_fma_f32 v54, -v64, v65, v56
	v_div_scale_f32 v61, s2, v134, v0, v134
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v58, 0xbfb8aa3b, v132 :: v_dual_fmac_f32 v59, v55, v59
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v65, v54, v50
	v_div_fmas_f32 v53, v53, v63, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v44
	v_exp_f32_e32 v44, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v113, v113, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v64, v65, v56
	v_div_fixup_f32 v51, v53, v51, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v50, v56, v50, v65
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v44, v44, v55
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v98
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v114, v114, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v196
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v44, v50, v62, v137
	v_mul_f32_e32 v57, v61, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v135, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v58, -v60, v57, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v57, v58, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v56, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v53, v53, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v60, v57, v61
	v_div_fmas_f32 v50, v50, v59, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v58
	v_div_fixup_f32 v0, v50, v0, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v133
	v_cndmask_b32_e64 v50, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v136, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v54, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v58, v57, 1.0
	v_div_scale_f32 v63, null, v0, v0, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v54, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v51, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v54, v54, v133
	v_div_scale_f32 v59, s0, v133, v54, v133
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v63, v51, 1.0
	v_rcp_f32_e32 v55, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v51, v52, v51
	v_fma_f32 v60, -v66, v55, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v55, v60, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v52, s0, v98, v0, v98
	v_fmac_f32_e32 v57, v62, v57
	v_mul_f32_e32 v61, v59, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, s1, v132, v53, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v56, -v66, v61, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v61, v56, v55 :: v_dual_mul_f32 v56, v62, v57
	v_fma_f32 v59, -v66, v61, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v64, -v58, v56, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v60, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v55, v59, v55, v61
	v_fmac_f32_e32 v56, v64, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v50, 1.0, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v197
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v54, v55, v54, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v55, -v58, v56, v62
	v_div_scale_f32 v58, null, v50, v50, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v59, v58
	v_mul_f32_e32 v62, v52, v51
	v_div_fmas_f32 v55, v55, v57, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v195
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v57, 0, 0x42800000, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v53, v55, v53, v132
	v_fma_f32 v55, -v63, v62, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v58, v59, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v127 :: v_dual_mul_f32 v106, v106, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v62, v55, v51 :: v_dual_mul_f32 v105, v105, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v59, v64, v59
	v_div_scale_f32 v64, s1, v131, v50, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v128
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v63, v62, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v56, v57, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v55, v61, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v60, v64, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v45, v52, v51, v62
	v_fma_f32 v63, -v58, v60, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v52, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v45, v0, v98
	v_fmac_f32_e32 v60, v63, v59
	v_div_scale_f32 v66, null, v56, v56, v127
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v107, v107, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v58, v60, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v62, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v59, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v122
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_ldexp_f32 v59, v63, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v51, v50, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v66, v62, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v58, 1.0, v59 :: v_dual_mul_f32 v45, v130, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v61, v62
	v_div_scale_f32 v61, s0, v127, v56, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v63, null, v58, v58, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v51, v52
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v54, s1, v126, v58, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v67, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v57, null, v55, v55, v128
	v_div_scale_f32 v60, vcc_lo, v128, v55, v128
	v_div_scale_f32 v52, null, v0, v0, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v65, v57
	v_fma_f32 v64, -v57, v65, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v65, v64, v65 :: v_dual_mul_f32 v64, v61, v62
	v_mul_f32_e32 v59, v60, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v57, v59, v60
	v_fmac_f32_e32 v59, v50, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v66, v64, v61
	v_fma_f32 v51, -v57, v59, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v64, v50, v62
	v_fma_f32 v50, -v63, v67, 1.0
	v_div_fmas_f32 v51, v51, v65, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v194
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v50, v67
	v_rcp_f32_e32 v50, v52
	v_fma_f32 v53, -v66, v64, v61
	v_div_fixup_f32 v51, v51, v55, v128
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v53, v53, v62, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v193
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, s0, v122, v0, v122
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v52, v50, 1.0
	v_div_fixup_f32 v53, v53, v56, v127
	v_mul_f32_e32 v55, v54, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v50, v60, v50 :: v_dual_fmac_f32 v59, 0xbfb8aa3b, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v98, v123, v53 :: v_dual_fmac_f32 v61, 0xbfb8aa3b, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v63, v55, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v55, v59, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v47, v56, v57
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v56, v62, v50
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v182
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v52, v56, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v63, v55, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v63, null, v64, v64, v121
	v_fmac_f32_e32 v56, v47, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v47, v61, v60
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v52, -v52, v56, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v46, v57
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v54, v54, v67, v55
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v59, v63
	v_div_fmas_f32 v50, v52, v50, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v52, v61
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v61, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v62, vcc_lo, v121, v64, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v50, v0, v122
	v_div_scale_f32 v50, null, v61, v61, v182
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v125, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v52, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v52, v50
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v63, v59, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v59, v47, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v54, v58, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v65, null, v0, v0, v119
	v_mul_f32_e32 v54, v62, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v63, v54, v62
	v_fmac_f32_e32 v54, v60, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v50, v52, 1.0
	v_fmac_f32_e32 v52, v60, v52
	v_rcp_f32_e32 v60, v65
	v_div_scale_f32 v57, null, v55, v55, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v56, v57
	v_fma_f32 v66, -v65, v60, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v60, v66, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, s3
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v97, v97, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v51, -v63, v54, v62
	v_fma_f32 v58, -v57, v56, 1.0
	v_div_scale_f32 v63, s1, v182, v61, v182
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v51, v51, v59, v54
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v58, v56
	v_div_scale_f32 v58, s0, v120, v55, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v117
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v64, v121
	v_div_scale_f32 v64, s2, v119, v0, v119
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v54, v59, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v53, v58, v56 :: v_dual_add_f32 v54, 1.0, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v57, v53, v58
	v_fmac_f32_e32 v53, v62, v56
	v_mul_f32_e32 v62, v63, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v57, -v57, v53, v58
	v_fma_f32 v58, -v50, v62, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v47, v124, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v57, v56, v53
	v_mul_f32_e32 v56, v64, v60
	v_fmac_f32_e32 v62, v58, v52
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v53, v53, v55, v120
	v_fma_f32 v58, -v65, v56, v64
	v_fma_f32 v50, -v50, v62, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v56, v58, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v58, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v50, v52, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v189
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v65, v56, v64
	v_div_scale_f32 v63, null, v54, v54, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v52, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v61, v182
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v58, v57
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v62, v63
	v_div_fmas_f32 v56, v64, v60, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v90, v90, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v52, v52, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v56, v0, v119
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v63, v62, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v92, v92, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, null, v57, v57, v116
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v59, v62
	v_div_scale_f32 v59, vcc_lo, v117, v54, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v64, v60
	v_div_scale_f32 v66, null, v52, v52, v115
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v67, v59, v62
	v_rcp_f32_e32 v55, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v56, -v63, v67, v59
	v_fma_f32 v61, -v60, v64, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v65, 0xbfb8aa3b, v181 :: v_dual_fmac_f32 v64, v61, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v0, v65, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v91, v91, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v50, s0, v116, v57, v116
	v_fmac_f32_e32 v67, v56, v62
	v_fma_f32 v56, -v66, v55, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v50, v64
	v_fma_f32 v53, -v63, v67, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v59, null, v0, v0, v181
	v_div_fmas_f32 v53, v53, v62, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v60, v58, v50
	v_fmac_f32_e32 v55, v56, v55
	v_div_scale_f32 v56, s1, v115, v52, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v62, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v61, v59
	v_div_scale_f32 v62, s2, v181, v0, v181
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v60, v58, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v63, v56, v55
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v89, v89, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v53, v54, v117
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v109
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v54, -v59, v61, 1.0
	v_fma_f32 v53, -v66, v63, v56
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v72, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v60, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v54, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v63, v53, v55
	v_div_fmas_f32 v50, v50, v64, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v66, v63, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v54, v60, v54
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v57, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v58, v62, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v82, v82, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v59, v58, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v57, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v58, v64, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v53, v67
	v_ldexp_f32 v53, v53, v65
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v55, v56, v55, v63
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v65
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v55, v52, v115
	v_fma_f32 v55, -v59, v58, v62
	v_div_scale_f32 v59, null, v54, v54, v109
	v_div_scale_f32 v67, null, v53, v53, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v55, v55, v61, v58
	v_rcp_f32_e32 v58, v59
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v83, v83, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v55, v0, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v59, v58, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v108
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v67, v56, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v58, v63, v58
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v111, v0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v60, v56
	v_div_scale_f32 v60, s0, v110, v53, v110
	v_div_scale_f32 v63, s1, v109, v54, v109
	v_div_scale_f32 v64, null, v0, v0, v102
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v61, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v50, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v51, 1.0, v55 :: v_dual_mul_f32 v62, v60, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v67, v62, v60
	v_fma_f32 v55, -v64, v50, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v62, v57, v56 :: v_dual_mul_f32 v57, v63, v58
	v_fma_f32 v52, -v67, v62, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v60, -v59, v57, v63
	v_div_fmas_f32 v52, v52, v56, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v60, v58
	v_div_scale_f32 v56, null, v51, v51, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v52, v52, v53, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v59, v57, v63
	v_rcp_f32_e32 v59, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v43, v53, v58, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v61, 0xbfb8aa3b, v99
	v_cndmask_b32_e64 v57, 0, 0x42800000, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v56, v59, 1.0
	v_fmac_f32_e32 v50, v55, v50
	v_div_scale_f32 v55, s0, v102, v0, v102
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v59, v62, v59
	v_div_scale_f32 v62, s1, v108, v51, v108
	v_mul_f32_e32 v58, v55, v50
	v_div_fixup_f32 v54, v43, v54, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v57
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v64, v58, v55
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v61, v60
	v_cndmask_b32_e64 v61, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_dual_fmac_f32 v58, v43, v50 :: v_dual_mul_f32 v43, v62, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v53, v57, v53
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v95 :: v_dual_mul_f32 v54, v101, v54
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v64, v58, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v63, -v56, v43, v62
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v55, v50, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v63, v59
	v_div_scale_f32 v57, null, v36, v36, v99
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, null, v53, v53, v96
	v_rcp_f32_e32 v31, v57
	v_fma_f32 v55, -v56, v43, v62
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v62, v63
	v_div_fixup_f32 v0, v50, v0, v102
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v43, v55, v59, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v61, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v59, vcc_lo, v99, v36, v99
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v57, v31, 1.0
	v_div_fixup_f32 v43, v43, v51, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v51, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v63, v62, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v64, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v104, v43
	v_dual_mul_f32 v43, v103, v0 :: v_dual_fmac_f32 v62, v60, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v61, null, v55, v55, v95
	v_div_scale_f32 v60, s0, v96, v53, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v51, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v61
	v_mul_f32_e32 v58, v59, v31
	v_mul_f32_e32 v64, v60, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v57, v58, v59
	v_fmac_f32_e32 v58, v50, v31
	v_fma_f32 v50, -v63, v64, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v51, -v57, v58, v59
	v_fmac_f32_e32 v64, v50, v62
	v_fma_f32 v50, -v61, v65, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v51, v31, v58
	v_fma_f32 v51, -v63, v64, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v65, v50, v65
	v_div_scale_f32 v50, s1, v95, v55, v95
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v68, v100, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v52, null, v0, v0, v88
	v_div_fmas_f32 v27, v51, v62, v64
	v_mul_f32_e32 v51, v50, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v56, v52
	v_div_fixup_f32 v31, v31, v36, v99
	v_fma_f32 v26, -v61, v51, v50
	v_div_fixup_f32 v27, v27, v53, v96
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v86
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v51, v26, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v26, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v52, v56, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v59, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v61, v51, v50
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v53
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v60, s0, v88, v0, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v56, v25, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v26, v57
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v81
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v50, v65, v51
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v26, 1.0, v26 :: v_dual_mul_f32 v51, v60, v56
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v23, v36
	v_exp_f32_e32 v36, v53
	v_exp_f32_e32 v57, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v53, null, v26, v26, v86
	v_fma_f32 v59, -v52, v51, v60
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v50, v50, v55, v95
	v_rcp_f32_e32 v55, v53
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v51, v59, v56
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v25, v36, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v23, v23, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v57, v57, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v52, -v52, v51, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_mul_f32 v66, v93, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v60, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v59, -v53, v55, 1.0
	v_div_fmas_f32 v51, v52, v56, v51
	v_div_scale_f32 v56, vcc_lo, v86, v26, v86
	v_div_scale_f32 v52, null, v25, v25, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v59, v55
	v_div_fixup_f32 v0, v51, v0, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v57, 1.0, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v59, -v36, v60, 1.0
	v_rcp_f32_e32 v62, v52
	v_dual_mul_f32 v63, v56, v55 :: v_dual_mul_f32 v70, v94, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v58, null, v57, v57, v84
	v_fmac_f32_e32 v60, v59, v60
	v_div_scale_f32 v59, s0, v85, v23, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v53, v63, v56
	v_rcp_f32_e32 v61, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v52, v62, 1.0
	v_mul_f32_e32 v65, v59, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v63, v0, v55
	v_fmac_f32_e32 v62, v64, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v0, -v36, v65, v59
	v_div_scale_f32 v64, s2, v81, v25, v81
	v_fma_f32 v51, -v58, v61, 1.0
	v_fma_f32 v27, -v53, v63, v56
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v65, v0, v60
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v53, |v105|, |v106|, |v107|
	v_max_f32_e64 v56, |v97|, |v98|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v61, v51, v61
	v_div_scale_f32 v51, s1, v84, v57, v84
	v_fma_f32 v36, -v36, v65, v59
	v_div_fmas_f32 v27, v27, v55, v63
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v69, v51, v61
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v55, |v45|, |v16|, |v15|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v36, v36, v60, v65
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v26, v27, v26, v86
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v27, |v33|, |v28|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v87, v31
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_fixup_f32 v23, v36, v23, v85
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v71, v73, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v73, v64, v62
	v_fma_f32 v50, -v58, v69, v51
.Ltmp15:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v59, |v48|, |v11|, |v9|
	v_max3_f32 v53, v53, v55, |v14|
	v_max3_f32 v55, |v91|, |v92|, |v12|
.Ltmp16:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v52, v73, v64
	v_fmac_f32_e32 v69, v50, v61
	s_mov_b32 s0, 0x76543210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v73, v0, v62
	v_fma_f32 v0, -v58, v69, v51
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v51, |v129|, |v41|, |v39|
	v_max3_f32 v58, |v72|, |v82|, |v83|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp18:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v50, -v52, v73, v64
	v_div_fmas_f32 v0, v0, v61, v69
	s_mov_b32 vcc_lo, s2
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v52, |v32|, |v20|, |v18|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v50, v50, v62, v73
	v_div_fixup_f32 v0, v0, v57, v84
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v57, |v47|, |v89|, |v90|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v50, v25, v81
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v50, |v24|, |v38|, |v37|
.Ltmp24:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v80, v0
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v30|, |v29|, |v21|
	v_max3_f32 v56, v56, |v46|, v57
.Ltmp26:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v77, v25
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, v27, |v22|, v50
	v_max3_f32 v27, v51, v52, |v19|
	v_max_f32_e64 v50, |v49|, |v42|
	v_max3_f32 v51, |v35|, |v113|, |v114|
	v_max3_f32 v52, |v44|, |v40|, |v17|
	v_max3_f32 v57, v58, v59, |v10|
.Ltmp28:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v78, v26
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v25, v0, v27
	v_max3_f32 v51, v50, |v34|, v51
.Ltmp30:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v79, v23
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v26, |v68|, |v54|
	v_max3_f32 v27, |v43|, |v65|, |v66|
	v_max3_f32 v25, v56, v55, v57
	v_max3_f32 v23, v51, v52, v53
	v_max3_f32 v51, |v58|, |v50|, |v36|
	v_max3_f32 v52, |v31|, |v5|, |v6|
	v_max3_f32 v53, |v71|, |v70|, |v8|
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v55, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v56, v23, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v26, v26, |v67|, v27
	v_max3_f32 v27, v51, v52, |v7|
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v51, v55, v55 :: v_dual_max_f32 v52, v56, v56
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v55, v25, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v27, v26, v53, v27
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v53, 3, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v59, v0, v51 :: v_dual_max_f32 v60, v23, v52
	v_max_f32_e32 v0, v55, v55
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v51, 4, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_add_u32 v52, v53, 9, 0
	v_lshlrev_b32_e32 v23, 5, v53
	v_permlanex16_b32 v55, v27, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v61, v25, v0 :: v_dual_and_b32 v26, 0x60, v203
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v0, v51, 2, v52
	s_waitcnt vmcnt(4)
	v_and_or_b32 v13, 0x680, v13, v23
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v52, v55, v55 :: v_dual_lshlrev_b32 v25, 1, v2
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v55, v23, v26
	v_lshl_add_u32 v0, v1, 4, v0
	v_lshrrev_b32_e32 v56, 3, v2
	v_xor_b32_e32 v13, v13, v26
	v_lshl_add_u32 v57, v51, 6, 0
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v62, v27, v52
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v25, v55
	v_add_nc_u32_e32 v2, 0, v2
	v_lshlrev_b32_e32 v1, 3, v1
	v_add3_u32 v13, v57, v56, v13
	ds_store_b128 v0, v[59:62]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[59:62], v13
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v0, v59 :: v_dual_mov_b32 v13, v60
	v_dual_mov_b32 v27, v61 :: v_dual_max_f32 v52, v59, v59
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v55, v60, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v27, v27 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v56, v62, v62
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v62, v62 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v13, v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v0, v52, v0
	v_max_f32_e32 v52, v61, v61
	v_max_f32_e32 v13, v55, v13
	v_max_f32_e32 v55, v62, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v27, v52, v27
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v59, v13 :: v_dual_max_f32 v52, v56, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v55, v27
	v_mov_b32_dpp v59, v59 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v56, v52
	v_mov_b32_dpp v55, v55 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v59, v59, v59
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v56, v56 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v55, v55, v55
	v_dual_max_f32 v13, v13, v59 :: v_dual_max_f32 v56, v56, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v27, v27, v55
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v59, v13 :: v_dual_max_f32 v52, v52, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v55, v27
	v_mov_b32_dpp v59, v59 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v56, v52
	v_mov_b32_dpp v55, v55 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v57, v0 :: v_dual_max_f32 v60, v59, v59
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v57, v57 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v60, v13, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v13, v56, v56
	v_max_f32_e32 v57, v57, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v62, v52, v13
	v_max_f32_e32 v0, v0, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v57, v0
	v_mov_b32_dpp v57, v57 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v57, v57, v57
	v_dual_max_f32 v59, v0, v57 :: v_dual_max_f32 v0, v55, v55
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v55, 1, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v61, v27, v0 :: v_dual_lshlrev_b32 v0, 5, v51
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v27, v53, 4, 0
	v_add3_u32 v2, v2, v55, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v0, v27, v0, v1
	ds_store_b128 v2, v[59:62]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[59:62], v0
.Ltmp61:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v59, v59
	v_max_f32_e32 v60, v60, v60
	v_max_f32_e32 v62, v62, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v2, 0x2b8cbccc, v0
	v_max_f32_e32 v0, v61, v61
	v_max_f32_e32 v60, 0x2b8cbccc, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v62, 0x2b8cbccc, v62
	v_div_scale_f32 v13, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v53, 0x2b8cbccc, v0
	v_div_scale_f32 v55, vcc_lo, v2, 0x40e00000, v2
	v_rcp_f32_e32 v27, v13
	v_div_scale_f32 v63, null, 0x40e00000, 0x40e00000, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_scale_f32 v56, null, 0x40e00000, 0x40e00000, v53
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt vmcnt(0)
	v_add_co_u32 v0, s0, s34, v76
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v64, null, 0x40e00000, 0x40e00000, v62
	v_rcp_f32_e32 v59, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v1, -v13, v27, 1.0
	v_fmac_f32_e32 v27, v1, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_add_co_u32 v51, s0, s34, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v57, v55, v27
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v52, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[0:1]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v61, -v13, v57, v55
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s34, v74
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[38:39], v[51:52]
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s3
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v57, v61, v27
	v_fma_f32 v61, -v56, v59, 1.0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[51:52]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v52.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[38:39], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v13, -v13, v57, v55
	v_fmac_f32_e32 v59, v61, v59
	v_rcp_f32_e32 v55, v63
	v_div_scale_f32 v61, s6, v53, 0x40e00000, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v13, v13, v27, v57
	v_rcp_f32_e32 v57, v64
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v27, v61, v59
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v2, v13, 0x40e00000, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v63, v55, 1.0
	v_fma_f32 v13, -v56, v27, v61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v69, -v64, v57, 1.0
	v_fmac_f32_e32 v55, v51, v55
	v_div_scale_f32 v51, s7, v60, 0x40e00000, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v27, v13, v59
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v13.l, v2.h
	v_mov_b16_e32 v13.h, v52.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v73, v51, v55
	v_fmac_f32_e32 v57, v69, v57
	v_div_scale_f32 v69, s8, v62, 0x40e00000, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v13
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v56, v27, v61
	v_fma_f32 v56, -v63, v73, v51
	v_mul_f32_e32 v61, v69, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v13, v2, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v27, v0, v59, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v73, v56, v55
	v_fma_f32 v2, -v64, v61, v69
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v59, 0xffff0000, v13
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v27, v27, 0x40e00000, v53
	v_fma_f32 v51, -v63, v73, v51
	v_fmac_f32_e32 v61, v2, v57
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s6, s34, v201
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v53, null, v59, v59, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v51, v55, v73
	v_fma_f32 v55, -v64, v61, v69
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v51, v53
	v_div_scale_f32 v56, null, v59, v59, v28
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v2, 0x40e00000, v60
	v_div_fmas_f32 v55, v55, v57, v61
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s35, 0, s6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v52.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v61.l, v2.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v55, v55, 0x40e00000, v62
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_fma_f32 v60, -v53, v51, 1.0
	v_rcp_f32_e32 v62, v56
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v61.h, v52.h
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[38:39], v[0:1]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v57, 1, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v51, v60, v51
	v_div_scale_f32 v60, vcc_lo, v33, v59, v33
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[36:37], v[0:1]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v63, null, v59, v59, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v61, v60, v51
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v27, v57, 0x7fff
	v_mov_b16_e32 v52.l, v55.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v57, -v56, v62, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v27, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v53, v61, v60
	v_rcp_f32_e32 v69, v63
	v_div_scale_f32 v73, null, v59, v59, v24
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v52, 1, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v62, v57, v62
	v_div_scale_f32 v74, s8, v28, v59, v28
	v_fmac_f32_e32 v61, v0, v51
	v_rcp_f32_e32 v0, v73
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v55, v52, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v52, v74, v62
	v_fma_f32 v75, -v63, v69, 1.0
	v_fma_f32 v53, -v53, v61, v60
	v_div_scale_f32 v77, null, v59, v59, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v56, v52, v74
	v_fmac_f32_e32 v69, v75, v69
	v_div_scale_f32 v75, s9, v22, v59, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v76, -v73, v0, 1.0
	v_div_fmas_f32 v51, v53, v51, v61
	v_dual_fmac_f32 v52, v60, v62 :: v_dual_mul_f32 v53, v75, v69
	v_rcp_f32_e32 v60, v77
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v0, v76, v0
	v_div_scale_f32 v61, s10, v24, v59, v24
	v_div_scale_f32 v76, null, v59, v59, v37
	v_div_fixup_f32 v33, v51, v59, v33
	v_fma_f32 v51, -v56, v52, v74
	v_fma_f32 v56, -v63, v53, v75
	v_mul_f32_e32 v74, v61, v0
	v_rcp_f32_e32 v78, v76
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v79, -v77, v60, 1.0
	v_div_fmas_f32 v51, v51, v62, v52
	v_fmac_f32_e32 v53, v56, v69
	v_fma_f32 v52, -v73, v74, v61
	v_div_scale_f32 v56, s8, v38, v59, v38
	v_fmac_f32_e32 v60, v79, v60
	v_div_fixup_f32 v28, v51, v59, v28
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v62, -v76, v78, 1.0
	v_fma_f32 v51, -v63, v53, v75
	v_fmac_f32_e32 v74, v52, v0
	v_div_scale_f32 v63, null, v59, v59, v30
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v52, v56, v60
	v_fmac_f32_e32 v78, v62, v78
	v_div_scale_f32 v62, s11, v37, v59, v37
	v_div_fmas_f32 v51, v51, v69, v53
	v_fma_f32 v53, -v73, v74, v61
	v_rcp_f32_e32 v69, v63
	v_div_scale_f32 v75, null, v59, v59, v29
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v61, -v77, v52, v56
	v_mul_f32_e32 v73, v62, v78
	v_div_fmas_f32 v0, v53, v0, v74
	v_rcp_f32_e32 v53, v75
	v_div_fixup_f32 v22, v51, v59, v22
	v_fmac_f32_e32 v52, v61, v60
	v_fma_f32 v61, -v76, v73, v62
	v_fma_f32 v74, -v63, v69, 1.0
	v_div_fixup_f32 v24, v0, v59, v24
	v_div_scale_f32 v51, s9, v30, v59, v30
	v_fma_f32 v0, -v77, v52, v56
	v_fmac_f32_e32 v73, v61, v78
	v_fmac_f32_e32 v69, v74, v69
	v_fma_f32 v56, -v75, v53, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v61, null, v59, v59, v21
	v_div_fmas_f32 v0, v0, v60, v52
	v_fma_f32 v52, -v76, v73, v62
	v_mul_f32_e32 v60, v51, v69
	v_fmac_f32_e32 v53, v56, v53
	v_div_scale_f32 v62, s8, v29, v59, v29
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v56, v61
	v_div_scale_f32 v74, null, v59, v59, v129
	v_div_fmas_f32 v52, v52, v78, v73
	v_fma_f32 v73, -v63, v60, v51
	v_mul_f32_e32 v76, v62, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v74
	v_div_fixup_f32 v38, v0, v59, v38
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v60, v73, v69
	v_fma_f32 v0, -v75, v76, v62
	v_fma_f32 v77, -v61, v56, 1.0
	v_div_fixup_f32 v37, v52, v59, v37
	v_div_scale_f32 v52, s10, v21, v59, v21
	v_fma_f32 v51, -v63, v60, v51
	v_fmac_f32_e32 v76, v0, v53
	v_fmac_f32_e32 v56, v77, v56
	v_fma_f32 v77, -v74, v78, 1.0
	v_div_scale_f32 v79, null, v59, v59, v39
	v_div_fmas_f32 v51, v51, v69, v60
	v_fma_f32 v60, -v75, v76, v62
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v0, v52, v56
	v_fmac_f32_e32 v78, v77, v78
	v_div_scale_f32 v77, s11, v129, v59, v129
	v_div_fmas_f32 v53, v60, v53, v76
	v_rcp_f32_e32 v60, v79
	v_fma_f32 v62, -v61, v0, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v69, v77, v78
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v29, v53, v59, v29
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v64, 0xffff0000, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v0, v62, v56
	v_fma_f32 v62, -v74, v69, v77
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v53, -v79, v60, 1.0
	v_div_scale_f32 v84, null, v64, v64, v14
	v_fmac_f32_e32 v69, v62, v78
	v_div_scale_f32 v62, s9, v39, v59, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v60, v53, v60
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v76, v62, v60
	v_div_scale_f32 v73, null, v59, v59, v41
	v_div_fixup_f32 v30, v51, v59, v30
	v_fma_f32 v51, -v61, v0, v52
	v_div_scale_f32 v61, null, v59, v59, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v63, v73
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v51, v56, v0
	v_rcp_f32_e32 v53, v61
	v_fma_f32 v51, -v74, v69, v77
	v_div_scale_f32 v74, null, v59, v59, v20
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v21, v0, v59, v21
	v_div_fmas_f32 v51, v51, v78, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v75, -v73, v63, 1.0
	v_rcp_f32_e32 v69, v74
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v61, v53, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v63, v75, v63
	v_div_scale_f32 v75, s8, v41, v59, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v77, v53
	v_div_scale_f32 v77, null, v59, v59, v18
	v_mul_f32_e32 v52, v75, v63
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v56, -v73, v52, v75
	v_fmac_f32_e32 v52, v56, v63
	v_div_fixup_f32 v56, v51, v59, v129
	v_fma_f32 v51, -v79, v76, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v73, v52, v75
	v_div_scale_f32 v73, s10, v32, v59, v32
	v_fma_f32 v75, -v74, v69, 1.0
	v_fmac_f32_e32 v76, v51, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v0, v0, v63, v52
	v_rcp_f32_e32 v52, v77
	v_mul_f32_e32 v51, v73, v53
	v_fmac_f32_e32 v69, v75, v69
	v_div_scale_f32 v63, s8, v20, v59, v20
	v_div_scale_f32 v75, null, v59, v59, v19
	v_div_fixup_f32 v41, v0, v59, v41
	v_fma_f32 v0, -v79, v76, v62
	v_fma_f32 v62, -v61, v51, v73
	v_mul_f32_e32 v78, v63, v69
	v_rcp_f32_e32 v79, v75
	v_fma_f32 v80, -v77, v52, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v57, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v60, v76
	v_fmac_f32_e32 v51, v62, v53
	v_fma_f32 v60, -v74, v78, v63
	v_fmac_f32_e32 v52, v80, v52
	v_div_scale_f32 v62, s9, v18, v59, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v78, v60, v69 :: v_dual_and_b32 v55, 0xffff0000, v2
	v_fma_f32 v76, -v75, v79, 1.0
	v_div_fixup_f32 v39, v0, v59, v39
	v_fma_f32 v0, -v61, v51, v73
	v_mul_f32_e32 v60, v62, v52
	v_div_scale_f32 v73, null, v64, v64, v49
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v79, v76, v79
	v_div_scale_f32 v61, s11, v19, v59, v19
	v_div_fmas_f32 v0, v0, v53, v51
	v_fma_f32 v51, -v74, v78, v63
	v_fma_f32 v53, -v77, v60, v62
	v_rcp_f32_e32 v63, v73
	v_div_scale_f32 v76, null, v64, v64, v42
	v_mul_f32_e32 v74, v61, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v60, v53, v52
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v53, v76
	v_div_fmas_f32 v51, v51, v69, v78
	v_fma_f32 v69, -v75, v74, v61
	v_div_fixup_f32 v32, v0, v59, v32
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v78, -v73, v63, 1.0
	v_fma_f32 v0, -v77, v60, v62
	v_div_fixup_f32 v20, v51, v59, v20
	v_fmac_f32_e32 v74, v69, v79
	v_div_scale_f32 v51, s8, v49, v64, v49
	v_fmac_f32_e32 v63, v78, v63
	v_fma_f32 v62, -v76, v53, 1.0
	v_div_scale_f32 v69, null, v64, v64, v34
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v57, v57, v83
	v_div_fmas_f32 v0, v0, v52, v60
	v_fma_f32 v52, -v75, v74, v61
	v_dual_mul_f32 v60, v51, v63 :: v_dual_fmac_f32 v53, v62, v53
	v_rcp_f32_e32 v61, v69
	v_div_scale_f32 v62, s9, v42, v64, v42
	v_div_scale_f32 v75, null, v64, v64, v35
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v77, v62, v53
	v_div_fmas_f32 v52, v52, v79, v74
	v_fma_f32 v74, -v73, v60, v51
	v_rcp_f32_e32 v79, v75
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v78, -v69, v61, 1.0
	v_div_fixup_f32 v18, v0, v59, v18
	v_div_fixup_f32 v19, v52, v59, v19
	v_fmac_f32_e32 v60, v74, v63
	v_fma_f32 v0, -v76, v77, v62
	v_div_scale_f32 v59, null, v64, v64, v113
	v_fmac_f32_e32 v61, v78, v61
	v_div_scale_f32 v52, s10, v34, v64, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v74, -v75, v79, 1.0
	v_fma_f32 v51, -v73, v60, v51
	v_fmac_f32_e32 v77, v0, v53
	v_rcp_f32_e32 v73, v59
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v0, v52, v61 :: v_dual_fmac_f32 v79, v74, v79
	v_div_scale_f32 v74, s11, v35, v64, v35
	v_div_fmas_f32 v51, v51, v63, v60
	v_fma_f32 v60, -v76, v77, v62
	v_div_scale_f32 v78, null, v64, v64, v114
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v62, -v69, v0, v52
	v_mul_f32_e32 v63, v74, v79
	v_fma_f32 v76, -v59, v73, 1.0
	v_div_fmas_f32 v53, v60, v53, v77
	v_rcp_f32_e32 v60, v78
	v_fmac_f32_e32 v0, v62, v61
	v_fma_f32 v62, -v75, v63, v74
	v_fmac_f32_e32 v73, v76, v73
	v_div_scale_f32 v76, s8, v113, v64, v113
	v_div_fixup_f32 v49, v51, v64, v49
	v_div_fixup_f32 v42, v53, v64, v42
	v_fma_f32 v51, -v69, v0, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v63, v62, v79 :: v_dual_mul_f32 v52, v76, v73
	v_fma_f32 v53, -v78, v60, 1.0
	v_div_scale_f32 v62, null, v64, v64, v44
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v69, s9, v114, v64, v114
	v_div_fmas_f32 v0, v51, v61, v0
	v_fma_f32 v51, -v75, v63, v74
	v_fma_f32 v61, -v59, v52, v76
	v_fmac_f32_e32 v60, v53, v60
	v_rcp_f32_e32 v53, v62
	v_div_scale_f32 v74, null, v64, v64, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v61, v73
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v34, v0, v64, v34
	v_rcp_f32_e32 v61, v74
	v_div_fmas_f32 v51, v51, v79, v63
	v_mul_f32_e32 v63, v69, v60
	v_fma_f32 v0, -v59, v52, v76
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v75, -v62, v53, 1.0
	v_div_scale_f32 v76, null, v64, v64, v17
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v35, v51, v64, v35
	v_fma_f32 v51, -v78, v63, v69
	v_fmac_f32_e32 v53, v75, v53
	v_div_scale_f32 v75, s10, v44, v64, v44
	v_fma_f32 v59, -v74, v61, 1.0
	v_div_fmas_f32 v0, v0, v73, v52
	v_rcp_f32_e32 v52, v76
	v_fmac_f32_e32 v63, v51, v60
	v_mul_f32_e32 v51, v75, v53
	v_fmac_f32_e32 v61, v59, v61
	v_div_scale_f32 v73, s8, v40, v64, v40
	v_div_scale_f32 v77, null, v64, v64, v105
	v_div_fixup_f32 v59, v0, v64, v113
	v_fma_f32 v0, -v78, v63, v69
	v_fma_f32 v69, -v62, v51, v75
	v_mul_f32_e32 v78, v73, v61
	v_rcp_f32_e32 v79, v77
	v_fma_f32 v80, -v76, v52, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v51, v69, v53
	v_div_fmas_f32 v0, v0, v60, v63
	v_fma_f32 v63, -v74, v78, v73
	v_fmac_f32_e32 v52, v80, v52
	v_div_scale_f32 v69, s9, v17, v64, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v60, v0, v64, v114
	v_fma_f32 v80, -v77, v79, 1.0
	v_fma_f32 v0, -v62, v51, v75
	v_fmac_f32_e32 v78, v63, v61
	v_mul_f32_e32 v62, v69, v52
	v_div_scale_f32 v75, null, v64, v64, v106
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v63, s11, v105, v64, v105
	v_div_fmas_f32 v0, v0, v53, v51
	v_fma_f32 v51, -v74, v78, v73
	v_fma_f32 v53, -v76, v62, v69
	v_rcp_f32_e32 v73, v75
	v_div_scale_f32 v80, null, v64, v64, v107
	v_mul_f32_e32 v74, v63, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v62, v53, v52
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v53, v80
	v_div_fmas_f32 v51, v51, v61, v78
	v_fma_f32 v61, -v77, v74, v63
	v_div_fixup_f32 v44, v0, v64, v44
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v78, -v75, v73, 1.0
	v_fma_f32 v0, -v76, v62, v69
	v_div_fixup_f32 v40, v51, v64, v40
	v_fmac_f32_e32 v74, v61, v79
	v_div_scale_f32 v51, s8, v106, v64, v106
	v_fmac_f32_e32 v73, v78, v73
	v_fma_f32 v61, -v80, v53, 1.0
	v_div_scale_f32 v69, null, v64, v64, v45
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v52, v62
	v_fma_f32 v52, -v77, v74, v63
	v_mul_f32_e32 v62, v51, v73
	v_fmac_f32_e32 v53, v61, v53
	v_rcp_f32_e32 v76, v69
	v_div_scale_f32 v63, s9, v107, v64, v107
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v77, null, v64, v64, v16
	v_mul_f32_e32 v78, v63, v53
	v_div_fmas_f32 v52, v52, v79, v74
	v_fma_f32 v74, -v75, v62, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v81, v77
	v_fma_f32 v79, -v69, v76, 1.0
	v_div_fixup_f32 v17, v0, v64, v17
	v_fma_f32 v0, -v80, v78, v63
	v_fmac_f32_e32 v62, v74, v73
	v_div_fixup_f32 v61, v52, v64, v105
	v_fmac_f32_e32 v76, v79, v76
	v_div_scale_f32 v52, s10, v45, v64, v45
	v_div_scale_f32 v74, null, v64, v64, v15
	v_fma_f32 v51, -v75, v62, v51
	v_fmac_f32_e32 v78, v0, v53
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v79, -v77, v81, 1.0
	v_mul_f32_e32 v0, v52, v76
	v_rcp_f32_e32 v75, v74
	v_div_fmas_f32 v51, v51, v73, v62
	v_fma_f32 v62, -v80, v78, v63
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v79, v81
	v_div_scale_f32 v79, s11, v16, v64, v16
	v_fma_f32 v63, -v69, v0, v52
	v_div_fmas_f32 v53, v62, v53, v78
	v_rcp_f32_e32 v78, v84
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v73, v79, v81
	v_fma_f32 v80, -v74, v75, 1.0
	v_fmac_f32_e32 v0, v63, v76
	v_div_fixup_f32 v62, v51, v64, v106
	v_div_fixup_f32 v63, v53, v64, v107
	v_fma_f32 v85, -v77, v73, v79
	v_fmac_f32_e32 v75, v80, v75
	v_div_scale_f32 v80, s8, v15, v64, v15
	v_fma_f32 v51, -v69, v0, v52
	v_fma_f32 v53, -v84, v78, 1.0
	v_div_scale_f32 v69, null, v57, v57, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v73, v85, v81 :: v_dual_mul_f32 v52, v80, v75
	v_fmac_f32_e32 v78, v53, v78
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v53, v69
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v51, v76, v0
	v_fma_f32 v51, -v77, v73, v79
	v_fma_f32 v76, -v74, v52, v80
	v_div_scale_f32 v79, null, v57, v57, v98
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v77, s9, v14, v64, v14
	v_div_fmas_f32 v51, v51, v81, v73
	v_fmac_f32_e32 v52, v76, v75
	v_rcp_f32_e32 v73, v79
	v_fma_f32 v81, -v69, v53, 1.0
	v_mul_f32_e32 v76, v77, v78
	v_div_fixup_f32 v45, v0, v64, v45
	v_fma_f32 v0, -v74, v52, v80
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v53, v81, v53
	v_div_scale_f32 v81, null, v57, v57, v46
	v_div_fixup_f32 v16, v51, v64, v16
	v_fma_f32 v51, -v84, v76, v77
	v_div_scale_f32 v74, s10, v97, v57, v97
	v_fma_f32 v80, -v79, v73, 1.0
	v_div_fmas_f32 v0, v0, v75, v52
	v_rcp_f32_e32 v52, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v76, v51, v78 :: v_dual_mul_f32 v51, v74, v53
	v_fmac_f32_e32 v73, v80, v73
	v_div_scale_f32 v80, null, v57, v57, v47
	v_div_scale_f32 v75, s8, v98, v57, v98
	v_div_fixup_f32 v15, v0, v64, v15
	v_fma_f32 v0, -v84, v76, v77
	v_fma_f32 v77, -v69, v51, v74
	v_rcp_f32_e32 v85, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v81, v52, 1.0
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v84, v75, v73
	v_div_fmas_f32 v0, v0, v78, v76
	v_dual_fmac_f32 v51, v77, v53 :: v_dual_fmac_f32 v52, v86, v52
	v_div_scale_f32 v77, s9, v46, v57, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v76, -v79, v84, v75
	v_fma_f32 v78, -v80, v85, 1.0
	v_div_fixup_f32 v14, v0, v64, v14
	v_fma_f32 v0, -v69, v51, v74
	v_mul_f32_e32 v74, v77, v52
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v84, v76, v73
	v_fmac_f32_e32 v85, v78, v85
	v_div_scale_f32 v76, s11, v47, v57, v47
	v_div_scale_f32 v78, null, v57, v57, v89
	v_div_fmas_f32 v0, v0, v53, v51
	v_fma_f32 v53, -v81, v74, v77
	v_div_scale_f32 v86, null, v57, v57, v90
	v_fma_f32 v51, -v79, v84, v75
	v_rcp_f32_e32 v75, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v79, v76, v85 :: v_dual_fmac_f32 v74, v53, v52
	v_rcp_f32_e32 v53, v86
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v64, v0, v57, v97
	v_div_fmas_f32 v51, v51, v73, v84
	v_fma_f32 v73, -v80, v79, v76
	v_fma_f32 v0, -v81, v74, v77
	v_div_scale_f32 v77, null, v57, v57, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v78, v75, 1.0
	v_fmac_f32_e32 v79, v73, v85
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v73, -v86, v53, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v69, v51, v57, v98
	v_fmac_f32_e32 v75, v84, v75
	v_div_scale_f32 v51, s8, v89, v57, v89
	v_div_fmas_f32 v0, v0, v52, v74
	v_fma_f32 v52, -v80, v79, v76
	v_fmac_f32_e32 v53, v73, v53
	v_rcp_f32_e32 v73, v77
	v_div_scale_f32 v80, null, v57, v57, v92
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v74, v51, v75
	v_div_scale_f32 v76, s9, v90, v57, v90
	v_div_fmas_f32 v52, v52, v85, v79
	v_rcp_f32_e32 v85, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v78, v74, v51
	v_mul_f32_e32 v81, v76, v53
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v84, -v77, v73, 1.0
	v_div_fixup_f32 v0, v0, v57, v46
	v_div_fixup_f32 v46, v52, v57, v47
	v_fmac_f32_e32 v74, v79, v75
	v_fma_f32 v47, -v86, v81, v76
	v_fmac_f32_e32 v73, v84, v73
	v_div_scale_f32 v52, s10, v91, v57, v91
	v_fma_f32 v84, -v80, v85, 1.0
	v_fma_f32 v51, -v78, v74, v51
	v_fmac_f32_e32 v81, v47, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v78, v52, v73
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v85, v84, v85
	v_div_scale_f32 v84, s11, v92, v57, v92
	v_div_fmas_f32 v47, v51, v75, v74
	v_fma_f32 v51, -v86, v81, v76
	v_fma_f32 v74, -v77, v78, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v75, v84, v85
	v_div_scale_f32 v86, null, v57, v57, v72
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v78, v74, v73
	v_div_fmas_f32 v51, v51, v53, v81
	v_rcp_f32_e32 v74, v86
	v_fma_f32 v53, -v80, v75, v84
	v_div_scale_f32 v79, null, v57, v57, v12
	v_fma_f32 v52, -v77, v78, v52
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v75, v53, v85
	v_rcp_f32_e32 v87, v79
	v_div_scale_f32 v81, null, v57, v57, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v53, -v86, v74, 1.0
	v_div_fmas_f32 v52, v52, v73, v78
	v_fma_f32 v73, -v80, v75, v84
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v80, v81
	v_fmac_f32_e32 v74, v53, v74
	v_div_scale_f32 v84, s9, v72, v57, v72
	v_div_fmas_f32 v53, v73, v85, v75
	v_rcp_f32_e32 v73, v88
	v_fma_f32 v76, -v79, v87, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v75, v84, v74
	v_div_fixup_f32 v47, v47, v57, v89
	v_div_scale_f32 v89, null, v57, v57, v48
	v_fmac_f32_e32 v87, v76, v87
	v_div_scale_f32 v76, s8, v12, v57, v12
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v88, v73, 1.0
	v_div_fixup_f32 v51, v51, v57, v90
	v_div_fixup_f32 v52, v52, v57, v91
	v_div_fixup_f32 v53, v53, v57, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v73, v85, v73
	v_mul_f32_e32 v77, v76, v87
	v_div_scale_f32 v85, s8, v83, v57, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v79, v77, v76
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v78, v87
	v_fma_f32 v78, -v81, v80, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v79, v77, v76
	v_fma_f32 v79, -v86, v75, v84
	v_fmac_f32_e32 v80, v78, v80
	v_div_scale_f32 v78, s10, v82, v57, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v76, v76, v87, v77
	v_fmac_f32_e32 v75, v79, v74
	v_rcp_f32_e32 v79, v89
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v77, v78, v80
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v12, v76, v57, v12
	v_fma_f32 v76, -v86, v75, v84
	v_mul_f32_e32 v86, v85, v73
	v_fma_f32 v84, -v81, v77, v78
	v_div_scale_f32 v87, null, v57, v57, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v74, v76, v74, v75
	v_fma_f32 v75, -v88, v86, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v77, v84, v80
	v_rcp_f32_e32 v90, v87
	v_fma_f32 v91, -v89, v79, 1.0
	v_div_fixup_f32 v72, v74, v57, v72
	v_fmac_f32_e32 v86, v75, v73
	v_fma_f32 v74, -v81, v77, v78
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v79, v91, v79
	v_div_scale_f32 v76, s9, v48, v57, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v74, v74, v80, v77
	v_fma_f32 v77, -v88, v86, v85
	v_div_scale_f32 v88, null, v57, v57, v10
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v84, -v87, v90, 1.0
	v_mul_f32_e32 v75, v76, v79
	v_div_scale_f32 v81, null, v57, v57, v9
	v_div_fmas_f32 v73, v77, v73, v86
	v_rcp_f32_e32 v77, v88
	v_fmac_f32_e32 v90, v84, v90
	v_fma_f32 v80, -v89, v75, v76
	v_rcp_f32_e32 v84, v81
	v_div_fixup_f32 v74, v74, v57, v82
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v78, s11, v11, v57, v11
	v_fmac_f32_e32 v75, v80, v79
	v_div_fixup_f32 v73, v73, v57, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v82, -v88, v77, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v81, v84, 1.0
	v_fma_f32 v76, -v89, v75, v76
	v_fmac_f32_e32 v77, v82, v77
	v_div_scale_f32 v82, s9, v10, v57, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v86, v84
	v_div_fmas_f32 v75, v76, v79, v75
	v_div_scale_f32 v79, null, v55, v55, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v86, v82, v77
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v48, v75, v57, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v83, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v88, v86, v82
	v_mul_f32_e32 v85, v78, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v75, v77
	v_fma_f32 v80, -v87, v85, v78
	v_div_scale_f32 v75, s10, v68, v55, v68
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v80, v90
	v_div_scale_f32 v80, s8, v9, v57, v9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v76, -v87, v85, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v80, v84
	v_div_scale_f32 v87, null, v55, v55, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v76, v76, v90, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v81, v78, v80
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v90, null, v55, v55, v43
	v_div_fixup_f32 v11, v76, v57, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v78, v85, v84
	v_fma_f32 v85, -v79, v83, 1.0
	v_rcp_f32_e32 v76, v87
	v_rcp_f32_e32 v92, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v81, v78, v80
	v_div_scale_f32 v81, null, v55, v55, v67
	v_fmac_f32_e32 v83, v85, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v80, v84, v78
	v_rcp_f32_e32 v85, v81
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v87, v76, 1.0
	v_fma_f32 v80, -v88, v86, v82
	v_mul_f32_e32 v82, v75, v83
	v_div_scale_f32 v84, s8, v54, v55, v54
	v_fmac_f32_e32 v76, v89, v76
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v79, v82, v75
	v_div_fmas_f32 v77, v80, v77, v86
	v_fma_f32 v88, -v81, v85, 1.0
	v_mul_f32_e32 v91, v84, v76
	v_div_fixup_f32 v9, v78, v57, v9
	v_fmac_f32_e32 v82, v89, v83
	v_div_fixup_f32 v10, v77, v57, v10
	v_fmac_f32_e32 v85, v88, v85
	v_div_scale_f32 v88, s11, v67, v55, v67
	v_fma_f32 v80, -v87, v91, v84
	v_fma_f32 v57, -v79, v82, v75
	v_div_scale_f32 v78, null, v55, v55, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v88, v85
	v_fmac_f32_e32 v91, v80, v76
	v_fma_f32 v77, -v90, v92, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v75, -v81, v86, v88
	v_fma_f32 v79, -v87, v91, v84
	v_fmac_f32_e32 v92, v77, v92
	v_div_scale_f32 v77, s9, v43, v55, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v86, v75, v85
	v_rcp_f32_e32 v75, v78
	v_div_fmas_f32 v57, v57, v83, v82
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v80, v77, v92
	v_div_fmas_f32 v76, v79, v76, v91
	v_fma_f32 v79, -v81, v86, v88
	v_div_scale_f32 v81, null, v55, v55, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v84, -v90, v80, v77
	v_div_fixup_f32 v57, v57, v55, v68
	v_fma_f32 v82, -v78, v75, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v81
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v80, v84, v92
	v_div_fmas_f32 v79, v79, v85, v86
	v_fmac_f32_e32 v75, v82, v75
	v_div_scale_f32 v82, s8, v65, v55, v65
	v_div_fixup_f32 v54, v76, v55, v54
	v_fma_f32 v77, -v90, v80, v77
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v68, v82, v75
	v_fma_f32 v76, -v81, v83, 1.0
	v_div_fixup_f32 v67, v79, v55, v67
	v_div_scale_f32 v79, null, v55, v55, v71
	v_fma_f32 v84, -v78, v68, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v76, v83
	v_div_scale_f32 v76, s10, v66, v55, v66
	v_div_fmas_f32 v77, v77, v92, v80
	v_fmac_f32_e32 v68, v84, v75
	v_rcp_f32_e32 v85, v79
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v80, v76, v83
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v43, v77, v55, v43
	v_fma_f32 v77, -v78, v68, v82
	v_div_scale_f32 v84, null, v55, v55, v70
	v_fma_f32 v78, -v81, v80, v76
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v68, v77, v75, v68
	v_div_scale_f32 v75, null, v55, v55, v8
	v_fma_f32 v82, -v79, v85, 1.0
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v80, v78, v83
	v_rcp_f32_e32 v78, v75
	v_div_scale_f32 v77, s8, v71, v55, v71
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v55, v55, v58
	v_div_fixup_f32 v65, v68, v55, v65
	v_fma_f32 v76, -v81, v80, v76
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v68, -v84, v86, 1.0
	v_rcp_f32_e32 v88, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v75, v78, 1.0
	v_mul_f32_e32 v81, v77, v85
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v86, v68, v86
	v_div_scale_f32 v68, s9, v70, v55, v70
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v87, null, v55, v55, v50
	v_div_fmas_f32 v76, v76, v83, v80
	v_fma_f32 v80, -v79, v81, v77
	v_mul_f32_e32 v83, v68, v86
	v_div_scale_f32 v89, s10, v8, v55, v8
	v_fma_f32 v90, -v82, v88, 1.0
	v_rcp_f32_e32 v91, v87
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v68
	v_mul_f32_e32 v92, v89, v78
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s11, v58, v55, v58
	v_div_fixup_f32 v66, v76, v55, v66
	v_fma_f32 v76, -v79, v81, v77
	v_fmac_f32_e32 v83, v80, v86
	v_fma_f32 v77, -v75, v92, v89
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v68, -v84, v83, v68
	v_fmac_f32_e32 v92, v77, v78
	v_fma_f32 v77, -v82, v79, v90
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s8, v50, v55, v50
	v_div_fmas_f32 v76, v76, v85, v81
	v_fma_f32 v75, -v75, v92, v89
	v_fmac_f32_e32 v79, v77, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v77, v80, v91
	v_div_scale_f32 v81, null, v55, v55, v36
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v71, v76, v55, v71
	v_div_fmas_f32 v68, v68, v86, v83
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v83, v81
	v_div_fmas_f32 v75, v75, v78, v92
	v_fma_f32 v78, -v82, v79, v90
	v_fma_f32 v82, -v87, v77, v80
	v_div_fixup_f32 v68, v68, v55, v70
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v8, v75, v55, v8
	v_div_fmas_f32 v78, v78, v88, v79
	v_fmac_f32_e32 v77, v82, v91
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v76, -v81, v83, 1.0
	v_div_scale_f32 v75, null, v55, v55, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v87, v77, v80
	v_div_fixup_f32 v58, v78, v55, v58
	v_fmac_f32_e32 v83, v76, v83
	v_div_scale_f32 v76, null, v55, v55, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v70, v70, v91, v77
	v_div_scale_f32 v79, vcc_lo, v36, v55, v36
	v_rcp_f32_e32 v77, v75
	v_div_scale_f32 v78, null, v55, v55, v6
	v_mul_f32_e32 v84, v79, v83
	v_div_fixup_f32 v50, v70, v55, v50
	v_div_scale_f32 v85, null, v55, v55, v7
	v_rcp_f32_e32 v80, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_fma_f32 v88, -v81, v84, v79
	v_rcp_f32_e32 v82, v78
	v_fma_f32 v70, -v75, v77, 1.0
	v_rcp_f32_e32 v87, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v88, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v77, v70, v77
	v_div_scale_f32 v70, s8, v31, v55, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v79, -v81, v84, v79
	v_fma_f32 v86, -v76, v80, 1.0
	v_fma_f32 v89, -v78, v82, 1.0
	v_fma_f32 v91, -v85, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v84
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v80, v86, v80
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, s9, v5, v55, v5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v83, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s10, v6, v55, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v11, 15, v30
	v_and_b32_e32 v30, 15, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v90, v70, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s11, v7, v55, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v75, v90, v70
	v_dual_mul_f32 v92, v86, v80 :: v_dual_mul_f32 v93, v89, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v34, 15, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v91, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v88, v77
	v_fma_f32 v81, -v76, v92, v86
	v_fma_f32 v88, -v78, v93, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v75, v90, v70
	v_fma_f32 v75, -v85, v94, v91
	v_dual_fmac_f32 v92, v81, v80 :: v_dual_fmac_f32 v93, v88, v82
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s8, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v77, v90
	v_fmac_f32_e32 v94, v75, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v76, -v76, v92, v86
	v_fma_f32 v75, -v78, v93, v89
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v77, -v85, v94, v91
	v_div_fmas_f32 v76, v76, v80, v92
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v75, v75, v82, v93
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v87, v94
	v_div_fixup_f32 v36, v79, v55, v36
	v_div_fixup_f32 v31, v70, v55, v31
	v_div_fixup_f32 v5, v76, v55, v5
	v_div_fixup_f32 v6, v75, v55, v6
	v_div_fixup_f32 v7, v77, v55, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v61
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v61, v62
	v_rndne_f32_e32 v62, v63
	v_rndne_f32_e32 v63, v64
	v_rndne_f32_e32 v64, v69
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v7, v7, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v79, v46
	v_cvt_i32_f32_e32 v96, v7
	v_and_b32_e32 v7, 15, v22
	v_and_b32_e32 v46, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v203
	v_lshlrev_b32_e32 v22, 4, v211
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v72
	v_rndne_f32_e32 v70, v74
	v_rndne_f32_e32 v72, v73
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v50, v50
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_cvt_i32_f32_e32 v89, v8
	v_and_b32_e32 v8, 15, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v24, 6, v4
	v_xor_b32_e32 v22, v22, v26
	v_lshlrev_b32_e32 v26, 6, v203
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v5, v5, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v86, v57
	v_cvt_i32_f32_e32 v87, v54
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v88, v43
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v24
	v_and_or_b32 v23, 0x1b00, v26, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v73, v18
	v_cvt_i32_f32_e32 v74, v19
	v_cvt_i32_f32_e32 v75, v17
	v_cvt_i32_f32_e32 v76, v16
	v_cvt_i32_f32_e32 v77, v15
	v_cvt_i32_f32_e32 v78, v14
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v81, v12
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v90, v58
	v_cvt_i32_f32_e32 v91, v50
	v_cvt_i32_f32_e32 v92, v36
	v_cvt_i32_f32_e32 v80, v47
	v_cvt_i32_f32_e32 v84, v9
	v_cvt_i32_f32_e32 v85, v10
	v_cvt_i32_f32_e32 v93, v31
	v_cvt_i32_f32_e32 v94, v5
	v_cvt_i32_f32_e32 v95, v6
	v_and_b32_e32 v5, 15, v33
	v_and_b32_e32 v6, 15, v28
	v_and_b32_e32 v9, 15, v38
	v_and_b32_e32 v10, 15, v37
	v_and_b32_e32 v12, 15, v29
	v_and_b32_e32 v17, 15, v39
	v_and_b32_e32 v18, 15, v32
	v_and_b32_e32 v28, 15, v49
	v_and_b32_e32 v29, 15, v42
	v_and_b32_e32 v31, 15, v35
	v_and_b32_e32 v32, 15, v56
	v_and_b32_e32 v33, 15, v59
	v_and_b32_e32 v35, 15, v40
	v_and_b32_e32 v37, 15, v60
	v_and_b32_e32 v39, 15, v62
	v_and_b32_e32 v40, 15, v45
	v_and_b32_e32 v44, 15, v63
	v_and_b32_e32 v45, 15, v64
	v_and_b32_e32 v47, 15, v79
	v_and_b32_e32 v60, 15, v86
	v_and_b32_e32 v62, 15, v67
	v_and_b32_e32 v63, 15, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v22, v25
	v_xad_u32 v26, v23, v204, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v38, 15, v61
	v_and_b32_e32 v61, 15, v87
	v_and_b32_e32 v14, 15, v21
	v_and_b32_e32 v15, 15, v55
	v_and_b32_e32 v16, 15, v41
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v73
	v_and_b32_e32 v21, 15, v74
	v_and_b32_e32 v36, 15, v75
	v_and_b32_e32 v41, 15, v76
	v_and_b32_e32 v42, 15, v77
	v_and_b32_e32 v43, 15, v78
	v_and_b32_e32 v49, 15, v51
	v_and_b32_e32 v50, 15, v52
	v_and_b32_e32 v51, 15, v53
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v53, 15, v69
	v_and_b32_e32 v54, 15, v70
	v_and_b32_e32 v55, 15, v72
	v_and_b32_e32 v64, 15, v65
	v_and_b32_e32 v65, 15, v66
	v_and_b32_e32 v66, 15, v71
	v_and_b32_e32 v67, 15, v68
	v_and_b32_e32 v68, 15, v89
	v_and_b32_e32 v69, 15, v90
	v_and_b32_e32 v70, 15, v91
	v_and_b32_e32 v71, 15, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[5:8]
	ds_store_b128 v0, v[14:17] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v26
	ds_load_b128 v[14:17], v26 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[28:31]
	ds_store_b128 v0, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v26
	ds_load_b128 v[28:31], v26 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[44:47]
	ds_store_b128 v0, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v26
	ds_load_b128 v[44:47], v26 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[60:63]
	ds_store_b128 v0, v[68:71] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v26
	ds_load_b128 v[60:63], v26 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[9:12]
	ds_store_b128 v0, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v26
	ds_load_b128 v[18:21], v26 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[32:35]
	ds_store_b128 v0, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v26
	ds_load_b128 v[40:43], v26 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_and_b32_e32 v57, 15, v83
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v72, 15, v93
	v_cvt_i32_f32_e32 v82, v48
	v_and_b32_e32 v48, 15, v80
	v_and_b32_e32 v73, 15, v94
	v_and_b32_e32 v74, 15, v95
	v_and_b32_e32 v75, 15, v96
	v_and_b32_e32 v56, 15, v82
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[48:51]
	ds_store_b128 v0, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v26
	ds_load_b128 v[56:59], v26 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[64:67]
	ds_store_b128 v0, v[72:75] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v26
	ds_load_b128 v[68:71], v26 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v26, v43, 4, v35
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v211
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v14, 4, v5
	v_lshl_or_b32 v14, v16, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s34, v201
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s41, 7, v43
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v16, v18, 4, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 16, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v15, 4, v6
	v_lshl_or_b32 v15, v17, 4, v8
	v_lshl_or_b32 v17, v19, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 32, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v20, 4, v11
	v_lshl_or_b32 v12, v21, 4, v12
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s8, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s8, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v19, v28, 4, v22
	v_lshl_or_b32 v20, v29, 4, v23
	v_lshl_or_b32 v21, v30, 4, v24
	v_lshl_or_b32 v22, v31, 4, v25
	v_lshl_or_b32 v23, v40, 4, v32
	v_lshl_or_b32 v24, v41, 4, v33
	v_lshl_or_b32 v25, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v15.l
	v_and_b16 v0.h, 0xff, v14.l
	v_lshlrev_b16 v1.l, 8, v6.l
	v_and_b16 v2.l, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v12.l
	v_and_b16 v5.h, 0xff, v18.l
	v_lshlrev_b16 v6.l, 8, v17.l
	v_and_b16 v6.h, 0xff, v16.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v44, 4, v36
	v_lshl_or_b32 v29, v45, 4, v37
	v_lshl_or_b32 v30, v46, 4, v38
	v_lshl_or_b32 v31, v47, 4, v39
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v0.l, 8, v22.l
	v_and_b16 v0.h, 0xff, v21.l
	v_lshlrev_b16 v1.l, 8, v20.l
	v_and_b16 v2.l, 0xff, v19.l
	v_lshlrev_b16 v5.l, 8, v26.l
	v_and_b16 v5.h, 0xff, v25.l
	v_lshlrev_b16 v6.l, 8, v24.l
	v_and_b16 v6.h, 0xff, v23.l
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s16
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v63, 4, v55
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v68, 4, v64
	v_lshl_or_b32 v41, v69, 4, v65
	v_lshl_or_b32 v42, v70, 4, v66
	v_lshl_or_b32 v44, v71, 4, v67
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v0.l, 8, v31.l
	v_and_b16 v0.h, 0xff, v30.l
	v_lshlrev_b16 v1.l, 8, v29.l
	v_and_b16 v2.l, 0xff, v28.l
	v_lshlrev_b16 v5.l, 8, v35.l
	v_and_b16 v5.h, 0xff, v34.l
	v_lshlrev_b16 v6.l, 8, v33.l
	v_and_b16 v6.h, 0xff, v32.l
	buffer_store_b64 v[11:12], v7, s[8:11], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v0.l, 8, v39.l
	v_and_b16 v0.h, 0xff, v38.l
	v_lshlrev_b16 v1.l, 8, v37.l
	v_and_b16 v2.l, 0xff, v36.l
	v_lshlrev_b16 v5.l, 8, v44.l
	v_and_b16 v5.h, 0xff, v42.l
	v_lshlrev_b16 v6.l, 8, v41.l
	v_and_b16 v6.h, 0xff, v40.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 2, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_dual_cndmask_b32 v0, 0x80000000, v10 :: v_dual_and_b32 v5, 2, v201
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[8:11], 0 offen
	buffer_store_b64 v[11:12], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v43
	v_mov_b16_e32 v2.l, v27.h
	v_mov_b16_e32 v1.l, v13.h
	v_add3_u32 v4, v4, v5, v43
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
	v_cmp_eq_u32_e32 vcc_lo, 0, v202
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	s_and_b32 vcc_lo, vcc_lo, s42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v1, v1, s41, 1
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp62:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 496
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
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 496
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 29900
; TotalNumSgprs: 50
; NumVgprs: 256
; ScratchSize: 496
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 50
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
	.quad	.Ltmp61-.Lfunc_begin0
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
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 496
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_sc32_maskk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 123
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
