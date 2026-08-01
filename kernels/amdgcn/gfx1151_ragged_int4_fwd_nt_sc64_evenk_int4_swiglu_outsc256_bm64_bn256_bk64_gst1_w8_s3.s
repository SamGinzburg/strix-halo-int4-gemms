	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[48:49], s[0:1], 0x5c
	v_mov_b32_e32 v98, v0
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
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s49, s8
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
	s_sub_i32 s49, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s49, s9
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
	s_cmp_gt_i32 s48, 0
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v98
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow613
	s_load_b128 s[36:39], s[0:1], 0x40
	s_load_b64 s[44:45], s[4:5], 0x0
	s_load_b64 s[46:47], s[6:7], 0x0
	v_dual_mov_b32 v87, 0 :: v_dual_and_b32 v100, 15, v98
	v_dual_mov_b32 v88, 0 :: v_dual_and_b32 v101, 0xf0, v98
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v153, 0 :: v_dual_mov_b32 v154, 0
	v_dual_mov_b32 v149, 0 :: v_dual_mov_b32 v148, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v156, 0
	v_dual_mov_b32 v157, 0 :: v_dual_mov_b32 v158, 0
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v183, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v179, 0
	v_dual_mov_b32 v219, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v152, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v147, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v120, 0
	v_dual_mov_b32 v143, 0 :: v_dual_mov_b32 v124, 0
	v_dual_mov_b32 v151, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v198, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v200, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v204, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v206, 0
	v_dual_mov_b32 v197, 0 :: v_dual_mov_b32 v208, 0
	v_dual_mov_b32 v203, 0 :: v_dual_mov_b32 v210, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v205, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v207, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v209, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v196, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v202, 0
	v_mov_b32_e32 v193, 0
	v_mov_b32_e32 v199, 0
	v_mov_b32_e32 v201, 0
	v_mov_b32_e32 v213, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v24, 5, v98
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b32 s43, s[0:1], 0x58
	v_dual_mov_b32 v125, 0 :: v_dual_lshlrev_b32 v64, 1, v98
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s34, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_add_co_u32 v14, s0, s34, v100
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
	v_cmp_le_i64_e32 vcc_lo, s[44:45], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[46:47], v[0:1]
	v_dual_mov_b32 v209, 0 :: v_dual_add_nc_u32 v0, s34, v100
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[44:45], v[2:3]
	v_cmp_le_i64_e64 s1, s[44:45], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[46:47], v[2:3]
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v210, 0 :: v_dual_add_nc_u32 v1, 16, v0
	v_cmp_gt_i64_e64 s13, s[46:47], v[4:5]
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v208, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s48
	v_mul_lo_u32 v1, v1, s48
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_add_u32 s40, s4, s2
	v_dual_mov_b32 v106, 0 :: v_dual_and_b32 v69, 24, v64
	s_addc_u32 s41, s5, s3
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s13
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s13, s49, 8
	.loc	1 1045 36 is_stmt 0             ; ragged.py:1045:36
	scratch_store_b32 off, v0, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v0, s13, v24
	v_bfe_i32 v65, v98, 7, 1
	v_dual_mov_b32 v151, 0 :: v_dual_add_nc_u32 v24, s34, v24
	v_lshl_or_b32 v69, v100, 5, v69
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	scratch_store_b32 off, v1, off offset:244 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v2, s48
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v68, 0x7f, v98
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v65, 0x88, v65
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v75, 8, v24
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v25, 0xe0, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v65, v65, v68
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v1, off offset:248 ; 4-byte Folded Spill
	v_mul_lo_u32 v1, v3, s48
	v_mul_lo_u32 v75, v75, s43
	v_lshl_or_b32 v72, v25, 4, v69
	v_dual_mov_b32 v161, 0 :: v_dual_add_nc_u32 v76, 16, v24
	v_or_b32_e32 v74, s13, v98
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s12
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v72, off offset:264
	scratch_store_b32 off, v1, off offset:252
	scratch_store_b32 off, v100, off offset:844
	scratch_store_b32 off, v75, off offset:276
	v_mul_lo_u32 v75, v76, s43
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s12, s[40:41], 0x0
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v69, off offset:256
	scratch_store_b32 off, v74, off offset:268
	scratch_store_b32 off, v101, off offset:848
	v_mul_lo_u32 v77, v24, s43
	v_mov_b32_e32 v124, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v65, off offset:260
	scratch_store_b32 off, v75, off offset:280
	v_add_nc_u32_e32 v75, 24, v24
	v_dual_mov_b32 v145, 0 :: v_dual_add_nc_u32 v76, 32, v24
	v_dual_mov_b32 v169, 0 :: v_dual_add_nc_u32 v78, 48, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v75, v75, s43
	scratch_store_b32 off, v77, off offset:272 ; 4-byte Folded Spill
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v77, 40, v24
	v_dual_mov_b32 v167, 0 :: v_dual_add_nc_u32 v24, 56, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[44:45], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s14, s[46:47], v[6:7]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s11
	v_mul_lo_u32 v24, v24, s43
	scratch_store_b32 off, v75, off offset:284 ; 4-byte Folded Spill
	v_mul_lo_u32 v75, v76, s43
	.loc	1 1049 17 is_stmt 1             ; ragged.py:1049:17
	s_lshl_b32 s11, s33, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[44:45], v[22:23]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s22, s[46:47], v[22:23]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v23, 0x98, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s14
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s14, s43, s11
	scratch_store_b32 off, v24, off offset:300 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s42, s14, s12
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v30, s33, v23
	v_mad_u64_u32 v[23:24], null, s43, v23, s[42:43]
	scratch_store_b32 off, v75, off offset:288 ; 4-byte Folded Spill
	v_mul_lo_u32 v75, v77, s43
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v22, 0xa0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[44:45], v[18:19]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s20, s[46:47], v[18:19]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v19, 0xa8, v0
	scratch_store_b64 off, v[23:24], off offset:456 ; 8-byte Folded Spill
	v_dual_mov_b32 v198, 0 :: v_dual_add_nc_u32 v29, s33, v22
	v_mad_u64_u32 v[22:23], null, s43, v22, s[42:43]
	scratch_store_b32 off, v75, off offset:292 ; 4-byte Folded Spill
	v_mul_lo_u32 v75, v78, s43
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[44:45], v[16:17]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s18, s[46:47], v[16:17]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v16, 0xb0, v0
	v_or_b32_e32 v61, 8, v0
	scratch_store_b64 off, v[22:23], off offset:464 ; 8-byte Folded Spill
	v_mad_u64_u32 v[22:23], null, s43, v19, s[42:43]
	scratch_store_b32 off, v75, off offset:296 ; 4-byte Folded Spill
	v_mad_u64_u32 v[75:76], null, v0, s43, s[42:43]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[44:45], v[14:15]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[46:47], v[14:15]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v15, 0xb8, v0
	scratch_store_b64 off, v[22:23], off offset:472 ; 8-byte Folded Spill
	v_mad_u64_u32 v[22:23], null, s43, v16, s[42:43]
	scratch_store_b64 off, v[75:76], off offset:304 ; 8-byte Folded Spill
	v_mad_u64_u32 v[75:76], null, v61, s43, s[42:43]
	v_or_b32_e32 v57, 24, v0
	v_or_b32_e32 v58, 16, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s9, s[44:45], v[20:21]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[46:47], v[20:21]
	v_dual_mov_b32 v195, 0 :: v_dual_add_nc_u32 v20, s33, v15
	v_dual_mov_b32 v200, 0 :: v_dual_add_nc_u32 v21, s33, v16
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v62, s33, v57
	v_dual_mov_b32 v186, 0 :: v_dual_add_nc_u32 v63, s33, v58
	v_mad_u64_u32 v[15:16], null, s43, v15, s[42:43]
	scratch_store_b64 off, v[75:76], off offset:312 ; 8-byte Folded Spill
	v_mad_u64_u32 v[75:76], null, v58, s43, s[42:43]
	v_mad_u64_u32 v[57:58], null, v57, s43, s[42:43]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[44:45], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[46:47], v[12:13]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v13, 0xc0, v0
	v_or_b32_e32 v54, 40, v0
	v_or_b32_e32 v55, 32, v0
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[75:76], off offset:320
	scratch_store_b64 off, v[15:16], off offset:488
	v_mad_u64_u32 v[15:16], null, s43, v13, s[42:43]
	v_dual_mov_b32 v188, 0 :: v_dual_add_nc_u32 v59, s33, v54
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v60, s33, v55
	scratch_store_b64 off, v[57:58], off offset:328 ; 8-byte Folded Spill
	v_mad_u64_u32 v[57:58], null, v55, s43, s[42:43]
	v_mad_u64_u32 v[54:55], null, v54, s43, s[42:43]
	v_or_b32_e32 v12, 0xc8, v0
	v_or_b32_e32 v51, 48, v0
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v18, s33, v13
	scratch_store_b64 off, v[57:58], off offset:336 ; 8-byte Folded Spill
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v17, s33, v12
	v_mad_u64_u32 v[12:13], null, s43, v12, s[42:43]
	scratch_store_b64 off, v[54:55], off offset:344 ; 8-byte Folded Spill
	v_mad_u64_u32 v[54:55], null, v51, s43, s[42:43]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[44:45], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[46:47], v[8:9]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v9, 0xd0, v0
	v_or_b32_e32 v47, 64, v0
	v_or_b32_e32 v48, 56, v0
	scratch_store_b64 off, v[12:13], off offset:504 ; 8-byte Folded Spill
	v_or_b32_e32 v6, 0xd8, v0
	v_mad_u64_u32 v[12:13], null, s43, v9, s[42:43]
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v52, s33, v47
	v_dual_mov_b32 v190, 0 :: v_dual_add_nc_u32 v53, s33, v48
	scratch_store_b64 off, v[54:55], off offset:352 ; 8-byte Folded Spill
	v_mad_u64_u32 v[54:55], null, v48, s43, s[42:43]
	v_mad_u64_u32 v[47:48], null, s43, v47, s[42:43]
	v_or_b32_e32 v44, 0x50, v0
	v_or_b32_e32 v45, 0x48, v0
	scratch_store_b64 off, v[12:13], off offset:512 ; 8-byte Folded Spill
	v_mad_u64_u32 v[12:13], null, s43, v6, s[42:43]
	v_dual_mov_b32 v192, 0 :: v_dual_add_nc_u32 v49, s33, v44
	v_dual_mov_b32 v185, 0 :: v_dual_add_nc_u32 v50, s33, v45
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[54:55], off offset:360
	scratch_store_b64 off, v[47:48], off offset:368
	v_mad_u64_u32 v[47:48], null, s43, v45, s[42:43]
	v_mad_u64_u32 v[44:45], null, s43, v44, s[42:43]
	v_or_b32_e32 v5, 0xe0, v0
	v_or_b32_e32 v41, 0x58, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[44:45], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s16, s[46:47], v[10:11]
	v_dual_mov_b32 v204, 0 :: v_dual_add_nc_u32 v11, s33, v6
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v10, s33, v5
	scratch_store_b64 off, v[47:48], off offset:376 ; 8-byte Folded Spill
	v_mad_u64_u32 v[5:6], null, s43, v5, s[42:43]
	scratch_store_b64 off, v[44:45], off offset:384 ; 8-byte Folded Spill
	v_mad_u64_u32 v[44:45], null, s43, v41, s[42:43]
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	v_or_b32_e32 v3, 0xe8, v0
	v_or_b32_e32 v37, 0x68, v0
	v_or_b32_e32 v38, 0x60, v0
	scratch_store_b64 off, v[5:6], off offset:528 ; 8-byte Folded Spill
	v_or_b32_e32 v1, 0xf8, v0
	v_mad_u64_u32 v[5:6], null, s43, v3, s[42:43]
	v_dual_mov_b32 v189, 0 :: v_dual_add_nc_u32 v42, s33, v37
	v_dual_mov_b32 v194, 0 :: v_dual_add_nc_u32 v43, s33, v38
	scratch_store_b64 off, v[44:45], off offset:392 ; 8-byte Folded Spill
	v_mad_u64_u32 v[44:45], null, s43, v38, s[42:43]
	v_mad_u64_u32 v[37:38], null, s43, v37, s[42:43]
	v_or_b32_e32 v2, 0xf0, v0
	v_or_b32_e32 v34, 0x78, v0
	v_or_b32_e32 v35, 0x70, v0
	v_dual_mov_b32 v207, 0 :: v_dual_add_nc_u32 v4, s33, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v206, 0 :: v_dual_add_nc_u32 v7, s33, v2
	v_dual_mov_b32 v205, 0 :: v_dual_add_nc_u32 v8, s33, v3
	v_or_b32_e32 v27, 0x90, v0
	v_or_b32_e32 v28, 0x88, v0
	v_or_b32_e32 v31, 0x80, v0
	v_dual_mov_b32 v196, 0 :: v_dual_add_nc_u32 v39, s33, v34
	v_dual_mov_b32 v191, 0 :: v_dual_add_nc_u32 v40, s33, v35
	v_dual_mov_b32 v184, 0 :: v_dual_add_nc_u32 v67, s33, v0
	scratch_store_b64 off, v[44:45], off offset:400 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s43, v2, s[42:43]
	scratch_store_b64 off, v[37:38], off offset:408 ; 8-byte Folded Spill
	v_mad_u64_u32 v[37:38], null, s43, v35, s[42:43]
	v_mad_u64_u32 v[34:35], null, s43, v34, s[42:43]
	v_mad_u64_u32 v[0:1], null, s43, v1, s[42:43]
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v66, s33, v61
	scratch_store_b64 off, v[37:38], off offset:416 ; 8-byte Folded Spill
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v32, s33, v27
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[34:35], off offset:424
	scratch_store_b64 off, v[0:1], off offset:552
	v_mad_u64_u32 v[34:35], null, s43, v31, s[42:43]
	v_mad_u64_u32 v[0:1], null, v67, s43, s[42:43]
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v33, s33, v28
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v56, s33, v51
	scratch_store_b64 off, v[34:35], off offset:432 ; 8-byte Folded Spill
	v_mad_u64_u32 v[34:35], null, s43, v28, s[42:43]
	v_mad_u64_u32 v[27:28], null, s43, v27, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:560 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v66, s43, s[42:43]
	v_dual_mov_b32 v96, 0 :: v_dual_lshlrev_b32 v73, 5, v98
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[34:35], off offset:440
	scratch_store_b64 off, v[27:28], off offset:448
	v_dual_mov_b32 v187, 0 :: v_dual_add_nc_u32 v46, s33, v41
	scratch_store_b64 off, v[0:1], off offset:568 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v63, s43, s[42:43]
	scratch_store_b64 off, v[22:23], off offset:480 ; 8-byte Folded Spill
	v_dual_mov_b32 v121, 0 :: v_dual_lshlrev_b32 v74, 2, v101
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v73, 32, v73
	v_dual_mov_b32 v143, 0 :: v_dual_and_b32 v64, 28, v64
	scratch_store_b64 off, v[0:1], off offset:576 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v62, s43, s[42:43]
	scratch_store_b64 off, v[15:16], off offset:496 ; 8-byte Folded Spill
	v_add3_u32 v73, 0, v74, v73
	v_mov_b32_e32 v163, 0
	v_xor_b32_e32 v25, 0x110, v65
	v_xor_b32_e32 v65, 8, v69
	v_xor_b32_e32 v68, 16, v69
	scratch_store_b64 off, v[0:1], off offset:584 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v60, s43, s[42:43]
	scratch_store_b64 off, v[12:13], off offset:520 ; 8-byte Folded Spill
	v_xor_b32_e32 v69, 24, v69
	v_mov_b32_e32 v181, 0
	v_xor_b32_e32 v70, 8, v72
	v_mov_b32_e32 v171, 0
	v_xor_b32_e32 v71, 16, v72
	scratch_store_b64 off, v[0:1], off offset:592 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v59, s43, s[42:43]
	scratch_store_b64 off, v[5:6], off offset:536 ; 8-byte Folded Spill
	v_mov_b32_e32 v175, 0
	v_xor_b32_e32 v72, 24, v72
	v_mov_b32_e32 v219, 0
	v_mov_b32_e32 v179, 0
	v_mov_b32_e32 v159, 0
	scratch_store_b64 off, v[0:1], off offset:600 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v56, s43, s[42:43]
	scratch_store_b64 off, v[2:3], off offset:544 ; 8-byte Folded Spill
	v_dual_mov_b32 v193, 0 :: v_dual_add_nc_u32 v36, s33, v31
	v_dual_mov_b32 v213, 0 :: v_dual_add_nc_u32 v26, s33, v19
	v_dual_mov_b32 v203, 0 :: v_dual_add_nc_u32 v14, s33, v9
	scratch_store_b64 off, v[0:1], off offset:608 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v53, s43, s[42:43]
	v_dual_mov_b32 v147, 0 :: v_dual_lshlrev_b32 v74, 1, v101
	v_dual_mov_b32 v173, 0 :: v_dual_add_nc_u32 v212, 0, v25
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v183, 0
	scratch_store_b64 off, v[0:1], off offset:616 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v52, s43, s[42:43]
	v_dual_mov_b32 v165, 0 :: v_dual_add_nc_u32 v172, 0, v74
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v157, 0
	scratch_store_b64 off, v[0:1], off offset:624 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v50, s43, s[42:43]
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v153, 0
	scratch_store_b64 off, v[0:1], off offset:632 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v49, s43, s[42:43]
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v182, 0 :: v_dual_mov_b32 v137, 0
	scratch_store_b64 off, v[0:1], off offset:640 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v46, s43, s[42:43]
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v178, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v131, 0
	scratch_store_b64 off, v[0:1], off offset:648 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, v73, v64
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v133, 0
	scratch_store_b32 off, v0, off offset:656 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v43, s43, s[42:43]
	v_dual_mov_b32 v180, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v91, 0
	scratch_store_b64 off, v[0:1], off offset:660 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v65
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v109, 0
	scratch_store_b32 off, v0, off offset:668 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v68
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v115, 0
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v69
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v93, 0
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v70
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v85, 0
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v71
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v87, 0
	v_mov_b32_e32 v132, 0
	v_mov_b32_e32 v118, 0
	scratch_store_b32 off, v0, off offset:684 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v72
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v112, 0
	v_mov_b32_e32 v110, 0
	scratch_store_b32 off, v0, off offset:688 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v42, s43, s[42:43]
	v_mov_b32_e32 v108, 0
	v_mov_b32_e32 v84, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v86, 0
	scratch_store_b64 off, v[0:1], off offset:692 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v40, s43, s[42:43]
	v_mov_b32_e32 v88, 0
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s50, s48, s12
	s_mov_b32 s12, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s3, s3, s15
	s_and_b32 s4, s4, s16
	s_and_b32 s5, s5, s17
	scratch_store_b64 off, v[0:1], off offset:700 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v39, s43, s[42:43]
	s_and_b32 s6, s6, s18
	s_and_b32 s7, s7, s19
	s_and_b32 s8, s8, s20
	s_and_b32 s9, s9, s21
	s_and_b32 s10, s10, s22
	s_and_b32 s21, s25, 0xffff
	scratch_store_b64 off, v[0:1], off offset:708 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v36, s43, s[42:43]
	s_mov_b32 s20, s24
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s25, s27, 0xffff
	s_mov_b32 s24, s26
	s_and_b32 s29, s29, 0xffff
	scratch_store_b64 off, v[0:1], off offset:716 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v33, s43, s[42:43]
	s_and_b32 s41, s31, 0xffff
	s_mov_b32 s40, s30
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	scratch_store_b64 off, v[0:1], off offset:724 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v32, s43, s[42:43]
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_mov_b32 s51, s12
	scratch_store_b64 off, v[0:1], off offset:732 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v30, s43, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:740 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v29, s43, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:748 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v26, s43, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:756 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v21, s43, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:764 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v20, s43, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:772 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v18, s43, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:780 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v17, s43, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:788 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v14, s43, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:796 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v11, s43, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:804 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v10, s43, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:812 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v8, s43, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:820 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v7, s43, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:828 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, v4, s43, s[42:43]
	scratch_store_b64 off, v[0:1], off offset:836 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 20 is_stmt 0                ; ragged.py:0:20
	s_clause 0x1f                           ; 236-byte Folded Reload
	scratch_load_b64 v[9:10], off, off offset:304
	scratch_load_b64 v[10:11], off, off offset:312
	scratch_load_b64 v[11:12], off, off offset:320
	scratch_load_b64 v[12:13], off, off offset:328
	scratch_load_b64 v[13:14], off, off offset:336
	scratch_load_b64 v[14:15], off, off offset:344
	scratch_load_b64 v[15:16], off, off offset:352
	scratch_load_b64 v[16:17], off, off offset:360
	scratch_load_b64 v[17:18], off, off offset:368
	scratch_load_b64 v[18:19], off, off offset:376
	scratch_load_b64 v[19:20], off, off offset:384
	scratch_load_b64 v[20:21], off, off offset:392
	scratch_load_b64 v[21:22], off, off offset:400
	scratch_load_b64 v[22:23], off, off offset:408
	scratch_load_b64 v[23:24], off, off offset:416
	scratch_load_b64 v[24:25], off, off offset:424
	scratch_load_b64 v[25:26], off, off offset:432
	scratch_load_b64 v[26:27], off, off offset:440
	scratch_load_b64 v[27:28], off, off offset:448
	scratch_load_b64 v[28:29], off, off offset:456
	scratch_load_b64 v[29:30], off, off offset:464
	scratch_load_b64 v[30:31], off, off offset:472
	scratch_load_b64 v[31:32], off, off offset:480
	scratch_load_b64 v[32:33], off, off offset:488
	scratch_load_b64 v[33:34], off, off offset:496
	scratch_load_b64 v[34:35], off, off offset:504
	scratch_load_b64 v[35:36], off, off offset:512
	scratch_load_b32 v1, off, off offset:272
	scratch_load_b32 v2, off, off offset:276
	scratch_load_b32 v3, off, off offset:280
	scratch_load_b32 v4, off, off offset:284
	scratch_load_b32 v5, off, off offset:288
	s_clause 0x7                            ; 52-byte Folded Reload
	scratch_load_b32 v6, off, off offset:292
	scratch_load_b32 v7, off, off offset:296
	scratch_load_b32 v8, off, off offset:300
	scratch_load_b64 v[36:37], off, off offset:520
	scratch_load_b64 v[37:38], off, off offset:528
	scratch_load_b64 v[38:39], off, off offset:536
	scratch_load_b64 v[39:40], off, off offset:544
	scratch_load_b64 v[40:41], off, off offset:552
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_and_b32_e32 v0, 31, v98
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v210, off offset:236
	scratch_store_b32 off, v209, off offset:232
	scratch_store_b32 off, v208, off offset:228
	scratch_store_b32 off, v152, off offset:224
	scratch_store_b32 off, v207, off offset:220
	scratch_store_b32 off, v206, off offset:216
	scratch_store_b32 off, v205, off offset:212
	scratch_store_b32 off, v204, off offset:208
	scratch_store_b32 off, v149, off offset:204
	scratch_store_b32 off, v148, off offset:200
	scratch_store_b32 off, v203, off offset:196
	scratch_store_b32 off, v200, off offset:192
	scratch_store_b32 off, v213, off offset:188
	scratch_store_b32 off, v151, off offset:184
	scratch_store_b32 off, v145, off offset:180
	scratch_store_b32 off, v198, off offset:176
	scratch_store_b32 off, v197, off offset:172
	scratch_store_b32 off, v161, off offset:168
	scratch_store_b32 off, v131, off offset:164
	scratch_store_b32 off, v132, off offset:160
	scratch_store_b32 off, v133, off offset:156
	scratch_store_b32 off, v134, off offset:152
	scratch_store_b32 off, v177, off offset:148
	scratch_store_b32 off, v171, off offset:144
	scratch_store_b32 off, v170, off offset:140
	scratch_store_b32 off, v169, off offset:136
	scratch_store_b32 off, v167, off offset:132
	scratch_store_b32 off, v160, off offset:128
	scratch_store_b32 off, v163, off offset:124
	scratch_store_b32 off, v162, off offset:120
	scratch_store_b32 off, v119, off offset:116
	scratch_store_b32 off, v120, off offset:112
	s_clause 0x1b                           ; 112-byte Folded Spill
	scratch_store_b32 off, v121, off offset:108
	scratch_store_b32 off, v183, off offset:104
	scratch_store_b32 off, v122, off offset:100
	scratch_store_b32 off, v127, off offset:96
	scratch_store_b32 off, v128, off offset:92
	scratch_store_b32 off, v129, off offset:88
	scratch_store_b32 off, v180, off offset:84
	scratch_store_b32 off, v130, off offset:80
	scratch_store_b32 off, v123, off offset:76
	scratch_store_b32 off, v124, off offset:72
	scratch_store_b32 off, v165, off offset:68
	scratch_store_b32 off, v159, off offset:64
	scratch_store_b32 off, v125, off offset:60
	scratch_store_b32 off, v126, off offset:56
	scratch_store_b32 off, v102, off offset:52
	scratch_store_b32 off, v103, off offset:48
	scratch_store_b32 off, v115, off offset:44
	scratch_store_b32 off, v116, off offset:40
	scratch_store_b32 off, v117, off offset:36
	scratch_store_b32 off, v118, off offset:32
	scratch_store_b32 off, v107, off offset:28
	scratch_store_b32 off, v108, off offset:24
	scratch_store_b32 off, v109, off offset:20
	scratch_store_b32 off, v110, off offset:16
	scratch_store_b32 off, v111, off offset:12
	scratch_store_b32 off, v112, off offset:8
	scratch_store_b32 off, v113, off offset:4
	scratch_store_b32 off, v114, off
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s42, s22
	v_lshl_or_b32 v0, s51, 5, v0
	s_mov_b32 s43, s23
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	v_dual_mov_b32 v148, v202 :: v_dual_mov_b32 v161, v199
	v_mov_b32_e32 v152, v81
	v_dual_mov_b32 v145, v201 :: v_dual_mov_b32 v210, v87
	v_mov_b32_e32 v163, v80
	v_mov_b32_e32 v151, v83
	v_dual_mov_b32 v171, v191 :: v_dual_mov_b32 v160, v84
	v_dual_mov_b32 v149, v82 :: v_dual_mov_b32 v176, v135
	v_dual_mov_b32 v191, v179 :: v_dual_mov_b32 v162, v178
	v_mov_b32_e32 v209, v86
	v_mov_b32_e32 v179, v140
	v_dual_mov_b32 v140, v88 :: v_dual_mov_b32 v183, v89
	v_dual_mov_b32 v178, v139 :: v_dual_mov_b32 v167, v188
	v_mov_b32_e32 v188, v91
	v_mov_b32_e32 v170, v190
	v_mov_b32_e32 v135, v90
	v_mov_b32_e32 v177, v181
	v_dual_mov_b32 v180, v193 :: v_dual_mov_b32 v139, v98
	v_dual_mov_b32 v190, v95 :: v_dual_mov_b32 v159, v196
	v_dual_mov_b32 v196, v175 :: v_dual_mov_b32 v181, v182
	v_dual_mov_b32 v182, v93 :: v_dual_mov_b32 v175, v94
	v_mov_b32_e32 v193, v96
	v_mov_b32_e32 v169, v97
	v_mov_b32_e32 v165, v99
	s_waitcnt vmcnt(39)
	v_add_nc_u32_e32 v9, v9, v0
	s_waitcnt vmcnt(38)
	v_add_nc_u32_e32 v10, v10, v0
	s_waitcnt vmcnt(37)
	v_add_nc_u32_e32 v11, v11, v0
	s_waitcnt vmcnt(36)
	v_add_nc_u32_e32 v12, v12, v0
	s_waitcnt vmcnt(35)
	v_add_nc_u32_e32 v13, v13, v0
	s_waitcnt vmcnt(34)
	v_add_nc_u32_e32 v14, v14, v0
	s_waitcnt vmcnt(33)
	v_add_nc_u32_e32 v15, v15, v0
	s_waitcnt vmcnt(32)
	v_add_nc_u32_e32 v16, v16, v0
	s_waitcnt vmcnt(31)
	v_add_nc_u32_e32 v17, v17, v0
	s_waitcnt vmcnt(30)
	v_add_nc_u32_e32 v18, v18, v0
	s_waitcnt vmcnt(29)
	v_add_nc_u32_e32 v19, v19, v0
	s_waitcnt vmcnt(28)
	v_add_nc_u32_e32 v20, v20, v0
	s_waitcnt vmcnt(27)
	v_add_nc_u32_e32 v21, v21, v0
	s_waitcnt vmcnt(26)
	v_add_nc_u32_e32 v22, v22, v0
	s_waitcnt vmcnt(25)
	v_add_nc_u32_e32 v23, v23, v0
	s_waitcnt vmcnt(24)
	v_add_nc_u32_e32 v24, v24, v0
	s_waitcnt vmcnt(23)
	v_add_nc_u32_e32 v25, v25, v0
	s_waitcnt vmcnt(22)
	v_add_nc_u32_e32 v26, v26, v0
	s_waitcnt vmcnt(21)
	v_add_nc_u32_e32 v27, v27, v0
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v28, v28, v0
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v29, v29, v0
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v30, v30, v0
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v31, v31, v0
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v32, v32, v0
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v33, v33, v0
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v34, v34, v0
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v35, v35, v0
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v1, v1, v0
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v2, v2, v0
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v3, v3, v0
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v4, v4, v0
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v5, v5, v0
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v6, v6, v0
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v7, v7, v0
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v8, v8, v0
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v36, v36, v0
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v37, v37, v0
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v38, v38, v0
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, v39, v0
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_add_nc_u32 v40, v40, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1f
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	buffer_load_u8 v18, v18, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v20, v20, s[24:27], 0 offen
	buffer_load_u8 v21, v21, s[24:27], 0 offen
	buffer_load_u8 v22, v22, s[24:27], 0 offen
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	buffer_load_u8 v24, v24, s[24:27], 0 offen
	buffer_load_u8 v25, v25, s[24:27], 0 offen
	buffer_load_u8 v26, v26, s[24:27], 0 offen
	buffer_load_u8 v27, v27, s[24:27], 0 offen
	buffer_load_u8 v28, v28, s[24:27], 0 offen
	buffer_load_u8 v29, v29, s[24:27], 0 offen
	buffer_load_u8 v30, v30, s[24:27], 0 offen
	buffer_load_u8 v31, v31, s[24:27], 0 offen
	buffer_load_u8 v32, v32, s[24:27], 0 offen
	buffer_load_u8 v33, v33, s[24:27], 0 offen
	buffer_load_u8 v34, v34, s[24:27], 0 offen
	buffer_load_u8 v35, v35, s[24:27], 0 offen
	buffer_load_u8 v36, v36, s[24:27], 0 offen
	buffer_load_u8 v37, v37, s[24:27], 0 offen
	buffer_load_u8 v38, v38, s[24:27], 0 offen
	buffer_load_u8 v39, v39, s[24:27], 0 offen
	buffer_load_u8 v40, v40, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v1, v1, s[20:23], 0 offen
	buffer_load_u8 v3, v3, s[20:23], 0 offen
	buffer_load_u8 v5, v5, s[20:23], 0 offen
	buffer_load_u8 v7, v7, s[20:23], 0 offen
	buffer_load_u8 v8, v8, s[20:23], 0 offen
	buffer_load_u8 v6, v6, s[20:23], 0 offen
	buffer_load_u8 v4, v4, s[20:23], 0 offen
	buffer_load_u8 v2, v2, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v41, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v42, 0, v41
	ds_store_b8 v42, v1
	ds_store_b8 v42, v3 offset:512
	ds_store_b8 v42, v5 offset:1024
	ds_store_b8 v42, v7 offset:1536
	ds_store_b8 v212, v2
	ds_store_b8 v212, v4 offset:512
	ds_store_b8 v212, v6 offset:1024
	ds_store_b8 v212, v8 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v1, off, off offset:256 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_2addr_stride64_b64 v[66:69], v1 offset1:1
	ds_load_2addr_stride64_b64 v[205:208], v1 offset0:2 offset1:3
	scratch_load_b32 v1, off, off offset:668 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[252:255], v1 offset1:1
	ds_load_2addr_stride64_b64 v[213:216], v1 offset0:2 offset1:3
	scratch_load_b32 v1, off, off offset:672 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[107:110], v1 offset1:1
	ds_load_2addr_stride64_b64 v[100:103], v1 offset0:2 offset1:3
	scratch_load_b32 v1, off, off offset:676 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[115:118], v1 offset1:1
	ds_load_2addr_stride64_b64 v[111:114], v1 offset0:2 offset1:3
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x6                            ; 56-byte Folded Reload
	scratch_load_b64 v[1:2], off, off offset:560
	scratch_load_b64 v[2:3], off, off offset:568
	scratch_load_b64 v[3:4], off, off offset:576
	scratch_load_b64 v[4:5], off, off offset:584
	scratch_load_b64 v[5:6], off, off offset:592
	scratch_load_b64 v[6:7], off, off offset:600
	scratch_load_b64 v[7:8], off, off offset:608
	ds_store_b8 v42, v9
	ds_store_b8 v42, v11 offset:512
	ds_store_b8 v42, v13 offset:1024
	ds_store_b8 v42, v15 offset:1536
	ds_store_b8 v42, v17 offset:2048
	ds_store_b8 v42, v19 offset:2560
	ds_store_b8 v42, v21 offset:3072
	ds_store_b8 v42, v23 offset:3584
	ds_store_b8 v42, v25 offset:4096
	ds_store_b8 v42, v27 offset:4608
	ds_store_b8 v42, v29 offset:5120
	ds_store_b8 v42, v31 offset:5632
	ds_store_b8 v42, v33 offset:6144
	ds_store_b8 v42, v35 offset:6656
	ds_store_b8 v42, v37 offset:7168
	ds_store_b8 v42, v39 offset:7680
	ds_store_b8 v212, v10
	ds_store_b8 v212, v12 offset:512
	ds_store_b8 v212, v14 offset:1024
	ds_store_b8 v212, v16 offset:1536
	ds_store_b8 v212, v18 offset:2048
	ds_store_b8 v212, v20 offset:2560
	ds_store_b8 v212, v22 offset:3072
	ds_store_b8 v212, v24 offset:3584
	ds_store_b8 v212, v26 offset:4096
	ds_store_b8 v212, v28 offset:4608
	ds_store_b8 v212, v30 offset:5120
	ds_store_b8 v212, v32 offset:5632
	ds_store_b8 v212, v34 offset:6144
	ds_store_b8 v212, v36 offset:6656
	ds_store_b8 v212, v38 offset:7168
	ds_store_b8 v212, v40 offset:7680
	s_clause 0x18                           ; 200-byte Folded Reload
	scratch_load_b64 v[8:9], off, off offset:616
	scratch_load_b64 v[9:10], off, off offset:624
	scratch_load_b64 v[10:11], off, off offset:632
	scratch_load_b64 v[11:12], off, off offset:640
	scratch_load_b64 v[12:13], off, off offset:648
	scratch_load_b64 v[13:14], off, off offset:660
	scratch_load_b64 v[14:15], off, off offset:692
	scratch_load_b64 v[15:16], off, off offset:700
	scratch_load_b64 v[16:17], off, off offset:708
	scratch_load_b64 v[17:18], off, off offset:716
	scratch_load_b64 v[18:19], off, off offset:724
	scratch_load_b64 v[19:20], off, off offset:732
	scratch_load_b64 v[20:21], off, off offset:740
	scratch_load_b64 v[21:22], off, off offset:748
	scratch_load_b64 v[22:23], off, off offset:756
	scratch_load_b64 v[23:24], off, off offset:764
	scratch_load_b64 v[24:25], off, off offset:772
	scratch_load_b64 v[25:26], off, off offset:780
	scratch_load_b64 v[26:27], off, off offset:788
	scratch_load_b64 v[27:28], off, off offset:796
	scratch_load_b64 v[28:29], off, off offset:804
	scratch_load_b64 v[29:30], off, off offset:812
	scratch_load_b64 v[30:31], off, off offset:820
	scratch_load_b64 v[31:32], off, off offset:828
	scratch_load_b64 v[32:33], off, off offset:836
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:680
	scratch_load_b32 v65, off, off offset:684
	scratch_load_b32 v211, off, off offset:688
	s_waitcnt vmcnt(34)
	v_add_nc_u32_e32 v1, v1, v0
	s_waitcnt vmcnt(33)
	v_add_nc_u32_e32 v2, v2, v0
	s_waitcnt vmcnt(32)
	v_add_nc_u32_e32 v3, v3, v0
	s_waitcnt vmcnt(31)
	v_add_nc_u32_e32 v4, v4, v0
	s_waitcnt vmcnt(30)
	v_add_nc_u32_e32 v5, v5, v0
	s_waitcnt vmcnt(29)
	v_add_nc_u32_e32 v6, v6, v0
	s_waitcnt vmcnt(28)
	v_add_nc_u32_e32 v7, v7, v0
	s_waitcnt vmcnt(27)
	v_add_nc_u32_e32 v8, v8, v0
	s_waitcnt vmcnt(26)
	v_add_nc_u32_e32 v9, v9, v0
	s_waitcnt vmcnt(25)
	v_add_nc_u32_e32 v10, v10, v0
	s_waitcnt vmcnt(24)
	v_add_nc_u32_e32 v11, v11, v0
	s_waitcnt vmcnt(23)
	v_add_nc_u32_e32 v12, v12, v0
	s_waitcnt vmcnt(22)
	v_add_nc_u32_e32 v13, v13, v0
	s_waitcnt vmcnt(21)
	v_add_nc_u32_e32 v14, v14, v0
	s_waitcnt vmcnt(20)
	v_add_nc_u32_e32 v15, v15, v0
	s_waitcnt vmcnt(19)
	v_add_nc_u32_e32 v16, v16, v0
	s_waitcnt vmcnt(18)
	v_add_nc_u32_e32 v17, v17, v0
	s_waitcnt vmcnt(17)
	v_add_nc_u32_e32 v18, v18, v0
	s_waitcnt vmcnt(16)
	v_add_nc_u32_e32 v19, v19, v0
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v20, v20, v0
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v21, v21, v0
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v22, v22, v0
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v23, v23, v0
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v24, v24, v0
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v25, v25, v0
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v26, v26, v0
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v27, v27, v0
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v28, v28, v0
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v29, v29, v0
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v30, v30, v0
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v31, v31, v0
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v0, v32, v0
	scratch_load_b32 v32, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1f
	buffer_load_u8 v1, v1, s[24:27], 0 offen
	buffer_load_u8 v3, v3, s[24:27], 0 offen
	buffer_load_u8 v5, v5, s[24:27], 0 offen
	buffer_load_u8 v7, v7, s[24:27], 0 offen
	buffer_load_u8 v9, v9, s[24:27], 0 offen
	buffer_load_u8 v11, v11, s[24:27], 0 offen
	buffer_load_u8 v13, v13, s[24:27], 0 offen
	buffer_load_u8 v15, v15, s[24:27], 0 offen
	buffer_load_u8 v17, v17, s[24:27], 0 offen
	buffer_load_u8 v19, v19, s[24:27], 0 offen
	buffer_load_u8 v21, v21, s[24:27], 0 offen
	buffer_load_u8 v23, v23, s[24:27], 0 offen
	buffer_load_u8 v25, v25, s[24:27], 0 offen
	buffer_load_u8 v27, v27, s[24:27], 0 offen
	buffer_load_u8 v29, v29, s[24:27], 0 offen
	buffer_load_u8 v31, v31, s[24:27], 0 offen
	buffer_load_u8 v8, v8, s[24:27], 0 offen
	buffer_load_u8 v6, v6, s[24:27], 0 offen
	buffer_load_u8 v4, v4, s[24:27], 0 offen
	buffer_load_u8 v2, v2, s[24:27], 0 offen
	buffer_load_u8 v16, v16, s[24:27], 0 offen
	buffer_load_u8 v14, v14, s[24:27], 0 offen
	buffer_load_u8 v12, v12, s[24:27], 0 offen
	buffer_load_u8 v10, v10, s[24:27], 0 offen
	buffer_load_u8 v24, v24, s[24:27], 0 offen
	buffer_load_u8 v22, v22, s[24:27], 0 offen
	buffer_load_u8 v20, v20, s[24:27], 0 offen
	buffer_load_u8 v18, v18, s[24:27], 0 offen
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v30, v30, s[24:27], 0 offen
	buffer_load_u8 v28, v28, s[24:27], 0 offen
	buffer_load_u8 v26, v26, s[24:27], 0 offen
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s26, s51, s50
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(35)
	ds_load_2addr_stride64_b64 v[123:126], v64 offset1:8
	s_waitcnt vmcnt(34)
	ds_load_2addr_stride64_b64 v[119:122], v65 offset1:8
	s_waitcnt vmcnt(33)
	ds_load_2addr_stride64_b64 v[131:134], v211 offset1:8
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s26, s26, s11
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(32)
	v_add_nc_u32_e32 v32, 0, v32
	ds_load_2addr_stride64_b64 v[38:41], v32 offset1:8
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v42, v1
	s_waitcnt vmcnt(30)
	ds_store_b8 v42, v3 offset:512
	s_waitcnt vmcnt(29)
	ds_store_b8 v42, v5 offset:1024
	s_waitcnt vmcnt(28)
	ds_store_b8 v42, v7 offset:1536
	s_waitcnt vmcnt(27)
	ds_store_b8 v42, v9 offset:2048
	s_waitcnt vmcnt(26)
	ds_store_b8 v42, v11 offset:2560
	s_waitcnt vmcnt(25)
	ds_store_b8 v42, v13 offset:3072
	s_waitcnt vmcnt(24)
	ds_store_b8 v42, v15 offset:3584
	s_waitcnt vmcnt(23)
	ds_store_b8 v42, v17 offset:4096
	s_waitcnt vmcnt(22)
	ds_store_b8 v42, v19 offset:4608
	s_waitcnt vmcnt(21)
	ds_store_b8 v42, v21 offset:5120
	s_waitcnt vmcnt(20)
	ds_store_b8 v42, v23 offset:5632
	s_waitcnt vmcnt(19)
	ds_store_b8 v42, v25 offset:6144
	s_waitcnt vmcnt(18)
	ds_store_b8 v42, v27 offset:6656
	s_waitcnt vmcnt(17)
	ds_store_b8 v42, v29 offset:7168
	s_waitcnt vmcnt(16)
	ds_store_b8 v42, v31 offset:7680
	s_waitcnt vmcnt(12)
	ds_store_b8 v212, v2
	ds_store_b8 v212, v4 offset:512
	ds_store_b8 v212, v6 offset:1024
	ds_store_b8 v212, v8 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v212, v10 offset:2048
	ds_store_b8 v212, v12 offset:2560
	ds_store_b8 v212, v14 offset:3072
	ds_store_b8 v212, v16 offset:3584
	s_waitcnt vmcnt(4)
	ds_store_b8 v212, v18 offset:4096
	ds_store_b8 v212, v20 offset:4608
	ds_store_b8 v212, v22 offset:5120
	ds_store_b8 v212, v24 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v212, v26 offset:6144
	ds_store_b8 v212, v28 offset:6656
	ds_store_b8 v212, v30 offset:7168
	ds_store_b8 v212, v0 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[127:130], v32 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_dual_mov_b32 v0, s12 :: v_dual_mov_b32 v1, s13
	v_dual_mov_b32 v2, s14 :: v_dual_mov_b32 v3, s15
	v_dual_mov_b32 v4, s16 :: v_dual_mov_b32 v5, s17
	v_dual_mov_b32 v6, s18 :: v_dual_mov_b32 v7, s19
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[8:15], v[38:39], v[66:67], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[220:227], v[40:41], v[66:67], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[38:39], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[236:243], v[40:41], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[244:251], v[38:39], v[205:206], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[40:41], v[205:206], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[38:39], v[207:208], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[40:41], v[207:208], v[0:7] neg_lo:[1,1,0]
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[127:128], v[66:67], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[129:130], v[66:67], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[127:128], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[129:130], v[68:69], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[127:128], v[205:206], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[129:130], v[205:206], v[0:7] neg_lo:[1,1,0]
	v_mov_b32_e32 v206, v85
	v_wmma_i32_16x16x16_iu4 v[84:91], v[127:128], v[207:208], v[0:7] neg_lo:[1,1,0]
	v_mov_b32_e32 v66, v92
	v_wmma_i32_16x16x16_iu4 v[92:99], v[129:130], v[207:208], v[0:7] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[0:3], v64 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[220:227], v[125:126], v[252:253], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[125:126], v[213:214], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[123:124], v[254:255], v[228:235] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[244:251], v[123:124], v[213:214], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[123:124], v[215:216], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[220:227], v[121:122], v[107:108], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[121:122], v[100:101], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[125:126], v[215:216], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[119:120], v[109:110], v[228:235] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[244:251], v[119:120], v[100:101], v[244:251] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[220:227], v[133:134], v[115:116], v[220:227] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[133:134], v[111:112], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[119:120], v[102:103], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[121:122], v[102:103], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[236:243], v[125:126], v[254:255], v[236:243] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[228:235], v[131:132], v[117:118], v[228:235] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[244:251], v[131:132], v[111:112], v[244:251] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v218, v17
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v17, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[0:1], v[252:253], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[2:3], v[252:253], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[0:1], v[254:255], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[2:3], v[254:255], v[197:204] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[0:1], v[213:214], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[2:3], v[213:214], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[0:1], v[215:216], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[2:3], v[215:216], v[92:99] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[0:3], v65 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[24:31], v[131:132], v[113:114], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[133:134], v[113:114], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[236:243], v[121:122], v[109:110], v[236:243] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v121, v234
	v_cvt_f32_i32_e32 v65, v20
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[8:15], v[123:124], v[252:253], v[8:15] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v216, v251
	v_cvt_f32_i32_e32 v217, v21
	v_cvt_f32_i32_e32 v64, v22
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[8:15], v[119:120], v[107:108], v[8:15] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v120, v233
	v_cvt_f32_i32_e32 v214, v249
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[236:243], v[133:134], v[117:118], v[236:243] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[131:132], v[115:116], v[8:15] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v215, v250
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[0:1], v[107:108], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[2:3], v[107:108], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[0:1], v[109:110], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[2:3], v[109:110], v[197:204] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[0:1], v[100:101], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[2:3], v[100:101], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[0:1], v[102:103], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[2:3], v[102:103], v[92:99] neg_lo:[1,1,0]
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_load_2addr_stride64_b64 v[0:3], v211 offset1:8
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v211, v23
	v_cvt_f32_i32_e32 v100, v8
	v_cvt_f32_i32_e32 v101, v9
	v_cvt_f32_i32_e32 v102, v10
	v_cvt_f32_i32_e32 v103, v11
	v_cvt_f32_i32_e32 v129, v239
	v_cvt_f32_i32_e32 v107, v12
	v_cvt_f32_i32_e32 v8, v224
	v_cvt_f32_i32_e32 v123, v236
	v_cvt_f32_i32_e32 v108, v13
	v_cvt_f32_i32_e32 v124, v241
	v_cvt_f32_i32_e32 v109, v14
	v_cvt_f32_i32_e32 v110, v15
	v_cvt_f32_i32_e32 v131, v244
	v_cvt_f32_i32_e32 v213, v248
	v_cvt_f32_i32_e32 v122, v235
	v_cvt_f32_i32_e32 v132, v245
	v_cvt_f32_i32_e32 v119, v232
	v_cvt_f32_i32_e32 v133, v246
	.loc	1 1190 36                       ; ragged.py:1190:36
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[2:3], v[115:116], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[0:1], v[111:112], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[2:3], v[111:112], v[76:83] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v112, v221
	v_cvt_f32_i32_e32 v221, v16
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v16, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[84:91], v[0:1], v[113:114], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[2:3], v[113:114], v[92:99] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v113, v222
	v_cvt_f32_i32_e32 v222, v18
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v18, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v111, v220
	v_cvt_f32_i32_e32 v220, v19
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v19, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v234, v49
	scratch_load_b32 v49, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[40:47], v[0:1], v[115:116], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[0:1], v[117:118], v[56:63] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[197:204], v[2:3], v[117:118], v[197:204] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v233, v50
	v_cvt_f32_i32_e32 v249, v94
	v_cvt_f32_i32_e32 v2, v42
	v_cvt_f32_i32_e32 v1, v43
	v_cvt_f32_i32_e32 v67, v44
	v_cvt_f32_i32_e32 v3, v41
	v_cvt_f32_i32_e32 v41, v84
	v_mov_b32_e32 v84, v160
	v_cvt_f32_i32_e32 v255, v45
	v_mov_b32_e32 v94, v175
	v_cvt_f32_i32_e32 v239, v200
	v_cvt_f32_i32_e32 v200, v88
	v_mov_b32_e32 v88, v140
	v_mov_b32_e32 v140, v179
	v_mov_b32_e32 v179, v191
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v115, v228
	v_cvt_f32_i32_e32 v117, v230
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v224, v202
	v_mov_b32_e32 v202, v148
	v_cvt_f32_i32_e32 v230, v83
	v_mov_b32_e32 v83, v151
	v_cvt_f32_i32_e32 v236, v98
	v_dual_mov_b32 v98, v139 :: v_dual_mov_b32 v139, v178
	v_mov_b32_e32 v178, v162
	v_cvt_f32_i32_e32 v250, v93
	v_dual_mov_b32 v93, v182 :: v_dual_mov_b32 v182, v181
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v116, v229
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v241, v199
	v_mov_b32_e32 v199, v161
	v_cvt_f32_i32_e32 v229, v82
	v_mov_b32_e32 v82, v149
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v118, v231
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v248, v95
	v_cvt_f32_i32_e32 v228, v81
	v_mov_b32_e32 v81, v152
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v130, v240
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v240, v96
	v_mov_b32_e32 v96, v193
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v205, v227
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v227, v201
	v_mov_b32_e32 v201, v145
	v_mov_b32_e32 v191, v171
	v_cvt_f32_i32_e32 v235, v97
	v_mov_b32_e32 v97, v169
	v_cvt_f32_i32_e32 v13, v87
	v_mov_b32_e32 v87, v210
	v_cvt_f32_i32_e32 v210, v89
	v_mov_b32_e32 v89, v183
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v127, v237
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v237, v99
	v_mov_b32_e32 v99, v165
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v134, v247
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v14, v86
	v_mov_b32_e32 v86, v209
	v_cvt_f32_i32_e32 v209, v90
	v_dual_mov_b32 v90, v135 :: v_dual_mov_b32 v135, v176
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v114, v223
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v6, v57
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v128, v238
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v5, v58
	v_cvt_f32_i32_e32 v15, v85
	v_mov_b32_e32 v85, v206
	v_cvt_f32_i32_e32 v206, v91
	v_mov_b32_e32 v91, v188
	v_cvt_f32_i32_e32 v247, v92
	v_mov_b32_e32 v92, v66
	v_cvt_f32_i32_e32 v4, v59
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v208, v225
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v207, v226
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v9, v71
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v125, v242
	v_cvt_f32_i32_e32 v126, v243
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v231, v80
	v_mov_b32_e32 v80, v163
	v_mov_b32_e32 v188, v167
	v_cvt_f32_i32_e32 v254, v46
	v_cvt_f32_i32_e32 v253, v47
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v252, v48
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v48, v60
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v0, v61
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v223, v52
	v_cvt_f32_i32_e32 v225, v203
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v12, v68
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v11, v69
	v_cvt_f32_i32_e32 v10, v70
	v_cvt_f32_i32_e32 v47, v62
	v_cvt_f32_i32_e32 v46, v63
	v_cvt_f32_i32_e32 v226, v204
	v_cvt_f32_i32_e32 v204, v72
	v_cvt_f32_i32_e32 v203, v73
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v242, v198
	v_cvt_f32_i32_e32 v198, v74
	v_cvt_f32_i32_e32 v238, v197
	v_cvt_f32_i32_e32 v197, v75
	v_cvt_f32_i32_e32 v232, v51
	v_cvt_f32_i32_e32 v243, v76
	v_cvt_f32_i32_e32 v246, v77
	v_cvt_f32_i32_e32 v245, v78
	v_cvt_f32_i32_e32 v244, v79
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v17, s51, v17, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v17, 0x80000000, v17, s8
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v16, s51, v16, 1
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v18, s51, v18, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s7
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v19, s51, v19, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s51, s51, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, v49, s26, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s9
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s51, s48
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s10
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v20, v20, s[40:43], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v16, v16, s[28:31], 0 offen
	buffer_load_u16 v42, v17, s[28:31], 0 offen
	buffer_load_u16 v43, v18, s[28:31], 0 offen
	buffer_load_u16 v44, v19, s[28:31], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v50, off, off offset:656 ; 4-byte Folded Reload
	v_mov_b32_e32 v181, v177
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v251, 16, v16
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v42, 16, v42
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v43
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v17, 16, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v251, v100
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v24, v44, v24
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v50, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v172
	ds_load_b128 v[20:23], v172 offset:16
	v_dual_mov_b32 v175, v196 :: v_dual_mov_b32 v196, v159
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v175, v45, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v251, v101
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v219, v45, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v251, v102
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v102, off, off offset:52
	scratch_load_b32 v145, off, off offset:180
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v179, v45, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v251, v103
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v103, off, off offset:48
	scratch_load_b32 v148, off, off offset:200
	scratch_load_b32 v151, off, off offset:184
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v178, v45, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v42, v115
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v115, off, off offset:44
	scratch_load_b32 v149, off, off offset:204
	scratch_load_b32 v161, off, off offset:168
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v148, v45, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v42, v116
	scratch_load_b32 v116, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v115, v24, v16
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v149, v45, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v42, v117
	v_mov_b32_e32 v95, v190
	v_mov_b32_e32 v190, v170
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v154, v45, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v42, v118
	scratch_load_b32 v118, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v153, v45, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v43, v131
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v131, off, off offset:164
	scratch_load_b32 v152, off, off offset:224
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v131, v45, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v43, v132
	scratch_load_b32 v132, off, off offset:160 ; 4-byte Folded Reload
	v_mov_b32_e32 v193, v180
	v_mul_f32_e32 v16, v44, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v84, v16, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v26
	v_mul_f32_e32 v24, v111, v251
	scratch_load_b32 v111, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v3, v251, v3
	v_mul_f32_e32 v1, v251, v1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v251, v8
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v132, v45, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v45, v43, v133
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v133, off, off offset:156
	scratch_load_b32 v117, off, off offset:36
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v117, v16, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v27
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v116, v16, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v251, v107
	scratch_load_b32 v107, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v168, v16, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v251, v108
	scratch_load_b32 v108, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v152, v16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v251, v109
	scratch_load_b32 v109, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v173, v16, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v251, v110
	scratch_load_b32 v110, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v174, v16, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v42, v119
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v119, off, off offset:116
	scratch_load_b32 v167, off, off offset:132
	scratch_load_b32 v160, off, off offset:128
	scratch_load_b32 v163, off, off offset:124
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v161, v16, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v42, v120
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v120, off, off offset:112
	scratch_load_b32 v171, off, off offset:144
	scratch_load_b32 v170, off, off offset:140
	scratch_load_b32 v169, off, off offset:136
	scratch_load_b32 v162, off, off offset:120
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v146, v16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v42, v121
	scratch_load_b32 v121, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v42, v0 :: v_dual_fmac_f32 v147, v16, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v42, v122
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v122, off, off offset:100
	scratch_load_b32 v183, off, off offset:104
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v145, v16, v23 :: v_dual_mul_f32 v16, v43, v213
	scratch_load_b32 v213, off, off offset:188 ; 4-byte Folded Reload
	v_dual_fmac_f32 v99, v16, v20 :: v_dual_mul_f32 v16, v43, v214
	s_waitcnt vmcnt(8)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v120, v16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v43, v215
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v121, v16, v22 :: v_dual_mul_f32 v16, v43, v216
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v122, v16, v23 :: v_dual_fmac_f32 v135, v45, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v16, v44, v28 :: v_dual_mul_f32 v45, v43, v134
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v134, off, off offset:152
	scratch_load_b32 v177, off, off offset:148
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v95, v16, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v16, v44, v29 :: v_dual_fmac_f32 v133, v45, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v96, v16, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v97, v16, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v102, v16, v23
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[16:19], v172 offset:512
	ds_load_b128 v[20:23], v172 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2) lgkmcnt(1)
	v_fmac_f32_e32 v213, v24, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v251, v112
	scratch_load_b32 v112, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v183, v24, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v251, v113
	scratch_load_b32 v113, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v177, v24, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v251, v114
	scratch_load_b32 v114, off, off         ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v164, v24, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v123, v42
	scratch_load_b32 v123, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v196, v24, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v42, v127
	scratch_load_b32 v127, off, off offset:96 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v134, v24, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v42, v128
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v24, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v42, v129
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v129, off, off offset:88
	scratch_load_b32 v180, off, off offset:84
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v137, v24, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v221, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v191, v24, v16 :: v_dual_mul_f32 v24, v43, v218
	v_dual_fmac_f32 v91, v24, v17 :: v_dual_mul_f32 v24, v43, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v24, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v43, v220
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v111, v24, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v24, v32, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v187, v24, v16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v33
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v86, v16, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v85, v16, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v16, v44, v35
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fmac_f32_e32 v180, v8, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v208, v251
	scratch_load_b32 v208, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v202, v8, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v207, v251
	scratch_load_b32 v207, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v201, v8, v22 :: v_dual_mul_f32 v8, v205, v251
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v205, off, off offset:212
	scratch_load_b32 v128, off, off offset:92
	v_fmac_f32_e32 v88, v16, v19
	v_dual_fmac_f32 v199, v8, v23 :: v_dual_mul_f32 v8, v42, v130
	scratch_load_b32 v130, off, off offset:80 ; 4-byte Folded Reload
	v_fmac_f32_e32 v138, v8, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v124, v42
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v124, off, off offset:72
	scratch_load_b32 v165, off, off offset:68
	scratch_load_b32 v159, off, off offset:64
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v194, v8, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v125, v42
	scratch_load_b32 v125, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v193, v8, v22
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v126, v42
	scratch_load_b32 v126, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v192, v8, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v43, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v8, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v217, v43
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v190, v8, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v64, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v189, v8, v22 :: v_dual_mul_f32 v8, v211, v43
	v_fmac_f32_e32 v188, v8, v23
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v44, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v87, v8, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v37, v44
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v186, v8, v21
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v8, v38, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v185, v8, v22 :: v_dual_mul_f32 v8, v39, v44
	v_fmac_f32_e32 v184, v8, v23
	v_add_nc_u32_e32 v8, s33, v49
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v8, v8, s26, 1
	buffer_load_u16 v8, v8, s[40:43], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v50, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v172
	ds_load_b128 v[20:23], v172 offset:16
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v171, v1, v19
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v151, v0, v21 :: v_dual_mul_f32 v0, v42, v47
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v1, v42, v7 :: v_dual_fmac_f32 v182, v3, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v144, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v42, v46
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v143, v0, v23 :: v_dual_mul_f32 v0, v43, v204
	scratch_load_b32 v204, off, off offset:208 ; 4-byte Folded Reload
	v_fmac_f32_e32 v126, v0, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v43, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v8, v251, v40 :: v_dual_fmac_f32 v125, v0, v21
	v_mul_f32_e32 v0, v43, v198
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v158, v1, v16 :: v_dual_mul_f32 v1, v42, v6
	v_fmac_f32_e32 v181, v8, v16
	scratch_load_b32 v198, off, off offset:176 ; 4-byte Folded Reload
	v_fmac_f32_e32 v123, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v8, v252, v251 :: v_dual_fmac_f32 v157, v1, v17
	v_mul_f32_e32 v1, v42, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v156, v1, v18 :: v_dual_mul_f32 v1, v42, v4
	v_fmac_f32_e32 v155, v1, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v1, v43, v12 :: v_dual_mul_f32 v12, v228, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v130, v1, v16 :: v_dual_mul_f32 v1, v43, v11
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v42, v227
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v129, v1, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v43, v10
	v_mul_f32_e32 v10, v226, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v127, v1, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v43, v9
	v_mul_f32_e32 v9, v225, v42
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v128, v1, v19 :: v_dual_mul_f32 v1, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v110, v1, v16 :: v_dual_mul_f32 v1, v44, v15
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v15, v43, v231
	v_dual_mul_f32 v16, v235, v44 :: v_dual_fmac_f32 v109, v1, v17
	v_mul_f32_e32 v1, v44, v14
	v_dual_mul_f32 v17, v236, v44 :: v_dual_mul_f32 v14, v230, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v108, v1, v18 :: v_dual_mul_f32 v1, v44, v13
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v13, v229, v43 :: v_dual_mul_f32 v0, v43, v197
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v107, v1, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v19, v44, v240
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v124, v0, v23
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v200
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v200, off, off offset:192
	scratch_load_b32 v197, off, off offset:172
	v_dual_mul_f32 v1, v251, v67 :: v_dual_fmac_f32 v106, v0, v20
	v_mul_f32_e32 v0, v44, v210
	v_mul_f32_e32 v2, v251, v2
	scratch_load_b32 v210, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v169, v1, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v251, v255
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v105, v0, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v209
	scratch_load_b32 v209, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v167, v1, v21
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v1, v251, v254
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v104, v0, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v206
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v206, off, off offset:216
	scratch_load_b32 v203, off, off offset:196
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v163, v1, v22
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v1, v251, v253 :: v_dual_fmac_f32 v170, v2, v18
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v103, v0, v23 :: v_dual_mul_f32 v18, v237, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v160, v1, v23 :: v_dual_mul_f32 v1, v42, v48
	v_fmac_f32_e32 v150, v1, v20
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[0:3], v172 offset:512
	ds_load_b128 v[4:7], v172 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v80, v8, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v251, v234
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v140, v11, v4 :: v_dual_fmac_f32 v205, v10, v7
	v_dual_fmac_f32 v113, v15, v4 :: v_dual_fmac_f32 v82, v12, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v166, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v8, v251, v233 :: v_dual_fmac_f32 v83, v13, v6
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v89, v19, v4
	v_dual_fmac_f32 v195, v18, v7 :: v_dual_fmac_f32 v162, v8, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v251, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v159, v8, v3 :: v_dual_mul_f32 v8, v238, v42
	v_dual_fmac_f32 v81, v8, v0 :: v_dual_mul_f32 v8, v42, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v142, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v42, v241
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v141, v8, v2 :: v_dual_mul_f32 v8, v42, v239
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v139, v8, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v243, v43
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v204, v8, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v43, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v119, v8, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v43, v245
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v118, v8, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v43, v244
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v198, v16, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v114, v8, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v8, v247, v44
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v200, v8, v0
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v250
	v_mul_f32_e32 v8, v224, v42
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(4)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v197, v17, v6 :: v_dual_fmac_f32 v94, v0, v1
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v0, v44, v249 :: v_dual_mul_f32 v1, v54, v251
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v207, v8, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v93, v0, v2
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v44, v248
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v2, v55, v251 :: v_dual_fmac_f32 v209, v1, v6
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v90, v0, v3
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v0, v53, v251
	v_mul_f32_e32 v3, v251, v223
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v208, v2, v7
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v206, v9, v6 :: v_dual_fmac_f32 v203, v14, v7
	v_dual_fmac_f32 v210, v0, v5 :: v_dual_fmac_f32 v165, v3, v4
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v100, off, off offset:844
	scratch_load_b32 v101, off, off offset:848
	v_and_b32_e32 v1, 0x80, v98
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v80 :: v_dual_mul_f32 v5, 0xbfb8aa3b, v170
	v_dual_mul_f32 v2, 0xbfb8aa3b, v209 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v160
	v_dual_mul_f32 v8, 0xbfb8aa3b, v182 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_mul_f32_e32 v26, 0xbfb8aa3b, v163
	v_mul_f32_e32 v50, 0xbfb8aa3b, v128
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v3
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v0, 0xbfb8aa3b, v210
	v_cndmask_b32_e64 v4, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v10, 0, 0x42800000, s0
	v_cndmask_b32_e64 v12, 0, 0x42800000, s1
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v80
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v37, 0xbfb8aa3b, v162 :: v_dual_fmac_f32 v10, 0xbfb8aa3b, v209
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v208 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v165
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v13, v7
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v10, v10
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, s0
	v_exp_f32_e32 v12, v12
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v210 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v169
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	v_mul_f32_e32 v14, 0xbfb8aa3b, v205
	s_delay_alu instid0(VALU_DEP_4)
	v_exp_f32_e32 v2, v2
	v_ldexp_f32 v4, v13, v4
	v_mul_f32_e32 v13, 0xbfb8aa3b, v81
	v_ldexp_f32 v10, v10, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v207
	v_ldexp_f32 v11, v12, v11
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_dual_mul_f32 v51, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v18, 0xbfb8aa3b, v203
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v0, v2, v0
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v13, 0xbfb8aa3b, v206
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v205
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v81
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v40, 0xbfb8aa3b, v140
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v12, v12
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v207
	v_mul_f32_e32 v42, 0xbfb8aa3b, v151
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v18
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v206
	v_exp_f32_e32 v13, v13
	v_mul_f32_e32 v27, 0xbfb8aa3b, v108
	v_dual_mul_f32 v55, 0xbfb8aa3b, v109 :: v_dual_add_f32 v64, 1.0, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v12, v12, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v204
	v_exp_f32_e32 v17, v17
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	s_delay_alu instid0(TRANS32_DEP_3)
	v_ldexp_f32 v13, v13, v3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_mul_f32_e32 v3, 0xbfb8aa3b, v82
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v203
	v_ldexp_f32 v14, v15, v14
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v64, v64, v80
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v15, v17, v16
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v17, 0xbfb8aa3b, v83
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	v_mul_f32_e32 v54, 0xbfb8aa3b, v113
	v_mul_f32_e32 v56, 0xbfb8aa3b, v114
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v204
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v16, v16
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v82
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s0
	v_dual_mul_f32 v25, 0xbfb8aa3b, v105 :: v_dual_add_f32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v83
	v_exp_f32_e32 v17, v17
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_add_f32 v14, 1.0, v14
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v16, v2
	v_exp_f32_e32 v19, v19
	v_mul_f32_e32 v2, 0xbfb8aa3b, v200
	v_exp_f32_e32 v21, v21
	v_mul_f32_e32 v4, 0xbfb8aa3b, v93
	v_dual_mul_f32 v6, 0xbfb8aa3b, v171 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v181
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v17, v17, v3
	v_mul_f32_e32 v3, 0xbfb8aa3b, v198
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_dual_mul_f32 v30, 0xbfb8aa3b, v167 :: v_dual_mul_f32 v33, 0xbfb8aa3b, v156
	v_ldexp_f32 v18, v19, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v3
	v_ldexp_f32 v19, v21, v20
	v_mul_f32_e32 v20, 0xbfb8aa3b, v197
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v3, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	v_mul_f32_e32 v29, 0xbfb8aa3b, v107
	v_mul_f32_e32 v21, 0xbfb8aa3b, v195
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v198
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_fmac_f32 v3, 0xbfb8aa3b, v200
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v28
	v_mul_f32_e32 v28, 0xbfb8aa3b, v106
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v3, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, vcc_lo, v80, v64, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, s0
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v197
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_ldexp_f32 v34, v65, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, null, v0, v0, v210
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v195
	v_exp_f32_e32 v67, v21
	v_ldexp_f32 v68, v3, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, s1, v209, v10, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v79, null, v12, v12, v81
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v68, 1.0, v68 :: v_dual_add_f32 v13, 1.0, v13
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v67, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v10, v10, v209
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v15, 1.0, v15 :: v_dual_add_f32 v34, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v63, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v66, v69, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v71, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v20, 1.0, v20 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v90
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_fmac_f32 v69, v63, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v38, 0xbfb8aa3b, v166 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v155
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v70, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v75, -v67, v71, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v32, 0xbfb8aa3b, v159 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v157
	v_dual_mul_f32 v49, 0xbfb8aa3b, v158 :: v_dual_mul_f32 v36, 0xbfb8aa3b, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v65, v63, 1.0
	v_fma_f32 v74, -v66, v72, v70
	v_fmac_f32_e32 v71, v75, v71
	v_div_scale_f32 v75, null, v11, v11, v208
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v19, 1.0, v19 :: v_dual_fmac_f32 v72, v74, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v63, v73, v63
	v_div_scale_f32 v73, s0, v210, v0, v210
	v_rcp_f32_e32 v77, v75
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v72, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v74, v73, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v35, 0xbfb8aa3b, v143 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v150
	v_dual_mul_f32 v47, 0xbfb8aa3b, v142 :: v_dual_mul_f32 v44, 0xbfb8aa3b, v127
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v65, v74, v73
	v_div_fmas_f32 v66, v66, v69, v72
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v72, -v75, v77, 1.0
	v_rcp_f32_e32 v69, v79
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v74, v70, v63
	v_div_fixup_f32 v64, v66, v64, v80
	v_fmac_f32_e32 v77, v72, v77
	v_div_scale_f32 v66, s2, v208, v11, v208
	v_mul_f32_e32 v78, v76, v71
	v_fma_f32 v65, -v65, v74, v73
	v_div_scale_f32 v72, s0, v81, v12, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v43, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v48, 0xbfb8aa3b, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v67, v78, v76
	v_div_fmas_f32 v63, v65, v63, v74
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v61, 0xbfb8aa3b, v130 :: v_dual_mul_f32 v46, 0xbfb8aa3b, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v78, v70, v71
	v_fma_f32 v70, -v79, v69, 1.0
	v_div_fixup_f32 v0, v63, v0, v210
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v57, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v22, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v67, v78, v76
	v_mul_f32_e32 v67, v66, v77
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v70, null, v13, v13, v207
	v_div_scale_f32 v76, null, v14, v14, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v75, v67, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v53, 0xbfb8aa3b, v125 :: v_dual_mul_f32 v58, 0xbfb8aa3b, v110
	v_dual_mul_f32 v45, 0xbfb8aa3b, v124 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v73, v77
	v_div_fmas_f32 v65, v65, v71, v78
	v_rcp_f32_e32 v71, v70
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v59, 0xbfb8aa3b, v118 :: v_dual_mul_f32 v24, 0xbfb8aa3b, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v10, v65, v10, v209
	v_rcp_f32_e32 v65, v76
	v_fma_f32 v66, -v75, v67, v66
	v_div_scale_f32 v75, null, v15, v15, v205
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v2, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v70, v71, 1.0
	v_mul_f32_e32 v74, v72, v69
	v_div_fmas_f32 v66, v66, v77, v67
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v77, s2, v206, v14, v206
	v_fmac_f32_e32 v71, v73, v71
	v_fma_f32 v63, -v79, v74, v72
	v_rcp_f32_e32 v73, v75
	v_fma_f32 v78, -v76, v65, 1.0
	v_div_scale_f32 v80, s0, v205, v15, v205
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v63, v69
	v_div_scale_f32 v63, s1, v207, v13, v207
	v_div_fixup_f32 v11, v66, v11, v208
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
.Ltmp6:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v79, v74, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v72, v63, v71
	v_div_scale_f32 v79, null, v16, v16, v204
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v67, v67, v69, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v69, -v70, v72, v63
	v_fmac_f32_e32 v65, v78, v65
	v_fma_f32 v78, -v75, v73, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v67, v12, v81
	v_fmac_f32_e32 v72, v69, v71
	v_div_scale_f32 v69, null, v17, v17, v82
	v_fmac_f32_e32 v73, v78, v73
	v_rcp_f32_e32 v78, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v70, v72, v63
	v_rcp_f32_e32 v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v63, v63, v71, v72
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v81, -v79, v78, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v63, v13, v207
	v_fma_f32 v72, -v69, v70, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v81, v78
	v_div_scale_f32 v81, s3, v204, v16, v204
	v_fmac_f32_e32 v70, v72, v70
	v_mul_f32_e32 v74, v77, v65
	v_mul_f32_e32 v67, v80, v73
	v_div_scale_f32 v72, null, v18, v18, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v76, v74, v77
	v_fmac_f32_e32 v74, v66, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v75, v67, v80
	v_fma_f32 v71, -v76, v74, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v67, v66, v73 :: v_dual_mul_f32 v66, v81, v78
	v_div_fmas_f32 v65, v71, v65, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v71, -v75, v67, v80
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v74, -v79, v66, v81
	v_div_scale_f32 v75, s1, v82, v17, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v67, v71, v73, v67
	v_rcp_f32_e32 v71, v72
	v_fmac_f32_e32 v66, v74, v78
	v_div_fixup_f32 v14, v65, v14, v206
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v63, v67, v15, v205
	v_div_scale_f32 v67, null, v19, v19, v203
	v_fma_f32 v15, -v79, v66, v81
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v14, v193, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v72, v71, 1.0
	v_div_fmas_f32 v15, v15, v78, v66
	v_rcp_f32_e32 v66, v67
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v74, v71
	v_mul_f32_e32 v73, v75, v70
	v_div_scale_f32 v74, null, v68, v68, v200
	v_div_fixup_f32 v76, v15, v16, v204
	v_fma_f32 v65, -v69, v73, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v73, v65, v70
	v_div_scale_f32 v65, s0, v83, v18, v83
	v_fma_f32 v15, -v69, v73, v75
	v_rcp_f32_e32 v75, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v16, v65, v71
	v_fma_f32 v69, -v67, v66, 1.0
	v_div_fmas_f32 v15, v15, v70, v73
	v_div_scale_f32 v73, s1, v203, v19, v203
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v72, v16, v65
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v78, v15, v17, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v77, -v74, v75, 1.0
	v_div_scale_f32 v82, null, v62, v62, v195
	v_fmac_f32_e32 v16, v70, v71
	v_div_scale_f32 v70, s2, v200, v68, v200
	v_fmac_f32_e32 v75, v77, v75
	v_fmac_f32_e32 v66, v69, v66
	v_div_scale_f32 v69, null, v34, v34, v198
	v_div_scale_f32 v77, null, v20, v20, v197
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v79, v70, v75
	v_rcp_f32_e32 v15, v69
	v_mul_f32_e32 v17, v73, v66
	v_fma_f32 v65, -v72, v16, v65
	v_rcp_f32_e32 v81, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v72, -v67, v17, v73
	v_fma_f32 v80, -v69, v15, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v17, v72, v66
	v_div_fmas_f32 v16, v65, v71, v16
	v_fma_f32 v65, -v74, v79, v70
	v_div_scale_f32 v72, s0, v198, v34, v198
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v83, v16, v18, v83
	v_fmac_f32_e32 v79, v65, v75
	v_div_scale_f32 v65, s3, v197, v20, v197
	v_fmac_f32_e32 v15, v80, v15
	v_fma_f32 v80, -v77, v81, 1.0
	v_fma_f32 v16, -v67, v17, v73
	v_rcp_f32_e32 v71, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v81, v80, v81
	v_div_fmas_f32 v16, v16, v66, v17
	v_fma_f32 v17, -v74, v79, v70
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v70, v65, v81
	v_mul_f32_e32 v18, v72, v15
	v_div_fixup_f32 v73, v16, v19, v203
	v_fma_f32 v67, -v82, v71, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v77, v70, v65
	v_fma_f32 v66, -v69, v18, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v18, v66, v15
	v_fmac_f32_e32 v70, v16, v81
	v_div_fmas_f32 v17, v17, v75, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v9, -v69, v18, v72
	v_div_fixup_f32 v66, v17, v68, v200
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v71, v67, v71
	v_div_scale_f32 v67, s1, v195, v62, v195
	v_div_fmas_f32 v9, v9, v15, v18
	v_fma_f32 v15, -v77, v70, v65
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v68, 0xbfb8aa3b, v181 :: v_dual_mul_f32 v19, v67, v71
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v15, v15, v81, v70
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v18, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v9, v34, v198
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v65, v15, v20, v197
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v213, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v82, v19, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v19, v16, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v182
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v82, v19, v67
	v_div_fmas_f32 v8, v16, v71, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_ldexp_f32 v6, v18, v17
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v17, v201, v10 :: v_dual_mul_f32 v18, v199, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v62, v8, v62, v195
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v19, v202, v0 :: v_dual_add_f32 v0, 1.0, v6
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v6, v15
	v_cndmask_b32_e64 v8, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v171
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v0, v0, v181
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v16, v196, v12 :: v_dual_mul_f32 v15, v194, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v10, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v6, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v13, v192, v63 :: v_dual_mul_f32 v12, v191, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v5
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v70, vcc_lo, v181, v0, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v5, v10, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v8, -v67, v64, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v9, 0xbfb8aa3b, v170 :: v_dual_mul_f32 v10, v188, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v63, v63, v182
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v69, 1.0, v5 :: v_dual_fmac_f32 v64, v8, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v187, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v9
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v5, v186, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v69, v69, v171
	v_mul_f32_e32 v75, v70, v64
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v190, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v73, v74
	v_div_scale_f32 v66, s0, v182, v63, v182
	v_fma_f32 v76, -v67, v75, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v72, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v189, v83
	v_mul_f32_e32 v6, v185, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v74, v73, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v77, -v68, v71, 1.0
	v_fmac_f32_e32 v73, v72, v73
	v_fmac_f32_e32 v75, v76, v64
	v_div_scale_f32 v72, null, v34, v34, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v65, -v67, v75, v70
	v_div_scale_f32 v70, s1, v171, v69, v171
	v_mul_f32_e32 v76, v70, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v64, v65, v64, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v65, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v184, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v74, v76, v70
	v_fmac_f32_e32 v71, v77, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v64, v0, v181
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v78, 0xbfb8aa3b, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v72, v65, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v64, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v167
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v76, v62, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v30, v30, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v67, v66, v71
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v70, -v74, v76, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v75, -v68, v67, v66
	v_fmac_f32_e32 v67, v75, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v68, v67, v66
	v_div_scale_f32 v68, s2, v170, v34, v170
	v_div_fmas_f32 v66, v66, v71, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v67, v68, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	v_exp_f32_e32 v26, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v30, -v72, v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v75, null, v64, v64, v169
	v_fmac_f32_e32 v67, v30, v65
	v_div_fixup_f32 v30, v66, v63, v182
	v_div_fmas_f32 v70, v70, v73, v76
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v26, v26, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v72, v67, v68
	v_rcp_f32_e32 v62, v75
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v163
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v26
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v66, v65, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_exp_f32_e32 v68, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v70, v69, v171
	v_div_scale_f32 v67, s0, v169, v64, v169
	v_div_fixup_f32 v23, v65, v34, v170
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v70, -v75, v62, 1.0
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v65, 0xbfb8aa3b, v160
	v_ldexp_f32 v68, v68, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v70, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v70, v67, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v73, null, v68, v68, v163
	v_fma_f32 v72, -v75, v70, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v23, v179, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v65, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v175, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v63, v63, v167
	v_fmac_f32_e32 v70, v72, v62
	v_rcp_f32_e32 v74, v73
	v_rcp_f32_e32 v66, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v75, v70, v67
	v_div_fmas_f32 v62, v67, v62, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s0, v163, v68, v163
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v71, -v69, v66, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v73, v74, 1.0
	v_div_fixup_f32 v62, v62, v64, v169
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v66, v71, v66
	v_div_scale_f32 v71, s1, v167, v63, v167
	v_fmac_f32_e32 v74, v65, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v166
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v71, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v69, v72, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v75, v66
	v_fma_f32 v64, -v69, v72, v71
	v_mul_f32_e32 v71, v38, v74
	v_div_scale_f32 v67, null, v0, v0, v160
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v65, v67
	v_div_fmas_f32 v37, v64, v66, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v32
	v_ldexp_f32 v32, v70, v69
	v_cndmask_b32_e64 v66, 0, 0x42800000, s2
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v37, v37, v63, v167
	v_fma_f32 v63, -v73, v71, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v67, v65, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v26, v178, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v71, v63, v74 :: v_dual_fmac_f32 v70, 0xbfb8aa3b, v159
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v72, v65
	v_div_scale_f32 v72, s1, v160, v0, v160
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v30, v219, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v73, v71, v38
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v63, v72, v65
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v152, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v67, v63, v72
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v63, v32, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v38, v74, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v38, -v67, v63, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v52
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v38, v38, v65, v63
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v69
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v162
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v63, vcc_lo, v166, v73, v166
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v0, v38, v0, v160
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v69, 1.0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v38, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v31, v68, v163
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v31, v174, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v64, v66, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v73, v73, v166
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v67, v38, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v38, v168, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v66, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v74, v70
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v69, v69, v159
	v_mul_f32_e32 v71, v63, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v75, null, v64, v64, v162
	v_rcp_f32_e32 v76, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v0, -v66, v71, v63
	v_rcp_f32_e32 v72, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v0, v70
	v_fma_f32 v63, -v66, v71, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v65, -v75, v72, 1.0
	v_div_scale_f32 v66, null, v62, v62, v165
	v_div_fmas_f32 v63, v63, v70, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v72, v65, v72
	v_div_scale_f32 v65, s0, v162, v64, v162
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v49
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, s1, v159, v69, v159
	v_mul_f32_e32 v68, v65, v72
	v_div_fixup_f32 v63, v63, v73, v166
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v0, -v75, v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v68, v0, v72
	v_fma_f32 v0, -v74, v76, 1.0
	v_fma_f32 v65, -v75, v68, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v76, v0, v76
	v_rcp_f32_e32 v0, v66
	v_div_fmas_f32 v65, v65, v72, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v49, v76
	v_div_scale_f32 v72, s0, v165, v62, v165
	v_div_fixup_f32 v64, v65, v64, v162
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v66, v0, 1.0
	v_fma_f32 v65, -v74, v68, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v0, v71, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v158
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v68, v65, v76
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v70
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v157
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v74, v68, v49
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v71, v71
	v_ldexp_f32 v39, v41, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v173, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v41, v72, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v66, v41, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v73, v73, v158
	v_fmac_f32_e32 v41, v39, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v67
	v_ldexp_f32 v39, v71, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v66, -v66, v41, v72
	v_div_fmas_f32 v49, v49, v76, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v68, 1.0, v39 :: v_dual_fmac_f32 v71, 0xbfb8aa3b, v156
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v74, v67, 1.0
	v_div_scale_f32 v65, null, v68, v68, v157
	v_div_fmas_f32 v0, v66, v0, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v39, v67
	v_rcp_f32_e32 v66, v65
	v_div_scale_f32 v72, vcc_lo, v158, v73, v158
	v_div_fixup_f32 v39, v49, v69, v159
	v_div_fixup_f32 v0, v0, v62, v165
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v72, v67
	v_div_scale_f32 v76, s0, v157, v68, v157
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v39, v164, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v49, -v65, v66, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v33, v180, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v41, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v74, v69, v72
	v_div_scale_f32 v62, null, v71, v71, v155
	v_fmac_f32_e32 v66, v49, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_fmac_f32 v69, v75, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v41, v177, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v64, v76, v66 :: v_dual_mul_f32 v49, v183, v63
	v_fma_f32 v63, -v74, v69, v72
	v_div_scale_f32 v77, null, v0, v0, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v65, v64, v76
	v_div_fmas_f32 v52, v63, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v75, -v62, v70, 1.0
	v_fmac_f32_e32 v64, v72, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v74, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v150
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v65, -v65, v64, v76
	v_div_fixup_f32 v52, v52, v73, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v42, v65, v66, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v77, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v42, v42, v68, v157
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v151
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v59
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_ldexp_f32 v63, v67, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v75, v70
	v_div_scale_f32 v75, s1, v155, v71, v155
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v75, v70
	v_fma_f32 v73, -v62, v69, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v73, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v72, v74
	v_div_scale_f32 v72, s2, v156, v0, v156
	v_fma_f32 v62, -v62, v69, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v144
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v64, v72, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v62, v62, v70, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v73
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v77, v64, v72
	v_fmac_f32_e32 v64, v36, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v63, v63, v150
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v77, v64, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v66
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v36, v65
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v143
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v35, v35, v74, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v69, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v66, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v35, v0, v156
	v_div_scale_f32 v69, null, v64, v64, v151
	v_fmac_f32_e32 v70, v67, v70
	v_div_scale_f32 v67, vcc_lo, v150, v63, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v74, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v36, v62, v71, v155
	v_dual_mul_f32 v76, v67, v70 :: v_dual_mul_f32 v35, v154, v0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v72, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v73, v73, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v68, -v66, v76, v67
	v_div_scale_f32 v65, s0, v151, v64, v151
	v_fma_f32 v71, -v69, v74, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v62, v75
	v_fmac_f32_e32 v76, v68, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v74, v71, v74
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v66, v76, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v67, v65, v74
	v_div_scale_f32 v71, null, v0, v0, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v66, v66, v70, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v62, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v70, v71
	v_fma_f32 v72, -v69, v67, v65
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v153, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v78, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v62, v68, v62
	v_div_scale_f32 v68, s1, v144, v73, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v78, 0xbfb8aa3b, v142 :: v_dual_mul_f32 v47, v148, v52
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v76, v68, v62
	v_fmac_f32_e32 v67, v72, v74
	v_div_fixup_f32 v52, v66, v63, v150
	v_fma_f32 v66, -v71, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v48
	v_exp_f32_e32 v48, v78
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v63, -v75, v76, v68
	v_fma_f32 v65, -v69, v67, v65
	v_fmac_f32_e32 v70, v66, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, s2, v143, v0, v143
	v_fmac_f32_e32 v76, v63, v62
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v141
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v65, v65, v74, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v48, v48, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v67, v69, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v43
	v_exp_f32_e32 v43, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v68, -v75, v76, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v66, 1.0, v48
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v48, -v71, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v67, v48, v70
	v_div_scale_f32 v75, null, v66, v66, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v43, v43, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v62, v68, v62, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v63, v75
	v_div_fixup_f32 v48, v65, v64, v151
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v43, v62, v73, v144
	v_fma_f32 v62, -v71, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v65, v74
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v68, null, v64, v64, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v62, v62, v70, v67
	v_fma_f32 v69, -v75, v63, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v40
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v51
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v62, v0, v143
	v_fmac_f32_e32 v63, v69, v63
	v_div_scale_f32 v69, s0, v142, v66, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v65, v65, v72
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v40, v145, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v71, v69, v63
	v_fma_f32 v72, -v68, v67, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v140
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v75, v71, v69
	v_fmac_f32_e32 v67, v72, v67
	v_div_scale_f32 v72, s1, v141, v64, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v65, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v42, v149, v42 :: v_dual_mul_f32 v65, v72, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v0, v0, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v69, -v75, v71, v69
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v75, -v68, v65, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v74, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v62, v70, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v63, v69, v63, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v75, v67
	v_div_scale_f32 v61, s0, v139, v0, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v63, v63, v66, v142
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v62, 1.0, v62
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v66, -v68, v65, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v73, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v62, v62, v140
	v_fmac_f32_e32 v74, v69, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v130
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v69, v68
	v_div_fmas_f32 v51, v66, v67, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v67, v61, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v50
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v51, v51, v64, v141
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v129
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v64, -v73, v67, v61
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v68, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v44
	v_exp_f32_e32 v66, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v64, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v71, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v72, v69
	v_div_scale_f32 v72, s1, v140, v62, v140
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v73, v67, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v73, 1.0, v50 :: v_dual_mul_f32 v64, v72, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v65, v66, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v128
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v73, v73, v130
	v_fma_f32 v50, -v68, v64, v72
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v48, v146, v48 :: v_dual_add_f32 v65, 1.0, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v44, v61, v74, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v64, v50, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v50, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v71, v66
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v68, v64, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v65, v65, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v61, v61, v69, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v127
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v74, -v66, v71, 1.0
	v_div_scale_f32 v64, vcc_lo, v130, v73, v130
	v_div_fixup_f32 v61, v61, v62, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v62, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v71, v74, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v50, v50, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v44, v0, v139
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v44, v138, v61
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v72, v75
	v_mul_f32_e32 v70, v64, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v50
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v50, v137, v0
	v_dual_mul_f32 v52, v161, v52 :: v_dual_mul_f32 v51, v136, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v61, -v66, v70, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v62, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v147, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v69, -v75, v72, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v70, v61, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v61, v134, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v69, v72
	v_fma_f32 v63, -v66, v70, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v64, null, v0, v0, v127
	v_div_scale_f32 v69, s0, v129, v65, v129
	v_div_fmas_f32 v63, v63, v71, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v57, v64
	v_div_fixup_f32 v63, v63, v73, v130
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v64, v57, 1.0
	v_dual_fmac_f32 v57, v71, v57 :: v_dual_mul_f32 v76, v69, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v62, -v75, v76, v69
	v_fmac_f32_e32 v76, v62, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v75, v76, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v66, v66, v72, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v126
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, s0, v127, v0, v127
	v_div_fixup_f32 v65, v66, v65, v129
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v53, v69
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v46
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v125
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v74, null, v68, v68, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v71, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v77, v74
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v53, v67
	v_cndmask_b32_e64 v67, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v53, v72, v57
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v123
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v64, v53, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v62, -v74, v77, 1.0
	v_fmac_f32_e32 v53, v46, v57
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v46, v71, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v77, v62, v77
	v_div_scale_f32 v62, s1, v128, v68, v128
	v_fma_f32 v64, -v64, v53, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v62, v77
	v_fma_f32 v66, -v74, v70, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v66, v77
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_exp_f32_e32 v45, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v62, -v74, v70, v62
	v_div_scale_f32 v74, null, v73, v73, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v67, v74
	v_div_fmas_f32 v62, v62, v77, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v45, v45, v66
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v124
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v53, v64, v57, v53
	v_div_scale_f32 v72, vcc_lo, v126, v73, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v57, v71
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v46, -v74, v67, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v53, v0, v127
	v_fmac_f32_e32 v67, v46, v67
	v_div_fixup_f32 v46, v62, v68, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v62, null, v71, v71, v123
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v45, v135, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v57, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v68, v72, v67
	v_rcp_f32_e32 v69, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v57, -v74, v68, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v77, null, v0, v0, v124
	v_fma_f32 v76, -v62, v69, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v68, v57, v67
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v131, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v69, v76, v69
	v_div_scale_f32 v66, null, v70, v70, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v63, -v74, v68, v72
	v_div_scale_f32 v75, s0, v125, v70, v125
	v_rcp_f32_e32 v64, v66
	v_rcp_f32_e32 v74, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v60, v63, v67, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v76, s1, v123, v71, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v60, v60, v73, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v67, 0xbfb8aa3b, v119 :: v_dual_mul_f32 v68, v76, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v53, -v66, v64, 1.0
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v99, v99, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v73, -v62, v68, v76
	v_dual_fmac_f32 v64, v53, v64 :: v_dual_mul_f32 v53, v132, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v68, v73, v69 :: v_dual_mul_f32 v65, v75, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v63, v67, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v133, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v72, -v66, v65, v75
	v_fma_f32 v62, -v62, v68, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v65, v72, v64
	v_fma_f32 v72, -v77, v74, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v66, -v66, v65, v75
	v_fmac_f32_e32 v74, v72, v74
	v_div_scale_f32 v72, s2, v124, v0, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v59, v66, v64, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v64, v72, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v56
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v59, v59, v70, v125
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v118
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v56, -v77, v64, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v73, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v64, v56, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v56, v66
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v66, null, v63, v63, v119
	v_div_fmas_f32 v62, v62, v69, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v68, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v66
	v_fma_f32 v54, -v77, v64, v72
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v56, v65
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v72, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fmas_f32 v54, v54, v74, v64
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v64, 1.0, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v56, v68, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v67, -v66, v69, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, null, v64, v64, v118
	v_fmac_f32_e32 v69, v67, v69
	v_div_scale_f32 v67, vcc_lo, v119, v63, v119
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v73, 1.0, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v56, v62, v71, v123
	v_rcp_f32_e32 v74, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v76, v67, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v72
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v73, v73, v114
	v_div_fixup_f32 v0, v54, v0, v124
	v_fma_f32 v62, -v66, v76, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v70, v75
	v_fma_f32 v71, -v68, v74, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v76, v62, v69
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v62, v120, v59
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v74, v71, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v59, -v66, v76, v67
	v_div_scale_f32 v67, s1, v114, v73, v114
	v_fma_f32 v71, -v75, v70, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v59, v59, v69, v76
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v70, v71, v70
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v59, v59, v63, v119
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v54, v122, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v72, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v65, s0, v118, v64, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v77, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v76, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v66, v65, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v55
	v_fmac_f32_e32 v77, 0xbfb8aa3b, v110
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v72, v67, v70
	v_div_scale_f32 v71, null, v0, v0, v113
	v_fma_f32 v69, -v68, v66, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v55, v77
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v75, v72, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v58, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v91, v91, v59 :: v_dual_fmac_f32 v66, v69, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v72, v60, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v68, v66, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v55, v55, v76
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, s2, v113, v0, v113
	v_fma_f32 v63, -v71, v58, 1.0
	v_fma_f32 v67, -v75, v72, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v63, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v65, v65, v74, v66
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v109 :: v_dual_mul_f32 v66, v68, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v64, v65, v64, v118
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v74, 0, 0x42800000, vcc_lo
	v_exp_f32_e32 v29, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v63, 1.0, v55
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v55, -v71, v66, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v74, 0xbfb8aa3b, v107
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v75, null, v63, v63, v110
	v_div_fmas_f32 v67, v67, v70, v72
	v_fmac_f32_e32 v66, v55, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v60, v75
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v65, v67, v73, v114
	v_fma_f32 v55, -v71, v66, v68
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v67, v74
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v92, v92, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v55, v55, v58, v66
	v_div_scale_f32 v68, null, v29, v29, v109
	v_fma_f32 v70, -v75, v60, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, s0, v110, v63, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v58, v68
	v_fmac_f32_e32 v60, v70, v60
	v_div_fixup_f32 v0, v55, v0, v113
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v66, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v67, v67, v69
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v69, v27, v60
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v112, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v108
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v68, v58, 1.0
	v_fma_f32 v67, -v75, v69, v27
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v72, v66
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v73, null, v0, v0, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v69, v67, v60
	v_fmac_f32_e32 v58, v71, v58
	v_div_scale_f32 v71, s1, v109, v29, v109
	v_rcp_f32_e32 v64, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v75, v69, v27
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v111, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v67, v71, v58
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v70, v72, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v121, v56
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v27, v60, v69
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v68, v67, v71
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v60, -v73, v64, 1.0
	v_div_fixup_f32 v27, v27, v63, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v65, v58
	v_div_scale_f32 v65, null, v59, v59, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v64, v60, v64 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v106
	v_fma_f32 v63, -v68, v67, v71
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v60, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v69, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, s0, v107, v0, v107
	v_div_fmas_f32 v25, v63, v58, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v63, 0, 0x42800000, s2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v67, v28, v64
	v_fma_f32 v70, -v65, v60, 1.0
	v_div_fixup_f32 v25, v25, v29, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v63, 0xbfb8aa3b, v105
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v24, v69, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v73, v67, v28
	v_fmac_f32_e32 v60, v70, v60
	v_div_scale_f32 v70, s1, v108, v59, v108
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v63
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v24, 1.0, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v67, v29, v64
	v_mul_f32_e32 v29, v70, v60
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v69, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v72, null, v24, v24, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v71, -v65, v29, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v58, v63, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v22, v72
	v_fma_f32 v28, -v73, v67, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v104
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v29, v71, v60 :: v_dual_add_f32 v58, 1.0, v58
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v63, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v28, v64, v67
	v_div_scale_f32 v69, null, v58, v58, v105
	v_fma_f32 v64, -v65, v29, v70
	v_fma_f32 v71, -v72, v22, 1.0
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v70, v69
	v_div_fmas_f32 v29, v64, v60, v29
	v_fmac_f32_e32 v22, v71, v22
	v_div_scale_f32 v64, vcc_lo, v106, v24, v106
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v60, v63, v68
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v103
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v59, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v68, v64, v22
	v_div_fixup_f32 v0, v28, v0, v107
	v_fma_f32 v63, -v69, v70, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v59, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v67, 1.0, v60
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v72, v68, v64
	v_div_scale_f32 v71, s0, v105, v58, v105
	v_fmac_f32_e32 v70, v63, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v73, null, v67, v67, v104
	v_dual_fmac_f32 v68, v28, v22 :: v_dual_mul_f32 v63, v117, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v29, v71, v70
	v_rcp_f32_e32 v74, v73
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v84, v84, v25
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v72, v68, v64
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v69, v29, v71
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v83, v115, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v22, v25, v22, v68
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v29, v28, v70
	v_fma_f32 v27, -v73, v74, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v64, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v22, v22, v24, v106
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v116, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v59, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v69, v29, v71
	v_fmac_f32_e32 v74, v27, v74
	v_div_scale_f32 v27, s1, v104, v67, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v25, v70, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v25, v27, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v64, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, null, v0, v0, v103
	v_div_fixup_f32 v21, v21, v58, v105
	v_fma_f32 v4, -v73, v25, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v28
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v4, v74
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v4, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v68, s0, v103, v0, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v93
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v65, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v3, -v28, v29, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v2, v58
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v27, -v73, v25, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v58, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v3, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v65, 0xbfb8aa3b, v90 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v27, v74, v25
	v_mul_f32_e32 v27, v68, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v2, v24
	v_ldexp_f32 v4, v4, v59
	v_exp_f32_e32 v24, v58
	v_exp_f32_e32 v59, v65
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v65, -v28, v27, v68
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v4, 1.0, v4
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v67, v104
	v_fmac_f32_e32 v27, v65, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v76, v96, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v58, null, v4, v4, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v3, v24, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v28, v27, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v59, v59, v64
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v64, v58
	v_div_scale_f32 v24, null, v2, v2, v93
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v27, v28, v29, v27
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v59, 1.0, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v68, v24
	v_div_scale_f32 v29, vcc_lo, v94, v4, v94
	v_div_scale_f32 v28, null, v3, v3, v89
	v_div_scale_f32 v65, null, v59, v59, v90
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v67, -v58, v64, 1.0
	v_rcp_f32_e32 v70, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v77, v97, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v69, v65
	v_fmac_f32_e32 v64, v67, v64
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v67, -v24, v68, 1.0
	v_mul_f32_e32 v71, v29, v64
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v72, -v28, v70, 1.0
	v_fmac_f32_e32 v68, v67, v68
	v_div_scale_f32 v67, s0, v93, v2, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v70, v72, v70
	v_div_scale_f32 v72, s2, v89, v3, v89
	v_mul_f32_e32 v73, v67, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v75, v72, v70
	v_div_fixup_f32 v0, v27, v0, v103
	v_fma_f32 v27, -v65, v69, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v78, v102, v0 :: v_dual_fmac_f32 v69, v27, v69
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v27, s1, v90, v59, v90
	v_fma_f32 v0, -v58, v71, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v74, v27, v69 :: v_dual_fmac_f32 v71, v0, v64
	v_fma_f32 v0, -v24, v73, v67
	v_fma_f32 v25, -v65, v74, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v21, -v58, v71, v29
	v_fmac_f32_e32 v73, v0, v68
	v_fma_f32 v0, -v28, v75, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v74, v25, v69
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v29, |v57|, |v53|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v21, v21, v64, v71
	v_fma_f32 v24, -v24, v73, v67
	v_fmac_f32_e32 v75, v0, v70
	v_fma_f32 v0, -v65, v74, v27
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v4, v21, v4, v94
	v_div_fmas_f32 v24, v24, v68, v73
	v_fma_f32 v25, -v28, v75, v72
	s_mov_b32 vcc_lo, s1
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v21, |v34|, |v30|
.Ltmp12:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v69, v74
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v24, v2, v93
	v_div_fmas_f32 v25, v25, v70, v75
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v75, v95, v22
.Ltmp13:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, |v26|, |v38|, |v37|
	v_max3_f32 v24, |v49|, |v41|, |v39|
