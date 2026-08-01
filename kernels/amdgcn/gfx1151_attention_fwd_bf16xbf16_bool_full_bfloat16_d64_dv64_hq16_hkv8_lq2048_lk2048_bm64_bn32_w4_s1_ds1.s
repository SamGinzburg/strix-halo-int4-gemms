	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[52:55], s[0:1], 0x5c
	s_load_b128 s[48:51], s[0:1], 0x30
	v_dual_mov_b32 v45, 0x7531 :: v_dual_and_b32 v42, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v43, 3, v0
	v_mov_b32_e32 v44, 0x6420
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[60:61], s[0:1], 0x10
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v41, 3, v42
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s38, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s38, v43
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s39, s38, s2
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v90, 15, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v91, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v49, 1, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[85:86], null, s52, v43, v[41:42]
	s_mul_i32 s9, s52, s39
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s52, v41
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s8, s52, 5
	s_mul_i32 s10, s52, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s57, s5, 0xffff
	v_dual_mov_b32 v46, 0x5410 :: v_dual_add_nc_u32 v1, s9, v85
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v89, s52, 4, v85
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s56, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v47, 0x7632 :: v_dual_lshlrev_b32 v2, 1, v1
	v_add_lshl_u32 v3, v89, s9, 1
	v_add_lshl_u32 v4, v1, s8, 1
	v_add_lshl_u32 v1, v1, s10, 1
	s_load_b64 s[4:5], s[0:1], 0x6c
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v5, 0x80000000, v3, s2
	v_cndmask_b32_e64 v9, 0x80000000, v4, s2
	v_cndmask_b32_e64 v10, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[56:59], 0 offen
	buffer_load_b128 v[5:8], v5, s[56:59], 0 offen
	buffer_load_b128 v[33:36], v9, s[56:59], 0 offen
	buffer_load_b128 v[37:40], v10, s[56:59], 0 offen
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v93, 16, v0
	s_lshr_b32 s0, s0, 28
	v_mov_b32_e32 v26, v25
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v54, 7, v90
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v55, 6, v91
	v_dual_mov_b32 v19, v25 :: v_dual_lshlrev_b32 v42, 4, v42
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s0, 4
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	v_cmp_eq_u32_e64 s1, 0, v49
	v_cmp_eq_u32_e64 s0, 0, v93
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v48, 1, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v55, v54, v55, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v44, 0x7531, v44, s1
	v_cndmask_b32_e64 v46, 0x1054, v46, s0
	v_or_b32_e32 v95, v42, v54
	v_cndmask_b32_e64 v42, 0x6420, v45, s1
	v_cndmask_b32_e64 v45, 0x3276, v47, s0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v92, 1, v0
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v94, 4, v0
	v_bfe_u32 v50, v0, 4, 1
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v53, 0x70, v48
	v_lshl_or_b32 v44, v44, 8, v44
	v_lshl_or_b32 v46, v46, 8, v46
	v_lshl_or_b32 v42, v42, 8, v42
	v_lshl_or_b32 v45, v45, 8, v45
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v51, s38, v92
	v_dual_mov_b32 v20, v25 :: v_dual_lshlrev_b32 v49, 6, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v45, 0x760076, v45
	v_dual_mov_b32 v9, v25 :: v_dual_and_b32 v44, 0x750031, v44
	v_dual_mov_b32 v11, v25 :: v_dual_and_b32 v46, 0x540054, v46
	v_mov_b32_e32 v13, v25
	v_and_or_b32 v50, v48, 30, v50
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_bfe_u32 s2, s3, 0x10007
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v53, v94, v53
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[86:87], null, s53, v43, v[41:42]
	v_and_b32_e32 v42, 0x750031, v42
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s10, s3, s2
	.loc	1 872 27                        ; attention.py:872:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s4, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s3, s53, v41
	v_mul_lo_u32 v41, s5, v51
	v_dual_mov_b32 v31, v25 :: v_dual_and_b32 v52, 16, v94
	v_dual_mov_b32 v21, v25 :: v_dual_lshlrev_b32 v96, 2, v50
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v47, 0, v55
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v98, 0, v53
	v_and_or_b32 v97, v48, 60, v49
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v48, v55, 16, 0
	v_xad_u32 v49, v55, 32, 0
	v_xad_u32 v50, v55, 48, 0
	v_xad_u32 v53, v55, 64, 0
	v_xad_u32 v54, 0x50, v55, 0
	v_xad_u32 v57, 0x60, v55, 0
	v_xad_u32 v61, 0x70, v55, 0
	v_xor_b32_e32 v55, 16, v95
	v_xor_b32_e32 v56, 32, v95
	v_xor_b32_e32 v58, 48, v95
	v_xor_b32_e32 v59, 64, v95
	v_xor_b32_e32 v60, 0x50, v95
	v_xor_b32_e32 v62, 0x60, v95
	v_xor_b32_e32 v63, 0x70, v95
	v_lshl_or_b32 v43, v44, 4, v44
	v_lshl_or_b32 v44, v46, 4, v46
	v_lshl_or_b32 v42, v42, 4, v42
	v_lshl_or_b32 v45, v45, 4, v45
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s9, s8, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s55, s8
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v101, 0, v56
	s_add_i32 s4, s4, s8
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v103, 0, v59
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v105, 0, v62
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v100, 0, v55
	v_dual_mov_b32 v16, v25 :: v_dual_and_b32 v107, 0x7050301, v43
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v51
	v_add_nc_u32_e32 v102, 0, v58
	v_add_nc_u32_e32 v104, 0, v60
	v_add_nc_u32_e32 v106, 0, v63
	v_and_b32_e32 v87, 0x5040504, v44
	v_add3_u32 v108, s4, v52, v41
	v_and_b32_e32 v109, 0x7050301, v42
	v_and_b32_e32 v88, 0x7060706, v45
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s10, s10, 0x80000
	v_xor_b32_e32 v99, 4, v96
	s_sext_i32_i16 s10, s10
	v_xor_b32_e32 v110, 64, v97
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s10, s10, 10
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v111, s53, 4, v86
	v_lshl_add_u32 v112, v90, 1, 0
	v_mov_b32_e32 v114, v25
	v_mov_b32_e32 v116, 0xff800000
	s_mov_b32 s40, 0
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s10, s10, 0xfffff800
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s54, s54, 0x3fb8aa3b
	s_mov_b32 s64, 0x76543210
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
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s55, s10, s9
	s_mov_b32 s56, s6
	s_mov_b32 s65, s40
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v98, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v98, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v98, v[33:36] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v98, v[37:40] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v47
	ds_load_b128 v[37:40], v48
	ds_load_b128 v[41:44], v49
	ds_load_b128 v[45:48], v50
	ds_load_b128 v[49:52], v53
	ds_load_b128 v[53:56], v54
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_dual_mov_b32 v6, v25 :: v_dual_mov_b32 v115, 0xff800000
	v_mov_b32_e32 v7, v25
	v_dual_mov_b32 v8, v25 :: v_dual_mov_b32 v113, 0xff800000
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 859 30 is_stmt 1              ; attention.py:859:30
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v119, 8, v82
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v122, 8, v83
	v_lshrrev_b32_e32 v118, 8, v81
	v_and_b16 v117.h, 0xff, v81.h
	v_lshrrev_b32_e32 v121, 24, v81
	v_and_b16 v81.h, 0xff, v119.l
	v_and_b16 v118.h, 0xff, v82.h
	v_lshrrev_b32_e32 v123, 24, v82
	v_and_b16 v82.h, 0xff, v122.l
	v_and_b16 v119.l, 0xff, v83.h
	v_lshrrev_b32_e32 v122, 24, v83
	.loc	1 859 30                        ; attention.py:859:30
	v_lshrrev_b32_e32 v120, 8, v84
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v118.l, 0xff, v118.l
	v_and_b16 v117.l, 0xff, v81.l
	v_cmp_ne_u16_e64 s7, 0, v121.l
	v_cmp_ne_u16_e64 s13, 0, v119.l
	v_cmp_ne_u16_e64 s15, 0, v122.l
	v_and_b16 v81.l, 0xff, v82.l
	v_and_b16 v82.l, 0xff, v83.l
	v_and_b16 v83.l, 0xff, v84.l
	v_and_b16 v83.h, 0xff, v120.l
	v_cmp_ne_u16_e64 s5, 0, v118.l
	v_and_b16 v119.h, 0xff, v84.h
	v_lshrrev_b32_e32 v84, 24, v84
	v_cmp_ne_u16_e64 s4, 0, v117.l
	v_cmp_ne_u16_e64 s6, 0, v117.h
	v_cmp_ne_u16_e64 s17, 0, v81.h
	v_cmp_ne_u16_e64 s21, 0, v123.l
	v_cmp_ne_u16_e64 s11, 0, v82.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s14, s2, s7
	s_and_b32 s13, s2, s13
	s_and_b32 s15, s2, s15
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s16, 0, v81.l
	v_cmp_ne_u16_e64 s23, 0, v83.l
	v_cmp_ne_u16_e64 s25, 0, v83.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v81, 0, 1, s14
	v_cndmask_b32_e64 v120, 0, 1, s13
	v_cndmask_b32_e64 v83, 0, 1, s15
	s_and_b32 s10, s2, s5
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v118.h
	v_cmp_ne_u16_e64 s9, 0, v82.l
	v_cmp_ne_u16_e64 s27, 0, v84.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s8, s2, s4
	s_and_b32 s12, s2, s6
	s_and_b32 s11, s2, s11
	s_and_b32 s20, s2, s17
	s_and_b32 s24, s2, s21
	v_cndmask_b32_e64 v82, 0, 1, s10
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s26, 0, v119.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v117, 0, 1, s8
	v_cndmask_b32_e64 v84, 0, 1, s12
	v_cndmask_b32_e64 v119, 0, 1, s11
	v_cndmask_b32_e64 v122, 0, 1, s20
	v_cndmask_b32_e64 v124, 0, 1, s24
	v_lshlrev_b16 v81.l, 8, v81.l
	v_lshlrev_b16 v82.h, 8, v83.l
	v_mov_b16_e32 v83.l, v120.l
	s_and_b32 s9, s2, s9
	s_and_b32 s18, s2, s16
	s_and_b32 s22, s2, s19
	s_and_b32 s21, s2, s25
	s_and_b32 s25, s2, s27
	v_cndmask_b32_e64 v118, 0, 1, s9
	v_cndmask_b32_e64 v121, 0, 1, s18
	v_cndmask_b32_e64 v123, 0, 1, s22
	v_cndmask_b32_e64 v128, 0, 1, s25
	v_lshlrev_b16 v81.h, 8, v82.l
	v_mov_b16_e32 v82.l, v117.l
	v_mov_b16_e32 v117.l, v119.l
	v_or_b16 v119.h, v84.l, v81.l
	v_mov_b16_e32 v81.l, v124.l
	v_or_b16 v120.h, v83.l, v82.h
	v_mov_b16_e32 v83.l, v122.l
	s_and_b32 s19, s2, s23
	s_and_b32 s23, s2, s26
	v_or_b16 v119.l, v82.l, v81.h
	v_cndmask_b32_e64 v127, 0, 1, s23
	v_lshlrev_b16 v81.h, 8, v117.l
	v_mov_b16_e32 v82.l, v118.l
	v_lshlrev_b16 v81.l, 8, v81.l
	v_mov_b16_e64 v84.l, v128.l
	v_mov_b16_e32 v117.l, v123.l
	v_lshlrev_b16 v82.h, 8, v83.l
	v_mov_b16_e32 v83.l, v121.l
	v_cndmask_b32_e64 v126, 0, 1, s21
	v_lshlrev_b16 v83.h, 8, v84.l
	v_mov_b16_e32 v84.l, v127.l
	v_or_b16 v120.l, v82.l, v81.h
	v_or_b16 v81.h, v117.l, v81.l
	v_or_b16 v81.l, v83.l, v82.h
	v_cndmask_b32_e64 v125, 0, 1, s19
	v_mov_b16_e32 v118.l, v126.l
	v_or_b16 v82.h, v84.l, v83.h
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_mul_f32_e32 v71, s54, v71
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v83, v81, v119, v107
	v_perm_b32 v81, v81, v119, v109
	v_lshlrev_b16 v84.h, 8, v118.l
	v_mov_b16_e32 v118.l, v125.l
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v117, s54, v72
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v83, v96, v83
	ds_bpermute_b32 v81, v99, v81
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v72, s54, v73
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v82.l, v118.l, v84.h
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v73, s54, v74 :: v_dual_mul_f32 v74, s54, v77
	v_dual_mul_f32 v118, s54, v75 :: v_dual_mul_f32 v75, s54, v78
	v_mul_f32_e32 v80, s54, v80
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v84, v82, v120, v107
	v_perm_b32 v82, v82, v120, v109
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v65, s54, v65 :: v_dual_mul_f32 v66, s54, v66
	v_dual_mul_f32 v119, s54, v76 :: v_dual_mul_f32 v120, s54, v79
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v84, v96, v84
	ds_bpermute_b32 v82, v99, v82
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v69, s54, v69 :: v_dual_mul_f32 v70, s54, v70
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s28, s28, s53
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v67, s54, v67 :: v_dual_mul_f32 v68, s54, v68
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v121, v81, v83, s0
	v_cndmask_b32_e64 v81, v83, v81, s0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s37, 0xff800000, v115
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v77, 1, v121
	v_and_b32_e32 v78, 0x100, v121
	v_cmp_eq_u32_e64 s26, 1, v77
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u32_e64 s27, 0, v78
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v122, v82, v84, s0
	v_cndmask_b32_e64 v76, v84, v82, s0
	v_and_b32_e32 v84, 0x100, v81
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v125, 0xff800000, v65, s26
	v_cndmask_b32_e64 v126, v66, 0xff800000, s27
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v83, 1, v81
	v_and_b32_e32 v82, 0x100, v122
	v_cmp_eq_u32_e64 s7, 0, v84
	v_and_b32_e32 v124, 0x100, v76
	v_and_b32_e32 v79, 1, v122
	v_cmp_eq_u32_e64 s6, 1, v83
	v_and_b32_e32 v123, 1, v76
	v_cmp_eq_u32_e64 s17, 0, v82
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, v73, 0xff800000, s7
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s5, 0, v124
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v72, s6
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s16, 1, v79
	v_cmp_eq_u32_e64 s4, 1, v123
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, v83, v126, s0
	v_cndmask_b32_e64 v70, v70, 0xff800000, s17
	v_cndmask_b32_e64 v65, v82, v125, s0
	v_cndmask_b32_e64 v123, v75, 0xff800000, s5
	v_cndmask_b32_e64 v66, v125, v82, s0
	v_cndmask_b32_e64 v73, v126, v83, s0
	v_cndmask_b32_e64 v69, 0xff800000, v69, s16
	v_cndmask_b32_e64 v84, 0xff800000, v74, s4
	ds_bpermute_b32 v124, v97, v65
	ds_bpermute_b32 v65, v97, v72
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v72, s28, v86, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, v123, v70, s0
	ds_bpermute_b32 v127, v110, v66
	ds_bpermute_b32 v66, v110, v73
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v73, s28, v111, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, v84, v69, s0
	v_cndmask_b32_e64 v75, v69, v84, s0
	v_cndmask_b32_e64 v78, v70, v123, s0
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v72, 0x80000000, v72, s3
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v130, v97, v77
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v77, 0x80000000, v73, s3
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v128, v97, v74
	ds_bpermute_b32 v129, v110, v75
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v131, 0x10000, v76
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v132, v110, v78
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v133, 0x1000000, v76
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[72:75], v72, s[60:63], 0 offen
	buffer_load_b128 v[76:79], v77, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s28, 0, v131
	v_and_b32_e32 v131, 0x10000, v81
	v_cmp_eq_u32_e64 s29, 0, v133
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, v127, v124, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v133, 0x10000, v122
	v_and_b32_e32 v122, 0x1000000, v122
	v_cmp_eq_u32_e64 s30, 0, v131
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, v80, 0xff800000, s29
	v_cndmask_b32_e64 v120, v120, 0xff800000, s28
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s31, 0, v133
	v_cmp_eq_u32_e64 s33, 0, v122
	v_and_b32_e32 v122, 0x10000, v121
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v118, v118, 0xff800000, s30
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v121, 0x1000000, v121
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, v71, 0xff800000, s31
	v_cndmask_b32_e64 v117, v117, 0xff800000, s33
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s35, 0, v122
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, v66, v65, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s36, 0, v121
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, v65, v66, s1
	v_cndmask_b32_e64 v131, v80, v117, s0
	v_cndmask_b32_e64 v122, v67, 0xff800000, s35
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v81, 0x1000000, v81
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, v117, v80, s0
	v_cndmask_b32_e64 v67, v71, v120, s0
	ds_bpermute_b32 v131, v97, v131
	v_cndmask_b32_e64 v134, v118, v122, s0
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s34, 0, v81
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, v122, v118, s0
	ds_bpermute_b32 v133, v110, v133
	v_cndmask_b32_e64 v121, v68, 0xff800000, s36
	ds_bpermute_b32 v68, v97, v134
	v_cndmask_b32_e64 v81, v119, 0xff800000, s34
	v_cndmask_b32_e64 v119, v120, v71, s0
	ds_bpermute_b32 v134, v110, v135
	ds_bpermute_b32 v135, v110, v67
	v_cndmask_b32_e64 v140, v129, v128, s1
	v_cndmask_b32_e64 v67, v81, v121, s0
	ds_bpermute_b32 v119, v97, v119
	v_cndmask_b32_e64 v136, v121, v81, s0
	v_cndmask_b32_e64 v128, v128, v129, s1
	v_cndmask_b32_e64 v129, v132, v130, s1
	ds_bpermute_b32 v137, v97, v67
	v_cndmask_b32_e64 v130, v130, v132, s1
	ds_bpermute_b32 v136, v110, v136
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v65, v127, v127 :: v_dual_max_f32 v66, v124, v124
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, v124, v127, s1
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v128, v129, v130
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v132, v133, v131, s1
	v_cndmask_b32_e64 v131, v131, v133, s1
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v66, v65
	v_max3_f32 v133, v121, v69, v70
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v141, v134, v68, s1
	v_cndmask_b32_e64 v134, v68, v134, s1
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(2)
	v_max3_f32 v68, v119, v135, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v66, v139, v141, v134
	v_max3_f32 v67, v67, v68, v131
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v68, v137, v136, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v65, v65, v138, v66
	v_max3_f32 v66, v84, v123, v120
	v_max3_f32 v65, v65, v68, v67
	v_max3_f32 v67, v83, v118, v81
	v_max_f32_e32 v68, v125, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v142, v65
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v67, v66, v80
	v_max3_f32 v67, v71, v117, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v68, v68, v122, v133
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v68, v67, v66
	v_max_f32_e32 v67, v142, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v68, v66, s64, 0xfedcba98 op_sel:[1,0]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v133, v65, v67
