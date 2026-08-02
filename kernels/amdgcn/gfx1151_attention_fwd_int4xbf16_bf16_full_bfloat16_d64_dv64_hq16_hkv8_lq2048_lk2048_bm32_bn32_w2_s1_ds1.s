	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[56:59], s[0:1], 0x60
	v_dual_mov_b32 v47, 0x7632 :: v_dual_lshlrev_b32 v38, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v39, 1, v0
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v43, 0x7531 :: v_dual_and_b32 v36, 16, v38
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s6, v39
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s2
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x20
	s_load_b128 s[52:55], s[0:1], 0x30
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v3
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v49, 1, v0
	s_lshr_b32 s0, s0, 28
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v48, v0, 4, 1
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[40:41], null, s56, v39, v[36:37]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s29, s56, v36
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s61, s37, 0xffff
	s_mov_b32 s60, s36
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v50, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s56, s7, v[40:41]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s29
	v_dual_mov_b32 v46, 0x5410 :: v_dual_and_b32 v41, 15, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v52, 24, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v49
	v_dual_mov_b32 v42, 0x6420 :: v_dual_and_b32 v55, 16, v0
	buffer_load_b128 v[32:35], v1, s[60:63], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v39, 16, v41
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s61, s43, 0xffff
	s_mov_b32 s60, s42
	v_bfe_i32 v59, v0, 3, 1
	v_mov_b32_e32 v31, v24
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v54, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v60, v50, 30, v48
	v_xor_b32_e32 v58, v38, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v57, 0xff800000 :: v_dual_lshlrev_b32 v2, 1, v54
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_and_b32_e32 v52, 24, v50
	v_cndmask_b32_e64 v61, 0x7632, v46, s1
	v_dual_mov_b32 v86, 0xff800000 :: v_dual_and_b32 v51, 7, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v44, 56, v0
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v65, 0x210, v59
	buffer_load_u16 v45, v1, s[60:63], 0 offen
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v38, 48, v38
	v_dual_mov_b32 v18, v24 :: v_dual_lshlrev_b32 v59, 2, v60
	v_lshl_or_b32 v60, v41, 5, v52
	v_cndmask_b32_e64 v41, 0x5410, v47, s1
	v_lshl_or_b32 v52, v61, 8, v61
	v_cndmask_b32_e64 v42, 0x7531, v42, s1
	v_cndmask_b32_e64 v43, 0x6420, v43, s1
	v_dual_mov_b32 v26, v24 :: v_dual_lshlrev_b32 v37, 3, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v19, v24 :: v_dual_and_b32 v52, 0x760032, v52
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v67, 1, v44
	v_xor_b32_e32 v38, v38, v44
	v_lshl_or_b32 v68, v41, 8, v41
	v_lshl_or_b32 v69, v42, 8, v42
	v_lshl_or_b32 v70, v43, 8, v43
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s8, s3, 0x10007
	v_mad_u64_u32 v[41:42], null, s5, v39, v[36:37]
	v_mov_b32_e32 v20, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v22, v24 :: v_dual_and_b32 v39, 0x750031, v70
	v_mov_b32_e32 v23, v24
	s_add_i32 s8, s3, s8
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v62, 4, v59
	v_lshl_or_b32 v64, v51, 9, v38
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s4, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s4, s57, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[42:43], null, s57, v67, v[37:38]
	v_lshl_or_b32 v36, v52, 4, v52
	v_and_b32_e32 v37, 0x760032, v68
	v_and_b32_e32 v38, 0x750031, v69
	v_dual_mov_b32 v56, 0xff800000 :: v_dual_lshlrev_b32 v53, 3, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 4
	v_dual_mov_b32 v12, v24 :: v_dual_and_b32 v71, 0x7060302, v36
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s8, s8, 0x80000
	v_lshl_or_b32 v36, v37, 4, v37
	v_lshl_or_b32 v37, v38, 4, v38
	v_lshl_or_b32 v38, v39, 4, v39
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s7, s0, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s59, s0
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s8, s8
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s53, s53, 0xffff
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v53, 48, v53
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s8, 10
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v49, 6, v49
	s_mov_b32 s69, s53
	s_add_i32 s53, s0, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v55
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s8, s8, 0xfffff800
	s_mov_b32 s68, s52
	s_add_i32 s52, s8, s7
	v_lshl_or_b32 v44, v51, 6, v53
	v_and_or_b32 v61, v50, 60, v49
	v_xor_b32_e32 v49, 8, v60
	v_or_b32_e32 v70, s52, v48
	v_cndmask_b32_e64 v46, 0x1054, v46, s0
	v_xor_b32_e32 v65, v44, v65
	v_xor_b32_e32 v43, 0x90, v64
	v_xor_b32_e32 v44, 0x120, v64
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v67, 0, v49
	v_dual_mov_b32 v3, v24 :: v_dual_and_b32 v82, 0x7060302, v36
	v_dual_mov_b32 v5, v24 :: v_dual_and_b32 v84, 0x7050301, v38
	v_cndmask_b32_e64 v47, 0x3276, v47, s0
	v_lshl_or_b32 v38, v46, 8, v46
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v72, 0, v43
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v73, 0, v44
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[43:44], null, s57, 3, v[42:43]
	v_mov_b32_e32 v7, v24
	v_dual_mov_b32 v78, v24 :: v_dual_and_b32 v83, 0x7050301, v37
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s9, s58, 0x3fb8aa3b
	v_xor_b32_e32 v66, 8, v58
	v_xor_b32_e32 v50, 16, v60
	v_xor_b32_e32 v53, 24, v60
	v_xor_b32_e32 v51, 0x1b0, v64
	v_xor_b32_e32 v52, 16, v65
	v_xor_b32_e32 v76, 32, v65
	v_xor_b32_e32 v77, 48, v65
	v_xor_b32_e32 v79, 0x420, v65
	v_xor_b32_e32 v80, 0x430, v65
	v_xor_b32_e32 v81, 0x410, v65
	v_dual_mov_b32 v21, v24 :: v_dual_add_nc_u32 v66, 0, v66
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v68, 0, v50
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v69, 0, v53
	v_dual_mov_b32 v13, v24 :: v_dual_add_nc_u32 v74, 0, v51
	v_dual_mov_b32 v15, v24 :: v_dual_add_nc_u32 v76, 0, v76
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v75, 0, v52
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v80, 0, v80
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v77, 0, v77
	v_dual_mov_b32 v4, v24 :: v_dual_add_nc_u32 v79, 0, v79
	v_dual_mov_b32 v6, v24 :: v_dual_add_nc_u32 v81, 0, v81
	v_xor_b32_e32 v63, 64, v61
	s_mov_b32 s44, 0
	s_and_b32 s39, s39, 0xffff
	s_mov_b32 s72, 0x76543210
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	s_mov_b32 s73, s44
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s42, s62
	s_mov_b32 s43, s63
	s_mov_b32 s60, s38
	s_mov_b32 s61, s39
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v39, v59, v32
	ds_bpermute_b32 v32, v62, v32
	ds_bpermute_b32 v48, v59, v33
	ds_bpermute_b32 v33, v62, v33
	ds_bpermute_b32 v49, v59, v34
	ds_bpermute_b32 v34, v62, v34
	ds_bpermute_b32 v36, v59, v35
	ds_bpermute_b32 v35, v62, v35
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v44, v32, v39, s0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v45
	v_lshl_or_b32 v45, v47, 8, v47
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v46, v39, v32, s0
	v_and_b32_e32 v32, 0x540054, v38
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v47, v48, v33, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v50, v49, v34, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v51, v36, v35, s0
	v_lshl_or_b32 v32, v32, 4, v32
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v85, s9, v37
	v_and_b32_e32 v37, 0x760076, v45
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v45, v33, v48, s0
	v_cndmask_b32_e64 v48, v34, v49, s0
	v_cndmask_b32_e64 v49, v35, v36, s0
	v_and_b32_e32 v52, 0x5040504, v32
	v_lshl_or_b32 v33, v37, 4, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v53, 0x7060706, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s3, s73, s52
	v_or_b32_e32 v90, 2, v70
	v_mad_u64_u32 v[105:106], null, s3, s56, v[40:41]
	v_or_b32_e32 v91, 4, v70
	v_or_b32_e32 v92, 6, v70
	v_or_b32_e32 v93, 8, v70
	v_add_nc_u32_e32 v107, 8, v41
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v108, s57, v42
	v_lshl_add_u32 v109, s57, 1, v42
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s5, s53, s73
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s3, s3, s57
	v_or_b32_e32 v94, 10, v70
	v_or_b32_e32 v95, 12, v70
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v126, s73, v90, 1
	v_add_lshl_u32 v127, s73, v91, 1
	v_add_lshl_u32 v128, s73, v92, 1
	v_add_lshl_u32 v129, s73, v93, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v90, v107, s5, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v91, s3, v108, 1
	v_add_lshl_u32 v92, s3, v109, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v93, 0x80000000, v105, s29
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v130, s73, v94, 1
	v_add_lshl_u32 v131, s73, v95, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v144, 0x80000000, v90, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v94, 0x80000000, v91, s4
	v_cndmask_b32_e64 v95, 0x80000000, v92, s4
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[90:93], v93, s[60:63], 0 offen
	v_add_nc_u32_e32 v88, 0, v58
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v32, s44 :: v_dual_add_nc_u32 v87, 0, v60
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v110, s3, v42, 1
	v_add_lshl_u32 v111, s3, v43, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v33, s45
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v142, 0x80000000, v110, s4
	v_cndmask_b32_e64 v143, 0x80000000, v111, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s46 :: v_dual_mov_b32 v35, s47
	v_dual_mov_b32 v36, s48 :: v_dual_mov_b32 v37, s49
	v_dual_mov_b32 v38, s50 :: v_dual_mov_b32 v39, s51
	v_or_b32_e32 v96, 14, v70
	v_or_b32_e32 v97, 16, v70
	v_or_b32_e32 v98, 18, v70
	v_or_b32_e32 v99, 20, v70
	v_or_b32_e32 v100, 22, v70
	v_or_b32_e32 v101, 24, v70
	v_or_b32_e32 v102, 26, v70
	v_or_b32_e32 v103, 28, v70
	v_or_b32_e32 v104, 30, v70
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v106, s5, v41, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v132, s73, v96, 1
	v_add_lshl_u32 v133, s73, v97, 1
	v_add_lshl_u32 v134, s73, v98, 1
	v_add_lshl_u32 v135, s73, v99, 1
	v_add_lshl_u32 v136, s73, v100, 1
	v_add_lshl_u32 v137, s73, v101, 1
	v_add_lshl_u32 v138, s73, v102, 1
	v_add_lshl_u32 v139, s73, v103, 1
	v_add_lshl_u32 v140, s73, v104, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v141, 0x80000000, v106, vcc_lo
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v89, s73, v70, 1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v86
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v88, v[90:91]
	ds_store_b64 v66, v[92:93]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[110:113], v87 offset1:1
	ds_load_2addr_stride64_b64 v[114:117], v67 offset1:1
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[118:121], v95, s[40:43], 0 offen
	buffer_load_b128 v[106:109], v94, s[40:43], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[122:125], v68 offset1:1
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v57, v57, v57
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[110:111], v[44:45], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[112:113], v[44:45], v[32:39] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[110:113], v142, s[40:43], 0 offen
	buffer_load_b128 v[33:36], v143, s[40:43], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[114:115], v[48:49], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[116:117], v[48:49], v[98:105] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[114:117], v69 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[122:123], v[46:47], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[124:125], v[46:47], v[98:105] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[114:115], v[50:51], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[98:105], v[116:117], v[50:51], v[98:105] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v90
	v_cvt_f32_i32_e32 v87, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v88, v92
	v_cvt_f32_i32_e32 v114, v93
	v_cvt_f32_i32_e32 v115, v94
	v_cvt_f32_i32_e32 v116, v95
	v_cvt_f32_i32_e32 v117, v96
	v_cvt_f32_i32_e32 v122, v97
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v101, v101
	v_mul_f32_e32 v39, v85, v39
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v100, v100
	v_mul_f32_e32 v87, v85, v87
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v38.l, v118.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v37.h, v106.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v106.l, v110.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v38.h, v33.l
	v_mov_b16_e32 v33.l, v118.h
	v_mov_b16_e32 v37.l, v110.l
	v_mov_b32_e32 v32, v106
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[90:93], v141, s[68:71], 0 offen
	buffer_load_b128 v[94:97], v144, s[68:71], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v89, v89, s[64:67], 0 offen
	buffer_load_u16 v123, v126, s[64:67], 0 offen
	buffer_load_u16 v124, v127, s[64:67], 0 offen
	buffer_load_u16 v125, v128, s[64:67], 0 offen
	buffer_load_u16 v126, v129, s[64:67], 0 offen
	buffer_load_u16 v127, v130, s[64:67], 0 offen
	buffer_load_u16 v128, v131, s[64:67], 0 offen
	buffer_load_u16 v129, v132, s[64:67], 0 offen
	buffer_load_u16 v130, v133, s[64:67], 0 offen
	buffer_load_u16 v131, v134, s[64:67], 0 offen
	buffer_load_u16 v132, v135, s[64:67], 0 offen
	buffer_load_u16 v133, v136, s[64:67], 0 offen
	buffer_load_u16 v134, v137, s[64:67], 0 offen
	buffer_load_u16 v135, v138, s[64:67], 0 offen
	buffer_load_u16 v136, v139, s[64:67], 0 offen
	buffer_load_u16 v137, v140, s[64:67], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v106, 0, v64
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v88, v85, v88
	v_mul_f32_e32 v98, v85, v98
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v106, v[37:38], v[32:33] offset1:8
	v_mov_b16_e32 v37.h, v107.l
	v_mov_b16_e32 v107.l, v111.h
	v_mov_b16_e32 v38.l, v119.l
	v_mov_b16_e32 v38.h, v34.l
	v_mov_b16_e32 v34.l, v119.h
	v_mov_b16_e32 v37.l, v111.l
	v_mov_b32_e32 v33, v107
	v_mov_b16_e32 v32.h, v108.l
	v_mov_b16_e32 v108.l, v112.h
	v_mov_b16_e32 v32.l, v112.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v99, v85, v99
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v72, v[37:38], v[33:34] offset1:8
	v_mov_b16_e32 v33.l, v120.l
	v_mov_b16_e32 v33.h, v35.l
	v_mov_b16_e32 v35.l, v120.h
	v_dual_mov_b32 v34, v108 :: v_dual_mul_f32 v103, v85, v103
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v104, v85, v104
	v_mul_f32_e32 v101, v85, v101
	v_mul_f32_e32 v105, v85, v105
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v73, v[32:33], v[34:35] offset1:8
	v_mov_b16_e32 v35.h, v36.l
	v_mov_b16_e32 v36.l, v121.h
	v_mov_b16_e32 v32.l, 0
	v_mov_b16_e32 v35.l, v121.l
	v_mov_b16_e32 v34.l, v113.l
	v_mov_b16_e32 v34.h, v109.l
	v_mov_b32_e32 v110, v36
	v_mov_b16_e32 v109.l, v113.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v100, v85, v100
	v_mul_f32_e32 v102, v85, v102
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.h, v32.l
	v_mov_b16_e32 v37.h, v32.l
	v_mov_b16_e32 v119.h, v32.l
	v_mov_b16_e32 v106.h, v32.l
	v_mov_b16_e32 v38.h, v32.l
	v_mov_b16_e32 v111.h, v32.l
	v_mov_b16_e32 v112.h, v32.l
	v_mov_b16_e32 v113.h, v32.l
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(17)
	v_dual_cndmask_b32 v90, 0xff80ff80, v90 :: v_dual_add_nc_u32 v33, 0, v65
	v_dual_cndmask_b32 v91, 0xff80ff80, v91 :: v_dual_cndmask_b32 v92, 0xff80ff80, v92
	v_cndmask_b32_e32 v107, 0xff80ff80, v93, vcc_lo
	s_waitcnt vmcnt(16)
	v_cndmask_b32_e32 v93, 0xff80ff80, v94, vcc_lo
	v_mov_b16_e32 v32.h, v90.l
	v_cndmask_b32_e32 v108, 0xff80ff80, v96, vcc_lo
	v_cndmask_b32_e32 v118, 0xff80ff80, v97, vcc_lo
	v_dual_cndmask_b32 v94, 0xff80ff80, v95 :: v_dual_mul_f32 v97, v85, v116
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v95, v85, v114
	v_mul_f32_e32 v96, v85, v115
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v114, v85, v117 :: v_dual_lshlrev_b32 v121, 16, v126
	v_dual_mul_f32 v115, v85, v122 :: v_dual_lshlrev_b32 v116, 16, v123
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v89, 16, v89
	v_lshlrev_b32_e32 v117, 16, v124
	v_lshlrev_b32_e32 v120, 16, v125
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v123, 16, v128
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v124, 16, v129
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v128, 16, v133
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v129, 16, v134
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v133, 0xffff0000, v90
	v_and_b32_e32 v134, 0xffff0000, v91
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v122, 16, v127
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v74, v[34:35], v[109:110] offset1:8
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v34, 0xffff0000, v93
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v109, v91, v90, v71
	v_perm_b32 v90, v91, v90, v82
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v32
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v32.h, v91.l
	v_and_b32_e32 v91, 0xffff0000, v92
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v133
	v_cmp_neq_f32_e64 s5, 0xff800000, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v126, 16, v131
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v35, 0xffff0000, v94
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v34, 0xffff0000, v107
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v91
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v91, 0xffff0000, v118
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, vcc_lo, s3
	s_and_b32 s9, vcc_lo, s5
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v125, 16, v130
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v35
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v35, 0xffff0000, v108
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v34
	v_cmp_neq_f32_e64 s16, 0xff800000, v91
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v34, 0, 1, s7
	v_cndmask_b32_e64 v91, 0, 1, s9
	s_and_b32 s8, vcc_lo, s6
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v32
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v32.h, v93.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v109, v59, v109
	ds_bpermute_b32 v90, v62, v90
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v35
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v35, 0, 1, s8
	v_mov_b16_e32 v36.l, v91.l
	v_lshlrev_b16 v34.l, 8, v34.l
	s_and_b32 s5, vcc_lo, s10
	s_and_b32 s6, vcc_lo, s11
	s_and_b32 s11, vcc_lo, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v32
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v127, 16, v132
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v131, 16, v136
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v132, 16, v137
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v136, v94, v93, v71
	v_perm_b32 v137, v94, v93, v82
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v93, 0, 1, s5
	v_or_b16 v138.l, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, s11
	v_lshlrev_b16 v34.l, 8, v36.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v32.h, v94.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s10, vcc_lo, s3
	s_and_b32 s13, vcc_lo, s12
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v130, 16, v135
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v138.h, v35.l, v34.l
	v_cndmask_b32_e64 v35, 0, 1, s6
	v_mov_b16_e32 v34.l, v93.l
	v_cndmask_b32_e64 v93, 0, 1, s10
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v32
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_perm_b32 v110, v107, v92, v71
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v32.h, 8, v35.l
	v_lshlrev_b16 v34.l, 8, v34.l
	v_mov_b16_e32 v35.l, v93.l
	s_and_b32 s12, vcc_lo, s3
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v135, v107, v92, v82
	ds_bpermute_b32 v136, v59, v136
	ds_bpermute_b32 v137, v62, v137
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v139.l, v35.l, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s12
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v93, v90, v109, s0
	ds_bpermute_b32 v110, v59, v110
	ds_bpermute_b32 v135, v62, v135
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, vcc_lo, s15
	v_or_b16 v139.h, v34.l, v32.h
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v34, 16, v93
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v91, 0, 1, s13
	s_and_b32 s16, vcc_lo, s16
	.loc	1 880 35                        ; attention.py:880:35
	v_perm_b32 v133, v118, v108, v71
	v_perm_b32 v134, v118, v108, v82
	v_mul_f32_e32 v140, 0x3fb8aa3b, v34
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v34.l, v91.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v91, 0xffff0000, v93
	.loc	1 880 35                        ; attention.py:880:35
	ds_bpermute_b32 v133, v59, v133
	ds_bpermute_b32 v134, v62, v134
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v140, v39, v89
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v39, 0, 1, s15
	v_cndmask_b32_e64 v89, 0, 1, s16
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v32.h, v92.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, vcc_lo, s14
	v_lshlrev_b16 v34.l, 8, v34.l
	v_mov_b16_e32 v36.l, v39.l
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v39, v109, v90, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v90, v137, v136, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v37.l, v89.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v89, v135, v110, s0
	v_cndmask_b32_e64 v109, v110, v135, s0
	v_mul_f32_e32 v135, 0x3fb8aa3b, v91
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v91, 16, v90
	v_and_b32_e32 v90, 0xffff0000, v90
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v110, v136, v137, s0
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v32
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v135, v87, v116
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v142, 0x3fb8aa3b, v91 :: v_dual_lshlrev_b32 v87, 16, v89
	v_mul_f32_e32 v143, 0x3fb8aa3b, v90
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v32.h, v107.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v116, 0x3fb8aa3b, v87 :: v_dual_lshlrev_b32 v107, 16, v110
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v142, v96, v121 :: v_dual_fmac_f32 v143, v97, v122
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v97, 16, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v32
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v116, v88, v117
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v32.h, v108.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, vcc_lo, s3
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v121, 0x3fb8aa3b, v97
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, vcc_lo, s17
	v_cndmask_b32_e64 v35, 0, 1, s14
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v32
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e32 v32.h, v118.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v121, v100, v127 :: v_dual_and_b32 v100, 0xffff0000, v109
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v109, 0xffff0000, v110
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s17, vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v32
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v34.h, 8, v35.l
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_mul_f32_e32 v100, 0x3fb8aa3b, v100
	v_mul_f32_e32 v122, 0x3fb8aa3b, v109
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v89, 0xffff0000, v89
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s18, vcc_lo, s18
	v_lshlrev_b16 v35.l, 8, v36.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v100, v101, v128
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v122, v103, v130 :: v_dual_mul_f32 v141, 0x3fb8aa3b, v89
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v101, 0, 1, s19
	v_lshlrev_b16 v35.h, 8, v37.l
	v_cndmask_b32_e64 v103, 0, 1, s18
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v141, v95, v120
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_cndmask_b32_e64 v95, v134, v133, s0
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_mov_b16_e32 v36.l, v101.l
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	ds_load_b128 v[87:90], v33
	ds_load_b128 v[91:94], v75
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v96, 16, v95
	v_and_b32_e32 v95, 0xffff0000, v95
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v101.l, v36.l, v34.l
	v_mov_b16_e32 v36.l, v103.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v117, 0x3fb8aa3b, v96 :: v_dual_lshlrev_b32 v96, 16, v39
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v39, 0xffff0000, v39
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v117, v114, v123
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v114, 0x3fb8aa3b, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v39, 0x3fb8aa3b, v39 :: v_dual_fmac_f32 v114, v115, v124
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v39, v99, v126
	.loc	1 880 35                        ; attention.py:880:35
	v_cndmask_b32_e64 v99, v133, v134, s0
	v_mul_f32_e32 v115, 0x3fb8aa3b, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v115, v102, v129 :: v_dual_lshlrev_b32 v108, 16, v99
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v102, 0, 1, s20
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v123, 0x3fb8aa3b, v108
	v_mul_f32_e32 v120, 0x3fb8aa3b, v96
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e32 v37.l, v102.l
	v_cndmask_b32_e64 v102, 0, 1, s17
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[107:110], v75 offset:2048
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v123, v104, v131 :: v_dual_fmac_f32 v120, v98, v125
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v101.h, v37.l, v34.h
	v_mov_b16_e32 v34.l, v102.l
	v_or_b16 v34.h, v36.l, v35.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[95:98], v79
	.loc	1 881 25                        ; attention.py:881:25
	v_perm_b32 v102, v101, v138, v83
	v_perm_b32 v101, v101, v138, v84
	v_or_b16 v34.l, v34.l, v35.l
	ds_bpermute_b32 v35, v59, v102
	ds_bpermute_b32 v101, v62, v101
	v_perm_b32 v102, v34, v139, v83
	v_perm_b32 v34, v34, v139, v84
	ds_bpermute_b32 v102, v59, v102
	ds_bpermute_b32 v34, v62, v34
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v103, v101, v35, s0
	v_cndmask_b32_e64 v35, v35, v101, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v101, 1, v103
	v_and_b32_e32 v104, 0x100, v103
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v124, v34, v102, s0
	v_cndmask_b32_e64 v34, v102, v34, s0
	v_and_b32_e32 v118, 0x100, v35
	v_cmp_eq_u32_e64 s3, 1, v101
	v_cmp_eq_u32_e64 s30, 0, v104
	v_and_b32_e32 v101, 0x100, v124
	v_and_b32_e32 v104, 0x1000000, v34
	v_cmp_eq_u32_e64 s27, 0, v118
	v_and_b32_e32 v118, 0x1000000, v103
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v127, v135, 0xff800000, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s35, 0, v101
	v_and_b32_e32 v102, 0x1000000, v35
	v_and_b32_e32 v103, 0x10000, v103
	v_cmp_eq_u32_e64 s33, 0, v118
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, v39, 0xff800000, s27
	v_cndmask_b32_e64 v133, v143, 0xff800000, s35
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v99, 0xffff0000, v99
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s24, 0, v102
	v_and_b32_e32 v102, 1, v34
	v_cmp_eq_u32_e64 s31, 0, v103
	v_and_b32_e32 v103, 0x100, v34
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v99, 0x3fb8aa3b, v99
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v125, v100, 0xff800000, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v100, 1, v124
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v128, v116, 0xff800000, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v116, 0x10000, v124
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v99, v105, v132 :: v_dual_and_b32 v34, 0x10000, v34
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s23, 1, v102
	v_cmp_eq_u32_e64 s26, 0, v103
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s36, 0, v116
	v_cmp_eq_u32_e64 s34, 1, v100
	v_cmp_eq_u32_e64 s21, 0, v34
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, 0xff800000, v140, s3
	v_cndmask_b32_e64 v129, v141, 0xff800000, s33
	v_cndmask_b32_e64 v135, v117, 0xff800000, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v105, 1, v35
	v_and_b32_e32 v35, 0x10000, v35
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, v122, 0xff800000, s26
	v_cndmask_b32_e64 v123, v123, 0xff800000, s21
	v_cndmask_b32_e64 v132, 0xff800000, v142, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s28, 1, v105
	v_cmp_eq_u32_e64 s22, 0, v35
	v_and_b32_e32 v105, 0x1000000, v124
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, 0xff800000, v115, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s25, 0, v104
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v120, s28
	v_cndmask_b32_e64 v35, v121, 0xff800000, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s37, 0, v105
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v102, v126, v127
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, v99, 0xff800000, s25
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v124, v131, v123
	v_max3_f32 v118, v39, v35, v125
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, v114, 0xff800000, s37
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v99, v129, v132, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v34, v118, v34, v134
	v_max3_f32 v100, v135, v136, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v99, v102, v128, v99
	v_max3_f32 v34, v99, v100, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v99, v34, s72, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v34, v86, v34, v99
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v99, v127, v34
	v_sub_f32_e32 v100, v126, v34
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v102, v86, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v86, v135, v34
	v_sub_f32_e32 v103, v128, v34
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v99, v99
	v_exp_f32_e32 v100, v100
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v137, v102
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v102, v103
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v101, v129, v34
	v_sub_f32_e32 v104, v133, v34
	v_sub_f32_e32 v114, v136, v34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v99, v99, 0, s30
	v_cndmask_b32_e64 v100, 0, v100, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v103, v104
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v86, v86, 0, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v36.l, v99.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v105, v132, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.l, v100.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v102, v102, 0, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v119.l, v86.h
	v_and_b32_e32 v36, 1, v36
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v104, v105
	v_exp_f32_e32 v105, v114
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v37, 1, v37
	v_mov_b16_e32 v106.l, v102.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v101, v101, 0, s33
	v_cndmask_b32_e64 v103, v103, 0, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v99, v99
	v_cmp_o_f32_e64 s30, v100, v100
	v_and_b32_e32 v114, 1, v119
	v_add3_u32 v36, v99, v36, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v104, 0, v104, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v37, v100, v37, 0x7fff
	v_and_b32_e32 v106, 1, v106
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v105, v105, 0, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v38.l, v101.h
	v_mov_b16_e32 v111.l, v103.h
	v_mov_b16_e32 v112.l, v104.h
	v_cmp_o_f32_e64 s37, v86, v86
	v_add3_u32 v86, v86, v114, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_cndmask_b16 v36.l, 0x7fff, v37.h, s30
	v_add3_u32 v99, v102, v106, 0x7fff
	v_mov_b16_e32 v113.l, v105.h
	v_and_b32_e32 v38, 1, v38
	v_and_b32_e32 v111, 1, v111
	v_and_b32_e32 v112, 1, v112
	v_cndmask_b16 v99.l, 0x7fff, v86.h, s37
	v_permlanex16_b32 v86, v36, s72, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s31, v101, v101
	v_add3_u32 v38, v101, v38, 0x7fff
	v_add3_u32 v100, v103, v111, 0x7fff
	v_add3_u32 v101, v104, v112, 0x7fff
	v_perm_b32 v111, v86, v36, v52
	v_perm_b32 v112, v86, v36, v53
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v36, 0, v137, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v113, 1, v113
	v_cmp_o_f32_e64 s33, v102, v102
	v_cmp_o_f32_e64 s34, v103, v103
	v_cmp_o_f32_e64 s35, v104, v104
	v_cmp_o_f32_e64 s36, v105, v105
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v102, v105, v113, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v38.h, s31
	v_cndmask_b16 v37.l, 0x7fff, v99.h, s33
	v_cndmask_b16 v38.h, 0x7fff, v100.h, s34
	v_cndmask_b16 v38.l, 0x7fff, v101.h, s35
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s36
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v100, v37, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v101, v38, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v102, v99, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v113, v100, v37, v52
	v_perm_b32 v114, v100, v37, v53
	v_perm_b32 v115, v101, v38, v52
	v_perm_b32 v116, v101, v38, v53
	v_perm_b32 v117, v102, v99, v52
	v_perm_b32 v118, v102, v99, v53
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[119:122], v33 offset:1024
	ds_load_b128 v[99:102], v80
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v36
	v_mul_f32_e32 v28, v28, v36
	v_mul_f32_e32 v29, v29, v36
	v_mul_f32_e32 v30, v30, v36
	v_mul_f32_e32 v31, v31, v36
	v_mul_f32_e32 v16, v16, v36
	v_mul_f32_e32 v17, v17, v36
	v_mul_f32_e32 v19, v19, v36
	v_mul_f32_e32 v20, v20, v36
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[87:94], v[111:118], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[87:90], v79 offset:2048
	ds_load_b128 v[91:94], v80 offset:2048
	ds_load_b128 v[103:106], v33 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v36
	v_mul_f32_e32 v22, v22, v36
	v_mul_f32_e32 v23, v23, v36
	v_mul_f32_e32 v8, v8, v36
	v_mul_f32_e32 v9, v9, v36
	v_mul_f32_e32 v10, v10, v36
	v_mul_f32_e32 v11, v11, v36
	v_mul_f32_e32 v12, v12, v36
	v_mul_f32_e32 v13, v13, v36
	v_mul_f32_e32 v14, v14, v36
	v_mul_f32_e32 v15, v15, v36
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, v39, v127, s0
	v_cndmask_b32_e64 v38, v127, v39, s0
	v_cndmask_b32_e64 v86, v35, v128, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v34
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[95:102], v[111:118], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[95:98], v33 offset:3072
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, v130, v126, s0
	v_cndmask_b32_e64 v99, v128, v35, s0
	v_cndmask_b32_e64 v100, v126, v130, s0
	ds_bpermute_b32 v37, v61, v37
	ds_bpermute_b32 v38, v63, v38
	ds_bpermute_b32 v86, v61, v86
	ds_bpermute_b32 v99, v63, v99
	ds_bpermute_b32 v100, v63, v100
	ds_bpermute_b32 v33, v61, v33
	v_cndmask_b32_e64 v101, v124, v132, s0
	v_cndmask_b32_e64 v102, v132, v124, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v34
	v_sub_f32_e32 v124, v124, v34
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[103:110], v[111:118], v[8:15]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v103, v131, v133, s0
	v_cndmask_b32_e64 v104, v133, v131, s0
	v_cndmask_b32_e64 v107, v134, v136, s0
	v_cndmask_b32_e64 v108, v136, v134, s0
	v_cndmask_b32_e64 v105, v123, v135, s0
	v_cndmask_b32_e64 v106, v135, v123, s0
	ds_bpermute_b32 v101, v61, v101
	ds_bpermute_b32 v102, v63, v102
	ds_bpermute_b32 v103, v61, v103
	ds_bpermute_b32 v104, v63, v104
	ds_bpermute_b32 v107, v61, v107
	ds_bpermute_b32 v108, v63, v108
	ds_bpermute_b32 v105, v61, v105
	ds_bpermute_b32 v106, v63, v106
	s_waitcnt lgkmcnt(10)
	v_cndmask_b32_e64 v109, v99, v86, s1
	v_cndmask_b32_e64 v86, v86, v99, s1
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(9)
	v_max_f32_e32 v99, v100, v100