.Ltmp14:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v59, v90
	v_div_fixup_f32 v3, v25, v3, v89
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v33|, |v19|, |v17|
	v_max3_f32 v27, |v61|, |v51|, |v50|
	v_max3_f32 v28, |v44|, |v15|, |v14|
	v_max3_f32 v64, |v46|, |v99|, |v62|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v58, v87, v3
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, v21, |v23|, v22
	v_max3_f32 v21, v24, v25, |v18|
	v_max_f32_e64 v22, |v47|, |v42|
	v_max3_f32 v24, |v36|, |v52|, |v48|
	v_max3_f32 v65, |v91|, |v92|, |v66|
	v_max3_f32 v67, |v55|, |v11|, |v9|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v59, v88, v0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v32|, |v31|, |v20|
	v_max3_f32 v22, v22, |v35|, v24
	v_max3_f32 v24, v27, v28, |v13|
	v_max3_f32 v27, |v56|, |v54|, |v12|
	v_max3_f32 v28, v29, |v45|, v64
	v_max3_f32 v29, v65, v67, |v10|
	v_max3_f32 v25, |v43|, |v40|, |v16|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v65, v85, v2 :: v_dual_mul_f32 v68, v86, v4
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v3, v0, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v3, v28, v27, v29
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v2, v22, v25, v24
	v_max_f32_e64 v4, |v83|, |v84|
	v_max3_f32 v24, |v68|, |v65|, |v59|
	v_max3_f32 v25, |v58|, |v5|, |v6|
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v27, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v29, 0x60, v98
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v21, |v60|, |v75|, |v76|
	v_max3_f32 v24, v24, v25, |v7|
	v_max_f32_e32 v25, v27, v27
	v_max_f32_e32 v27, v28, v28
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v64, 3, v1
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, |v63|, v21
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v21, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v69, v0, v25 :: v_dual_and_b32 v0, 3, v98
	v_max_f32_e32 v71, v3, v27
	v_max3_f32 v22, |v77|, |v78|, |v8|
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v21, v21, v21
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v3, 4, v98
	v_lshlrev_b32_e32 v25, 5, v0
	v_lshlrev_b32_e32 v27, 1, v1
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v4, v22, v24
	v_max_f32_e32 v70, v2, v21
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v21, v0, 9, 0
	v_lshlrev_b32_e32 v22, 4, v98
	v_and_b32_e32 v24, 8, v98
	v_permlanex16_b32 v2, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v28, v25, v29
	v_lshl_add_u32 v21, v3, 2, v21
	v_and_or_b32 v22, 0x680, v22, v25
	v_lshl_add_u32 v67, v3, 6, 0
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_add_nc_u32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v21, v24, 4, v21
	v_xor_b32_e32 v22, v22, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v4, v2
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v21, v27, v28
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v4, v67, v64, v22
	ds_store_b128 v2, v[69:72]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v2, v69 :: v_dual_mov_b32 v21, v71
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v69, v69
	v_max_f32_e32 v28, v70, v70
	v_max_f32_e32 v64, v72, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v72, v72 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v22, v2
	v_dual_max_f32 v22, v71, v71 :: v_dual_mov_b32 v67, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_max_f32_e32 v21, v22, v21
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v4, v70
	v_lshlrev_b32_e32 v24, 3, v24
	v_lshl_add_u32 v0, v0, 4, 0
	v_mov_b32_dpp v67, v67 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v67, v67, v67 :: v_dual_max_f32 v4, v4, v4
	v_max_f32_e32 v2, v2, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v4, v28, v4
	v_dual_max_f32 v28, v72, v72 :: v_dual_mov_b32 v67, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v69, v4
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v22, v64, v28
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v28, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v67, v67 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v64, v22
	v_mov_b32_dpp v28, v28 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v67, v67, v67
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v64, v64 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v28, v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v4, v4, v69
	v_max_f32_e32 v64, v64, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v21, v21, v28
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v69, v4 :: v_dual_max_f32 v22, v22, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v28, v21
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v64, v22
	v_mov_b32_dpp v28, v28 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v70, v69, v69
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v64, v64 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v69, v2, v67 :: v_dual_max_f32 v2, v28, v28
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v28, 1, v29
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v70, v4, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v4, v64, v64 :: v_dual_max_f32 v71, v21, v2
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v2, 5, v3
	v_add3_u32 v1, v1, v28, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v72, v22, v4 :: v_dual_and_b32 v21, 63, v98
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v0, v2, v24
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v24, 4, v101
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v1, v[69:72]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v0
.Ltmp57:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v3, 48, v24
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v3, s0, s34, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[46:47], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v69, v69
	v_max_f32_e32 v64, v71, v71
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v69, 32, v24
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v70, v70, v70
	v_max_f32_e32 v72, v72, v72
	v_max_f32_e32 v0, 0x2b8cbccc, v0
	v_max_f32_e32 v64, 0x2b8cbccc, v64
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v73, s0, s34, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v74, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v22, null, 0x40e00000, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v71, null, 0x40e00000, 0x40e00000, v64
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[44:45], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v28, v22
	v_max_f32_e32 v70, 0x2b8cbccc, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v79, v71
	v_max_f32_e32 v72, 0x2b8cbccc, v72
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[44:45], v[73:74]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v81, null, 0x40e00000, 0x40e00000, v70
	v_div_scale_f32 v82, null, 0x40e00000, 0x40e00000, v72
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v67, -v22, v28, 1.0
	v_fma_f32 v80, -v71, v79, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v67, v28
	v_div_scale_f32 v67, vcc_lo, v0, 0x40e00000, v0
	v_fmac_f32_e32 v79, v80, v79
	v_div_scale_f32 v80, s6, v64, 0x40e00000, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v69, v67, v28
	v_fma_f32 v3, -v22, v69, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v69, v3, v28
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v4
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v22, -v22, v69, v67
	v_rcp_f32_e32 v67, v81
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[46:47], v[73:74]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v74.h, 0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[44:45], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v22, v22, v28, v69
	v_mul_f32_e32 v28, v80, v79
	v_rcp_f32_e32 v69, v82
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[46:47], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v0, v22, 0x40e00000, v0
	v_fma_f32 v73, -v81, v67, 1.0
	v_fma_f32 v22, -v71, v28, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v67, v73, v67
	v_div_scale_f32 v73, s7, v70, 0x40e00000, v70
	v_fma_f32 v85, -v82, v69, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v28, v22, v79
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v22.l, v0.h
	v_mov_b16_e32 v22.h, v74.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v86, v73, v67
	v_fmac_f32_e32 v69, v85, v69
	v_div_scale_f32 v85, s8, v72, 0x40e00000, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v71, v28, v80
	v_fma_f32 v71, -v81, v86, v73
	v_mul_f32_e32 v80, v85, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v22, v0, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v28, v3, v79, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v71, v67
	v_fma_f32 v0, -v82, v80, v85
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v79, 0xffff0000, v22
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v28, v28, 0x40e00000, v64
	v_fma_f32 v64, -v81, v86, v73
	v_fmac_f32_e32 v80, v0, v69
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v79, v79, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v64, v64, v67, v86
	v_fma_f32 v71, -v82, v80, v85
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v67, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v64, v64, 0x40e00000, v70
	v_div_fmas_f32 v69, v71, v69, v80
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v74.l, v28.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v73, null, v79, v79, v30
	v_div_scale_f32 v81, vcc_lo, v34, v79, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v71, -v0, v67, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v69, v69, 0x40e00000, v72
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v72.l, v64.h
	v_mov_b16_e32 v72.h, v74.h
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[44:45], v[3:4]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v67, v71, v67 :: v_dual_and_b32 v70, 1, v74
	v_rcp_f32_e32 v80, v73
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[46:47], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v72
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v72, v81, v67
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v28, v70, 0x7fff
	v_mov_b16_e32 v74.l, v69.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v79, v79, v23
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v28, v64, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v64, -v0, v72, v81
	v_div_scale_f32 v85, null, v79, v79, v26
	v_fma_f32 v70, -v73, v80, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v71, 1, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v74, v82
	v_fmac_f32_e32 v72, v64, v67
	v_rcp_f32_e32 v64, v85
	v_fmac_f32_e32 v80, v70, v80
	v_div_scale_f32 v86, s8, v30, v79, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v0, -v0, v72, v81
	v_div_scale_f32 v90, null, v79, v79, v38
	v_mul_f32_e32 v87, v86, v80
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v82, v74, 1.0
	v_div_fmas_f32 v0, v0, v67, v72
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v85, v64, 1.0
	v_rcp_f32_e32 v72, v90
	v_fma_f32 v81, -v73, v87, v86
	v_fmac_f32_e32 v74, v88, v74
	v_div_scale_f32 v88, s9, v23, v79, v23
	v_fmac_f32_e32 v64, v89, v64
	v_div_scale_f32 v89, null, v79, v79, v37
	v_fmac_f32_e32 v87, v81, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v67, v88, v74
	v_div_scale_f32 v81, s10, v26, v79, v26
	v_rcp_f32_e32 v93, v89
	v_div_fixup_f32 v34, v0, v79, v34
	v_fma_f32 v0, -v73, v87, v86
	v_fma_f32 v73, -v82, v67, v88
	v_mul_f32_e32 v86, v81, v64
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v94, -v90, v72, 1.0
	v_div_fmas_f32 v0, v0, v80, v87
	v_fmac_f32_e32 v67, v73, v74
	v_fma_f32 v73, -v85, v86, v81
	v_fma_f32 v87, -v89, v93, 1.0
	v_fmac_f32_e32 v72, v94, v72
	v_div_scale_f32 v80, s8, v38, v79, v38
	v_div_fixup_f32 v30, v0, v79, v30
	v_fma_f32 v0, -v82, v67, v88
	v_dual_fmac_f32 v86, v73, v64 :: v_dual_fmac_f32 v93, v87, v93
	v_div_scale_f32 v87, null, v79, v79, v32
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v73, v80, v72
	v_div_scale_f32 v82, s11, v37, v79, v37
	v_div_fmas_f32 v0, v0, v74, v67
	v_fma_f32 v67, -v85, v86, v81
	v_rcp_f32_e32 v81, v87
	v_div_scale_f32 v88, null, v79, v79, v31
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v74, -v90, v73, v80
	v_mul_f32_e32 v85, v82, v93
	v_div_fmas_f32 v64, v67, v64, v86
	v_rcp_f32_e32 v67, v88
	v_div_fixup_f32 v23, v0, v79, v23
	v_fmac_f32_e32 v73, v74, v72
	v_fma_f32 v74, -v89, v85, v82
	v_fma_f32 v86, -v87, v81, 1.0
	v_div_fixup_f32 v26, v64, v79, v26
	v_div_scale_f32 v64, s9, v32, v79, v32
	v_fma_f32 v0, -v90, v73, v80
	v_fmac_f32_e32 v85, v74, v93
	v_fmac_f32_e32 v81, v86, v81
	v_fma_f32 v74, -v88, v67, 1.0
	v_div_scale_f32 v80, null, v79, v79, v20
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v86, null, v79, v79, v49
	v_div_fmas_f32 v0, v0, v72, v73
	v_fma_f32 v72, -v89, v85, v82
	v_mul_f32_e32 v73, v64, v81
	v_fmac_f32_e32 v67, v74, v67
	v_rcp_f32_e32 v74, v80
	v_div_scale_f32 v82, s8, v31, v79, v31
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v38, v0, v79, v38
	v_div_fmas_f32 v72, v72, v93, v85
	v_fma_f32 v85, -v87, v73, v64
	v_mul_f32_e32 v89, v82, v67
	v_rcp_f32_e32 v93, v86
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v80, v74, 1.0
	v_fmac_f32_e32 v73, v85, v81
	v_fma_f32 v0, -v88, v89, v82
	v_div_scale_f32 v85, null, v79, v79, v41
	v_div_fixup_f32 v37, v72, v79, v37
	v_fmac_f32_e32 v74, v90, v74
	v_div_scale_f32 v72, s10, v20, v79, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v86, v93, 1.0
	v_fma_f32 v64, -v87, v73, v64
	v_fmac_f32_e32 v89, v0, v67
	v_rcp_f32_e32 v87, v85
	v_dual_mul_f32 v0, v72, v74 :: v_dual_fmac_f32 v93, v90, v93
	v_div_scale_f32 v90, s11, v49, v79, v49
	v_div_fmas_f32 v64, v64, v81, v73
	v_fma_f32 v73, -v88, v89, v82
	v_div_scale_f32 v94, null, v79, v79, v39
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v81, -v80, v0, v72
	v_mul_f32_e32 v82, v90, v93
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v85, v87, 1.0
	v_div_fmas_f32 v67, v73, v67, v89
	v_rcp_f32_e32 v73, v94
	v_fmac_f32_e32 v0, v81, v74
	v_fma_f32 v81, -v86, v82, v90
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, s8, v41, v79, v41
	v_div_fixup_f32 v32, v64, v79, v32
	v_div_fixup_f32 v31, v67, v79, v31
	v_fma_f32 v64, -v80, v0, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v82, v81, v93 :: v_dual_mul_f32 v67, v88, v87
	v_fma_f32 v72, -v94, v73, 1.0
	v_div_scale_f32 v80, null, v79, v79, v33
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v81, s9, v39, v79, v39
	v_div_fmas_f32 v0, v64, v74, v0
	v_fma_f32 v64, -v86, v82, v90
	v_fma_f32 v74, -v85, v67, v88
	v_fmac_f32_e32 v73, v72, v73
	v_rcp_f32_e32 v72, v80
	v_div_scale_f32 v86, null, v79, v79, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v74, v87
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v20, v0, v79, v20
	v_rcp_f32_e32 v74, v86
	v_div_fmas_f32 v64, v64, v93, v82
	v_mul_f32_e32 v82, v81, v73
	v_fma_f32 v0, -v85, v67, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v80, v72, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v49, v64, v79, v49
	v_fma_f32 v64, -v94, v82, v81
	v_div_scale_f32 v85, s10, v33, v79, v33
	v_fmac_f32_e32 v72, v89, v72
	v_fma_f32 v88, -v86, v74, 1.0
	v_div_scale_f32 v89, null, v79, v79, v17
	v_div_fmas_f32 v0, v0, v87, v67
	v_fmac_f32_e32 v82, v64, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v74, v88, v74
	v_rcp_f32_e32 v67, v89
	v_div_scale_f32 v88, null, v79, v79, v18
	v_mul_f32_e32 v64, v85, v72
	v_div_scale_f32 v87, s8, v19, v79, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v93, v88
	v_div_fixup_f32 v41, v0, v79, v41
	v_fma_f32 v0, -v94, v82, v81
	v_fma_f32 v81, -v80, v64, v85
	v_mul_f32_e32 v90, v87, v74
	v_fma_f32 v94, -v89, v67, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v69, v71, 0x7fff
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v71, 0xffff0000, v28
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v73, v82
	v_fmac_f32_e32 v64, v81, v72
	v_fma_f32 v73, -v86, v90, v87
	v_fmac_f32_e32 v67, v94, v67
	v_div_scale_f32 v81, s9, v17, v79, v17
	v_fma_f32 v82, -v88, v93, 1.0
	v_div_fixup_f32 v39, v0, v79, v39
	v_fma_f32 v0, -v80, v64, v85
	v_fmac_f32_e32 v90, v73, v74
	v_mul_f32_e32 v73, v81, v67
	v_fmac_f32_e32 v93, v82, v93
	v_div_scale_f32 v82, null, v71, v71, v47
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v80, s11, v18, v79, v18
	v_div_fmas_f32 v0, v0, v72, v64
	v_fma_f32 v64, -v86, v90, v87
	v_fma_f32 v72, -v89, v73, v81
	v_rcp_f32_e32 v85, v82
	v_div_scale_f32 v87, null, v71, v71, v42
	v_mul_f32_e32 v86, v80, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v72, v67
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v72, v87
	v_div_fmas_f32 v64, v64, v74, v90
	v_fma_f32 v74, -v88, v86, v80
	v_div_fixup_f32 v33, v0, v79, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v82, v85, 1.0
	v_fma_f32 v0, -v89, v73, v81
	v_div_fixup_f32 v19, v64, v79, v19
	v_fmac_f32_e32 v86, v74, v93
	v_div_scale_f32 v64, s8, v47, v71, v47
	v_fmac_f32_e32 v85, v90, v85
	v_fma_f32 v74, -v87, v72, 1.0
	v_div_scale_f32 v81, null, v71, v71, v35
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v69, 0xffff0000, v4
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v67, v73
	v_fma_f32 v67, -v88, v86, v80
	v_dual_mul_f32 v73, v64, v85 :: v_dual_fmac_f32 v72, v74, v72
	v_rcp_f32_e32 v74, v81
	v_div_scale_f32 v80, s9, v42, v71, v42
	v_div_scale_f32 v88, null, v71, v71, v36
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v89, v80, v72
	v_div_fmas_f32 v67, v67, v93, v86
	v_fma_f32 v86, -v82, v73, v64
	v_rcp_f32_e32 v93, v88
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v81, v74, 1.0
	v_div_fixup_f32 v17, v0, v79, v17
	v_fma_f32 v0, -v87, v89, v80
	v_dual_fmac_f32 v73, v86, v85 :: v_dual_and_b32 v70, 0xffff0000, v3
	v_div_fixup_f32 v18, v67, v79, v18
	v_fmac_f32_e32 v74, v90, v74
	v_div_scale_f32 v67, s10, v35, v71, v35
	v_div_scale_f32 v79, null, v71, v71, v52
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v88, v93, 1.0
	v_fma_f32 v64, -v82, v73, v64
	v_fmac_f32_e32 v89, v0, v72
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v0, v67, v74
	v_rcp_f32_e32 v82, v79
	v_fmac_f32_e32 v93, v86, v93
	v_div_scale_f32 v86, s11, v36, v71, v36
	v_div_fmas_f32 v64, v64, v85, v73
	v_fma_f32 v73, -v87, v89, v80
	v_div_scale_f32 v90, null, v71, v71, v48
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v80, -v81, v0, v67
	v_mul_f32_e32 v85, v86, v93
	v_div_fmas_f32 v72, v73, v72, v89
	v_rcp_f32_e32 v73, v90
	v_fma_f32 v87, -v79, v82, 1.0
	v_fmac_f32_e32 v0, v80, v74
	v_fma_f32 v80, -v88, v85, v86
	v_div_fixup_f32 v42, v72, v71, v42
	v_div_fixup_f32 v47, v64, v71, v47
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, s8, v52, v71, v52
	v_fmac_f32_e32 v85, v80, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v90, v73, 1.0
	v_div_scale_f32 v80, null, v71, v71, v43
	v_fma_f32 v64, -v81, v0, v67
	v_mul_f32_e32 v67, v87, v82
	v_fmac_f32_e32 v73, v72, v73
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v72, v80
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v81, s9, v48, v71, v48
	v_div_fmas_f32 v0, v64, v74, v0
	v_fma_f32 v64, -v88, v85, v86
	v_fma_f32 v74, -v79, v67, v87
	v_div_scale_f32 v86, null, v71, v71, v40
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v80, v72, 1.0
	v_fmac_f32_e32 v67, v74, v82
	v_rcp_f32_e32 v74, v86
	v_div_fmas_f32 v64, v64, v93, v85
	v_mul_f32_e32 v85, v81, v73
	v_div_fixup_f32 v35, v0, v71, v35
	v_fma_f32 v0, -v79, v67, v87
	v_fmac_f32_e32 v72, v88, v72
	v_div_scale_f32 v88, null, v71, v71, v16
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v36, v64, v71, v36
	v_fma_f32 v64, -v90, v85, v81
	v_div_scale_f32 v79, s10, v43, v71, v43
	v_fma_f32 v87, -v86, v74, 1.0
	v_div_fmas_f32 v0, v0, v82, v67
	v_rcp_f32_e32 v67, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v64, v73 :: v_dual_mul_f32 v64, v79, v72
	v_fmac_f32_e32 v74, v87, v74
	v_div_scale_f32 v82, s8, v40, v71, v40
	v_div_scale_f32 v87, null, v71, v71, v61
	v_div_fixup_f32 v52, v0, v71, v52
	v_fma_f32 v0, -v90, v85, v81
	v_fma_f32 v81, -v80, v64, v79
	v_mul_f32_e32 v89, v82, v74
	v_rcp_f32_e32 v90, v87
	v_fma_f32 v93, -v88, v67, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v64, v81, v72
	v_div_fmas_f32 v0, v0, v73, v85
	v_fma_f32 v73, -v86, v89, v82
	v_fmac_f32_e32 v67, v93, v67
	v_div_scale_f32 v81, s9, v16, v71, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v48, v0, v71, v48
	v_fma_f32 v85, -v87, v90, 1.0
	v_fma_f32 v0, -v80, v64, v79
	v_fmac_f32_e32 v89, v73, v74
	v_mul_f32_e32 v73, v81, v67
	v_div_scale_f32 v80, null, v71, v71, v51
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v90, v85, v90
	v_div_scale_f32 v79, s11, v61, v71, v61
	v_div_fmas_f32 v0, v0, v72, v64
	v_fma_f32 v64, -v86, v89, v82
	v_fma_f32 v72, -v88, v73, v81
	v_rcp_f32_e32 v82, v80
	v_div_scale_f32 v86, null, v71, v71, v50
	v_mul_f32_e32 v85, v79, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v72, v67
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v72, v86
	v_div_fmas_f32 v64, v64, v74, v89
	v_fma_f32 v74, -v87, v85, v79
	v_div_fixup_f32 v43, v0, v71, v43
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v80, v82, 1.0
	v_fma_f32 v0, -v88, v73, v81
	v_div_fixup_f32 v40, v64, v71, v40
	v_fmac_f32_e32 v85, v74, v90
	v_div_scale_f32 v64, s8, v51, v71, v51
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v74, -v86, v72, 1.0
	v_div_scale_f32 v81, null, v71, v71, v44
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v93, null, v71, v71, v13
	v_div_fmas_f32 v0, v0, v67, v73
	v_fma_f32 v67, -v87, v85, v79
	v_dual_mul_f32 v73, v64, v82 :: v_dual_fmac_f32 v72, v74, v72
	v_rcp_f32_e32 v74, v81
	v_div_scale_f32 v79, s9, v50, v71, v50
	v_div_scale_f32 v87, null, v71, v71, v15
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v88, v79, v72
	v_div_fmas_f32 v67, v67, v90, v85
	v_fma_f32 v85, -v80, v73, v64
	v_rcp_f32_e32 v90, v87
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v81, v74, 1.0
	v_div_fixup_f32 v16, v0, v71, v16
	v_fma_f32 v0, -v86, v88, v79
	v_fmac_f32_e32 v73, v85, v82
	v_div_scale_f32 v85, null, v71, v71, v14
	v_div_fixup_f32 v61, v67, v71, v61
	v_fmac_f32_e32 v74, v89, v74
	v_div_scale_f32 v67, s10, v44, v71, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fma_f32 v64, -v80, v73, v64
	v_fmac_f32_e32 v88, v0, v72
	v_rcp_f32_e32 v80, v85
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v0, v67, v74
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s11, v15, v71, v15
	v_div_fmas_f32 v64, v64, v82, v73
	v_fma_f32 v73, -v86, v88, v79
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v79, -v81, v0, v67
	v_mul_f32_e32 v82, v89, v90
	v_fma_f32 v86, -v85, v80, 1.0
	v_div_fmas_f32 v72, v73, v72, v88
	v_rcp_f32_e32 v73, v93
	v_fmac_f32_e32 v0, v79, v74
	v_fma_f32 v79, -v87, v82, v89
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, s8, v14, v71, v14
	v_div_fixup_f32 v51, v64, v71, v51
	v_div_fixup_f32 v50, v72, v71, v50
	v_fma_f32 v64, -v81, v0, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v82, v79, v90 :: v_dual_mul_f32 v67, v86, v80
	v_fma_f32 v72, -v93, v73, 1.0
	v_div_scale_f32 v79, null, v70, v70, v57
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v81, s9, v13, v71, v13
	v_div_fmas_f32 v0, v64, v74, v0
	v_fma_f32 v64, -v87, v82, v89
	v_fma_f32 v74, -v85, v67, v86
	v_fmac_f32_e32 v73, v72, v73
	v_rcp_f32_e32 v72, v79
	v_div_scale_f32 v87, null, v70, v70, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v74, v80
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v44, v0, v71, v44
	v_rcp_f32_e32 v74, v87
	v_div_fmas_f32 v64, v64, v90, v82
	v_mul_f32_e32 v82, v81, v73
	v_fma_f32 v0, -v85, v67, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v79, v72, 1.0
	v_div_scale_f32 v85, s10, v57, v70, v57
	v_div_fixup_f32 v15, v64, v71, v15
	v_fma_f32 v64, -v93, v82, v81
	v_fmac_f32_e32 v72, v88, v72
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v87, v74, 1.0
	v_div_scale_f32 v88, null, v70, v70, v45
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v82, v64, v73
	v_div_fmas_f32 v0, v0, v80, v67
	v_mul_f32_e32 v64, v85, v72
	v_fmac_f32_e32 v74, v86, v74
	v_rcp_f32_e32 v67, v88
	v_div_scale_f32 v80, s8, v53, v70, v53
	v_div_scale_f32 v86, null, v70, v70, v46
	v_div_fixup_f32 v14, v0, v71, v14
	v_fma_f32 v0, -v93, v82, v81
	v_fma_f32 v81, -v79, v64, v85
	v_mul_f32_e32 v89, v80, v74
	v_rcp_f32_e32 v90, v86
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v67, 1.0
	v_div_fmas_f32 v0, v0, v73, v82
	v_fmac_f32_e32 v64, v81, v72
	v_fma_f32 v73, -v87, v89, v80
	v_div_scale_f32 v81, s9, v45, v70, v45
	v_fmac_f32_e32 v67, v93, v67
	v_div_fixup_f32 v13, v0, v71, v13
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v82, -v86, v90, 1.0
	v_fma_f32 v0, -v79, v64, v85
	v_fmac_f32_e32 v89, v73, v74
	v_div_scale_f32 v79, null, v70, v70, v99
	s_mov_b32 vcc_lo, s10
	v_dual_mul_f32 v71, v81, v67 :: v_dual_fmac_f32 v90, v82, v90
	v_div_scale_f32 v73, s11, v46, v70, v46
	v_div_fmas_f32 v0, v0, v72, v64
	v_fma_f32 v64, -v87, v89, v80
	v_rcp_f32_e32 v80, v79
	v_fma_f32 v72, -v88, v71, v81
	v_mul_f32_e32 v82, v73, v90
	v_div_scale_f32 v85, null, v70, v70, v62
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v71, v72, v67
	v_div_fmas_f32 v64, v64, v74, v89
	v_rcp_f32_e32 v72, v85
	v_fma_f32 v74, -v86, v82, v73
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v87, -v79, v80, 1.0
	v_div_fixup_f32 v57, v0, v70, v57
	v_div_fixup_f32 v53, v64, v70, v53
	v_fma_f32 v0, -v88, v71, v81
	v_fmac_f32_e32 v82, v74, v90
	v_fmac_f32_e32 v80, v87, v80
	v_div_scale_f32 v64, s8, v99, v70, v99
	v_div_scale_f32 v81, null, v70, v70, v56
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v74, -v85, v72, 1.0
	v_div_fmas_f32 v0, v0, v67, v71
	v_fma_f32 v67, -v86, v82, v73
	v_mul_f32_e32 v71, v64, v80
	v_rcp_f32_e32 v73, v81
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v72, v74, v72
	v_div_scale_f32 v74, s9, v62, v70, v62
	v_div_scale_f32 v86, null, v70, v70, v54
	v_div_fmas_f32 v67, v67, v90, v82
	v_fma_f32 v82, -v79, v71, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v87, v74, v72
	v_fma_f32 v88, -v81, v73, 1.0
	v_rcp_f32_e32 v89, v86
	v_div_fixup_f32 v45, v0, v70, v45
	v_fmac_f32_e32 v71, v82, v80
	v_div_scale_f32 v82, null, v70, v70, v12
	v_div_fixup_f32 v46, v67, v70, v46
	v_fma_f32 v0, -v85, v87, v74
	v_fmac_f32_e32 v73, v88, v73
	v_div_scale_f32 v67, s10, v56, v70, v56
	v_fma_f32 v64, -v79, v71, v64
	v_rcp_f32_e32 v79, v82
	v_fma_f32 v88, -v86, v89, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v0, v72 :: v_dual_mul_f32 v0, v67, v73
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v90, null, v70, v70, v91
	v_fmac_f32_e32 v89, v88, v89
	v_div_scale_f32 v88, s11, v54, v70, v54
	v_div_fmas_f32 v64, v64, v80, v71
	v_fma_f32 v71, -v85, v87, v74
	v_fma_f32 v74, -v81, v0, v67
	v_fma_f32 v85, -v82, v79, 1.0
	v_mul_f32_e32 v80, v88, v89
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v0, v74, v73
	v_rcp_f32_e32 v74, v90
	v_fmac_f32_e32 v79, v85, v79
	v_div_scale_f32 v85, s8, v12, v70, v12
	v_div_fmas_f32 v72, v71, v72, v87
	v_fma_f32 v87, -v86, v80, v88
	v_div_fixup_f32 v71, v64, v70, v99
	v_fma_f32 v64, -v81, v0, v67
	v_mul_f32_e32 v67, v85, v79
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v62, v72, v70, v62
	v_fmac_f32_e32 v80, v87, v89
	v_fma_f32 v72, -v90, v74, 1.0
	v_div_scale_f32 v81, null, v70, v70, v92
	v_div_fmas_f32 v0, v64, v73, v0
	v_fma_f32 v73, -v82, v67, v85
	v_div_scale_f32 v87, null, v70, v70, v66
	v_fma_f32 v64, -v86, v80, v88
	v_fmac_f32_e32 v74, v72, v74
	v_rcp_f32_e32 v72, v81
	v_div_scale_f32 v86, s9, v91, v70, v91
	v_fmac_f32_e32 v67, v73, v79
	v_rcp_f32_e32 v73, v87
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v0, v0, v70, v56
	v_div_fmas_f32 v64, v64, v89, v80
	v_mul_f32_e32 v80, v86, v74
	v_fma_f32 v56, -v82, v67, v85
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v88, -v81, v72, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v54, v64, v70, v54
	v_fma_f32 v64, -v90, v80, v86
	v_fma_f32 v85, -v87, v73, 1.0
	v_fmac_f32_e32 v72, v88, v72
	v_div_scale_f32 v82, s10, v92, v70, v92
	v_div_scale_f32 v88, null, v70, v70, v55
	v_div_fmas_f32 v56, v56, v79, v67
	v_dual_fmac_f32 v80, v64, v74 :: v_dual_fmac_f32 v73, v85, v73
	v_div_scale_f32 v85, null, v70, v70, v11
	v_mul_f32_e32 v64, v82, v72
	v_rcp_f32_e32 v67, v88
	v_div_scale_f32 v79, s8, v66, v70, v66
	v_div_fixup_f32 v12, v56, v70, v12
	v_fma_f32 v56, -v90, v80, v86
	v_rcp_f32_e32 v90, v85
	v_fma_f32 v86, -v81, v64, v82
	v_mul_f32_e32 v89, v79, v73
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v88, v67, 1.0
	v_div_fmas_f32 v56, v56, v74, v80
	v_fmac_f32_e32 v64, v86, v72
	v_fma_f32 v74, -v87, v89, v79
	v_div_scale_f32 v80, s9, v55, v70, v55
	v_fma_f32 v86, -v85, v90, 1.0
	v_fmac_f32_e32 v67, v93, v67
	v_fma_f32 v81, -v81, v64, v82
	v_fmac_f32_e32 v89, v74, v73
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v90, v86, v90
	v_div_scale_f32 v86, null, v70, v70, v9
	v_div_fixup_f32 v56, v56, v70, v91
	v_mul_f32_e32 v74, v80, v67
	v_div_scale_f32 v82, s11, v11, v70, v11
	v_div_fmas_f32 v64, v81, v72, v64
	v_fma_f32 v72, -v87, v89, v79
	v_rcp_f32_e32 v81, v86
	v_div_scale_f32 v91, null, v70, v70, v10
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v79, -v88, v74, v80
	v_mul_f32_e32 v87, v82, v90
	v_div_fmas_f32 v72, v72, v73, v89
	v_rcp_f32_e32 v73, v91
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v74, v79, v67
	v_fma_f32 v79, -v85, v87, v82
	v_fma_f32 v89, -v86, v81, 1.0
	v_div_fixup_f32 v66, v72, v70, v66
	v_div_fixup_f32 v64, v64, v70, v92
	v_fma_f32 v72, -v88, v74, v80
	v_fmac_f32_e32 v87, v79, v90
	v_fmac_f32_e32 v81, v89, v81
	v_div_scale_f32 v79, s8, v9, v70, v9
	v_fma_f32 v80, -v91, v73, 1.0
	v_div_fmas_f32 v67, v72, v67, v74
	v_fma_f32 v72, -v85, v87, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v74, v79, v81
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v73, v80, v73
	v_div_scale_f32 v80, null, v69, v69, v83
	v_div_fmas_f32 v72, v72, v90, v87
	v_fma_f32 v87, -v86, v74, v79
	v_div_scale_f32 v89, null, v69, v69, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v80
	v_div_scale_f32 v82, s9, v10, v70, v10
	v_fmac_f32_e32 v74, v87, v81
	v_div_fixup_f32 v11, v72, v70, v11
	v_rcp_f32_e32 v72, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v88, v82, v73
	v_div_fixup_f32 v55, v67, v70, v55
	v_fma_f32 v79, -v86, v74, v79
	v_div_scale_f32 v86, null, v69, v69, v63
	v_fma_f32 v87, -v80, v85, 1.0
	v_fma_f32 v67, -v91, v88, v82
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v92, null, v69, v69, v60
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v87, v86
	v_fma_f32 v90, -v89, v72, 1.0
	v_fmac_f32_e32 v88, v67, v73
	v_div_scale_f32 v67, s10, v83, v69, v83
	v_div_fmas_f32 v74, v79, v81, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v72, v90, v72
	v_fma_f32 v79, -v91, v88, v82
	v_div_scale_f32 v82, s8, v84, v69, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v86, v87, 1.0
	v_mul_f32_e32 v81, v67, v85
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v93, v82, v72
	v_rcp_f32_e32 v94, v92
	v_fmac_f32_e32 v87, v90, v87
	v_div_scale_f32 v90, s11, v63, v69, v63
	v_div_fmas_f32 v73, v79, v73, v88
	v_fma_f32 v91, -v80, v81, v67
	v_fma_f32 v79, -v89, v93, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v88, v90, v87
	v_div_fixup_f32 v9, v74, v70, v9
	v_div_fixup_f32 v10, v73, v70, v10
	v_div_scale_f32 v74, null, v69, v69, v75
	v_fma_f32 v70, -v86, v88, v90
	v_fmac_f32_e32 v81, v91, v85
	v_fmac_f32_e32 v93, v79, v72
	v_fma_f32 v73, -v92, v94, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v88, v70, v87
	v_rcp_f32_e32 v70, v74
	v_fma_f32 v67, -v80, v81, v67
	v_fma_f32 v79, -v89, v93, v82
	v_fmac_f32_e32 v94, v73, v94
	v_div_scale_f32 v73, s9, v60, v69, v60
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v67, v67, v85, v81
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v81, null, v69, v69, v76
	v_div_fmas_f32 v72, v79, v72, v93
	v_fma_f32 v79, -v86, v88, v90
	v_mul_f32_e32 v80, v73, v94
	v_fma_f32 v82, -v74, v70, 1.0
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v85, v81
	v_div_fmas_f32 v79, v79, v87, v88
	v_fma_f32 v86, -v92, v80, v73
	v_fmac_f32_e32 v70, v82, v70
	v_div_scale_f32 v82, s8, v75, v69, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v63, v79, v69, v63
	v_fmac_f32_e32 v80, v86, v94
	v_div_fixup_f32 v67, v67, v69, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v79, v82, v70
	v_fma_f32 v83, -v81, v85, 1.0
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v73, -v92, v80, v73
	v_div_fixup_f32 v72, v72, v69, v84
	v_fma_f32 v86, -v74, v79, v82
	v_fmac_f32_e32 v85, v83, v85
	v_div_scale_f32 v83, s10, v76, v69, v76
	v_div_fmas_f32 v73, v73, v94, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v79, v86, v70
	v_div_scale_f32 v84, null, v69, v69, v77
	v_mul_f32_e32 v80, v83, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v60, v73, v69, v60
	v_fma_f32 v73, -v74, v79, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v87, v84
	v_div_scale_f32 v86, null, v69, v69, v78
	v_fma_f32 v74, -v81, v80, v83
	v_div_fmas_f32 v70, v73, v70, v79
	v_div_scale_f32 v73, null, v69, v69, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v80, v74, v85
	v_div_scale_f32 v74, s8, v77, v69, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v79, v73
	v_fma_f32 v82, -v84, v87, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v81, v80, v83
	v_div_scale_f32 v83, null, v69, v69, v68
	v_div_fixup_f32 v70, v70, v69, v75
	v_fmac_f32_e32 v87, v82, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v75, -v86, v88, 1.0
	v_rcp_f32_e32 v90, v83
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v73, v79, 1.0
	v_mul_f32_e32 v82, v74, v87
	v_fmac_f32_e32 v88, v75, v88
	v_div_scale_f32 v75, s9, v78, v69, v78
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v69, v69, v65
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v84, v82, v74
	v_mul_f32_e32 v85, v75, v88
	v_div_scale_f32 v91, s10, v8, v69, v8
	v_fma_f32 v92, -v83, v90, 1.0
	v_rcp_f32_e32 v93, v89
	v_fmac_f32_e32 v82, v81, v87
	v_fma_f32 v81, -v86, v85, v75
	v_mul_f32_e32 v94, v91, v79
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s11, v68, v69, v68
	v_div_fixup_f32 v76, v80, v69, v76
	v_fma_f32 v74, -v84, v82, v74
	v_fmac_f32_e32 v85, v81, v88
	v_fma_f32 v80, -v73, v94, v91
	v_mul_f32_e32 v81, v92, v90
	v_fma_f32 v84, -v89, v93, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v75, -v86, v85, v75
	v_div_fmas_f32 v74, v74, v87, v82
	v_fmac_f32_e32 v94, v80, v79
	v_fma_f32 v80, -v83, v81, v92
	v_fmac_f32_e32 v93, v84, v93
	v_div_scale_f32 v82, s8, v65, v69, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v73, -v73, v94, v91
	v_fmac_f32_e32 v81, v80, v90
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v80, v82, v93
	v_div_fmas_f32 v75, v75, v88, v85
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v84, null, v69, v69, v59
	v_div_fmas_f32 v73, v73, v79, v94
	v_fma_f32 v79, -v83, v81, v92
	v_fma_f32 v83, -v89, v80, v82
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v85, v84
	v_div_fixup_f32 v74, v74, v69, v77
	v_div_fmas_f32 v79, v79, v90, v81
	v_fmac_f32_e32 v80, v83, v93
	v_div_scale_f32 v77, null, v69, v69, v58
	v_div_fixup_f32 v8, v73, v69, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v68, v79, v69, v68
	v_fma_f32 v73, -v89, v80, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v79, v77
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v75, v75, v69, v78
	v_fma_f32 v78, -v84, v85, 1.0
	v_div_fmas_f32 v73, v73, v93, v80
	v_div_scale_f32 v80, null, v69, v69, v6
	v_div_scale_f32 v81, vcc_lo, v59, v69, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v78, v85
	v_div_fixup_f32 v65, v73, v69, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v73, -v77, v79, 1.0
	v_rcp_f32_e32 v83, v80
	v_div_scale_f32 v87, null, v69, v69, v7
	v_mul_f32_e32 v86, v81, v85
	v_fmac_f32_e32 v79, v73, v79
	v_div_scale_f32 v73, s8, v58, v69, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v89, v87
	v_fma_f32 v90, -v84, v86, v81
	v_div_scale_f32 v78, null, v69, v69, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v92, v73, v79
	v_fma_f32 v91, -v80, v83, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v90, v85
	v_rcp_f32_e32 v82, v78
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v77, v92, v73
	v_fmac_f32_e32 v83, v91, v83
	v_div_scale_f32 v91, s10, v6, v69, v6
	v_fma_f32 v93, -v87, v89, 1.0
	v_fma_f32 v81, -v84, v86, v81
	v_fmac_f32_e32 v92, v90, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v95, v91, v83
	v_fma_f32 v88, -v78, v82, 1.0
	v_fmac_f32_e32 v89, v93, v89
	v_div_scale_f32 v93, s11, v7, v69, v7
	v_div_fmas_f32 v81, v81, v85, v86
	v_fma_f32 v73, -v77, v92, v73
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v90, -v80, v95, v91
	v_mul_f32_e32 v96, v93, v89
	v_div_fixup_f32 v59, v81, v69, v59
	v_div_fmas_f32 v73, v73, v79, v92
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v95, v90, v83
	v_fma_f32 v77, -v87, v96, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v58, v73, v69, v58
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v74
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v68, v68, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v77, v89
	v_fma_f32 v77, -v80, v95, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_cvt_i32_f32_e32 v91, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v88, v82
	v_div_scale_f32 v88, s9, v5, v69, v5
	v_fma_f32 v79, -v87, v96, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v93, v59
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v88, v82
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v68, 15, v73
	v_and_b32_e32 v73, 15, v93
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v78, v94, v88
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v94, v84, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v75
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v78, v94, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v82, v94
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v41, v41, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v77, v77, v83, v95
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v5, v78, v69, v5
	v_div_fmas_f32 v79, v79, v89, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v77, v69, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v5, v5
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v7, v79, v69, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v71
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_med3_f32 v5, v5, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v52, v52
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v51, v51
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v46, v46
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v71, v72
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v60, v60
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v90, v8
	v_cvt_i32_f32_e32 v95, v5
	v_cvt_i32_f32_e32 v97, v7
	v_and_b32_e32 v5, 15, v34
	v_and_b32_e32 v7, 15, v23
	v_and_b32_e32 v8, 15, v26
	v_and_b32_e32 v34, 15, v52
	v_and_b32_e32 v52, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v98
	v_and_b32_e32 v23, 16, v98
	v_lshlrev_b32_e32 v26, 4, v100
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v72, v76
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_cvt_i32_f32_e32 v78, v15
	v_and_b32_e32 v15, 15, v41
	v_and_b32_e32 v41, 15, v50
	v_and_b32_e32 v50, 15, v69
	v_and_b32_e32 v69, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v74, 6, v23
	v_xor_b32_e32 v26, v26, v29
	v_lshlrev_b32_e32 v29, 6, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v81, v45
	v_cvt_i32_f32_e32 v82, v46
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v88, v63
	v_cvt_i32_f32_e32 v89, v60
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, 0, v0, v74
	v_and_or_b32 v25, 0x1b00, v29, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v75, v17
	v_cvt_i32_f32_e32 v76, v18
	v_cvt_i32_f32_e32 v77, v16
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v83, v12
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v92, v65
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v44, v44
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v79, v14
	v_cvt_i32_f32_e32 v84, v55
	v_cvt_i32_f32_e32 v85, v11
	v_cvt_i32_f32_e32 v86, v9
	v_cvt_i32_f32_e32 v87, v10
	v_cvt_i32_f32_e32 v96, v6
	v_and_b32_e32 v9, 15, v38
	v_and_b32_e32 v10, 15, v37
	v_and_b32_e32 v11, 15, v32
	v_and_b32_e32 v12, 15, v31
	v_and_b32_e32 v14, 15, v49
	v_and_b32_e32 v17, 15, v33
	v_and_b32_e32 v31, 15, v42
	v_and_b32_e32 v32, 15, v35
	v_and_b32_e32 v33, 15, v36
	v_and_b32_e32 v35, 15, v48
	v_and_b32_e32 v37, 15, v40
	v_and_b32_e32 v40, 15, v51
	v_and_b32_e32 v46, 15, v57
	v_and_b32_e32 v48, 15, v81
	v_and_b32_e32 v49, 15, v82
	v_and_b32_e32 v51, 15, v62
	v_and_b32_e32 v55, 15, v56
	v_and_b32_e32 v56, 15, v64
	v_and_b32_e32 v62, 15, v67
	v_and_b32_e32 v63, 15, v71
	v_and_b32_e32 v64, 15, v88
	v_and_b32_e32 v65, 15, v89
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v26, v27
	v_xad_u32 v25, v25, v101, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v6, 15, v30
	v_and_b32_e32 v30, 15, v47
	v_and_b32_e32 v47, 15, v53
	v_cvt_i32_f32_e32 v80, v13
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v16, 15, v39
	v_and_b32_e32 v18, 15, v19
	v_and_b32_e32 v19, 15, v75
	v_and_b32_e32 v20, 15, v76
	v_and_b32_e32 v38, 15, v77
	v_and_b32_e32 v39, 15, v61
	v_and_b32_e32 v53, 15, v54
	v_and_b32_e32 v54, 15, v83
	v_and_b32_e32 v57, 15, v66
	v_and_b32_e32 v66, 15, v70
	v_and_b32_e32 v67, 15, v72
	v_and_b32_e32 v70, 15, v90
	v_and_b32_e32 v71, 15, v91
	v_and_b32_e32 v72, 15, v92
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[5:8]
	ds_store_b128 v0, v[13:16] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v25
	ds_load_b128 v[13:16], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[30:33]
	ds_store_b128 v0, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v25
	ds_load_b128 v[38:41], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[46:49]
	ds_store_b128 v0, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v25
	ds_load_b128 v[54:57], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[62:65]
	ds_store_b128 v0, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v25
	ds_load_b128 v[70:73], v25 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[9:12]
	ds_store_b128 v0, v[17:20] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v25
	ds_load_b128 v[17:20], v25 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v43, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v44, v44
	v_and_b32_e32 v45, 15, v80
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v36, 15, v43
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_and_b32_e32 v42, 15, v44
	v_and_b32_e32 v43, 15, v78
	v_and_b32_e32 v44, 15, v79
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	ds_store_b128 v0, v[34:37]
	ds_store_b128 v0, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v25
	ds_load_b128 v[42:45], v25 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v58
	v_and_b32_e32 v58, 15, v84
	v_and_b32_e32 v59, 15, v85
	v_and_b32_e32 v60, 15, v86
	v_and_b32_e32 v61, 15, v87
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[50:53]
	ds_store_b128 v0, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v25
	ds_load_b128 v[58:61], v25 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v94
	v_and_b32_e32 v75, 15, v95
	v_and_b32_e32 v76, 15, v96
	v_and_b32_e32 v77, 15, v97
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v12, v20, 4, v12
	v_lshl_or_b32 v20, v40, 4, v31
	v_lshl_or_b32 v31, v54, 4, v46
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v46, 3, v100
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v13, 4, v5
	v_lshl_or_b32 v13, v15, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s34, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[66:69]
	ds_store_b128 v0, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v25
	ds_load_b128 v[74:77], v25 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s49, 7, v46
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v15, v17, 4, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 16, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v16, 4, v8
	v_lshl_or_b32 v16, v18, 4, v10
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 32, v7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v19, 4, v11
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s8, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s8, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v18, v38, 4, v29
	v_lshl_or_b32 v19, v39, 4, v30
	v_lshl_or_b32 v26, v42, 4, v33
	v_lshl_or_b32 v27, v43, 4, v34
	v_lshl_or_b32 v29, v44, 4, v35
	v_lshl_or_b32 v30, v45, 4, v36
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
	v_lshl_or_b32 v25, v41, 4, v32
	v_lshl_or_b32 v35, v58, 4, v50
	v_lshl_or_b32 v36, v59, 4, v51
	v_lshl_or_b32 v37, v60, 4, v52
	v_lshl_or_b32 v38, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v4.l, v3.l
	v_or_b16 v12.h, v5.h, v5.l
	v_or_b16 v12.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v5.l, 8, v30.l
	v_and_b16 v5.h, 0xff, v29.l
	v_lshlrev_b16 v6.l, 8, v27.l
	v_and_b16 v6.h, 0xff, v26.l
	s_and_b32 s9, s37, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s36
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v55, 4, v47
	v_lshl_or_b32 v33, v56, 4, v48
	v_lshl_or_b32 v34, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v43, v74, 4, v66
	v_lshl_or_b32 v44, v75, 4, v67
	v_lshl_or_b32 v45, v76, 4, v68
	v_lshl_or_b32 v24, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v25.l
	v_and_b16 v0.h, 0xff, v20.l
	v_lshlrev_b16 v3.l, 8, v19.l
	v_and_b16 v4.l, 0xff, v18.l
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
	v_lshl_or_b32 v39, v70, 4, v62
	v_lshl_or_b32 v40, v71, 4, v63
	v_lshl_or_b32 v41, v72, 4, v64
	v_lshl_or_b32 v42, v73, 4, v65
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
	v_lshlrev_b16 v5.l, 8, v24.l
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
	v_lshrrev_b32_e32 v5, 4, v98
	v_lshrrev_b32_e32 v6, 2, v23
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
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[8:11], 0 offen
	buffer_store_b64 v[11:12], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v46
	v_mov_b16_e32 v4.l, v28.h
	v_mov_b16_e32 v3.l, v22.h
	v_add3_u32 v5, v6, v5, v46
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s34, v21
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v98
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[44:45], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[46:47], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s39, 0xffff
	s_mov_b32 s8, s38
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s49, 1
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
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 856
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
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 856
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 30932
; TotalNumSgprs: 54
; NumVgprs: 256
; ScratchSize: 856
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 54
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 856
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 213
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