.Ltmp14:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v65, v116, v116
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max3_f32 v67, v115, v66, v68
	v_max_f32_e32 v113, v113, v113
	v_max_f32_e32 v66, v65, v133
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b16_e32 v65.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v68, v115, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v82, v82, v67 :: v_dual_max_f32 v113, v113, v133
	v_sub_f32_e32 v118, v118, v67
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v142, v116, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v68, v68
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_dual_sub_f32 v121, v121, v67 :: v_dual_sub_f32 v124, v124, v113
	v_dual_sub_f32 v133, v139, v113 :: v_dual_sub_f32 v120, v120, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v127, v142
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v142, v135, v119, s1
	v_cndmask_b32_e64 v119, v119, v135, s1
	v_cndmask_b32_e64 v135, v136, v137, s1
	v_cndmask_b32_e64 v136, v137, v136, s1
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v115, 0, v68, s37
	v_cmp_neq_f32_e64 s37, 0xff800000, v116
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v116, v143, v113
	v_sub_f32_e32 v84, v84, v67
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v133, v133
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v68, 0, v127, s37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v127, v138, v113
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v134, v134, v113 :: v_dual_sub_f32 v69, v69, v67
	v_dual_sub_f32 v136, v136, v113 :: v_dual_sub_f32 v71, v71, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v127, v127
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v138, v140, v113 :: v_dual_sub_f32 v117, v117, v67
	v_dual_sub_f32 v70, v70, v67 :: v_dual_sub_f32 v137, v141, v113
	v_sub_f32_e32 v80, v80, v67
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v116, s8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v70
	v_exp_f32_e32 v70, v71
	v_exp_f32_e32 v71, v117
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v116, 0, v124, s10
	v_cndmask_b32_e64 v117, 0, v127, s12
	v_cndmask_b32_e64 v124, 0, v133, s14
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v135, v135, v113
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	v_exp_f32_e32 v136, v136
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v69, v69, v116 :: v_dual_mul_f32 v26, v26, v115
	v_add_f32_e32 v116, v117, v124