.Ltmp9:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v110, v37, v38, s1
	v_cndmask_b32_e64 v37, v38, v37, s1
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(8)
	v_max_f32_e32 v38, v33, v33
.Ltmp11:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v0, v0, v36
	v_mul_f32_e32 v2, v2, v36
	v_mul_f32_e32 v4, v4, v36
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v38, v38, v99
.Ltmp13:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v6, v6, v36 :: v_dual_sub_f32 v123, v123, v34
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v99, v102, v101, s1
	v_cndmask_b32_e64 v101, v101, v102, s1
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v102, v104, v103, s1
	v_cndmask_b32_e64 v126, v103, v104, s1
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v127, v108, v107, s1
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v103, v110, v109, v86
.Ltmp15:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v107, v107, v108, s1
	v_cndmask_b32_e64 v108, v129, v125, s0
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, v39, 0, s27
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v104, v105, v106, v127
	v_max3_f32 v38, v38, v37, v103
	v_max3_f32 v103, v101, v102, v126
.Ltmp17:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v108, v63, v108
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v39, v39
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v103, v103, v104, v107
.Ltmp19:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, v125, v129, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v124, v124
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v129, v134, v34
	v_mov_b32_e32 v136, v78
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v123, v123
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	ds_bpermute_b32 v104, v61, v104
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v129, v129
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, v35, 0, s22
	v_cndmask_b32_e64 v124, 0, v124, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v123, v123, 0, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v124, v124
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, v129, 0, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v123, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e64 s25, v129, v129
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v128, v104, v108, v99
	v_max3_f32 v38, v38, v128, v103
