	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[48:51], s[0:1], 0x5c
	s_load_b128 s[52:55], s[0:1], 0x30
	v_dual_mov_b32 v43, 0x6420 :: v_dual_and_b32 v42, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	v_mov_b32_e32 v44, 0x7531
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[60:61], s[0:1], 0x10
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v41, 3, v42
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s39, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s64, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s39, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s38, s39, s64
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v90, 0x60, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	v_and_b32_e32 v51, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v50, 1, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[85:86], null, s48, v1, v[41:42]
	s_mul_i32 s9, s48, s38
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s48, v41
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s8, s48, 5
	s_mul_i32 s10, s48, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s57, s5, 0xffff
	v_dual_mov_b32 v46, 0x7632 :: v_dual_add_nc_u32 v1, s9, v85
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v88, s48, 4, v85
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s56, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v45, 0x5410 :: v_dual_lshlrev_b32 v2, 1, v1
	v_add_lshl_u32 v3, v88, s9, 1
	v_add_lshl_u32 v4, v1, s8, 1
	v_add_lshl_u32 v1, v1, s10, 1
	s_load_b64 s[4:5], s[0:1], 0x6c
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[9:12], v2, s[56:59], 0 offen
	buffer_load_b128 v[13:16], v3, s[56:59], 0 offen
	buffer_load_b128 v[33:36], v4, s[56:59], 0 offen
	buffer_load_b128 v[37:40], v1, s[56:59], 0 offen
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v52, 16, v0
	s_lshr_b32 s0, s0, 29
	v_mov_b32_e32 v32, v25
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v47, 0x78, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s0, 3
	v_cmp_eq_u32_e64 s0, 0, v51
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v89, 15, v0
	v_dual_mov_b32 v30, v25 :: v_dual_lshlrev_b32 v49, 4, v0
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v53, 3, v0
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v57, 0x70, v50
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	v_cndmask_b32_e64 v43, 0x7531, v43, s0
	v_cmp_eq_u32_e64 s1, 0, v52
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v48, 1, v0
	v_bfe_i32 v54, v0, 3, 1
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v58, 7, v89
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v60, 4, v42
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v55, 16, v49
	v_dual_mov_b32 v21, v25 :: v_dual_and_b32 v52, 48, v49
	v_dual_mov_b32 v24, v25 :: v_dual_lshlrev_b32 v59, 6, v90
	v_dual_mov_b32 v2, v25 :: v_dual_lshlrev_b32 v51, 6, v51
	v_dual_mov_b32 v4, v25 :: v_dual_and_b32 v53, 48, v53
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v56, 2, v47
	v_cndmask_b32_e64 v45, 0x1054, v45, s1
	v_lshrrev_b32_e32 v47, 1, v47
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v49, v49, v57
	v_cndmask_b32_e64 v44, 0x6420, v44, s0
	v_lshl_or_b32 v43, v43, 8, v43
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v48, s39, v48
	v_lshrrev_b32_e32 v91, 4, v0
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v92, 30, v50
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v54, 0x210, v54
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v95, 0, v49
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v57, v58, v59, v60
	v_or_b32_e32 v93, v60, v58
	v_and_or_b32 v94, v50, 60, v51
	v_cndmask_b32_e64 v46, 0x3276, v46, s1
	v_lshl_or_b32 v45, v45, 8, v45
	v_xor_b32_e32 v47, v52, v47
	v_lshl_or_b32 v50, v42, 6, v53
	v_and_b32_e32 v43, 0x750031, v43
	v_lshl_or_b32 v44, v44, 8, v44
	.loc	1 872 27                        ; attention.py:872:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s4, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s3, s49, v41
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[86:87], null, s49, v56, v[41:42]
	v_mul_lo_u32 v41, s5, v48
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v49, 0, v57
	v_and_or_b32 v58, v91, 1, v92
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v51, v57, 16, 0
	v_xad_u32 v52, v57, 32, 0
	v_xad_u32 v53, v57, 48, 0
	v_xad_u32 v59, v57, 64, 0
	v_xad_u32 v60, 0x50, v57, 0
	v_xad_u32 v61, 0x60, v57, 0
	v_xad_u32 v62, 0x70, v57, 0
	v_xor_b32_e32 v57, 16, v93
	v_and_b32_e32 v45, 0x540054, v45
	v_lshl_or_b32 v46, v46, 8, v46
	v_lshl_or_b32 v97, v42, 9, v47
	v_xor_b32_e32 v98, v50, v54
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s51, s8
	v_dual_mov_b32 v1, v25 :: v_dual_lshlrev_b32 v96, 2, v58
	s_add_i32 s4, s4, s8
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v48
	v_xor_b32_e32 v63, 32, v93
	v_xor_b32_e32 v64, 48, v93
	v_xor_b32_e32 v65, 64, v93
	v_xor_b32_e32 v47, 0x120, v97
	v_xor_b32_e32 v48, 0x1b0, v97
	v_xor_b32_e32 v50, 16, v98
	v_xor_b32_e32 v54, 32, v98
	v_xor_b32_e32 v56, 48, v98
	v_xor_b32_e32 v58, 0x420, v98
	v_dual_mov_b32 v124, 0xff800000 :: v_dual_add_nc_u32 v87, 0, v57
	v_xor_b32_e32 v57, 0x410, v98
	v_add3_u32 v105, s4, v55, v41
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v100, 0, v64
	v_dual_mov_b32 v122, 0xff800000 :: v_dual_add_nc_u32 v99, 0, v63
	v_add_nc_u32_e32 v101, 0, v65
	v_add_nc_u32_e32 v109, 0, v47
	v_add_nc_u32_e32 v110, 0, v48
	v_add_nc_u32_e32 v111, 0, v50
	v_add_nc_u32_e32 v112, 0, v54
	v_add_nc_u32_e32 v113, 0, v56
	v_dual_mov_b32 v123, v25 :: v_dual_add_nc_u32 v114, 0, v58
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_add_nc_u32 v116, 0, v57
	v_xor_b32_e32 v66, 0x50, v93
	v_xor_b32_e32 v67, 0x60, v93
	v_xor_b32_e32 v68, 0x70, v93
	v_xor_b32_e32 v69, 0x430, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v102, 0, v66
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v104, 0, v68
	v_add_nc_u32_e32 v103, 0, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v115, 0, v69
	v_xor_b32_e32 v119, 4, v96
	v_xor_b32_e32 v120, 64, v94
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v121, s49, v86
	s_mov_b32 s40, 0
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s50, s50, 0x3fb8aa3b
	s_mov_b32 s65, 0x76543210
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_and_b32 s57, s7, 0xffff
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s56, s6
	s_mov_b32 s51, s40
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v95, v[9:12]
	s_waitcnt vmcnt(2)
	ds_store_b128 v95, v[13:16] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v95, v[33:36] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v95, v[37:40] offset:6144
	v_mov_b32_e32 v10, v25
	v_lshl_or_b32 v42, v43, 4, v43
	v_dual_mov_b32 v14, v25 :: v_dual_and_b32 v43, 0x750031, v44
	v_mov_b32_e32 v12, v25
	v_lshl_or_b32 v44, v45, 4, v45
	v_dual_mov_b32 v16, v25 :: v_dual_and_b32 v45, 0x760076, v46
	v_xor_b32_e32 v46, 0x90, v97
	v_lshl_or_b32 v41, v43, 4, v43
	v_dual_mov_b32 v9, v25 :: v_dual_and_b32 v106, 0x7050301, v42
	v_and_b32_e32 v107, 0x5040504, v44
	v_lshl_or_b32 v65, v45, 4, v45
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v108, 0, v46
	v_and_b32_e32 v117, 0x7050301, v41
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v49
	ds_load_b128 v[37:40], v51
	ds_load_b128 v[41:44], v52
	ds_load_b128 v[45:48], v53
	ds_load_b128 v[49:52], v59
	ds_load_b128 v[53:56], v60
	ds_load_b128 v[57:60], v61
	ds_load_b128 v[61:64], v62
	v_dual_mov_b32 v13, v25 :: v_dual_and_b32 v118, 0x7060706, v65
	v_mov_b32_e32 v15, v25
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 859 30 is_stmt 1              ; attention.py:859:30
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v128, 8, v82
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v131, 8, v83
	v_lshrrev_b32_e32 v127, 8, v81
	v_and_b16 v126.h, 0xff, v81.h
	v_lshrrev_b32_e32 v130, 24, v81
	v_and_b16 v81.h, 0xff, v128.l
	v_and_b16 v127.h, 0xff, v82.h
	v_lshrrev_b32_e32 v132, 24, v82
	v_and_b16 v82.h, 0xff, v131.l
	v_and_b16 v128.l, 0xff, v83.h
	v_lshrrev_b32_e32 v131, 24, v83
	.loc	1 859 30                        ; attention.py:859:30
	v_lshrrev_b32_e32 v129, 8, v84
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v127.l, 0xff, v127.l
	v_and_b16 v126.l, 0xff, v81.l
	v_cmp_ne_u16_e64 s8, 0, v130.l
	v_cmp_ne_u16_e64 s13, 0, v128.l
	v_cmp_ne_u16_e64 s15, 0, v131.l
	v_and_b16 v81.l, 0xff, v82.l
	v_and_b16 v82.l, 0xff, v83.l
	v_and_b16 v83.l, 0xff, v84.l
	v_and_b16 v83.h, 0xff, v129.l
	v_cmp_ne_u16_e64 s5, 0, v127.l
	v_and_b16 v128.h, 0xff, v84.h
	v_lshrrev_b32_e32 v84, 24, v84
	v_cmp_ne_u16_e64 s4, 0, v126.l
	v_cmp_ne_u16_e64 s6, 0, v126.h
	v_cmp_ne_u16_e64 s17, 0, v81.h
	v_cmp_ne_u16_e64 s21, 0, v132.l
	v_cmp_ne_u16_e64 s11, 0, v82.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s14, s2, s8
	s_and_b32 s13, s2, s13
	s_and_b32 s15, s2, s15
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s16, 0, v81.l
	v_cmp_ne_u16_e64 s23, 0, v83.l
	v_cmp_ne_u16_e64 s24, 0, v83.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v81, 0, 1, s14
	v_cndmask_b32_e64 v129, 0, 1, s13
	v_cndmask_b32_e64 v83, 0, 1, s15
	s_and_b32 s10, s2, s5
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v127.h
	v_cmp_ne_u16_e64 s9, 0, v82.l
	v_cmp_ne_u16_e64 s26, 0, v84.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s7, s2, s4
	s_and_b32 s12, s2, s6
	s_and_b32 s11, s2, s11
	s_and_b32 s18, s2, s17
	s_and_b32 s22, s2, s21
	v_cndmask_b32_e64 v82, 0, 1, s10
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s25, 0, v128.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v126, 0, 1, s7
	v_cndmask_b32_e64 v84, 0, 1, s12
	v_cndmask_b32_e64 v128, 0, 1, s11
	v_cndmask_b32_e64 v131, 0, 1, s18
	v_cndmask_b32_e64 v133, 0, 1, s22
	v_lshlrev_b16 v81.l, 8, v81.l
	v_lshlrev_b16 v82.h, 8, v83.l
	v_mov_b16_e64 v83.l, v129.l
	s_and_b32 s9, s2, s9
	s_and_b32 s16, s2, s16
	s_and_b32 s20, s2, s19
	s_and_b32 s19, s2, s24
	s_and_b32 s24, s2, s26
	v_cndmask_b32_e64 v127, 0, 1, s9
	v_cndmask_b32_e64 v130, 0, 1, s16
	v_cndmask_b32_e64 v132, 0, 1, s20
	v_cndmask_b32_e64 v135, 0, 1, s19
	v_cndmask_b32_e64 v137, 0, 1, s24
	v_lshlrev_b16 v81.h, 8, v82.l
	v_mov_b16_e32 v82.l, v126.l
	v_mov_b16_e64 v126.l, v128.l
	v_or_b16 v128.h, v84.l, v81.l
	v_mov_b16_e64 v81.l, v133.l
	v_or_b16 v129.h, v83.l, v82.h
	v_mov_b16_e64 v83.l, v131.l
	s_and_b32 s17, s2, s23
	s_and_b32 s21, s2, s25
	v_cndmask_b32_e64 v134, 0, 1, s17
	v_cndmask_b32_e64 v136, 0, 1, s21
	v_or_b16 v128.l, v82.l, v81.h
	v_lshlrev_b16 v81.h, 8, v126.l
	v_mov_b16_e32 v82.l, v127.l
	v_lshlrev_b16 v81.l, 8, v81.l
	v_mov_b16_e64 v84.l, v137.l
	v_mov_b16_e64 v126.l, v132.l
	v_mov_b16_e64 v127.l, v135.l
	v_lshlrev_b16 v82.h, 8, v83.l
	v_mov_b16_e64 v83.l, v130.l
	v_lshlrev_b16 v83.h, 8, v84.l
	v_mov_b16_e64 v84.l, v136.l
	v_lshlrev_b16 v84.h, 8, v127.l
	v_mov_b16_e64 v127.l, v134.l
	v_or_b16 v129.l, v82.l, v81.h
	v_or_b16 v81.h, v126.l, v81.l
	v_or_b16 v81.l, v83.l, v82.h
	v_or_b16 v82.h, v84.l, v83.h
	v_or_b16 v82.l, v127.l, v84.h
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v65, s50, v65 :: v_dual_mul_f32 v66, s50, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v83, v81, v128, v106
	v_perm_b32 v81, v81, v128, v117
	v_perm_b32 v84, v82, v129, v106
	v_perm_b32 v82, v82, v129, v117
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v73, s50, v73 :: v_dual_mul_f32 v74, s50, v74
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v83, v96, v83
	ds_bpermute_b32 v81, v119, v81
	ds_bpermute_b32 v84, v96, v84
	ds_bpermute_b32 v82, v119, v82
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v122, v122, v122 :: v_dual_mul_f32 v69, s50, v69
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v70, s50, v70 :: v_dual_mul_f32 v77, s50, v77
	v_dual_mul_f32 v78, s50, v78 :: v_dual_mul_f32 v79, s50, v79
	v_mul_f32_e32 v80, s50, v80
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s37, s28, s49
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v75, s50, v75 :: v_dual_mul_f32 v76, s50, v76
	v_dual_mul_f32 v71, s50, v71 :: v_dual_mul_f32 v72, s50, v72
	v_dual_mul_f32 v67, s50, v67 :: v_dual_mul_f32 v68, s50, v68
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v126, v81, v83, s1
	v_cndmask_b32_e64 v81, v83, v81, s1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v127, v82, v84, s1
	v_cndmask_b32_e64 v82, v84, v82, s1
	v_and_b32_e32 v83, 1, v126
	v_and_b32_e32 v84, 0x100, v126
	v_and_b32_e32 v131, 1, v81
	v_and_b32_e32 v128, 1, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s27, 1, v83
	v_cmp_eq_u32_e64 s26, 0, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s8, 1, v131
	v_cmp_eq_u32_e64 s23, 1, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, 0xff800000, v65, s27
	v_cndmask_b32_e64 v84, v66, 0xff800000, s26
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v66, 1, v82
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, 0xff800000, v73, s8
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v130, 0x100, v127
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v69, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s4, 1, v66
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, v73, v83, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s25, 0, v130
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v77, s4
	ds_bpermute_b32 v134, v94, v66
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v129, 0x100, v81
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, v83, v73, s1
	v_cndmask_b32_e64 v70, v70, 0xff800000, s25
	v_cndmask_b32_e64 v131, v69, v130, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s6, 0, v129
	v_and_b32_e32 v129, 0x100, v82
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v135, v120, v77
	ds_bpermute_b32 v131, v120, v131
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v77, 0x10000, v82
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, v74, 0xff800000, s6
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s5, 0, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s28, 0, v77
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, v74, v84, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v129, v78, 0xff800000, s5
	v_cndmask_b32_e64 v78, v130, v69, s1
	v_cndmask_b32_e64 v132, v84, v74, s1
	v_cndmask_b32_e64 v137, v79, 0xff800000, s28
	ds_bpermute_b32 v65, v94, v65
	v_cndmask_b32_e64 v133, v70, v129, s1
	ds_bpermute_b32 v66, v94, v78
	ds_bpermute_b32 v128, v120, v132
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v78, 0x1000000, v82
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v82, s37, v86, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, v129, v70, s1
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v152, v135, v134, s0
	ds_bpermute_b32 v133, v120, v133
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s29, 0, v78
	v_and_b32_e32 v78, 0x10000, v127
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v132, v94, v132
	v_cndmask_b32_e64 v138, v80, 0xff800000, s29
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v80, 0x1000000, v127
	v_cmp_eq_u32_e64 s31, 0, v78
	v_and_b32_e32 v78, 0x1000000, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s33, 0, v80
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, v71, 0xff800000, s31
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v147, v131, v66, s0
	v_cndmask_b32_e64 v131, v66, v131, s0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v134, v134
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, v134, v135, s0
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v77, 0x10000, v81
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v136, v128, v65, s0
	v_cndmask_b32_e64 v72, v72, 0xff800000, s33
	v_cndmask_b32_e64 v128, v65, v128, s0
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v79, 0x1000000, v81
	v_cmp_eq_u32_e64 s30, 0, v77
	v_cmp_eq_u32_e64 s36, 0, v78
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, v138, v72, s1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v65, 0x80000000, v82, s3
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s34, 0, v79
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v127, v75, 0xff800000, s30
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v75, 0x10000, v126
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v126, v94, v77
	v_cndmask_b32_e64 v68, v68, 0xff800000, s36
	v_cndmask_b32_e64 v139, v76, 0xff800000, s34
	v_cndmask_b32_e64 v76, v137, v71, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s35, 0, v75
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, v72, v138, s1
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v148, v133, v132, s0
	v_cndmask_b32_e64 v132, v132, v133, s0
	ds_bpermute_b32 v144, v94, v76
	v_cndmask_b32_e64 v140, v67, 0xff800000, s35
	ds_bpermute_b32 v141, v120, v75
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v75, s37, v121, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, v139, v68, s1
	v_cndmask_b32_e64 v67, v71, v137, s1
	v_cndmask_b32_e64 v77, v127, v140, s1
	v_cndmask_b32_e64 v79, v140, v127, s1
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v150, v68, v69, v70
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v145, v94, v76
	ds_bpermute_b32 v67, v120, v67
	ds_bpermute_b32 v142, v94, v77
	v_cndmask_b32_e64 v77, v68, v139, s1
	ds_bpermute_b32 v143, v120, v79
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v79, 0x80000000, v75, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s37, 0xff800000, v124
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v146, v120, v77
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[75:78], v65, s[60:63], 0 offen
	buffer_load_b128 v[79:82], v79, s[60:63], 0 offen
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v135, v135
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, v141, v126, s0
	v_cndmask_b32_e64 v126, v126, v141, s0
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v66, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_max3_f32 v141, v144, v67, v133
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v149, v143, v142, s0
	v_cndmask_b32_e64 v142, v142, v143, s0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v143, v131, v148, v132
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v153, v146, v145, s0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v128, v149, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max3_f32 v141, v143, v141, v126
	v_max3_f32 v143, v145, v146, v147
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, v145, v146, s0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v136, v66
	v_max3_f32 v66, v130, v129, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max3_f32 v65, v65, v143, v141
	v_max3_f32 v141, v74, v127, v139
	v_max_f32_e32 v143, v83, v84
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v151, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v141, v66, v138
	v_max3_f32 v141, v71, v72, v73
	v_max3_f32 v143, v143, v140, v150
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v151, v151 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v143, v141, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v141, v151, v151
.Ltmp18:
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b16_e64 v151.h, 0
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v143, v66, s65, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v141, v65, v141
.Ltmp21:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v125, v125
	v_max3_f32 v66, v124, v66, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v122, v122, v141
	v_dual_max_f32 v65, v65, v141 :: v_dual_sub_f32 v146, v148, v122
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v132, v132, v122
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v150, v125, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v128, v128, v122
	v_sub_f32_e32 v134, v134, v122
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v146, v146
	v_exp_f32_e32 v132, v132
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v135, v150
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, v67, v144, s0
	v_cndmask_b32_e64 v144, v144, v67, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v128, v128
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v126, v126, v122
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v144, v144, v122
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v146, s13
	v_cndmask_b32_e64 v132, 0, v132, s15
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v143, v124, v66
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v144, v144
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v128, s14
.Ltmp22:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v132, v146, v132
.Ltmp23:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v143, v143
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v134, s10
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v126, 0, v126, s24
	v_cndmask_b32_e64 v144, 0, v144, s19
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v124, 0, v143, s37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v143, v145, v122
	v_sub_f32_e32 v145, v147, v122
	v_sub_f32_e32 v131, v131, v122
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s37, 0xff800000, v125
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v124
	v_mul_f32_e32 v32, v32, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v145, v145
	v_exp_f32_e32 v131, v131
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v67, 0, v135, s37
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v135, v136, v122 :: v_dual_mul_f32 v26, v26, v124
	v_dual_sub_f32 v141, v142, v122 :: v_dual_mul_f32 v28, v28, v124
	v_dual_sub_f32 v147, v150, v122 :: v_dual_mul_f32 v20, v20, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v145, 0, v145, s9
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v131, 0, v131, s11
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v143, v143
	v_exp_f32_e32 v147, v147
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v133, v133, v122 :: v_dual_mul_f32 v18, v18, v124
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v145, v131
.Ltmp25:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v142, v153, v122
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v141, v141
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v135, s12
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v133, v133
.Ltmp26:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v131, v132
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v142
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v143, s22
	v_cndmask_b32_e64 v147, 0, v147, s17
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v125, v152, v122 :: v_dual_add_f32 v128, v135, v128
	v_dual_sub_f32 v84, v84, v66 :: v_dual_mul_f32 v25, v25, v124
	v_dual_sub_f32 v83, v83, v66 :: v_dual_mul_f32 v22, v22, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v125, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v142, s20
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v136, v149, v122
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v84
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v141, s18
	v_cndmask_b32_e64 v133, 0, v133, s21