.Ltmp16:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v128, v128, v113 :: v_dual_sub_f32 v83, v83, v67
	v_dual_sub_f32 v130, v130, v113 :: v_dual_sub_f32 v81, v81, v67
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v134, s20
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v130, v130
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v135, s22
	v_cndmask_b32_e64 v135, 0, v136, s24
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v129, v129, v113
	v_dual_sub_f32 v132, v132, v113 :: v_dual_sub_f32 v123, v123, v67
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v69, v69, v116 :: v_dual_mul_f32 v28, v28, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v124, v134, v135
.Ltmp18:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v129, v129
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v137, s18
	v_cndmask_b32_e64 v136, 0, v138, s9
	v_cndmask_b32_e64 v128, 0, v128, s11
	v_cndmask_b32_e64 v130, 0, v130, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v30, v30, v115 :: v_dual_add_f32 v117, v127, v133
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v119, v119, v113
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v127, v136, v128
.Ltmp20:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v115
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v129, s13
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v139, v142, v113 :: v_dual_add_f32 v116, v117, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v132, v132
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v128, v129, v130
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp22:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v126, v126, v67
	v_sub_f32_e32 v122, v122, v67
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v124.h, v65.h
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v117, v127, v128
.Ltmp24:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v131, v131, v113
	v_sub_f32_e32 v125, v125, v67
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v119, s21
	v_cndmask_b32_e64 v132, 0, v132, s23
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v131, v131
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v139, s19
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v122, v122
	v_exp_f32_e32 v125, v125
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v69, v69, v116 :: v_dual_mul_f32 v20, v20, v115
	s_delay_alu instid0(VALU_DEP_2)
	v_add_f32_e32 v119, v137, v119