.Ltmp21:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v103, v100, v33, s1
	v_cndmask_b32_e64 v33, v33, v100, s1
	v_cndmask_b32_e64 v100, v108, v104, s1
	v_cndmask_b32_e64 v104, v104, v108, s1
	v_cndmask_b32_e64 v108, v106, v105, s1
	v_cndmask_b32_e64 v128, v105, v106, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v105, v130, v34
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v36
	v_mul_f32_e32 v3, v3, v36
	v_mul_f32_e32 v7, v7, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.h, v32.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v105, v105
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v36.l, v39.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v106, v125, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_sub_f32 v125, v131, v34 :: v_dual_and_b32 v36, 1, v36
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v106, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v125, v125
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v105, 0, v105, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v36, v39, v36, 0x7fff
	v_mov_b16_e32 v39.h, v32.l
	v_mov_b16_e32 v39.l, v105.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cmp_o_f32_e64 s27, v105, v105
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v106, v106, 0, s24
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v125, v125, 0, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s3
	v_and_b32_e32 v39, 1, v39
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v56
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v106, v106
	v_cmp_o_f32_e64 s26, v125, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v39, v105, v39, 0x7fff
	v_mov_b16_e32 v105.h, v32.l
	v_mov_b16_e32 v105.l, v106.h
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s27
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v39, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v105, 1, v105
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v39, v39 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v105, v106, v105, 0x7fff
	v_mov_b16_e32 v106.h, v32.l
	v_mov_b16_e32 v106.l, v35.h
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v39, v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v78.h, 0x7fff, v105.h, s24
	v_and_b32_e32 v106, 1, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v35, v35, v106, 0x7fff
	v_mov_b16_e32 v106.h, v32.l
	v_mov_b16_e32 v106.l, v125.h
	v_cndmask_b16 v78.l, 0x7fff, v35.h, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v35, v38, v39 :: v_dual_and_b32 v106, 1, v106