.Ltmp28:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v135, v142, v143
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v140, v140, v66 :: v_dual_mul_f32 v27, v27, v124
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v125, s7
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v68, v68, v66 :: v_dual_mul_f32 v29, v29, v124
	v_dual_sub_f32 v127, v127, v66 :: v_dual_mul_f32 v6, v6, v124
	v_dual_sub_f32 v139, v139, v66 :: v_dual_mul_f32 v8, v8, v124
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v136, s16
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v125, v125, v134 :: v_dual_mul_f32 v14, v14, v124
	v_dual_add_f32 v126, v133, v126 :: v_dual_mul_f32 v3, v3, v124
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v134, v136, v141
	v_add_f32_e32 v136, v147, v144
.Ltmp31:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v70, v70, v66 :: v_dual_mul_f32 v31, v31, v124
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v140, v140
	v_exp_f32_e32 v68, v68
.Ltmp32:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v125, v125, v128 :: v_dual_add_f32 v128, v134, v135
	v_dual_add_f32 v126, v136, v126 :: v_dual_mul_f32 v1, v1, v124
.Ltmp33:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v132, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v84, v84, 0, s26
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
.Ltmp34:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v125, v125, v128 :: v_dual_add_f32 v126, v131, v126
.Ltmp35:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v124
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v84.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v69, v69, v66 :: v_dual_mul_f32 v24, v24, v124
	v_dual_sub_f32 v71, v71, v66 :: v_dual_mul_f32 v2, v2, v124
	v_dual_sub_f32 v72, v72, v66 :: v_dual_mul_f32 v17, v17, v124
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v188, v125, v126 :: v_dual_mul_f32 v7, v7, v124
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, v140, 0, s35
	v_cndmask_b32_e64 v68, v68, 0, s36
	v_cndmask_b32_e64 v126, v127, 0, s30
	v_cndmask_b32_e64 v127, v132, 0, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v132.l, v83.h
	v_mov_b16_e64 v132.h, v151.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v16, v16, v124 :: v_dual_and_b32 v133, 1, v151
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v74, v74, v66 :: v_dual_mul_f32 v19, v19, v124
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v72, v72
.Ltmp38:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v189, v188 :: v_dual_and_b32 v132, 1, v132
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v133, v84, v133, 0x7fff
	v_mov_b16_e64 v134.l, v125.h
	v_mov_b16_e64 v134.h, v151.h
	v_cmp_o_f32_e64 s7, v84, v84
	v_mov_b16_e64 v151.l, v68.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, v70, 0, s25
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v73, v73, v66 :: v_dual_mul_f32 v4, v4, v124
	v_dual_sub_f32 v130, v130, v66 :: v_dual_mul_f32 v21, v21, v124
	v_dual_sub_f32 v129, v129, v66 :: v_dual_mul_f32 v10, v10, v124
	v_dual_sub_f32 v137, v137, v66 :: v_dual_mul_f32 v12, v12, v124
	v_dual_sub_f32 v138, v138, v66 :: v_dual_mul_f32 v23, v23, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