.Ltmp26:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v115
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v121, v121
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v115
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v131, s25
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v115
	v_mul_f32_e32 v29, v29, v115
	v_mul_f32_e32 v31, v31, v115
	v_mul_f32_e32 v17, v17, v115
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v132, v131
.Ltmp28:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v115
	v_mul_f32_e32 v21, v21, v115
	v_mul_f32_e32 v23, v23, v115
	v_mul_f32_e32 v9, v9, v115
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v119, v119, v129 :: v_dual_mul_f32 v10, v10, v115
.Ltmp30:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v115
	v_mul_f32_e32 v13, v13, v115
	v_mul_f32_e32 v14, v14, v115
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v116, v117, v119
.Ltmp32:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v123
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v123, 0, v125, s26
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v120
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, v121, 0, s36
.Ltmp33:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v116
.Ltmp34:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v116, v122, 0, s35
	v_cndmask_b32_e64 v122, v71, 0, s33
	v_cndmask_b32_e64 v71, v126, 0, s27
	v_cndmask_b32_e64 v121, v70, 0, s31
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v70, v69
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v124.l, v123.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.l, v71.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v115
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v124, 1, v124
	v_cmp_o_f32_e64 s8, v71, v71
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v4, v4, v115 :: v_dual_and_b32 v125, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp40:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.l, v120.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v125, v71, v125, 0x7fff
	v_add3_u32 v71, v123, v124, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v115
	v_mul_f32_e32 v2, v2, v115
	v_mul_f32_e32 v3, v3, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v126.h, 0x7fff, v125.h, s8
	v_cmp_o_f32_e64 s8, v123, v123
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v123, v141, 0, s17
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v115
	v_mul_f32_e32 v6, v6, v115
	v_mul_f32_e32 v7, v7, v115
	v_dual_mul_f32 v8, v8, v115 :: v_dual_fmac_f32 v69, v114, v68
	v_dual_mul_f32 v11, v11, v115 :: v_dual_and_b32 v124, 1, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v140, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.l, v123.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v115.l, v116.h
	v_mov_b16_e32 v115.h, v65.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v83, v83
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v126.l, 0x7fff, v71.h, s8
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v81
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v71, 1, v115
	v_add3_u32 v115, v120, v124, 0x7fff
	v_mov_b16_e32 v124.l, v125.h
	v_mov_b16_e32 v124.h, v65.h
	v_cmp_o_f32_e64 s8, v120, v120
	v_and_b32_e32 v120, 1, v65
	v_add3_u32 v71, v116, v71, 0x7fff
	v_cmp_o_f32_e64 s9, v116, v116
	v_and_b32_e32 v116, 1, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v127.h, 0x7fff, v115.h, s8
	v_add3_u32 v115, v123, v120, 0x7fff
	v_cmp_o_f32_e64 s8, v123, v123
	v_add3_u32 v116, v125, v116, 0x7fff
	v_mov_b16_e32 v120.l, v121.h
	v_mov_b16_e32 v120.h, v65.h
	v_mov_b16_e32 v65.l, v122.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, v83, 0, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v125, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v82, s6
	v_cndmask_b32_e64 v81, v81, 0, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v127.l, 0x7fff, v71.h, s9
	v_cndmask_b16 v71.h, 0x7fff, v115.h, s8
	v_and_b32_e32 v115, 1, v120
	v_and_b32_e32 v120, 1, v65
	v_mov_b16_e32 v65.l, v83.h
	v_cndmask_b16 v71.l, 0x7fff, v116.h, s7
	v_mov_b16_e32 v116.l, v82.h
	v_mov_b16_e32 v116.h, v65.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v84
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v118, v118, 0, s30
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v115, v121, v115, 0x7fff
	v_and_b32_e32 v123, 1, v65
	v_add3_u32 v120, v122, v120, 0x7fff
	v_cmp_o_f32_e64 s6, v122, v122
	v_cmp_o_f32_e64 s7, v121, v121
	v_and_b32_e32 v116, 1, v116
	v_mov_b16_e32 v65.l, v81.h
	v_add3_u32 v121, v83, v123, 0x7fff
	v_cmp_o_f32_e64 s8, v83, v83
	v_cndmask_b16 v83.h, 0x7fff, v120.h, s6
	v_cndmask_b16 v83.l, 0x7fff, v115.h, s7
	v_add3_u32 v115, v82, v116, 0x7fff
	v_mov_b16_e32 v116.l, v118.h
	v_mov_b16_e32 v116.h, v65.h
	v_and_b32_e32 v120, 1, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, v119, 0, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v82, v82
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v82, v117, 0, s5
	v_cndmask_b32_e64 v84, 0, v84, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v116, 1, v116
	v_add3_u32 v117, v81, v120, 0x7fff
	v_cmp_o_f32_e64 s4, v81, v81
	v_cndmask_b16 v180.l, 0x7fff, v115.h, s6
	v_cndmask_b16 v180.h, 0x7fff, v121.h, s8
	v_add3_u32 v115, v118, v116, 0x7fff
	v_mov_b16_e32 v116.l, v119.h
	v_cndmask_b16 v182.h, 0x7fff, v117.h, s4
	v_mov_b16_e32 v116.h, v65.h
	v_cmp_o_f32_e64 s4, v118, v118
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v118, 0, v94
	s_waitcnt vmcnt(1)
	ds_store_b128 v118, v[72:75]
	s_waitcnt vmcnt(0)
	ds_store_b128 v118, v[76:79] offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v121, 1, v116
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v74, v112 offset:512
	ds_load_u16_d16 v116, v112 offset:288
	ds_load_u16_d16 v125, v112 offset:608
	ds_load_u16_d16 v124, v112 offset:352
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.l, v82.h
	v_add3_u32 v73, v119, v121, 0x7fff
	v_mov_b16_e32 v81.l, v84.h
	v_mov_b16_e32 v81.h, v65.h
	v_cmp_o_f32_e64 s6, v84, v84
	v_and_b32_e32 v117, 1, v65
	v_cmp_o_f32_e64 s5, v82, v82
	v_cmp_o_f32_e64 s8, v119, v119
	v_and_b32_e32 v81, 1, v81
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, v80, 0, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v72, v82, v117, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v72, v112
	ds_load_u16_d16 v115, v112 offset:32
	ds_load_u16_d16 v133, v112 offset:576
	ds_load_u16_d16 v73, v112 offset:256
	ds_load_u16_d16 v131, v112 offset:64
	ds_load_u16_d16 v132, v112 offset:320
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v124, v112 offset:480
	ds_load_u16_d16 v123, v112 offset:96
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.l, v80.h
	v_add3_u32 v81, v84, v81, 0x7fff
	v_cmp_o_f32_e64 s7, v80, v80
	v_permlanex16_b32 v76, v127, s64, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(6)
	v_cndmask_b16 v182.l, 0x7fff, v115.h, s4
	v_and_b32_e32 v120, 1, v65
	s_waitcnt lgkmcnt(4)
	v_cndmask_b16 v81.l, 0x7fff, v73.h, s8
	v_permlanex16_b32 v82, v71, s64, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v141, v76, v127, v87
	v_perm_b32 v142, v76, v127, v88
	v_add3_u32 v75, v80, v120, 0x7fff
	v_cndmask_b16 v80.l, 0x7fff, v81.h, s6
	v_cndmask_b16 v80.h, 0x7fff, v72.h, s5
	v_permlanex16_b32 v84, v83, s64, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v181, v180, s64, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v81.h, 0x7fff, v75.h, s7
	v_permlanex16_b32 v75, v126, s64, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v183, v182, s64, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v184, v80, s64, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v143, v82, v71, v87
	v_permlanex16_b32 v186, v81, s64, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v139, v75, v126, v87
	v_perm_b32 v140, v75, v126, v88
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v75, v112 offset:768
	ds_load_u16_d16 v134, v112 offset:832
	ds_load_u16_d16_hi v133, v112 offset:704
	ds_load_u16_d16 v117, v112 offset:544
	ds_load_u16_d16_hi v72, v112 offset:128
	ds_load_u16_d16_hi v115, v112 offset:160
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v131, v112 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v123, v112 offset:224
	ds_load_u16_d16_hi v74, v112 offset:640
	ds_load_u16_d16_hi v73, v112 offset:384
	ds_load_u16_d16_hi v116, v112 offset:416
	ds_load_u16_d16_hi v132, v112 offset:448
	ds_load_u16_d16 v135, v112 offset:1088
	ds_load_u16_d16 v136, v112 offset:1344
	ds_load_u16_d16 v137, v112 offset:1600
	ds_load_u16_d16 v138, v112 offset:1856
	ds_load_u16_d16 v147, v112 offset:2112
	ds_load_u16_d16 v149, v112 offset:2624
	ds_load_u16_d16 v150, v112 offset:2880
	ds_load_u16_d16 v151, v112 offset:3136
	ds_load_u16_d16 v152, v112 offset:3392
	ds_load_u16_d16 v153, v112 offset:3648
	ds_load_u16_d16 v154, v112 offset:3904
	ds_load_u16_d16 v76, v112 offset:1024
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v75, v112 offset:896
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v117, v112 offset:672
	ds_load_u16_d16 v118, v112 offset:800
	ds_load_u16_d16_hi v134, v112 offset:960
	ds_load_u16_d16 v126, v112 offset:864
	ds_load_u16_d16_hi v125, v112 offset:736
	ds_load_u16_d16 v77, v112 offset:1280
	ds_load_u16_d16 v119, v112 offset:1056
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v135, v112 offset:1216
	ds_load_u16_d16 v127, v112 offset:1120
	ds_load_u16_d16 v78, v112 offset:1536
	ds_load_u16_d16 v120, v112 offset:1312
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v136, v112 offset:1472
	ds_load_u16_d16 v128, v112 offset:1376
	ds_load_u16_d16 v79, v112 offset:1792
	ds_load_u16_d16 v121, v112 offset:1568
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v137, v112 offset:1728
	ds_load_u16_d16 v129, v112 offset:1632
	ds_load_u16_d16 v155, v112 offset:2048
	ds_load_u16_d16 v122, v112 offset:1824
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v138, v112 offset:1984
	ds_load_u16_d16 v130, v112 offset:1888
	ds_load_u16_d16 v156, v112 offset:2304
	ds_load_u16_d16 v163, v112 offset:2080
	ds_load_u16_d16 v148, v112 offset:2368
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v147, v112 offset:2240
	ds_load_u16_d16 v171, v112 offset:2144
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v76, v112 offset:1152
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v118, v112 offset:928
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v126, v112 offset:992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v77, v112 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v119, v112 offset:1184
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v127, v112 offset:1248
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v78, v112 offset:1664
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v120, v112 offset:1440
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v128, v112 offset:1504
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v79, v112 offset:1920
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v121, v112 offset:1696
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v129, v112 offset:1760
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v155, v112 offset:2176
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v122, v112 offset:1952
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v130, v112 offset:2016
	ds_load_u16_d16 v157, v112 offset:2560
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v156, v112 offset:2432
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v163, v112 offset:2208
	ds_load_u16_d16 v164, v112 offset:2336
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v148, v112 offset:2496
	ds_load_u16_d16 v172, v112 offset:2400
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v171, v112 offset:2272
	ds_load_u16_d16 v158, v112 offset:2816
	ds_load_u16_d16 v165, v112 offset:2592
	ds_load_u16_d16_hi v149, v112 offset:2752
	ds_load_u16_d16 v173, v112 offset:2656
	ds_load_u16_d16 v159, v112 offset:3072
	ds_load_u16_d16 v166, v112 offset:2848
	ds_load_u16_d16_hi v150, v112 offset:3008
	ds_load_u16_d16 v174, v112 offset:2912
	ds_load_u16_d16 v160, v112 offset:3328
	ds_load_u16_d16 v167, v112 offset:3104
	ds_load_u16_d16_hi v151, v112 offset:3264
	ds_load_u16_d16 v175, v112 offset:3168
	ds_load_u16_d16 v161, v112 offset:3584
	ds_load_u16_d16 v168, v112 offset:3360
	ds_load_u16_d16_hi v152, v112 offset:3520
	ds_load_u16_d16 v176, v112 offset:3424
	ds_load_u16_d16 v162, v112 offset:3840
	ds_load_u16_d16 v169, v112 offset:3616
	ds_load_u16_d16_hi v153, v112 offset:3776
	ds_load_u16_d16 v177, v112 offset:3680
	ds_load_u16_d16 v170, v112 offset:3872
	ds_load_u16_d16_hi v154, v112 offset:4032
	ds_load_u16_d16 v178, v112 offset:3936
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v157, v112 offset:2688
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v164, v112 offset:2464
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v172, v112 offset:2528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v158, v112 offset:2944
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v165, v112 offset:2720
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v173, v112 offset:2784
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v159, v112 offset:3200
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v166, v112 offset:2976
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v174, v112 offset:3040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v160, v112 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v167, v112 offset:3232
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v175, v112 offset:3296
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v161, v112 offset:3712
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v168, v112 offset:3488
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v176, v112 offset:3552
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v162, v112 offset:3968
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v169, v112 offset:3744
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v177, v112 offset:3808
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v170, v112 offset:4000
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v144, v82, v71, v88
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v178, v112 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v145, v84, v83, v87
	v_perm_b32 v146, v84, v83, v88
	v_perm_b32 v179, v181, v180, v87
	v_perm_b32 v180, v181, v180, v88
	v_perm_b32 v181, v183, v182, v87
	v_perm_b32 v182, v183, v182, v88
	v_perm_b32 v183, v184, v80, v87
	v_perm_b32 v184, v184, v80, v88
	v_perm_b32 v185, v186, v81, v87
	v_perm_b32 v186, v186, v81, v88
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[72:79], v[139:146], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[115:122], v[139:146], v[17:24]
	v_mov_b32_e32 v115, v67
	v_wmma_f32_16x16x16_bf16 v[1:8], v[123:130], v[139:146], v[1:8]
	v_mov_b32_e32 v114, v69
	v_mov_b32_e32 v116, v66
	v_wmma_f32_16x16x16_bf16 v[9:16], v[131:138], v[139:146], v[9:16]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[155:162], v[179:186], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[163:170], v[179:186], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[171:178], v[179:186], v[1:8]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s4, s65, 32
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[147:154], v[179:186], v[9:16]
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s65, 0x7e0
	s_mov_b32 s65, s4
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s28, s65, s55
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v164, s47 :: v_dual_add_nc_u32 v81, 0, v95
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s4, s28, s52
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v163, s46 :: v_dual_mov_b32 v162, s45
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s4, v85, 1
	v_add_lshl_u32 v66, s4, v89, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v161, s44 :: v_dual_mov_b32 v160, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v82, 0 :: v_dual_cndmask_b32 v65, 0x80000000, v65
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v69, 0x80000000, v66 :: v_dual_mov_b32 v84, 0
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[56:59], 0 offen
	buffer_load_b128 v[69:72], v69, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v159, s42 :: v_dual_mov_b32 v158, s41
	v_mov_b32_e32 v157, s40
	v_mov_b32_e32 v83, 0
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v98, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v98, v[69:72] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v100
	ds_load_b128 v[73:76], v81
	ds_load_b128 v[117:120], v81 offset:2048
	ds_load_b128 v[121:124], v100 offset:2048
	ds_load_b128 v[125:128], v101
	ds_load_b128 v[133:136], v101 offset:2048
	ds_load_b128 v[129:132], v102
	ds_load_b128 v[137:140], v102 offset:2048
	ds_load_b128 v[141:144], v103
	ds_load_b128 v[149:152], v103 offset:2048
	ds_load_b128 v[145:148], v104
	ds_load_b128 v[153:156], v104 offset:2048
	ds_load_b128 v[165:168], v105
	ds_load_b128 v[173:176], v105 offset:2048
	ds_load_b128 v[169:172], v106
	ds_load_b128 v[177:180], v106 offset:2048
	v_mov_b32_e32 v81, 0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[33:40], v[157:164]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[117:124], v[33:40], v[157:164]
	s_waitcnt lgkmcnt(9)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[125:132], v[41:48], v[65:72]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[133:140], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[141:148], v[49:56], v[65:72]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[149:156], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[165:172], v[57:64], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[173:180], v[57:64], v[73:80]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, s2
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v81, s65, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v82, 31, v81
	v_add_co_u32 v81, s4, s48, v81
	v_add_co_ci_u32_e64 v82, null, s49, v82, s4
	global_load_b128 v[81:84], v[81:82], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v0, 3, v0
	v_lshrrev_b32_e32 v33, 2, v93
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.h, v65.h
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 818 13                        ; attention.py:818:13
	v_and_or_b32 v0, 0x78, v0, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v33, 1, v91
	.loc	1 818 13                        ; attention.py:818:13
	ds_bpermute_b32 v37, v0, v69
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v35, v33, v90
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v39, s38, v35
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v35, s39, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v39
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v35, s53, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, null, v37, v37, v26
	v_div_scale_f32 v43, null, v37, v37, v28
	v_div_scale_f32 v52, null, v37, v37, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v39
	v_rcp_f32_e32 v50, v43
	v_div_scale_f32 v40, vcc_lo, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v57, v52
	v_div_scale_f32 v45, null, v37, v37, v27
	v_div_scale_f32 v41, null, v37, v37, v25
	v_div_scale_f32 v49, null, v37, v37, v30
	v_fma_f32 v54, -v39, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v58, -v43, v50, 1.0
	v_rcp_f32_e32 v51, v45
	v_fma_f32 v59, -v52, v57, 1.0
	v_rcp_f32_e32 v48, v41
	v_fmac_f32_e32 v46, v54, v46
	v_fmac_f32_e32 v50, v58, v50
	v_div_scale_f32 v42, s6, v25, v37, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_dual_fmac_f32 v57, v59, v57 :: v_dual_mul_f32 v58, v40, v46
	v_rcp_f32_e32 v53, v49
	v_fma_f32 v54, -v45, v51, 1.0
	v_div_scale_f32 v44, s7, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v39, v58, v40
	v_div_scale_f32 v47, s8, v27, v37, v27
	v_fma_f32 v56, -v41, v48, 1.0
	v_dual_fmac_f32 v51, v54, v51 :: v_dual_fmac_f32 v58, v61, v46
	v_mul_f32_e32 v60, v44, v50
	v_div_scale_f32 v55, s9, v30, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v62, v47, v51
	v_fma_f32 v39, -v39, v58, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v61, -v45, v62, v47
	v_div_fmas_f32 v39, v39, v46, v58
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v62, v61, v51
	v_div_fixup_f32 v26, v39, v37, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v65.l, v26.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v56, v48
	v_fma_f32 v56, -v49, v53, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v53, v56, v53 :: v_dual_and_b32 v0, 8, v92
	v_fma_f32 v56, -v43, v60, v44
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v36, 16, v0
	v_or_b32_e32 v34, 32, v0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s53, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 48, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v60, v56, v50
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s53, v36
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v35, v0, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s53, v34
	v_cmp_gt_i32_e64 s1, s53, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v43, v60, v44
	v_fma_f32 v43, -v45, v62, v47
	v_dual_mul_f32 v54, v42, v48 :: v_dual_and_b32 v45, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v63, -v41, v54, v42
	v_fmac_f32_e32 v54, v63, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v41, v54, v42
	v_div_scale_f32 v41, s10, v29, v37, v29
	v_mul_f32_e32 v42, v55, v53
	v_div_fmas_f32 v40, v40, v48, v54
	s_mov_b32 vcc_lo, s7
	v_div_fmas_f32 v39, v39, v50, v60
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v25, v40, v37, v25
	v_mul_f32_e32 v40, v41, v57
	v_div_fmas_f32 v43, v43, v51, v62
	v_fma_f32 v44, -v49, v42, v55
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v26, v26, v45, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v43, v37, v27
	v_fmac_f32_e32 v42, v44, v53
	v_div_fixup_f32 v28, v39, v37, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	v_cmp_o_f32_e64 s7, v25, v25
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v43, -v49, v42, v55
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v38
	v_mov_b16_e32 v39.h, v65.h
	v_mov_b16_e32 v39.l, v27.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v44, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v25, v38, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v26.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v26, -v52, v40, v41
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v65.l, v28.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v43, v53, v42
	v_div_scale_f32 v43, null, v37, v37, v32
	v_fmac_f32_e32 v40, v26, v57
	s_mov_b32 vcc_lo, s10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v38.h, s7
	v_and_b32_e32 v38, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v41, -v52, v40, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v26, 1, v65
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v42, v37, v30
	v_rcp_f32_e32 v48, v44
	s_mov_b32 s10, 0x7ffffffe
	v_div_fmas_f32 v40, v41, v57, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v26, v28, v26, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_add3_u32 v28, v27, v38, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v43, v39, 1.0
	v_div_fixup_f32 v29, v40, v37, v29
	v_div_scale_f32 v40, null, v37, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v26.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v38, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v30, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v30.h, v65.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v41, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v41, s7, v32, v37, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.l, 0x7fff, v28.h, vcc_lo
	v_mov_b16_e32 v65.l, v27.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v28, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v40, v38, 1.0
	v_mul_f32_e32 v30, v41, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v27, v27
	v_and_b32_e32 v46, 1, v65
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, s8, v31, v37, v31
	v_fma_f32 v45, -v43, v30, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v46, v27, v46, 0x7fff
	v_add3_u32 v28, v29, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v47, v42, v38 :: v_dual_fmac_f32 v30, v45, v39
	v_div_scale_f32 v45, null, v37, v37, v17
	v_fma_f32 v49, -v40, v47, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v43, v30, v41
	v_rcp_f32_e32 v41, v45
	v_fma_f32 v43, -v44, v48, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v38
	v_div_fmas_f32 v27, v27, v39, v30
	v_div_scale_f32 v39, s7, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v30, -v40, v47, v42
	v_fmac_f32_e32 v48, v43, v48
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v40, -v45, v41, 1.0
	v_div_fixup_f32 v32, v27, v37, v32
	v_div_fmas_f32 v30, v30, v38, v47
	v_mul_f32_e32 v38, v39, v48
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.h, 0x7fff, v46.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v40, v41
	v_div_scale_f32 v40, s8, v17, v37, v17
	v_div_fixup_f32 v30, v30, v37, v31
	v_fma_f32 v31, -v44, v38, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v29, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v40, v41
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s6
	v_cndmask_b32_e64 v30, 0, v30, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v31, v48
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v29, -v45, v42, v40
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v65.l, v32.h
	v_mov_b16_e32 v31.l, v30.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v44, v38, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.h, v65.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v29, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v65
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v39, v48, v38
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v39, -v45, v42, v40
	v_div_scale_f32 v40, null, v37, v37, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v28, 1, v31
	v_add3_u32 v29, v32, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v41, v42
	v_rcp_f32_e32 v31, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v38, v37, v18
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v30, v28, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v39, v37, v17
	v_div_scale_f32 v39, null, v37, v37, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v42, null, v37, v37, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v17, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v39
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v29.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v40, v31, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v30.l, v32.h
	v_mov_b16_e32 v30.h, v65.h
	v_mov_b16_e32 v65.l, v18.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v29, v31
	v_div_scale_f32 v29, s7, v20, v37, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v39, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.l, 0x7fff, v28.h, vcc_lo
	v_and_b32_e32 v28, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v30, v29, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v44, 1, v65
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, s8, v19, v37, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v40, v30, v29
	v_rcp_f32_e32 v46, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v44, v18, v44, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v45, v41, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v18, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v43, v31
	v_div_scale_f32 v43, null, v37, v37, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v39, v45, v41
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v18, -v40, v30, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v29, v43
	v_fma_f32 v40, -v42, v46, 1.0
	v_fmac_f32_e32 v45, v47, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v32, v28, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v18, v18, v31, v30
	v_div_scale_f32 v31, s7, v22, v37, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v30, -v39, v45, v41
	v_fmac_f32_e32 v46, v40, v46
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v39, -v43, v29, 1.0
	v_div_fixup_f32 v20, v18, v37, v20
	v_div_fmas_f32 v30, v30, v38, v45
	v_mul_f32_e32 v38, v31, v46
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v29, v39, v29
	v_div_scale_f32 v39, s8, v21, v37, v21
	v_div_fixup_f32 v19, v30, v37, v19
	v_fma_f32 v30, -v42, v38, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v44.h, s9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v39, v29
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	v_cndmask_b32_e64 v41, 0, v19, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v30, v46
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v32, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v43, v40, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.h, v65.h
	v_mov_b16_e32 v30.l, v41.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v42, v38, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v65.l, v20.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v19, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v28.h, s9
	v_and_b32_e32 v28, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v31, v31, v46, v38
	v_div_scale_f32 v38, null, v37, v37, v24
	v_fma_f32 v32, -v43, v40, v39
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v65
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v30, v38
	v_div_fixup_f32 v22, v31, v37, v22
	v_div_fmas_f32 v29, v32, v29, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v19, v20, v19, 0x7fff
	v_add3_u32 v20, v41, v28, 0x7fff
	v_mov_b16_e32 v32.h, v65.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v21, v29, v37, v21
	v_div_scale_f32 v29, null, v37, v37, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v38, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v28, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v31, v30
	v_div_scale_f32 v31, s7, v24, v37, v24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v32.l, v21.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v20.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v40, null, v37, v37, v10
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v29, v28, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v20, 1, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v32, v31, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v65.l, v22.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v44, v40
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, s8, v23, v37, v23
	v_fma_f32 v41, -v38, v32, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v42, 1, v65
	v_add3_u32 v43, v21, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v20, v39, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v22, v22
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v32, v41, v30
	v_div_scale_f32 v41, null, v37, v37, v9
	v_fma_f32 v45, -v29, v20, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v42, v22, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v38, v32, v31
	v_rcp_f32_e32 v31, v41
	v_fma_f32 v38, -v40, v44, 1.0
	v_fmac_f32_e32 v20, v45, v28
	s_mov_b32 vcc_lo, s7
	v_div_fmas_f32 v22, v22, v30, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v38, v44
	v_fma_f32 v29, -v29, v20, v39
	v_div_scale_f32 v30, s7, v10, v37, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v41, v31, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v22, v22, v37, v24
	v_div_fmas_f32 v20, v29, v28, v20
	v_dual_mul_f32 v28, v30, v44 :: v_dual_fmac_f32 v31, v32, v31
	v_div_scale_f32 v29, s8, v9, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v23, v20, v37, v23
	v_fma_f32 v24, -v40, v28, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v20.h, 0x7fff, v42.h, s9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v32, v29, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v21, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v28, v24, v44
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v21, -v41, v32, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v65.l, v22.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v40, v28, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v24.h, v65.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v32, v21, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v24.l, v23.h
	v_and_b32_e32 v21, 1, v65
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v30, v44, v28
	v_div_scale_f32 v30, null, v37, v37, v12
	v_fma_f32 v29, -v41, v32, v29
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v24, 1, v24
	v_add3_u32 v21, v22, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v10, v28, v37, v10
	v_div_fmas_f32 v29, v29, v31, v32
	v_rcp_f32_e32 v31, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_add3_u32 v22, v23, v24, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v9, v29, v37, v9
	v_div_scale_f32 v29, null, v37, v37, v11
	v_div_scale_f32 v38, null, v37, v37, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v28, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v21.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v30, v31, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_mov_b16_e32 v23.l, v24.h
	v_mov_b16_e32 v23.h, v65.h
	v_mov_b16_e32 v65.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v21, v31
	v_div_scale_f32 v21, s7, v12, v37, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v29, v28, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v22.h, vcc_lo
	v_and_b32_e32 v22, 1, v23
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v23, v21, v31 :: v_dual_and_b32 v40, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v32, v28
	v_div_scale_f32 v32, s8, v11, v37, v11
	v_fma_f32 v39, -v30, v23, v21
	v_rcp_f32_e32 v42, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v20.l, 0x7fff, v43.h, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v32, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v40, v10, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v39, v31
	v_div_scale_f32 v39, null, v37, v37, v13
	v_fma_f32 v43, -v29, v41, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v30, v23, v21
	v_rcp_f32_e32 v21, v39
	v_fma_f32 v30, -v38, v42, 1.0
	v_fmac_f32_e32 v41, v43, v28
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v24, v22, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v10, v10, v31, v23
	v_fmac_f32_e32 v42, v30, v42
	v_fma_f32 v23, -v29, v41, v32
	v_div_scale_f32 v29, s7, v14, v37, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v39, v21, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v10, v10, v37, v12
	v_div_fmas_f32 v23, v23, v28, v41
	v_dual_mul_f32 v28, v29, v42 :: v_dual_fmac_f32 v21, v30, v21
	v_div_scale_f32 v30, s8, v13, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v23, v37, v11
	v_fma_f32 v23, -v38, v28, v29
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v31, v30, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v40.h, s9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v28, v23, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v23, -v39, v31, v30
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v24, v24
	v_mov_b16_e32 v24.l, v11.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v38, v28, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v24.h, v65.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v23, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v65.l, v10.h
	v_cndmask_b16 v12.l, 0x7fff, v22.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v29, v42, v28
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v29, -v39, v31, v30
	v_div_scale_f32 v30, null, v37, v37, v16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v22, 1, v24
	v_and_b32_e32 v23, 1, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v21, v29, v21, v31
	v_rcp_f32_e32 v24, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v14, v28, v37, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v23, v10, v23, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v13, v21, v37, v13
	v_div_scale_f32 v21, null, v37, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v11, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v23.h, 0x7fff, v23.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v22, v21
	v_fma_f32 v28, -v30, v24, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v14, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v14.l, v13.h
	v_mov_b16_e32 v14.h, v65.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v24, v28, v24
	v_div_scale_f32 v28, s7, v16, v37, v16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v23.l, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v21, v22, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v10, 1, v14
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v14, v28, v24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v65.l, v11.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v31, null, v37, v37, v2
	v_fmac_f32_e32 v22, v29, v22
	v_div_scale_f32 v29, s8, v15, v37, v15
	v_fma_f32 v32, -v30, v14, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v65
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v29, v22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v11, v11
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v14, v32, v24
	v_div_scale_f32 v32, null, v37, v37, v1
	v_fma_f32 v41, -v21, v39, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v11, v38, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v11, -v30, v14, v28
	v_rcp_f32_e32 v28, v32
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v30, -v31, v40, 1.0
	v_fmac_f32_e32 v39, v41, v22
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v13, v10, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v11, v11, v24, v14
	v_fmac_f32_e32 v40, v30, v40
	v_fma_f32 v14, -v21, v39, v29
	v_div_scale_f32 v21, s7, v2, v37, v2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v24, -v32, v28, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v11, v11, v37, v16
	v_div_fmas_f32 v14, v14, v22, v39
	v_mul_f32_e32 v22, v21, v40
	v_fmac_f32_e32 v28, v24, v28
	v_div_scale_f32 v24, s8, v1, v37, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v14, v14, v37, v15
	v_fma_f32 v16, -v31, v22, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v15.h, 0x7fff, v38.h, s9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v29, v24, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v13, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v22, v16, v40
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v13, -v32, v29, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v16.l, v14.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v31, v22, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v16.h, v65.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v13, v28
	v_div_scale_f32 v30, null, v37, v37, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v40, v22
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v22, -v32, v29, v24
	v_div_scale_f32 v24, null, v37, v37, v4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v65.l, v11.h
	v_cndmask_b16 v15.l, 0x7fff, v10.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v22, v22, v28, v29
	v_rcp_f32_e32 v28, v24
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v10, 1, v16
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v16, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v13, 1, v65
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v21, v37, v2
	v_div_fixup_f32 v1, v22, v37, v1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v14, v10, 0x7fff
	v_add3_u32 v13, v11, v13, 0x7fff
	v_cmp_o_f32_e64 s8, v14, v14
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v11, -v24, v28, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v30, v16, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v28, v11, v28
	v_div_scale_f32 v11, vcc_lo, v4, v37, v4
	v_fmac_f32_e32 v16, v21, v16
	v_div_scale_f32 v21, s7, v3, v37, v3
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v65.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v14, v11, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v29, v21, v16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.h, v65.h
	v_and_b32_e32 v31, 1, v65
	v_cndmask_b16 v13.l, 0x7fff, v10.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v24, v14, v11
	v_fma_f32 v32, -v30, v29, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v31, v2, v31, 0x7fff
	v_cmp_o_f32_e64 s8, v2, v2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v14, v10, v28
	v_fmac_f32_e32 v29, v32, v16
	v_div_scale_f32 v2, null, v37, v37, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v1, v22, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v31.h, s8
	v_cmp_o_f32_e64 s8, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v1, -v24, v14, v11
	v_fma_f32 v11, -v30, v29, v21
	v_rcp_f32_e32 v21, v2
	v_div_scale_f32 v24, null, v37, v37, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v1, v1, v28, v14
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v28, null, v37, v37, v7
	v_rcp_f32_e32 v14, v24
	v_div_fmas_f32 v11, v11, v16, v29
	v_div_fixup_f32 v1, v1, v37, v4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v16, -v2, v21, 1.0
	v_div_scale_f32 v4, null, v37, v37, v8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v22.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v3, v11, v37, v3
	v_fmac_f32_e32 v21, v16, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v22, v4
	v_fma_f32 v16, -v24, v14, 1.0
	v_div_scale_f32 v11, vcc_lo, v6, v37, v6
	v_div_scale_f32 v30, s7, v5, v37, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v14, v16, v14
	v_rcp_f32_e32 v16, v28
	v_mul_f32_e32 v29, v11, v21
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v4, v22, 1.0
	v_mul_f32_e32 v39, v30, v14
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v2, v29, v11
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v65.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v22, v31, v22
	v_div_scale_f32 v31, s8, v8, v37, v8
	v_fma_f32 v40, -v28, v16, 1.0
	v_fmac_f32_e32 v29, v38, v21
	v_fma_f32 v38, -v24, v39, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v41, v31, v22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v32.l, v3.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v16, v40, v16
	v_div_scale_f32 v40, s9, v7, v37, v7
	v_fma_f32 v2, -v2, v29, v11
	v_fmac_f32_e32 v39, v38, v14
	v_fma_f32 v11, -v4, v41, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v38, v40, v16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v32.h, v65.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v2, v2, v21, v29
	v_fma_f32 v21, -v24, v39, v30
	v_fmac_f32_e32 v41, v11, v22
	v_fma_f32 v24, -v28, v38, v40
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v2, v2, v37, v6
	v_div_fmas_f32 v11, v21, v14, v39
	v_fma_f32 v4, -v4, v41, v31
	v_fmac_f32_e32 v38, v24, v16
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v42, 1, v65
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v11, v37, v5
	v_div_fmas_f32 v4, v4, v22, v41
	v_fma_f32 v6, -v28, v38, v40
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v14, 1, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v6, v6, v16, v38
	v_div_fixup_f32 v4, v4, v37, v8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v11, v3, v14, 0x7fff
	v_add3_u32 v14, v1, v42, 0x7fff
	v_mov_b16_e32 v65.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v6, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v7.l, v5.h
	v_mov_b16_e32 v7.h, v65.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v4, s6
	v_cndmask_b32_e64 v6, 0, v6, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v4, 1, v65
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v8.h, v65.h
	v_mov_b16_e32 v65.l, v1.h
	v_mov_b16_e32 v8.l, v6.h
	v_cndmask_b16 v14.h, 0x7fff, v14.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_add3_u32 v3, v5, v7, 0x7fff
	v_add3_u32 v4, v2, v4, 0x7fff
	v_and_b32_e32 v7, 1, v8
	v_and_b32_e32 v8, 1, v65
	v_cmp_o_f32_e64 s6, v2, v2
	v_cmp_o_f32_e64 s7, v5, v5
	v_cmp_o_f32_e64 s8, v1, v1
	v_add3_u32 v2, v6, v7, 0x7fff
	v_add3_u32 v5, v1, v8, 0x7fff
	v_cmp_o_f32_e64 s9, v6, v6
	v_cndmask_b16 v1.h, 0x7fff, v4.h, s6
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s7
	v_cndmask_b16 v14.l, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s8
	v_cndmask_b16 v3.l, 0x7fff, v2.h, s9
	v_cndmask_b32_e64 v5, v17, v26, s0
	v_cndmask_b32_e64 v6, v26, v17, s0
	v_cndmask_b32_e64 v17, v1, v10, s0
	v_cndmask_b32_e64 v1, v10, v1, s0
	v_cndmask_b32_e64 v4, v25, v27, s0
	v_cndmask_b32_e64 v7, v20, v18, s0
	v_cndmask_b32_e64 v8, v18, v20, s0
	v_cndmask_b32_e64 v11, v9, v19, s0
	v_cndmask_b32_e64 v9, v19, v9, s0
	v_cndmask_b32_e64 v16, v15, v12, s0
	v_cndmask_b32_e64 v12, v12, v15, s0
	v_cndmask_b32_e64 v15, v13, v23, s0
	v_cndmask_b32_e64 v13, v23, v13, s0
	v_cndmask_b32_e64 v18, v3, v14, s0
	v_cndmask_b32_e64 v3, v14, v3, s0
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v2, v27, v25, s0
	v_permlanex16_b32 v14, v1, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v12, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v13, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v3, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v13, v14, v17, v87
	v_perm_b32 v14, v14, v17, v88
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v35, v36, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v4, v2, v87
	v_perm_b32 v2, v4, v2, v88
	v_perm_b32 v3, v6, v5, v87
	v_perm_b32 v4, v6, v5, v88
	v_perm_b32 v5, v8, v7, v87
	v_perm_b32 v6, v8, v7, v88
	v_perm_b32 v7, v9, v11, v87
	v_perm_b32 v8, v9, v11, v88
	v_perm_b32 v9, v10, v16, v87
	v_perm_b32 v10, v10, v16, v88
	v_perm_b32 v11, v12, v15, v87
	v_perm_b32 v12, v12, v15, v88
	v_perm_b32 v15, v19, v18, v87
	v_perm_b32 v16, v19, v18, v88
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v35, v34, 1
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v35, v33, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s51, 0xffff
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	s_mov_b32 s8, s50
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v0, s[8:11], 0 offen
	buffer_store_b128 v[5:8], v17, s[8:11], 0 offen
	buffer_store_b128 v[9:12], v18, s[8:11], 0 offen
	buffer_store_b128 v[13:16], v19, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp41:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 187
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_vgpr, 187
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.numbered_sgpr, 66
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11676
; TotalNumSgprs: 68
; NumVgprs: 187
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 68
; NumVGPRsForWavesPerEU: 187
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
	.quad	.Ltmp14-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     68
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     187
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