.Ltmp29:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v57, v57, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v106, v125, v106, 0x7fff
	v_mov_b16_e32 v125.h, v32.l
	v_mov_b16_e32 v125.l, v124.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v103, v103, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v38.h, 0x7fff, v106.h, s26
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v33, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v125, 1, v125
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v37, v57
	v_sub_f32_e32 v105, v110, v57
	v_sub_f32_e32 v106, v109, v57
	v_sub_f32_e32 v86, v86, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v124, v124, v125, 0x7fff
	v_mov_b16_e32 v125.h, v32.l
	v_mov_b16_e64 v125.l, v129.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v100, v100, v57
	v_sub_f32_e32 v104, v104, v57
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v103, v103
	v_exp_f32_e32 v33, v33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v125, 1, v125
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v105, v105
	v_exp_f32_e32 v106, v106
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v104, v104
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v125, v129, v125, 0x7fff
	v_mov_b16_e64 v129.h, v32.l
	v_mov_b16_e64 v129.l, v123.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v103, s8
	v_cndmask_b32_e64 v33, 0, v33, s7
	v_cndmask_b32_e64 v37, 0, v37, s11
	v_cndmask_b32_e64 v105, 0, v105, s9
	v_cndmask_b32_e64 v106, 0, v106, s19
	v_cndmask_b32_e64 v86, 0, v86, s13
	v_cndmask_b32_e64 v100, 0, v100, s20
	v_cndmask_b32_e64 v104, 0, v104, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v129, 1, v129
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v103, v33
	v_dual_add_f32 v37, v37, v105 :: v_dual_add_f32 v86, v106, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v100, v100, v104
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v123, v123, v129, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v124.h, s23
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v37
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v39.h, 0x7fff, v125.h, s25
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v86, v100
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v39.l, 0x7fff, v123.h, s21
	v_dual_mov_b32 v86, v34 :: v_dual_sub_f32 v99, v99, v57
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v101, v101, v57
	v_sub_f32_e32 v102, v102, v57
	v_sub_f32_e32 v109, v126, v57
	v_sub_f32_e32 v108, v108, v57
	v_sub_f32_e32 v110, v128, v57
	v_sub_f32_e32 v123, v127, v57
	v_sub_f32_e32 v107, v107, v57
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v99, v99
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v109, v109
	v_exp_f32_e32 v108, v108
	v_exp_f32_e32 v110, v110
	v_exp_f32_e32 v123, v123
	v_exp_f32_e32 v107, v107