.Ltmp40:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v189, v189 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v124
	v_mul_f32_e32 v11, v11, v124
	v_mul_f32_e32 v13, v13, v124
	v_mul_f32_e32 v15, v15, v124
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v84, v83, v132, 0x7fff
	v_and_b32_e32 v124, 1, v134
	v_cndmask_b16 v132.h, 0x7fff, v133.h, s7
	v_and_b32_e32 v133, 1, v151
	v_mov_b16_e64 v151.l, v70.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, v71, 0, s31
	v_cndmask_b32_e64 v72, v72, 0, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v83, v83
	v_add3_u32 v83, v125, v124, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v125, v125
	v_and_b32_e32 v125, 1, v151
	v_add3_u32 v124, v68, v133, 0x7fff
	v_cmp_o_f32_e64 s9, v68, v68
	v_mov_b16_e32 v68.l, v69.h
	v_mov_b16_e64 v68.h, v151.h
	v_cndmask_b16 v132.l, 0x7fff, v84.h, s7
	v_cndmask_b16 v84.l, 0x7fff, v83.h, s10
	v_add3_u32 v83, v70, v125, 0x7fff
	v_cmp_o_f32_e64 s7, v70, v70
	v_mov_b16_e32 v70.l, v71.h
	v_mov_b16_e64 v70.h, v151.h
	v_mov_b16_e64 v151.l, v72.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, v74, 0, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v84.h, 0x7fff, v124.h, s9
	v_and_b32_e32 v68, 1, v68
	v_and_b32_e32 v70, 1, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v124, 1, v151
	v_mov_b16_e64 v151.l, v74.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v128, v130
	v_exp_f32_e32 v129, v129
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v68, v69, v68, 0x7fff
	v_cmp_o_f32_e64 s6, v69, v69
	v_add3_u32 v69, v71, v70, 0x7fff
	v_mov_b16_e32 v70.l, v73.h
	v_mov_b16_e64 v70.h, v151.h
	v_and_b32_e32 v125, 1, v151
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v130, v137
	v_exp_f32_e32 v131, v138
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v71, v71
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v71, v74, v125, 0x7fff
	v_cmp_o_f32_e64 s9, v74, v74
	v_cndmask_b16 v83.h, 0x7fff, v83.h, s7
	v_add3_u32 v124, v72, v124, 0x7fff
	v_cmp_o_f32_e64 s7, v72, v72
	v_cndmask_b16 v83.l, 0x7fff, v68.h, s6
	v_cndmask_b16 v68.l, 0x7fff, v69.h, s8
	v_add3_u32 v69, v73, v70, 0x7fff
	v_cndmask_b16 v181.h, 0x7fff, v71.h, s9
	v_cmp_o_f32_e64 s6, v73, v73
	v_mov_b16_e32 v70.l, v126.h
	v_mov_b16_e64 v70.h, v151.h
	v_mov_b16_e64 v151.l, v127.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, v129, 0, s5
	v_cndmask_b32_e64 v72, 0, v128, s4
	v_cndmask_b32_e64 v130, v130, 0, s28
	v_cndmask_b32_e64 v131, v131, 0, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v181.l, 0x7fff, v69.h, s6
	v_and_b32_e32 v69, 1, v70
	v_and_b32_e32 v70, 1, v151
	v_mov_b16_e64 v151.l, v71.h
	v_mov_b16_e32 v73.l, v72.h
	v_mov_b16_e64 v73.h, v151.h
	v_cndmask_b16 v68.h, 0x7fff, v124.h, s7
	v_add3_u32 v70, v127, v70, 0x7fff
	v_cmp_o_f32_e64 s4, v127, v127
	v_and_b32_e32 v74, 1, v151
	v_and_b32_e32 v73, 1, v73
	v_mov_b16_e64 v124.l, v130.h
	v_mov_b16_e64 v124.h, v151.h
	v_mov_b16_e64 v151.l, v131.h
	v_cndmask_b16 v183.h, 0x7fff, v70.h, s4
	v_add3_u32 v70, v72, v73, 0x7fff
	v_add3_u32 v74, v71, v74, 0x7fff
	v_and_b32_e32 v73, 1, v124
	v_and_b32_e32 v124, 1, v151
	v_cmp_o_f32_e64 s5, v71, v71
	v_cmp_o_f32_e64 s6, v72, v72
	v_cmp_o_f32_e64 s7, v131, v131
	v_add3_u32 v71, v130, v73, 0x7fff
	v_add3_u32 v72, v131, v124, 0x7fff
	v_cmp_o_f32_e64 s8, v130, v130
	v_cndmask_b16 v185.h, 0x7fff, v74.h, s5
	v_permlanex16_b32 v74, v83, s65, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v69, v126, v69, 0x7fff
	v_cndmask_b16 v187.h, 0x7fff, v72.h, s7
	v_permlanex16_b32 v72, v84, s65, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v187.l, 0x7fff, v71.h, s8
	v_perm_b32 v73, v74, v83, v107
	v_perm_b32 v74, v74, v83, v118
	v_cmp_o_f32_e64 s4, v126, v126
	v_perm_b32 v71, v72, v84, v107
	v_perm_b32 v72, v72, v84, v118
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v84, 0, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v185.l, 0x7fff, v70.h, s6
	v_permlanex16_b32 v70, v132, s65, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v183.l, 0x7fff, v69.h, s4
	v_permlanex16_b32 v180, v68, s65, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v83.l, v75.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v83.h, v79.l
	v_mov_b16_e32 v79.l, v75.h
	v_mov_b16_e32 v75.l, v76.l
	v_mov_b16_e32 v75.h, v80.l
	v_mov_b16_e32 v80.l, v76.h
	v_mov_b16_e32 v76.l, v77.l
	v_mov_b16_e32 v76.h, v81.l
	v_mov_b16_e32 v81.l, v77.h
	ds_store_2addr_b32 v84, v83, v79 offset1:16
	ds_store_2addr_b32 v108, v75, v80 offset1:16
	v_add_nc_u32_e32 v75, 0, v98
	v_mov_b16_e32 v77.l, v78.l
	v_mov_b16_e32 v77.h, v82.l
	v_mov_b16_e32 v82.l, v78.h
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v69, v70, v132, v107
	v_perm_b32 v70, v70, v132, v118
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b32 v109, v76, v81 offset1:16
	ds_store_2addr_b32 v110, v77, v82 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v75
	ds_load_b128 v[124:127], v75 offset:2048
	ds_load_b128 v[81:84], v111
	ds_load_b128 v[128:131], v111 offset:2048
	ds_load_b128 v[132:135], v112
	ds_load_b128 v[140:143], v112 offset:2048
	ds_load_b128 v[148:151], v114
	ds_load_b128 v[156:159], v114 offset:2048
	ds_load_b128 v[152:155], v115
	ds_load_b128 v[160:163], v115 offset:2048
	ds_load_b128 v[136:139], v113
	ds_load_b128 v[144:147], v113 offset:2048
	ds_load_b128 v[164:167], v75 offset:1024
	ds_load_b128 v[168:171], v116
	ds_load_b128 v[172:175], v75 offset:3072
	ds_load_b128 v[176:179], v116 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v182, v181, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v184, v183, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v186, v185, s65, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v190, v187, s65, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v75, v180, v68, v107
	v_perm_b32 v76, v180, v68, v118
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v188, v189
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v180, v182, v181, v107
	v_perm_b32 v181, v182, v181, v118
	v_perm_b32 v182, v184, v183, v107
	v_perm_b32 v183, v184, v183, v118
	v_perm_b32 v184, v186, v185, v107
	v_perm_b32 v185, v186, v185, v118
	v_perm_b32 v186, v190, v187, v107
	v_perm_b32 v187, v190, v187, v118
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(13)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[77:84], v[69:76], v[25:32]
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[148:155], v[69:76], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[124:131], v[69:76], v[1:8]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[156:163], v[69:76], v[9:16]
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v68, v123, v67
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[132:139], v[180:187], v[25:32]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[164:171], v[180:187], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[140:147], v[180:187], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[172:179], v[180:187], v[9:16]
	v_dual_mov_b32 v124, v66 :: v_dual_mov_b32 v123, v68
	v_mov_b32_e32 v125, v65
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s4, s51, 32
	s_cmpk_lt_u32 s51, 0x1e0
	s_mov_b32 s51, s4
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_or_b32 s28, s51, s64
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v81, 0, v93
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s4, s28, s48
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v173, s47 :: v_dual_mov_b32 v170, s44
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s4, v85, 1
	v_add_lshl_u32 v66, s4, v88, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v172, s46 :: v_dual_mov_b32 v171, s45
	v_mov_b32_e32 v168, s42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v65, 0x80000000, v65 :: v_dual_mov_b32 v82, 0
	v_dual_cndmask_b32 v69, 0x80000000, v66 :: v_dual_mov_b32 v84, 0
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[56:59], 0 offen
	buffer_load_b128 v[69:72], v69, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v169, s43 :: v_dual_mov_b32 v166, s40
	v_mov_b32_e32 v167, s41
	v_mov_b32_e32 v83, 0
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v95, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v95, v[69:72] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v87
	ds_load_b128 v[73:76], v81
	ds_load_b128 v[126:129], v81 offset:2048
	ds_load_b128 v[130:133], v87 offset:2048
	ds_load_b128 v[134:137], v99
	ds_load_b128 v[142:145], v99 offset:2048
	ds_load_b128 v[138:141], v100
	ds_load_b128 v[146:149], v100 offset:2048
	ds_load_b128 v[150:153], v101
	ds_load_b128 v[158:161], v101 offset:2048
	ds_load_b128 v[154:157], v102
	ds_load_b128 v[162:165], v102 offset:2048
	ds_load_b128 v[174:177], v103
	ds_load_b128 v[182:185], v103 offset:2048
	ds_load_b128 v[178:181], v104
	ds_load_b128 v[186:189], v104 offset:2048
	v_mov_b32_e32 v81, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[33:40], v[166:173]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[126:133], v[33:40], v[166:173]
	s_waitcnt lgkmcnt(9)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[134:141], v[41:48], v[65:72]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[142:149], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[150:157], v[49:56], v[65:72]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[158:165], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[174:181], v[57:64], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[182:189], v[57:64], v[73:80]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, s2
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v81, s51, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v82, 31, v81
	v_add_co_u32 v81, s4, s52, v81
	v_add_co_ci_u32_e64 v82, null, s53, v82, s4
	global_load_b128 v[81:84], v[81:82], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 787 79                        ; attention.py:787:79
	v_bfe_u32 v36, v0, 4, 1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v0, v92, v36
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 48, v36
	v_or_b32_e32 v34, 32, v36
	v_or_b32_e32 v35, 16, v36
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v0, 2, v0
	ds_bpermute_b32 v38, v0, v68
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v0, 1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v37, v0, v89
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 62, v91
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v39, s39, v37
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v37, s38, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v39
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v37, s49, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, null, v38, v38, v25
	v_div_scale_f32 v41, null, v38, v38, v26
	v_div_scale_f32 v43, null, v38, v38, v27
	v_div_scale_f32 v45, null, v38, v38, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v39
	v_div_scale_f32 v47, null, v38, v38, v29
	v_rcp_f32_e32 v52, v41
	v_rcp_f32_e32 v53, v43
	v_rcp_f32_e32 v54, v45
	v_div_scale_f32 v49, null, v38, v38, v30
	v_rcp_f32_e32 v55, v47
	v_div_scale_f32 v40, vcc_lo, v25, v38, v25
	v_fma_f32 v60, -v39, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v56, v49
	v_fma_f32 v61, -v41, v52, 1.0
	v_fma_f32 v62, -v43, v53, 1.0
	v_fma_f32 v63, -v45, v54, 1.0
	v_fmac_f32_e32 v51, v60, v51
	v_div_scale_f32 v42, s1, v26, v38, v26
	v_div_scale_f32 v44, s2, v27, v38, v27
	v_div_scale_f32 v46, s3, v28, v38, v28
	v_fma_f32 v64, -v47, v55, 1.0
	v_dual_fmac_f32 v52, v61, v52 :: v_dual_fmac_f32 v53, v62, v53
	v_fmac_f32_e32 v54, v63, v54
	v_mul_f32_e32 v60, v40, v51
	v_fma_f32 v65, -v49, v56, 1.0
	v_fmac_f32_e32 v55, v64, v55
	v_dual_mul_f32 v61, v42, v52 :: v_dual_mul_f32 v62, v44, v53
	v_mul_f32_e32 v63, v46, v54
	v_fma_f32 v64, -v39, v60, v40
	v_div_scale_f32 v48, s4, v29, v38, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v43, v62, v44
	v_fma_f32 v67, -v45, v63, v46
	v_fmac_f32_e32 v56, v65, v56
	v_fma_f32 v65, -v41, v61, v42
	v_fmac_f32_e32 v60, v64, v51
	v_div_scale_f32 v50, null, v38, v38, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v68, v48, v55 :: v_dual_fmac_f32 v61, v65, v52
	v_fmac_f32_e32 v62, v66, v53
	v_fma_f32 v39, -v39, v60, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v59, v50
	v_fmac_f32_e32 v63, v67, v54
	v_fma_f32 v40, -v41, v61, v42
	v_fma_f32 v41, -v43, v62, v44
	v_div_fmas_f32 v39, v39, v51, v60
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v58, null, v38, v38, v32
	v_fma_f32 v42, -v45, v63, v46
	v_div_fmas_f32 v40, v40, v52, v61
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v57, s5, v30, v38, v30
	v_div_fmas_f32 v41, v41, v53, v62
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v39, v38, v25
	v_div_fmas_f32 v39, v42, v54, v63
	v_fma_f32 v42, -v50, v59, 1.0
	v_rcp_f32_e32 v43, v58
	v_div_fixup_f32 v26, v40, v38, v26
	v_mul_f32_e32 v40, v57, v56
	v_fma_f32 v64, -v47, v68, v48
	v_fmac_f32_e32 v59, v42, v59
	v_div_scale_f32 v42, null, v38, v38, v17
	v_div_fixup_f32 v27, v41, v38, v27
	v_div_fixup_f32 v28, v39, v38, v28
	v_fma_f32 v39, -v49, v40, v57
	v_div_scale_f32 v41, s2, v31, v38, v31
	v_fma_f32 v44, -v58, v43, 1.0
	v_rcp_f32_e32 v46, v42
	v_fmac_f32_e32 v68, v64, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v39, v56 :: v_dual_mul_f32 v39, v41, v59
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s3, v32, v38, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v68, v48
	v_fma_f32 v47, -v49, v40, v57
	v_fma_f32 v48, -v50, v39, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v42, v46, 1.0
	v_mul_f32_e32 v49, v44, v43
	v_div_scale_f32 v52, null, v38, v38, v18
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v39, v48, v59
	v_div_fmas_f32 v45, v45, v55, v68
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v46, v51, v46
	v_div_fmas_f32 v40, v47, v56, v40
	v_rcp_f32_e32 v47, v52
	v_fma_f32 v48, -v58, v49, v44
	v_div_scale_f32 v51, s4, v17, v38, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v40, v38, v30
	v_fma_f32 v40, -v50, v39, v41
	v_fmac_f32_e32 v49, v48, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v41, v51, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v29, v45, v38, v29
	v_fma_f32 v45, -v52, v47, 1.0
	v_div_fmas_f32 v39, v40, v59, v39
	v_fma_f32 v40, -v58, v49, v44
	v_fma_f32 v44, -v42, v41, v51
	v_div_scale_f32 v48, null, v38, v38, v19
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v50, s2, v18, v38, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v44, v46
	v_rcp_f32_e32 v45, v48
	v_div_scale_f32 v53, null, v38, v38, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v50, v47
	v_div_fixup_f32 v31, v39, v38, v31
	v_fma_f32 v39, -v42, v41, v51
	v_div_scale_f32 v51, null, v38, v38, v21
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s3, v19, v38, v19
	v_div_fmas_f32 v40, v40, v43, v49
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v43, v53
	v_div_fmas_f32 v39, v39, v46, v41
	v_rcp_f32_e32 v41, v51
	v_fma_f32 v49, -v48, v45, 1.0
	v_div_fixup_f32 v32, v40, v38, v32
	v_fma_f32 v40, -v52, v44, v50
	v_div_fixup_f32 v17, v39, v38, v17
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v46, s4, v20, v38, v20
	v_fma_f32 v49, -v53, v43, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v55, -v51, v41, 1.0
	v_fmac_f32_e32 v44, v40, v47
	v_mul_f32_e32 v40, v42, v45
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v38
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v0, v37, v0, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v55, v41
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, null, v38, v38, v22
	v_fma_f32 v39, -v52, v44, v50
	v_fma_f32 v50, -v48, v40, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v54, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v50, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	v_cndmask_b32_e64 v29, 0, v29, s1
	v_cndmask_b32_e64 v30, 0, v30, s1
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v49, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v54, v50, v54
	v_div_fmas_f32 v39, v39, v47, v44
	v_div_scale_f32 v47, s2, v21, v38, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v39, v38, v18
	v_fma_f32 v39, -v48, v40, v42
	v_mul_f32_e32 v42, v47, v41
	v_mul_f32_e32 v52, v46, v43
	v_div_scale_f32 v48, null, v38, v38, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v45, v40
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v44, -v53, v52, v46
	v_fma_f32 v45, -v51, v42, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v39, v38, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v44, v43
	v_div_scale_f32 v44, s5, v22, v38, v22
	v_fmac_f32_e32 v42, v45, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v53, v52, v46
	v_div_scale_f32 v53, null, v38, v38, v24
	v_rcp_f32_e32 v46, v48
	v_fma_f32 v39, -v51, v42, v47
	v_div_fmas_f32 v40, v40, v43, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v53
	v_mul_f32_e32 v50, v44, v54
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v51, null, v38, v38, v2
	v_div_fmas_f32 v39, v39, v41, v42
	v_fma_f32 v45, -v49, v50, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v48, v46, 1.0
	v_div_fixup_f32 v20, v40, v38, v20
	v_div_scale_f32 v40, s3, v23, v38, v23
	v_fmac_f32_e32 v50, v45, v54
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v45, -v53, v43, 1.0
	v_div_fixup_f32 v21, v39, v38, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v49, v50, v44
	v_div_scale_f32 v44, null, v38, v38, v1
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s2, v24, v38, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v47, v44
	v_fmac_f32_e32 v46, v52, v46
	v_div_fmas_f32 v41, v41, v54, v50
	v_div_scale_f32 v54, null, v38, v38, v4
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v40, v46
	v_div_fixup_f32 v22, v41, v38, v22
	v_rcp_f32_e32 v41, v51
	v_rcp_f32_e32 v56, v54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v48, v42, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v49, v46
	v_fma_f32 v49, -v44, v47, 1.0
	v_fma_f32 v52, -v51, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v48, v42, v40
	v_div_scale_f32 v48, null, v38, v38, v3
	v_fmac_f32_e32 v47, v49, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v52, v41
	v_div_fmas_f32 v40, v40, v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v48
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v46, s3, v2, v38, v2
	v_div_fixup_f32 v23, v40, v38, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v55, v46, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v52, -v48, v49, 1.0
	v_dual_mul_f32 v50, v45, v43 :: v_dual_fmac_f32 v49, v52, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v53, v50, v45
	v_div_scale_f32 v52, s5, v3, v38, v3
	v_fmac_f32_e32 v50, v39, v43
	v_div_scale_f32 v39, s4, v1, v38, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v53, v50, v45
	v_mul_f32_e32 v45, v39, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v43, v50
	v_fma_f32 v53, -v44, v45, v39
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v43, -v51, v55, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v42, v38, v24
	v_fmac_f32_e32 v45, v53, v47
	v_fma_f32 v42, -v54, v56, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v43, v41
	v_div_scale_f32 v43, null, v38, v38, v5
	v_fma_f32 v39, -v44, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v42, v56
	v_div_scale_f32 v42, s2, v4, v38, v4
	v_fma_f32 v44, -v51, v55, v46
	v_div_fmas_f32 v39, v39, v47, v45
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v45, v42, v56 :: v_dual_mul_f32 v50, v52, v49
	v_div_fmas_f32 v41, v44, v41, v55
	v_div_scale_f32 v46, null, v38, v38, v6
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v40, -v48, v50, v52
	v_div_fixup_f32 v1, v39, v38, v1
	v_div_fixup_f32 v2, v41, v38, v2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v40, v49
	v_rcp_f32_e32 v40, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v48, v50, v52
	v_rcp_f32_e32 v48, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v44, v44, v49, v50
	v_fma_f32 v47, -v43, v40, 1.0
	v_fma_f32 v49, -v54, v45, v42
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v44, v38, v3
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s3, v5, v38, v5
	v_fmac_f32_e32 v45, v49, v56
	v_div_scale_f32 v44, null, v38, v38, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v47, v40
	v_fma_f32 v41, -v46, v48, 1.0
	v_fma_f32 v42, -v54, v45, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v43, v39, v47
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, s4, v6, v38, v6
	v_div_fmas_f32 v42, v42, v56, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v49, v40
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v38, v38, v8
	v_div_fixup_f32 v4, v42, v38, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v42, -v43, v39, v47
	v_fma_f32 v47, -v44, v50, 1.0
	v_mul_f32_e32 v45, v41, v48
	v_rcp_f32_e32 v51, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v42, v40, v39
	v_div_scale_f32 v40, null, v38, v38, v9
	v_fmac_f32_e32 v50, v47, v50
	v_fma_f32 v43, -v46, v45, v41
	v_div_scale_f32 v42, s2, v7, v38, v7
	v_div_fixup_f32 v5, v39, v38, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v49, v51, 1.0
	v_fmac_f32_e32 v45, v43, v48
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v47, null, v38, v38, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v39, v51
	v_fma_f32 v41, -v46, v45, v41
	v_mul_f32_e32 v46, v42, v50
	v_div_scale_f32 v39, s3, v8, v38, v8
	v_rcp_f32_e32 v53, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v40, v43, 1.0
	v_div_scale_f32 v54, s4, v9, v38, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v52, null, v38, v38, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v47, v53, 1.0
	v_mul_f32_e32 v57, v54, v43
	v_div_fmas_f32 v41, v41, v48, v45
	v_fma_f32 v45, -v44, v46, v42
	v_mul_f32_e32 v48, v39, v51
	v_fmac_f32_e32 v53, v55, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v6, v41, v38, v6
	v_fmac_f32_e32 v46, v45, v50
	v_fma_f32 v45, -v49, v48, v39
	v_rcp_f32_e32 v56, v52
	v_div_scale_f32 v55, s5, v10, v38, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v44, v46, v42
	v_fmac_f32_e32 v48, v45, v51
	v_fma_f32 v42, -v40, v57, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v44, v55, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v50, v46
	v_fma_f32 v39, -v49, v48, v39
	v_div_scale_f32 v46, null, v38, v38, v12
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v45, -v52, v56, 1.0
	v_div_fmas_f32 v39, v39, v51, v48
	v_rcp_f32_e32 v48, v46
	v_fmac_f32_e32 v57, v42, v43
	v_fma_f32 v42, -v47, v44, v55
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s2, v11, v38, v11
	v_div_fixup_f32 v7, v41, v38, v7
	v_fma_f32 v40, -v40, v57, v54
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v8, v39, v38, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v46, v48, 1.0
	v_div_scale_f32 v50, null, v38, v38, v16
	v_div_fmas_f32 v40, v40, v43, v57
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v48, v41, v48
	v_fmac_f32_e32 v44, v42, v53
	v_mul_f32_e32 v42, v45, v56
	v_div_scale_f32 v41, null, v38, v38, v14
	v_div_fixup_f32 v9, v40, v38, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v47, v44, v55
	v_fma_f32 v47, -v52, v42, v45
	v_div_scale_f32 v40, null, v38, v38, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v43, v43, v53, v44
	v_fmac_f32_e32 v42, v47, v56
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v10, v43, v38, v10
	v_fma_f32 v39, -v52, v42, v45
	v_rcp_f32_e32 v45, v41
	v_div_scale_f32 v43, null, v38, v38, v15
	v_rcp_f32_e32 v52, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v43
	v_fma_f32 v51, -v41, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v51, v45
	v_div_fmas_f32 v39, v39, v56, v42
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v44, vcc_lo, v12, v38, v12
	v_div_scale_f32 v51, s3, v14, v38, v14
	v_div_fixup_f32 v11, v39, v38, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v43, v47, 1.0
	v_fma_f32 v56, -v50, v52, 1.0
	v_mul_f32_e32 v57, v51, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v40, v42, 1.0
	v_mul_f32_e32 v49, v44, v48
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s4, v15, v38, v15
	v_fmac_f32_e32 v42, v39, v42
	v_div_scale_f32 v39, s2, v13, v38, v13
	v_fma_f32 v53, -v46, v49, v44
	v_fmac_f32_e32 v52, v56, v52
	v_div_scale_f32 v56, s5, v16, v38, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v39, v42
	v_dual_fmac_f32 v49, v53, v48 :: v_dual_mul_f32 v58, v54, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v56, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v53, -v40, v55, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v46, v49, v44
	v_fma_f32 v46, -v41, v57, v51
	v_fmac_f32_e32 v55, v53, v42
	v_fma_f32 v53, -v43, v58, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v57, v46, v45
	v_div_fmas_f32 v44, v44, v48, v49
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v39, -v40, v55, v39
	v_fma_f32 v40, -v50, v59, v56
	v_fmac_f32_e32 v58, v53, v47
	v_fma_f32 v41, -v41, v57, v51
	v_div_fixup_f32 v12, v44, v38, v12
	v_div_fmas_f32 v39, v39, v42, v55
	v_fmac_f32_e32 v59, v40, v52
	v_fma_f32 v40, -v43, v58, v54
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v45, v57
	v_fma_f32 v42, -v50, v59, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v13, v39, v38, v13
	v_div_fmas_f32 v40, v40, v47, v58
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v14, v41, v38, v14
	v_div_fmas_f32 v42, v42, v52, v59
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s49, v36
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v36, v37, v36, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v15, v40, v38, v15
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s55, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v16, v42, v38, v16
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v38, 8, v36
	v_add_nc_u32_e32 v39, 16, v36
	v_cndmask_b32_e32 v40, 0x80000000, v36, vcc_lo
	s_mov_b32 s4, s54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_clause 0x2
	buffer_store_b32 v25, v40, s[4:7], 0 offen
	buffer_store_b32 v26, v38, s[4:7], 0 offen
	buffer_store_b32 v27, v39, s[4:7], 0 offen
	v_add_nc_u32_e32 v39, 56, v36
	v_add_nc_u32_e32 v26, 32, v36
	v_add_nc_u32_e32 v38, 48, v36
	v_add_nc_u32_e32 v27, 40, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_add_nc_u32 v25, 24, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s49, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x4
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	buffer_store_b32 v31, v38, s[4:7], 0 offen
	buffer_store_b32 v32, v39, s[4:7], 0 offen
	v_add_lshl_u32 v25, v37, v35, 2
	v_add_nc_u32_e32 v26, 0x48, v36
	v_add_nc_u32_e32 v27, 0x50, v36
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v28, 0x58, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v36
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s49, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[4:7], 0 offen
	v_add_nc_u32_e32 v19, 0x70, v36
	v_add_nc_u32_e32 v20, 0x78, v36
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v21, v17, s[4:7], 0 offen
	v_add_lshl_u32 v17, v37, v34, 2
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v36
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[4:7], 0 offen
	buffer_store_b32 v24, v20, s[4:7], 0 offen
	buffer_store_b32 v1, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v1, 0x90, v36
	v_add_nc_u32_e32 v20, 0xa8, v36
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v36
	v_add_nc_u32_e32 v19, 0xa0, v36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s49, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v2, v17, s[4:7], 0 offen
	v_dual_cndmask_b32 v2, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v3, v1, s[4:7], 0 offen
	v_add_nc_u32_e32 v1, 0xb0, v36
	s_clause 0x2
	buffer_store_b32 v4, v2, s[4:7], 0 offen
	buffer_store_b32 v5, v17, s[4:7], 0 offen
	buffer_store_b32 v6, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v2, 0xb8, v36
	v_add_lshl_u32 v3, v37, v33, 2
	v_add_nc_u32_e32 v4, 0xc8, v36
	v_add_nc_u32_e32 v5, 0xd0, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	s_clause 0x4
	buffer_store_b32 v7, v1, s[4:7], 0 offen
	buffer_store_b32 v8, v2, s[4:7], 0 offen
	buffer_store_b32 v9, v3, s[4:7], 0 offen
	buffer_store_b32 v10, v4, s[4:7], 0 offen
	buffer_store_b32 v11, v5, s[4:7], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v36
	v_add_nc_u32_e32 v2, 0xe0, v36
	v_add_nc_u32_e32 v3, 0xe8, v36
	v_add_nc_u32_e32 v4, 0xf0, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_clause 0x4
	buffer_store_b32 v12, v1, s[4:7], 0 offen
	buffer_store_b32 v13, v2, s[4:7], 0 offen
	buffer_store_b32 v14, v3, s[4:7], 0 offen
	buffer_store_b32 v15, v4, s[4:7], 0 offen
	buffer_store_b32 v16, v0, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp44:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 191
		.amdhsa_next_free_sgpr 66
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_vgpr, 191
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9864
; TotalNumSgprs: 68
; NumVgprs: 191
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 191
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
	.byte	5                               ; Abbreviation Code
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     191
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