.Ltmp36:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v37
.Ltmp37:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[103:106], v76
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v99, 0, v99, s10
	v_cndmask_b32_e64 v101, 0, v101, s5
	v_cndmask_b32_e64 v102, 0, v102, s12
	v_cndmask_b32_e64 v109, 0, v109, s6
	v_cndmask_b32_e64 v108, 0, v108, s17
	v_cndmask_b32_e64 v110, 0, v110, s15
	v_cndmask_b32_e64 v123, 0, v123, s18
	v_cndmask_b32_e64 v107, 0, v107, s16
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v99, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_add_f32 v101, v102, v109 :: v_dual_add_f32 v102, v108, v110
.Ltmp39:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[0:7], v[87:94], v[111:118], v[0:7]
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v123, v107
.Ltmp41:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v135, v56, v56
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v137, v99, v101
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v37, v78, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v94, v39, s72, 0xfedcba98 op_sel:[1,0]
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v138, v102, v107
.Ltmp45:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v135, v35
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[127:130], v76 offset:2048
	ds_load_b128 v[107:110], v77
	ds_load_b128 v[131:134], v77 offset:2048
	ds_load_b128 v[123:126], v81
	ds_load_b128 v[99:102], v81 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v35, v36, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v89, v37, v78, v52
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v135, v137, v138
.Ltmp47:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v90, v56, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v137, v38, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v87, v35, v36, v52
	v_perm_b32 v88, v35, v36, v53
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v33, v33, v135
.Ltmp49:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v35, v90
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v90, v37, v78, v53
	v_perm_b32 v91, v137, v38, v52
	v_perm_b32 v92, v137, v38, v53
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v36, v33
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v93, v94, v39, v52
	v_perm_b32 v94, v94, v39, v53
	v_mov_b32_e32 v56, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v34, 0, v35, s3
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[103:110], v[87:94], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[119:126], v[87:94], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[127:134], v[87:94], v[8:15]
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v33, v36
.Ltmp55:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[95:102], v[87:94], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s73, 32
	s_cmpk_lt_u32 s73, 0x7e0
	s_mov_b32 s73, s3
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v78, v136, v34
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	ds_bpermute_b32 v38, v59, v78
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v34, 1, v55
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.h, v32.l
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v33, s57, v54
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v32.l
	v_mov_b16_e32 v40.h, v32.l
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 48, v34
	v_or_b32_e32 v36, 16, v34
	v_or_b32_e32 v35, 32, v34
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s57, v34
	s_mov_b32 s11, 0x31027000
	v_cmp_gt_i32_e64 s4, s57, v37
	v_cmp_gt_i32_e64 s3, s57, v36
	v_cmp_gt_i32_e64 s1, s57, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v42, null, v38, v38, v25
	v_div_scale_f32 v43, null, v38, v38, v24
	v_div_scale_f32 v44, null, v38, v38, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v42
	v_rcp_f32_e32 v47, v43
	v_div_scale_f32 v45, null, v38, v38, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v44
	v_div_scale_f32 v50, vcc_lo, v25, v38, v25
	v_rcp_f32_e32 v49, v45
	v_div_scale_f32 v51, s6, v24, v38, v24
	v_fma_f32 v55, -v42, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v56, -v43, v47, 1.0
	v_div_scale_f32 v54, s7, v27, v38, v27
	v_fma_f32 v57, -v44, v48, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v46, v55, v46 :: v_dual_fmac_f32 v47, v56, v47
	v_fma_f32 v58, -v45, v49, 1.0
	v_div_scale_f32 v66, null, v38, v38, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v56, v50, v46
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_fmac_f32 v49, v58, v49
	v_mul_f32_e32 v57, v51, v47
	v_div_scale_f32 v55, null, v38, v38, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v42, v56, v50
	v_div_scale_f32 v59, s8, v26, v38, v26
	v_fma_f32 v63, -v43, v57, v51
	v_mul_f32_e32 v58, v54, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v62, v46
	v_rcp_f32_e32 v61, v55
	v_fmac_f32_e32 v57, v63, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v44, v58, v54
	v_fma_f32 v42, -v42, v56, v50
	v_rcp_f32_e32 v50, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v43, v57, v51
	v_div_fmas_f32 v42, v42, v46, v56
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v43, v43, v47, v57
	v_fma_f32 v62, -v55, v61, 1.0
	v_div_fixup_f32 v25, v42, v38, v25
	v_fmac_f32_e32 v58, v64, v48
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v24, v43, v38, v24
	v_fma_f32 v43, -v66, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v61, v62, v61
	v_fma_f32 v44, -v44, v58, v54
	v_div_scale_f32 v46, s9, v29, v38, v29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v60, v59, v49
	v_fmac_f32_e32 v50, v43, v50
	v_div_fmas_f32 v42, v44, v48, v58
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v48.h, v32.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v65, -v45, v60, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v60, v65, v49
	v_fma_f32 v45, -v45, v60, v59
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v44, v45, v49, v60
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v45, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v24, v42, v38, v27
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v27, 1, v39
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v44, v38, v26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v45.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v39, 0, v24, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v25, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v46, v61
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v24, 1, v40
	v_mov_b16_e32 v25.l, v39.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v40, s7, v28, v38, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.l, v26.h
	v_add3_u32 v27, v45, v24, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	v_mov_b16_e32 v25.h, v32.l
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_and_b32_e32 v41, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v55, v42, v46
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v39, v39
	v_and_b32_e32 v25, 1, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v43, v40, v50
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v27.h, vcc_lo
	v_add3_u32 v27, v26, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v44, v61
	v_div_scale_f32 v44, null, v38, v38, v31
	v_fma_f32 v41, -v66, v43, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v39, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v55, v42, v46
	v_rcp_f32_e32 v39, v44
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v43, v41, v50
	v_div_scale_f32 v41, null, v38, v38, v30
	v_div_fmas_f32 v42, v45, v61, v42
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v66, v43, v40
	v_rcp_f32_e32 v46, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v29, v42, v38, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v50, v43
	v_fma_f32 v43, -v44, v39, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v28, v40, v38, v28
	v_fma_f32 v26, -v41, v46, 1.0
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v40, s7, v31, v38, v31
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v27.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v26, v46
	v_div_scale_f32 v26, s8, v30, v38, v30
	v_mul_f32_e32 v27, v40, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v48.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v43.h, v32.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v44, v27, v40
	v_mul_f32_e32 v42, v26, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v43.l, v28.h
	v_cmp_o_f32_e64 s9, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v41, v42, v26
	v_div_scale_f32 v45, null, v38, v38, v17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v43
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v44, v27, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v42, v47, v46 :: v_dual_and_b32 v47, 1, v48
	v_div_scale_f32 v44, null, v38, v38, v16
	v_div_fmas_f32 v27, v40, v39, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v41, v42, v26
	v_rcp_f32_e32 v41, v45
	v_rcp_f32_e32 v39, v44
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v27, v27, v38, v31
	v_div_fmas_f32 v26, v26, v46, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v40, v29, v47, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_add3_u32 v43, v28, v43, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v29, v26, v38, v30
	v_fma_f32 v31, -v45, v41, 1.0
	v_div_scale_f32 v30, s7, v17, v38, v17
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v40.h, vcc_lo
	v_mov_b16_e32 v40.l, v27.h
	v_mov_b16_e32 v40.h, v32.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v31, v41
	v_fma_f32 v31, -v44, v39, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v46.h, v32.l
	v_and_b32_e32 v28, 1, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v42, v30, v41 :: v_dual_fmac_f32 v39, v31, v39
	v_div_scale_f32 v31, s8, v16, v38, v16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v46.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v47, -v45, v42, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v27, v28, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v48, v31, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s10, v27, v27
	v_and_b32_e32 v40, 1, v46
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v47, v41
	v_div_scale_f32 v47, null, v38, v38, v19
	v_fma_f32 v46, -v44, v48, v31
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v27, -v45, v42, v30
	v_rcp_f32_e32 v30, v47
	v_div_scale_f32 v45, null, v38, v38, v18
	v_fmac_f32_e32 v48, v46, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v41, v27, v41, v42
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v42, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v44, v48, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v40, v29, v40, 0x7fff
	v_cmp_o_f32_e64 s7, v29, v29
	v_cndmask_b16 v26.l, 0x7fff, v43.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v41, v38, v17
	v_div_fmas_f32 v31, v31, v39, v48
	v_fma_f32 v39, -v47, v30, 1.0
	v_div_scale_f32 v28, vcc_lo, v19, v38, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v16, v31, v38, v16
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v30, v39, v30
	v_fma_f32 v31, -v45, v42, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v44.h, v32.l
	v_mov_b16_e32 v44.l, v17.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v16, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_mul_f32_e32 v16, v28, v30
	v_fmac_f32_e32 v42, v31, v42
	v_div_scale_f32 v31, s8, v18, v38, v18
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v40.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v47, v16, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v43, v31, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v32.l
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v16, v41, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v45, v43, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v47, v16, v28
	v_fmac_f32_e32 v43, v41, v42
	v_div_scale_f32 v41, null, v38, v38, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v16, v28, v30, v16
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v28, -v45, v43, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v30, v41
	v_div_scale_f32 v31, null, v38, v38, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v29, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v28, v42, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_mov_b16_e32 v42.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v28, v38, v18
	v_fma_f32 v28, -v41, v30, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v28, v30
	v_div_scale_f32 v28, s7, v21, v38, v21
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v40, 1, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v42.l, v18.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v43, v28, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v40, v17, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v16, v38, v19
	v_rcp_f32_e32 v19, v31
	v_fma_f32 v44, -v41, v43, v28
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.h, v32.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v44, v30
	v_div_scale_f32 v44, null, v38, v38, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v29, -v31, v19, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v17.h
	v_cndmask_b16 v16.l, 0x7fff, v39.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v41, v43, v28
	v_rcp_f32_e32 v41, v44
	v_fmac_f32_e32 v19, v29, v19
	v_div_scale_f32 v29, s8, v20, v38, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v17, v17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v29, v19
	v_div_fmas_f32 v28, v28, v30, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v17, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v18, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v31, v40, v29
	v_div_fixup_f32 v21, v28, v38, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v45, v19
	v_div_scale_f32 v45, null, v38, v38, v22
	v_fma_f32 v17, -v31, v40, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v30, v45
	v_fma_f32 v29, -v44, v41, 1.0
	v_div_fmas_f32 v19, v17, v19, v40
	v_div_scale_f32 v28, vcc_lo, v23, v38, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v29, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v39.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v19, v38, v20
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v29, -v45, v30, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v21, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v21, v28, v41
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v40.h, v32.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v30, v29, v30
	v_div_scale_f32 v29, s7, v22, v38, v22
	v_fma_f32 v31, -v44, v21, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v39, v29, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v21, v31, v41 :: v_dual_and_b32 v40, 1, v40
	v_fma_f32 v31, -v45, v39, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v44, v21, v28
	v_fmac_f32_e32 v39, v31, v30
	v_div_scale_f32 v31, null, v38, v38, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v28, v41, v21
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v28, -v45, v39, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v29, v31
	v_div_scale_f32 v41, null, v38, v38, v8
	v_div_fmas_f32 v28, v28, v30, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v30, v41
	v_div_fixup_f32 v22, v28, v38, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v28, -v31, v29, 1.0
	v_dual_fmac_f32 v29, v28, v29 :: v_dual_and_b32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v42, v18, v42, 0x7fff
	v_mov_b16_e32 v18.l, v20.h
	v_mov_b16_e32 v18.h, v32.l
	v_cndmask_b16 v17.l, 0x7fff, v42.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v18, 1, v18
	v_add3_u32 v18, v20, v18, 0x7fff
	v_add3_u32 v20, v19, v40, 0x7fff
	v_mov_b16_e32 v40.h, v32.l
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v21, v38, v23
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v22, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v22, s7, v9, v38, v9
	v_fma_f32 v23, -v41, v30, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v22, v29
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v30, v23, v30
	v_div_scale_f32 v23, s8, v8, v38, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v31, v28, v22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v19.h
	v_cmp_o_f32_e64 s7, v19, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v23, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v20.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v39, v29
	v_div_scale_f32 v39, null, v38, v38, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v41, v42, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v40, 1, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v31, v28, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v31, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v20.h, v32.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v43, v30
	v_div_scale_f32 v43, null, v38, v38, v10
	v_div_fmas_f32 v22, v22, v29, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v19, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v23, -v41, v42, v23
	v_rcp_f32_e32 v29, v43
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v39, v31, 1.0
	v_div_fixup_f32 v9, v22, v38, v9
	v_div_fmas_f32 v22, v23, v30, v42
	v_div_scale_f32 v23, vcc_lo, v11, v38, v11
	v_fmac_f32_e32 v31, v40, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v22, v38, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v43, v29, 1.0
	v_div_scale_f32 v22, s8, v10, v38, v10
	v_mul_f32_e32 v19, v23, v31
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v30.l, v9.h
	v_mov_b16_e32 v30.h, v32.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v39, v19, v23
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v22, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v21, v21
	v_mov_b16_e32 v42.h, v32.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v19, v40, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v8.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v43, v41, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v39, v19, v23
	v_div_scale_f32 v39, null, v38, v38, v13
	v_fmac_f32_e32 v41, v40, v29
	v_div_scale_f32 v40, null, v38, v38, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v19, v23, v31, v19
	v_rcp_f32_e32 v23, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v22, -v43, v41, v22
	v_rcp_f32_e32 v31, v40
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v11, v19, v38, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v8, v8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v22, v22, v29, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b16_e32 v41.h, v32.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v10, v22, v38, v10
	v_fma_f32 v19, -v40, v31, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v22.h, v32.l
	v_mov_b16_e32 v41.l, v11.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v31, v19, v31
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v20, v21, v20, 0x7fff
	v_and_b32_e32 v21, 1, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v22.l, v10.h
	v_cndmask_b16 v28.l, 0x7fff, v20.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v21, v9, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v39, v23, 1.0
	v_div_scale_f32 v19, s7, v12, v38, v12
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v30, 1, v42
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v20, v23
	v_div_scale_f32 v20, vcc_lo, v13, v38, v13
	v_mul_f32_e32 v29, v19, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v8, v30, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v8, v20, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v40, v29, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v22, 1, v22
	v_cndmask_b16 v21.l, 0x7fff, v9.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v39, v8, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v42, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v10, v22, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v8, v30, v23
	v_div_scale_f32 v30, null, v38, v38, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v19, -v40, v29, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v11, v9, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v39, v8, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v8, v20, v23, v8
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v20, v30
	v_div_fmas_f32 v19, v19, v31, v29
	v_div_scale_f32 v23, null, v38, v38, v14
	v_div_fixup_f32 v8, v8, v38, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v19, v38, v12
	v_rcp_f32_e32 v12, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v32.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v13, -v30, v20, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v11, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v11.l, v8.h
	v_mov_b16_e32 v11.h, v32.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v20, v13, v20
	v_div_scale_f32 v13, s7, v15, v38, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v23, v12, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v11, 1, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v13, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v22.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v12, v19, v12 :: v_dual_and_b32 v29, 1, v29
	v_div_scale_f32 v19, s8, v14, v38, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v30, v31, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v10, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v10, v10
	v_add3_u32 v11, v8, v11, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v39, v20
	v_div_scale_f32 v39, null, v38, v38, v1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v29.h, s7
	v_mov_b16_e32 v29.h, v32.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v19, v12
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v8, v8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v8, -v30, v31, v13
	v_rcp_f32_e32 v13, v39
	v_div_scale_f32 v30, null, v38, v38, v0
	v_fma_f32 v40, -v23, v22, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v8, v8, v20, v31
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v20, v30
	v_div_scale_f32 v31, null, v38, v38, v3
	v_fmac_f32_e32 v22, v40, v12
	v_div_fixup_f32 v8, v8, v38, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v23, v22, v19
	v_fma_f32 v23, -v39, v13, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v23, v13
	v_div_fmas_f32 v12, v19, v12, v22
	v_div_scale_f32 v15, vcc_lo, v1, v38, v1
	v_fma_f32 v19, -v30, v20, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v12, v38, v14
	v_div_scale_f32 v14, s8, v0, v38, v0
	v_fmac_f32_e32 v20, v19, v20
	v_mul_f32_e32 v12, v15, v13
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v19.l, v8.h
	v_mov_b16_e32 v19.h, v32.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_mul_f32_e32 v23, v14, v20
	v_fma_f32 v22, -v39, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v29.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v12, v22, v13
	v_fma_f32 v22, -v30, v23, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v19, v8, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v29, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v15, -v39, v12, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v23, v22, v20
	v_rcp_f32_e32 v22, v31
	v_div_fmas_f32 v12, v15, v13, v12
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v1, v12, v38, v1
	v_fma_f32 v15, -v31, v22, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v22, v15, v22
	v_fma_f32 v13, -v30, v23, v14
	v_div_scale_f32 v14, null, v38, v38, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v15, v10, v29, 0x7fff
	v_mov_b16_e32 v29.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v13, v13, v20, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v8, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v32.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v13, v38, v0
	v_div_scale_f32 v13, s7, v3, v38, v3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v10.h, v32.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v14, v8, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v15.h, vcc_lo
	v_and_b32_e32 v15, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v8, v20, v8
	v_div_scale_f32 v20, s8, v2, v38, v2
	v_mul_f32_e32 v12, v13, v22
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v15, v1, v15, 0x7fff
	v_cmp_o_f32_e64 s7, v1, v1
	v_mov_b16_e32 v10.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v23, -v31, v12, v13
	v_dual_fmac_f32 v12, v23, v22 :: v_dual_mul_f32 v23, v20, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v14, v23, v20
	v_fmac_f32_e32 v23, v29, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v13, -v31, v12, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v32.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v1, -v14, v23, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v12, v13, v22, v12
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v13, null, v38, v38, v5
	v_div_fmas_f32 v1, v1, v8, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v12, v38, v3
	v_div_scale_f32 v8, null, v38, v38, v4
	v_rcp_f32_e32 v12, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v1, v38, v2
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v3, s6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v3, v8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v23, null, v38, v38, v6
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v14.l, v2.h
	v_mov_b16_e32 v14.h, v32.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b16_e32 v29.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v8, v3, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v29, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v3, v20, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v0, v10, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v15.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v15, null, v38, v38, v7
	v_div_scale_f32 v31, s7, v4, v38, v4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v0.l, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v22, v15
	v_fma_f32 v10, -v13, v12, 1.0
	v_rcp_f32_e32 v20, v23
	v_mul_f32_e32 v41, v31, v3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v1, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v12, v10, v12
	v_div_scale_f32 v10, vcc_lo, v5, v38, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v15, v22, 1.0
	v_fma_f32 v42, -v23, v20, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v22, v39, v22
	v_div_scale_f32 v39, s8, v7, v38, v7
	v_mul_f32_e32 v30, v10, v12
	v_fmac_f32_e32 v20, v42, v20
	v_div_scale_f32 v42, s9, v6, v38, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v39, v22
	v_fma_f32 v40, -v13, v30, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v30, v40, v12
	v_fma_f32 v40, -v8, v41, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v14, 1, v14
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v13, v30, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v40, v3
	v_fma_f32 v13, -v15, v43, v39
	v_fma_f32 v8, -v8, v41, v31
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v43, v13, v22
	v_div_fmas_f32 v10, v10, v12, v30
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v2, v2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v3, v8, v3, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v8, v2, v14, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v2, -v15, v43, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v15, v19, v9, s0
	v_cndmask_b32_e64 v9, v9, v19, s0
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v19, v33, v37, 1
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_mul_f32_e32 v40, v42, v20
	v_div_fixup_f32 v3, v3, v38, v4
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v5, v10, v38, v5
	v_div_fmas_f32 v2, v2, v22, v43
	v_fma_f32 v12, -v23, v40, v42
	s_mov_b32 vcc_lo, s9
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s6
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v2, v38, v7
	v_fmac_f32_e32 v40, v12, v20
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v7.h, v32.l
	v_mov_b16_e32 v12.h, v32.l
	v_mov_b16_e32 v7.l, v5.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v4, -v23, v40, v42
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v10.h, v32.l
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s7
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v10.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v4, v4, v20, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s7, v3, v3
	v_add3_u32 v7, v5, v7, 0x7fff
	v_and_b32_e32 v10, 1, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v4, v38, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v3.h
	v_mov_b16_e32 v6.h, v32.l
	v_cmp_o_f32_e64 s8, v2, v2
	v_cndmask_b16 v8.l, 0x7fff, v29.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v5, v5
	v_and_b32_e32 v6, 1, v6
	v_add3_u32 v5, v2, v10, 0x7fff
	v_cndmask_b32_e64 v10, v16, v18, s0
	v_mov_b16_e32 v12.l, v4.h
	v_cmp_o_f32_e64 s9, v4, v4
	v_add3_u32 v1, v3, v6, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v7.h, s6
	v_cndmask_b32_e64 v7, v18, v16, s0
	v_and_b32_e32 v6, 1, v12
	v_cndmask_b32_e64 v13, v17, v28, s0
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s7
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s8
	v_cndmask_b32_e64 v12, v28, v17, s0
	v_add3_u32 v3, v4, v6, 0x7fff
	v_cndmask_b32_e64 v4, v24, v26, s0
	v_cndmask_b32_e64 v6, v25, v27, s0
	v_cndmask_b32_e64 v16, v2, v0, s0
	v_cndmask_b32_e64 v0, v0, v2, s0
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s9
	v_cndmask_b32_e64 v14, v11, v21, s0
	v_cndmask_b32_e64 v11, v21, v11, s0
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v3, v26, v24, s0
	v_cndmask_b32_e64 v17, v1, v8, s0
	v_cndmask_b32_e64 v1, v8, v1, s0
	v_cndmask_b32_e64 v5, v27, v25, s0
	v_permlanex16_b32 v2, v4, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v6, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v13, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v1, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v3, v52
	v_perm_b32 v1, v2, v3, v53
	v_perm_b32 v2, v4, v5, v52
	v_perm_b32 v3, v4, v5, v53
	v_perm_b32 v4, v6, v7, v52
	v_perm_b32 v5, v6, v7, v53
	v_perm_b32 v6, v8, v12, v52
	v_perm_b32 v7, v8, v12, v53
	v_perm_b32 v12, v13, v16, v52
	v_perm_b32 v13, v13, v16, v53
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v33, v34, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v10, v14, v52
	v_perm_b32 v9, v10, v14, v53
	v_perm_b32 v10, v11, v15, v52
	v_perm_b32 v11, v11, v15, v53
	v_perm_b32 v14, v18, v17, v52
	v_perm_b32 v15, v18, v17, v53
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v33, v36, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v33, v35, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s55, 0xffff
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	s_mov_b32 s8, s54
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp56:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 145
		.amdhsa_next_free_sgpr 74
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 145
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 74
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12028
; TotalNumSgprs: 76
; NumVgprs: 145
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 76
; NumVGPRsForWavesPerEU: 145
; Occupancy: 9
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     76
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     145
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
